# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "C:/Users/Trey/source/repos/SPlisHSPlasH/out/build/x64-Debug/extern/CompactNSearch/src/Ext_NeighborhoodSearch"
  "C:/Users/Trey/source/repos/SPlisHSPlasH/out/build/x64-Debug/extern/CompactNSearch/src/Ext_NeighborhoodSearch-build"
  "C:/Users/Trey/source/repos/SPlisHSPlasH/out/build/x64-Debug/extern/install/NeighborhoodSearch"
  "C:/Users/Trey/source/repos/SPlisHSPlasH/out/build/x64-Debug/extern/CompactNSearch/tmp"
  "C:/Users/Trey/source/repos/SPlisHSPlasH/out/build/x64-Debug/extern/CompactNSearch/src/Ext_NeighborhoodSearch-stamp"
  "C:/Users/Trey/source/repos/SPlisHSPlasH/out/build/x64-Debug/extern/CompactNSearch/src"
  "C:/Users/Trey/source/repos/SPlisHSPlasH/out/build/x64-Debug/extern/CompactNSearch/src/Ext_NeighborhoodSearch-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "C:/Users/Trey/source/repos/SPlisHSPlasH/out/build/x64-Debug/extern/CompactNSearch/src/Ext_NeighborhoodSearch-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "C:/Users/Trey/source/repos/SPlisHSPlasH/out/build/x64-Debug/extern/CompactNSearch/src/Ext_NeighborhoodSearch-stamp${cfgdir}") # cfgdir has leading slash
endif()
