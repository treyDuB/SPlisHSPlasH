# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "C:/Users/Trey/source/repos/SPlisHSPlasH/out/build/x64-Debug/extern/GenericParameters/src/Ext_GenericParameters"
  "C:/Users/Trey/source/repos/SPlisHSPlasH/out/build/x64-Debug/extern/GenericParameters/src/Ext_GenericParameters-build"
  "C:/Users/Trey/source/repos/SPlisHSPlasH/out/build/x64-Debug/extern/install/GenericParameters"
  "C:/Users/Trey/source/repos/SPlisHSPlasH/out/build/x64-Debug/extern/GenericParameters/tmp"
  "C:/Users/Trey/source/repos/SPlisHSPlasH/out/build/x64-Debug/extern/GenericParameters/src/Ext_GenericParameters-stamp"
  "C:/Users/Trey/source/repos/SPlisHSPlasH/out/build/x64-Debug/extern/GenericParameters/src"
  "C:/Users/Trey/source/repos/SPlisHSPlasH/out/build/x64-Debug/extern/GenericParameters/src/Ext_GenericParameters-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "C:/Users/Trey/source/repos/SPlisHSPlasH/out/build/x64-Debug/extern/GenericParameters/src/Ext_GenericParameters-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "C:/Users/Trey/source/repos/SPlisHSPlasH/out/build/x64-Debug/extern/GenericParameters/src/Ext_GenericParameters-stamp${cfgdir}") # cfgdir has leading slash
endif()