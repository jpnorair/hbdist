# Copyright 2020, JP Norair
#
# Licensed under the OpenTag License, Version 1.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.indigresso.com/wiki/doku.php?id=opentag:license_1_0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

CC := gcc
LD := ld

TARGET      ?= 
EXT_DEF     ?=
EXT_INC     ?=
EXT_LIB     ?=
EXT_LIBS    ?=

THISMACHINE ?= $(shell uname -srm | sed -e 's/ /-/g')
THISSYSTEM	?= $(shell uname -s)


all: build_birdmon build_otdb build_otter build_ottercat build_wfedd

clean: clean_each

install:
	@cp -L ./_hbsys/$(THISMACHINE)/bin/* /opt/bin/

opt_install: install

usr_install:
	@cp -L ./_hbsys/$(THISMACHINE)/bin/* /usr/local/bin/
	

uninstall:
	@rm -f /usr/local/bin/birdmon
	@rm -f /usr/local/bin/otdb
	@rm -f /usr/local/bin/otter
	@rm -f /usr/local/bin/ottercat
	@rm -f /usr/local/bin/wfedd
	@rm -f /opt/bin/birdmon
	@rm -f /opt/bin/otdb
	@rm -f /opt/bin/otter
	@rm -f /opt/bin/ottercat
	@rm -f /opt/bin/wfedd





build_hbsys_libs:
#	argtable 
	cd ./argtable && $(MAKE) pkg
#	bintex 
	cd ./bintex && $(MAKE) pkg
#	birdmon (not a lib)
#	cd ./birdmon && $(MAKE) pkg
#	ccronexpr
	cd ./ccronexpr && $(MAKE) pkg
#	cJSON 
	cd ./cJSON && $(MAKE) pkg
#	clithread
	cd ./clithread && $(MAKE) pkg
#	cmdtab 
	cd ./cmdtab && $(MAKE) pkg
#   hbutils
	cd ./hbutils && $(MAKE) pkg
#	libjudy 
	cd ./libjudy && $(MAKE) pkg
#	libotfs
	cd ./libotfs && $(MAKE) pkg
#	otdb (not a lib)
#	cd ./otdb && $(MAKE) pkg
#	OTEAX 
	cd ./OTEAX && $(MAKE) pkg
#	otter (not a lib)
#	cd ./otter && $(MAKE) pkg
#	ottercat (not a lib)
#	cd ./ottercat && $(MAKE) pkg
#	otvar
	cd ./otvar && $(MAKE) pkg


# APPS

build_birdmon: build_hbsys_libs 
	cd ./birdmon && $(MAKE) release
	cd ./birdmon && $(MAKE) debug
	cd ./birdmon && $(MAKE) install

build_otdb: build_hbsys_libs 
	cd ./otdb && $(MAKE) release
	cd ./otdb && $(MAKE) debug
	cd ./otdb && $(MAKE) install

build_otter: build_hbsys_libs
	cd ./otter && $(MAKE) release
	cd ./otter && $(MAKE) debug
	cd ./otter && $(MAKE) install
	
build_ottercat: build_hbsys_libs
	cd ./ottercat && $(MAKE) release
	cd ./ottercat && $(MAKE) debug
	cd ./ottercat && $(MAKE) install
	
build_wfedd: build_hbsys_libs 
	cd ./wfedd && $(MAKE) release
	cd ./wfedd && $(MAKE) debug
	cd ./wfedd && $(MAKE) install


clean_each:
#	argtable 
	cd ./argtable && $(MAKE) cleaner
#	bintex 
	cd ./bintex && $(MAKE) cleaner
#	birdmon
	cd ./birdmon && $(MAKE) cleaner
#	ccronexpr
	cd ./ccronexpr && $(MAKE) cleaner
#	cJSON 
	cd ./cJSON && $(MAKE) cleaner
#	clithread
	cd ./clithread && $(MAKE) cleaner
#	cmdtab 
	cd ./cmdtab && $(MAKE) cleaner
#   hbutils
	cd ./hbutils && $(MAKE) cleaner
#	libjudy 
	cd ./libjudy && $(MAKE) cleaner
#	libotfs
	cd ./libotfs && $(MAKE) cleaner
#	otdb
	cd ./otdb && $(MAKE) cleaner
#	OTEAX 
	cd ./OTEAX && $(MAKE) cleaner
#	otter
	cd ./otter && $(MAKE) cleaner
#	ottercat
	cd ./ottercat && $(MAKE) cleaner
#	otvar
	cd ./otvar && $(MAKE) cleaner
#   wfedd 
	cd ./wfedd && $(MAKE) cleaner


#Non-File Targets
.PHONY: all clean install uninstall build_hbsys_each clean_each


