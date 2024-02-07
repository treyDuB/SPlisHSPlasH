# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "C:/Users/Trey/source/repos/SPlisHSPlasH/out/build/x64-Debug/extern/Discregrid/src/Ext_Discregrid"
  "C:/Users/Trey/source/repos/SPlisHSPlasH/out/build/x64-Debug/extern/Discregrid/src/Ext_Discregrid-build"
  "C:/Users/Trey/source/repos/SPlisHSPlasH/out/build/x64-Debug/extern/install/Discregrid"
  "C:/Users/Trey/source/repos/SPlisHSPlasH/out/build/x64-Debug/extern/Discregrid/tmp"
  "C:/Users/Trey/source/repos/SPlisHSPlasH/out/build/x64-Debug/extern/Discregrid/src/Ext_Discregrid-stamp"
  "C:/Users/Trey/source/repos/SPlisHSPlasH/out/build/x64-Debug/extern/Discregrid/src"
  "C:/Users/Trey/source/repos/SPlisHSPlasH/out/build/x64-Debug/extern/Discregrid/src/Ext_Discregrid-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "C:/Users/Trey/source/repos/SPlisHSPlasH/out/build/x64-Debug/extern/Discregrid/src/Ext_Discregrid-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "C:/Users/Trey/source/repos/SPlisHSPlasH/out/build/x64-Debug/extern/Discregrid/src/Ext_Discregrid-stamp${cfgdir}") # cfgdir has leading slash
endif()
