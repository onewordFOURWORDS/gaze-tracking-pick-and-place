# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "Robotics_Report2: 2 messages, 0 services")

set(MSG_I_FLAGS "-IRobotics_Report2:/home/tim/catkin_ws/src/Robotics_Report2/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(Robotics_Report2_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/tim/catkin_ws/src/Robotics_Report2/msg/Blob_Params.msg" NAME_WE)
add_custom_target(_Robotics_Report2_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "Robotics_Report2" "/home/tim/catkin_ws/src/Robotics_Report2/msg/Blob_Params.msg" ""
)

get_filename_component(_filename "/home/tim/catkin_ws/src/Robotics_Report2/msg/Blobs.msg" NAME_WE)
add_custom_target(_Robotics_Report2_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "Robotics_Report2" "/home/tim/catkin_ws/src/Robotics_Report2/msg/Blobs.msg" "Robotics_Report2/Blob_Params"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(Robotics_Report2
  "/home/tim/catkin_ws/src/Robotics_Report2/msg/Blob_Params.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/Robotics_Report2
)
_generate_msg_cpp(Robotics_Report2
  "/home/tim/catkin_ws/src/Robotics_Report2/msg/Blobs.msg"
  "${MSG_I_FLAGS}"
  "/home/tim/catkin_ws/src/Robotics_Report2/msg/Blob_Params.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/Robotics_Report2
)

### Generating Services

### Generating Module File
_generate_module_cpp(Robotics_Report2
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/Robotics_Report2
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(Robotics_Report2_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(Robotics_Report2_generate_messages Robotics_Report2_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/tim/catkin_ws/src/Robotics_Report2/msg/Blob_Params.msg" NAME_WE)
add_dependencies(Robotics_Report2_generate_messages_cpp _Robotics_Report2_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tim/catkin_ws/src/Robotics_Report2/msg/Blobs.msg" NAME_WE)
add_dependencies(Robotics_Report2_generate_messages_cpp _Robotics_Report2_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(Robotics_Report2_gencpp)
add_dependencies(Robotics_Report2_gencpp Robotics_Report2_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS Robotics_Report2_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(Robotics_Report2
  "/home/tim/catkin_ws/src/Robotics_Report2/msg/Blob_Params.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/Robotics_Report2
)
_generate_msg_eus(Robotics_Report2
  "/home/tim/catkin_ws/src/Robotics_Report2/msg/Blobs.msg"
  "${MSG_I_FLAGS}"
  "/home/tim/catkin_ws/src/Robotics_Report2/msg/Blob_Params.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/Robotics_Report2
)

### Generating Services

### Generating Module File
_generate_module_eus(Robotics_Report2
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/Robotics_Report2
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(Robotics_Report2_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(Robotics_Report2_generate_messages Robotics_Report2_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/tim/catkin_ws/src/Robotics_Report2/msg/Blob_Params.msg" NAME_WE)
add_dependencies(Robotics_Report2_generate_messages_eus _Robotics_Report2_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tim/catkin_ws/src/Robotics_Report2/msg/Blobs.msg" NAME_WE)
add_dependencies(Robotics_Report2_generate_messages_eus _Robotics_Report2_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(Robotics_Report2_geneus)
add_dependencies(Robotics_Report2_geneus Robotics_Report2_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS Robotics_Report2_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(Robotics_Report2
  "/home/tim/catkin_ws/src/Robotics_Report2/msg/Blob_Params.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/Robotics_Report2
)
_generate_msg_lisp(Robotics_Report2
  "/home/tim/catkin_ws/src/Robotics_Report2/msg/Blobs.msg"
  "${MSG_I_FLAGS}"
  "/home/tim/catkin_ws/src/Robotics_Report2/msg/Blob_Params.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/Robotics_Report2
)

### Generating Services

### Generating Module File
_generate_module_lisp(Robotics_Report2
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/Robotics_Report2
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(Robotics_Report2_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(Robotics_Report2_generate_messages Robotics_Report2_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/tim/catkin_ws/src/Robotics_Report2/msg/Blob_Params.msg" NAME_WE)
add_dependencies(Robotics_Report2_generate_messages_lisp _Robotics_Report2_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tim/catkin_ws/src/Robotics_Report2/msg/Blobs.msg" NAME_WE)
add_dependencies(Robotics_Report2_generate_messages_lisp _Robotics_Report2_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(Robotics_Report2_genlisp)
add_dependencies(Robotics_Report2_genlisp Robotics_Report2_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS Robotics_Report2_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(Robotics_Report2
  "/home/tim/catkin_ws/src/Robotics_Report2/msg/Blob_Params.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/Robotics_Report2
)
_generate_msg_nodejs(Robotics_Report2
  "/home/tim/catkin_ws/src/Robotics_Report2/msg/Blobs.msg"
  "${MSG_I_FLAGS}"
  "/home/tim/catkin_ws/src/Robotics_Report2/msg/Blob_Params.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/Robotics_Report2
)

### Generating Services

### Generating Module File
_generate_module_nodejs(Robotics_Report2
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/Robotics_Report2
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(Robotics_Report2_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(Robotics_Report2_generate_messages Robotics_Report2_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/tim/catkin_ws/src/Robotics_Report2/msg/Blob_Params.msg" NAME_WE)
add_dependencies(Robotics_Report2_generate_messages_nodejs _Robotics_Report2_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tim/catkin_ws/src/Robotics_Report2/msg/Blobs.msg" NAME_WE)
add_dependencies(Robotics_Report2_generate_messages_nodejs _Robotics_Report2_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(Robotics_Report2_gennodejs)
add_dependencies(Robotics_Report2_gennodejs Robotics_Report2_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS Robotics_Report2_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(Robotics_Report2
  "/home/tim/catkin_ws/src/Robotics_Report2/msg/Blob_Params.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/Robotics_Report2
)
_generate_msg_py(Robotics_Report2
  "/home/tim/catkin_ws/src/Robotics_Report2/msg/Blobs.msg"
  "${MSG_I_FLAGS}"
  "/home/tim/catkin_ws/src/Robotics_Report2/msg/Blob_Params.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/Robotics_Report2
)

### Generating Services

### Generating Module File
_generate_module_py(Robotics_Report2
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/Robotics_Report2
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(Robotics_Report2_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(Robotics_Report2_generate_messages Robotics_Report2_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/tim/catkin_ws/src/Robotics_Report2/msg/Blob_Params.msg" NAME_WE)
add_dependencies(Robotics_Report2_generate_messages_py _Robotics_Report2_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tim/catkin_ws/src/Robotics_Report2/msg/Blobs.msg" NAME_WE)
add_dependencies(Robotics_Report2_generate_messages_py _Robotics_Report2_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(Robotics_Report2_genpy)
add_dependencies(Robotics_Report2_genpy Robotics_Report2_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS Robotics_Report2_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/Robotics_Report2)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/Robotics_Report2
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(Robotics_Report2_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/Robotics_Report2)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/Robotics_Report2
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(Robotics_Report2_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/Robotics_Report2)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/Robotics_Report2
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(Robotics_Report2_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/Robotics_Report2)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/Robotics_Report2
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(Robotics_Report2_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/Robotics_Report2)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/Robotics_Report2\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/Robotics_Report2
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(Robotics_Report2_generate_messages_py std_msgs_generate_messages_py)
endif()
