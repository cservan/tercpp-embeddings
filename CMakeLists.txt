#################################
# tercpp-embeddings: an open-source Translation Edit Rate (TER) scorer tool for Machine Translation using Word Embeddings.
#
# Copyright 2010-2013, Christophe Servan, LIUM, University of Le Mans, France
# Copyright 2015, Christophe Servan, GETALP-LIG, University of Grenoble, France
# Contact: christophe.servan@gmail.com
#
# The tercpp tool and library are free software: you can redistribute it and/or modify it
# under the terms of the GNU Lesser General Public License as published by 
# the Free Software Foundation, either version 2.1 of the licence, or
# (at your option) any later version.
#
# This program and library are distributed in the hope that it will be useful, but WITHOUT
# ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
# FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License
# for more details.
#
# You should have received a copy of the GNU Lesser General Public License
# along with this library; if not, write to the Free Software Foundation,
# Inc., 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA
###################################
cmake_minimum_required(VERSION 2.6)

PROJECT(tercpp)
SET(USERHOME "$ENV{HOME}")
#if you don't want the full compiler output, remove the following line
SET(CMAKE_VERBOSE_MAKEFILE ON)
SET(CMAKE_CXX_FLAGS " -Wno-deprecated -Wunused-local-typedefs -Wsign-compare " CACHE STRING "Flags used by the C++ compiler" FORCE )
#add_definitions(-DCMAKE_INSTALL_PREFIX=YOUR INSTALL DIR HERE!!!)
add_definitions(-DIBPP_LINUX -DIBPP_GCC)
# include_directories(YOUR INCLUDE DIR HERE!!!)
# link_directories(YOUR LIB DIR HERE!!!)
#include_directories(/DEV/Tools/boost_1_61_0/include)
#link_directories(/DEV/Tools/boost_1_61_0/lib)
#link_directories(${USERHOME}/Tools/myLibs/icu/lib)
#include_directories(${USERHOME}/Tools/myLibs/icu/include)
include_directories(vendor/multivec/multivec/)
add_subdirectory(vendor/multivec/)

# link_directories(/home/cservan/Tools/Sources/multivec/)
#SET(CMAKE_CXX_FLAGS "-Wunused-local-typedefs")
#add definitions, compiler switches, etc.
ADD_DEFINITIONS(-Wall -O2 -static -std=c++0x )

#list all source files here
add_subdirectory(src)
add_subdirectory(test)

#ADD_EXECUTABLE(tercpp main.cpp)

#install(TARGETS tercpp DESTINATION bin)

#need to link to some other libraries ? just add them here
#TARGET_LINK_LIBRARIES(tercpp png jpeg)
 
