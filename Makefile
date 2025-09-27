# Makefile for Pentomino Calendar

# Define the scad files
SCAD_FILES = base.scad lid.scad tilesv2.scad

# Define the stl files
STL_FILES = $(SCAD_FILES:.scad=.stl)

# Default target
all: $(STL_FILES)

# Rule to build stl from scad
%.stl: %.scad
	openscad --enable=textmetrics -o $@ $<

# Target to zip the project
zip: all
	zip pentomino-calendar.zip $(STL_FILES) README.md

# Target to clean the build files
clean:
	rm -f $(STL_FILES) pentomino-calendar.zip

.PHONY: all zip clean