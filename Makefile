all: vacuum.stl router.stl

vacuum.scad: measurements.scad relativity.scad

router.scad: measurements.scad relativity.scad

vacuum.stl: vacuum.scad
	openscad -o $@ $<

router.stl: router.scad
	openscad -o $@ $<
