# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

if(EXISTS "C:/Users/Trey/source/repos/SPlisHSPlasH/out/build/x64-Release/extern/PositionBasedDynamics/src/Ext_PBD-stamp/Ext_PBD-gitclone-lastrun.txt" AND EXISTS "C:/Users/Trey/source/repos/SPlisHSPlasH/out/build/x64-Release/extern/PositionBasedDynamics/src/Ext_PBD-stamp/Ext_PBD-gitinfo.txt" AND
  "C:/Users/Trey/source/repos/SPlisHSPlasH/out/build/x64-Release/extern/PositionBasedDynamics/src/Ext_PBD-stamp/Ext_PBD-gitclone-lastrun.txt" IS_NEWER_THAN "C:/Users/Trey/source/repos/SPlisHSPlasH/out/build/x64-Release/extern/PositionBasedDynamics/src/Ext_PBD-stamp/Ext_PBD-gitinfo.txt")
  message(STATUS
    "Avoiding repeated git clone, stamp file is up to date: "
    "'C:/Users/Trey/source/repos/SPlisHSPlasH/out/build/x64-Release/extern/PositionBasedDynamics/src/Ext_PBD-stamp/Ext_PBD-gitclone-lastrun.txt'"
  )
  return()
endif()

execute_process(
  COMMAND ${CMAKE_COMMAND} -E rm -rf "C:/Users/Trey/source/repos/SPlisHSPlasH/out/build/x64-Release/extern/PositionBasedDynamics/src/Ext_PBD"
  RESULT_VARIABLE error_code
)
if(error_code)
  message(FATAL_ERROR "Failed to remove directory: 'C:/Users/Trey/source/repos/SPlisHSPlasH/out/build/x64-Release/extern/PositionBasedDynamics/src/Ext_PBD'")
endif()

# try the clone 3 times in case there is an odd git clone issue
set(error_code 1)
set(number_of_tries 0)
while(error_code AND number_of_tries LESS 3)
  execute_process(
    COMMAND "D:/GIT/Git/cmd/git.exe"
            clone --no-checkout --config "advice.detachedHead=false" "https://github.com/InteractiveComputerGraphics/PositionBasedDynamics.git" "Ext_PBD"
    WORKING_DIRECTORY "C:/Users/Trey/source/repos/SPlisHSPlasH/out/build/x64-Release/extern/PositionBasedDynamics/src"
    RESULT_VARIABLE error_code
  )
  math(EXPR number_of_tries "${number_of_tries} + 1")
endwhile()
if(number_of_tries GREATER 1)
  message(STATUS "Had to git clone more than once: ${number_of_tries} times.")
endif()
if(error_code)
  message(FATAL_ERROR "Failed to clone repository: 'https://github.com/InteractiveComputerGraphics/PositionBasedDynamics.git'")
endif()

execute_process(
  COMMAND "D:/GIT/Git/cmd/git.exe"
          checkout "00db2e091a88a628099787cf6fada941e851dbfa" --
  WORKING_DIRECTORY "C:/Users/Trey/source/repos/SPlisHSPlasH/out/build/x64-Release/extern/PositionBasedDynamics/src/Ext_PBD"
  RESULT_VARIABLE error_code
)
if(error_code)
  message(FATAL_ERROR "Failed to checkout tag: '00db2e091a88a628099787cf6fada941e851dbfa'")
endif()

set(init_submodules TRUE)
if(init_submodules)
  execute_process(
    COMMAND "D:/GIT/Git/cmd/git.exe" 
            submodule update --recursive --init 
    WORKING_DIRECTORY "C:/Users/Trey/source/repos/SPlisHSPlasH/out/build/x64-Release/extern/PositionBasedDynamics/src/Ext_PBD"
    RESULT_VARIABLE error_code
  )
endif()
if(error_code)
  message(FATAL_ERROR "Failed to update submodules in: 'C:/Users/Trey/source/repos/SPlisHSPlasH/out/build/x64-Release/extern/PositionBasedDynamics/src/Ext_PBD'")
endif()

# Complete success, update the script-last-run stamp file:
#
execute_process(
  COMMAND ${CMAKE_COMMAND} -E copy "C:/Users/Trey/source/repos/SPlisHSPlasH/out/build/x64-Release/extern/PositionBasedDynamics/src/Ext_PBD-stamp/Ext_PBD-gitinfo.txt" "C:/Users/Trey/source/repos/SPlisHSPlasH/out/build/x64-Release/extern/PositionBasedDynamics/src/Ext_PBD-stamp/Ext_PBD-gitclone-lastrun.txt"
  RESULT_VARIABLE error_code
)
if(error_code)
  message(FATAL_ERROR "Failed to copy script-last-run stamp file: 'C:/Users/Trey/source/repos/SPlisHSPlasH/out/build/x64-Release/extern/PositionBasedDynamics/src/Ext_PBD-stamp/Ext_PBD-gitclone-lastrun.txt'")
endif()