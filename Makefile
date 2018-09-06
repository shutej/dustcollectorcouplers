all: coupler.stl

coupler.stl: coupler.scad measurements.scad relativity.scad
	openscad -o $@ $<
