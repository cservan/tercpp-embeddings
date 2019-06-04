#!/bin/bash
################################################################
# tercpp: an open-source Translation Edit Rate (TER) scorer tool for Machine Translation.
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
################################################################


export L_CXXFLAGS="-I/home/cservan/Tools/Sources/multivec/multivec/"
export L_CFLAGS="-I/home/cservan/Tools/Sources/multivec/multivec/"
export L_LDFLAGS="-L/home/cservan/Tools/Sources/multivec/lib/"
install -d build
pushd build
#cmake -DCMAKE_INSTALL_PREFIX=$HOME/Programmation/TEMP -DCMAKE_BUILD_TYPE=RelWithDebInfo ..
v_uname=`uname`
if [ $v_uname != "Darwin" ]
then
	/usr/bin/cmake -DCMAKE_EXE_LINKER_FLAGS="-pthread " -DCMAKE_INSTALL_PREFIX=/home/cservan/Tools/tercpp-embeddings/ -DCMAKE_C_FLAGS="$L_CFLAGS" -DCMAKE_CXX_FLAGS="$L_CXXFLAGS" -DCMAKE_LD_FLAGS="-L/home/cservan/Tools/Sources/multivec/lib/" -DCMAKE_BUILD_TYPE=RelWithDebInfo ..
else
#	cmake -DCMAKE_INSTALL_PREFIX=$1  ..
	echo "do nothing"
fi
make -j4 && \
make install
popd
