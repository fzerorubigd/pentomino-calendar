# Makefile for Pentomino Calendar

# Define the scad files
SCAD_FILES = base.scad lid.scad tilesv2.scad

# Personal message variables
PERSONAL_MESSAGE ?= This too shall pass...
PERSONAL_MESSAGE_FONT ?= Ubuntu
PERSONAL_MESSAGE_SIZE ?= 7
PERSONAL_MESSAGE_SPIN ?= 90
PERSONAL_MESSAGE_DIRECTION ?= ltr
PERSONAL_MESSAGE_LANGUAGE ?= en
PERSONAL_MESSAGE_SCRIPT ?= latin

# Calendar type
CALENDAR_TYPE ?= gregorian

BASE_STL = base-$(CALENDAR_TYPE).stl
OTHER_STL_FILES = lid.stl tilesv2.stl
STL_FILES = $(BASE_STL) $(OTHER_STL_FILES)

check-%:
	@ command -v $* >/dev/null || (echo "Please install $* and try again" && exit 1)

# Default target
all: $(STL_FILES)

# Rule to build stl from scad
$(BASE_STL): base.scad check-openscad
	openscad -o $@ \
		-D "data_source=\"$(CALENDAR_TYPE)\"" \
		-D "personal_message=\"$(PERSONAL_MESSAGE)\"" \
		-D "personal_message_font=\"$(PERSONAL_MESSAGE_FONT)\"" \
		-D "personal_message_size=$(PERSONAL_MESSAGE_SIZE)" \
		-D "personal_message_spin=$(PERSONAL_MESSAGE_SPIN)" \
		-D "personal_message_direction=\"$(PERSONAL_MESSAGE_DIRECTION)\"" \
		-D "personal_message_language=\"$(PERSONAL_MESSAGE_LANGUAGE)\"" \
		-D "personal_message_script=\"$(PERSONAL_MESSAGE_SCRIPT)\"" \
		base.scad 

%.stl: %.scad check-openscad
	openscad -o $@ $< 

# Target to zip the project
zip: all check-zip
	zip pentomino-calendar-$(CALENDAR_TYPE).zip $(STL_FILES) README.md

# Target to clean the build files
clean:
	rm -f $(STL_FILES) pentomino-calendar-*.zip

.PHONY: all zip clean
