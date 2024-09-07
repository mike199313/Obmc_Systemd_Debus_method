cmake_minimum_required(VERSION 3.10)
project(DBusJSONExample)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# Include directories
include_directories(/usr/local/include)
include_directories(/usr/include)

find_package(PkgConfig REQUIRED)
pkg_check_modules(SDBUSPLUS REQUIRED IMPORTED_TARGET sdbusplus)
#pkg_check_modules(NLOHMANN REQUIRED IMPORTED_TARGET nlohmann)

add_executable(method_json main.cpp)
#target_link_libraries(dbus_json_example PRIVATE PkgConfig::SDBUSPLUS)

# Link against necessary libraries
target_link_libraries(method_json sdbusplus systemd)
#target_link_libraries(method_json nlohmann)

# Set rpath
set(CMAKE_INSTALL_RPATH "/home/mikec/Dell_dbus_practice/sdbusplus/build/")

# Use rpath for the install target
set(CMAKE_INSTALL_RPATH_USE_LINK_PATH TRUE)

# Set any additional compiler flags if needed
# set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wall -Wextra")

# Install the executable
#install(TARGETS method_json
#        RUNTIME DESTINATION bin)

# Install the executable
install(TARGETS method_json
        RUNTIME DESTINATION /usr/local/bin)

# Install the .service file
install(FILES com.example.MyService.service
        DESTINATION /usr/share/dbus-1/system-services)

# Install systemd service file (optional)
#configure_file(com.example.MyService.service.in com.example.MyService.service @ONLY)
# Install the .service file template
configure_file(com.example.MyService.service.in ${CMAKE_CURRENT_BINARY_DIR}/com.example.MyService.service @ONLY)
install(FILES ${CMAKE_CURRENT_BINARY_DIR}/com.example.MyService.service
        DESTINATION /etc/systemd/system)

# Install systemd service user and group (optional)
install(FILES com.example.MyService.conf
        DESTINATION /etc/dbus-1/system.d)

# Install systemd policy (optional)
install(FILES com.example.MyService.policy
        DESTINATION /usr/share/polkit-1/actions)


# Install the JSON data file
install(FILES data.json
        DESTINATION /usr/local/share/method_json)
