#include <iostream>
#include <fstream>
#include <nlohmann/json.hpp>
#include <sdbusplus/bus.hpp>
#include <sdbusplus/server.hpp>
#include <sdbusplus/server/interface.hpp>
#include <map>
#include <string>

using json = nlohmann::json;

// Function to read JSON file and return as json
json readJsonFile(const std::string &filePath) {
    std::ifstream file(filePath);
    json jsonData;
    file >> jsonData;
    return jsonData;
}

std::map<std::string, std::string> jsonToMap(const json &jsonData) {
    std::map<std::string, std::string> resultMap;
    for (auto it = jsonData.begin(); it != jsonData.end(); ++it) {
        resultMap[it.key()] = it.value().dump(); // Convert value to string representation
    }
    return resultMap;
}

json mapToJson(const std::map<std::string, std::string> &dataMap) {
    json jsonData;
    for (const auto &pair : dataMap) {
        jsonData[pair.first] = json::parse(pair.second); // Parse string representation back to JSON
    }
    return jsonData;
}


class MyDBusService {
public:
    MyDBusService(const std::string &busName, const std::string &objectPath, const std::string &interfaceName, const std::string &jsonFilePath)
        : bus(sdbusplus::bus::new_default()),
          iface(bus, objectPath.c_str(), interfaceName.c_str(), _vtable, this),
          busName(busName),
          objectPath(objectPath),
          interfaceName(interfaceName) {
        bus.request_name(busName.c_str());

        // Read the JSON file
        json jsonData = readJsonFile(jsonFilePath);
        dataMap = jsonToMap(jsonData);
    }

    void ReceiveJson(const std::string& jsonString) {
        if (jsonString.empty()) {
            std::cerr << "Received empty JSON string." << std::endl;
            return;
        }
        json jsonData = json::parse(jsonString);
        dataMap = jsonToMap(jsonData);
        std::cout << "Received JSON data:" << std::endl;
        for (const auto &pair : dataMap) {
            std::cout << pair.first << ": " << pair.second << std::endl;
        }
    }

    std::string SendJson() {
        json jsonData = mapToJson(dataMap);
        std::string jsonString = jsonData.dump();
        std::cout << "Sending JSON data: " << jsonString << std::endl;
        return jsonString;
    }

    void run() 
        {
        int retryCount = 0;
        const int maxRetries = 3; // Adjust as needed

         while (true) {
             try {
                 bus.process_discard();
                 bus.wait();
                 retryCount = 0; // Reset retry count on successful run
                } catch (const sdbusplus::exception::SdBusError &e) {
                   std::cerr << "Error running service: " << e.what() << std::endl;
                  if (++retryCount > maxRetries) {
                        std::cerr << "Max retries exceeded. Exiting." << std::endl;
                      break;
                     }
                  std::cerr << "Retrying..." << std::endl;
                  std::this_thread::sleep_for(std::chrono::seconds(1)); // Wait before retrying
                }
            }
        }


private:
    sdbusplus::bus::bus bus;
    sdbusplus::server::interface::interface iface;
    std::map<std::string, std::string> dataMap;
    std::string busName;
    std::string objectPath;
    std::string interfaceName;

    static int _method_receive_json(sd_bus_message *m, void *userdata, sd_bus_error *ret_error) {
        auto service = static_cast<MyDBusService*>(userdata);
        const char *jsonString;
        int r = sd_bus_message_read(m, "s", &jsonString);
        if (r < 0) return r;
        service->ReceiveJson(jsonString);
        return sd_bus_reply_method_return(m, "");
    }

    static int _method_send_json(sd_bus_message *m, void *userdata, sd_bus_error *ret_error) {
        auto service = static_cast<MyDBusService*>(userdata);
        std::string jsonString = service->SendJson();
        return sd_bus_reply_method_return(m, "s", jsonString.c_str());
    }

    static constexpr sdbusplus::vtable::vtable_t _vtable[] = {
        sdbusplus::vtable::start(),
        sdbusplus::vtable::method("ReceiveJson", "s", "", &_method_receive_json),
        sdbusplus::vtable::method("SendJson", "", "s", &_method_send_json),
        sdbusplus::vtable::end()
    };
};

int main() {
    const std::string busName = "com.example.MyService";
    const std::string objectPath = "/com/example/MyService";
    const std::string interfaceName = "com.example.MyService";
    const std::string jsonFilePath = "/usr/local/share/method_json/data.json";

    MyDBusService service(busName, objectPath, interfaceName, jsonFilePath);
    
    while(1){
        service.run();
    }

    return 0;
}




