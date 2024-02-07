# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "C:/Users/Trey/source/repos/SPlisHSPlasH/out/build/x64-Debug/extern/PositionBasedDynamics/src/Ext_PBD"
  "C:/Users/Trey/source/repos/SPlisHSPlasH/out/build/x64-Debug/extern/PositionBasedDynamics/src/Ext_PBD-build"
  "C:/Users/Trey/source/repos/SPlisHSPlasH/out/build/x64-Debug/extern/install/PositionBasedDynamics"
  "C:/Users/Trey/source/repos/SPlisHSPlasH/out/build/x64-Debug/extern/PositionBasedDynamics/tmp"
  "C:/Users/Trey/source/repos/SPlisHSPlasH/out/build/x64-Debug/extern/PositionBasedDynamics/src/Ext_PBD-stamp"
  "C:/Users/Trey/source/repos/SPlisHSPlasH/out/build/x64-Debug/extern/PositionBasedDynamics/src"
  "C:/Users/Trey/source/repos/SPlisHSPlasH/out/build/x64-Debug/extern/PositionBasedDynamics/src/Ext_PBD-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "C:/Users/Trey/source/repos/SPlisHSPlasH/out/build/x64-Debug/extern/PositionBasedDynamics/src/Ext_PBD-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "C:/Users/Trey/source/repos/SPlisHSPlasH/out/build/x64-Debug/extern/PositionBasedDynamics/src/Ext_PBD-stamp${cfgdir}") # cfgdir has leading slash
endif()
