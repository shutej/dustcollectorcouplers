include <relativity.scad>;
include <measurements.scad>;

module coupler() {
     differed("hole", "not(hole)") {
          hulled("plastic") {
               rod(d=couplerWideOD, h=infinitesimal, $class="plastic", anchor=[0, 0, -1], $fn=detail);
               translated([0, 0, couplerLength])
                    rod(d=couplerNarrowOD, h=infinitesimal, $class="plastic", anchor=[0, 0, 1], $fn=detail);
          };
          rod(d=hoseOD, h=hoseLength, anchor=[0, 0, 1], $class="plastic", $fn=detail) {
               align([0, 0, -1])
                    translated([0, 0, hoseBarb1])
                    rod(d=hoseBarbOD, h=1, anchor=[0, 0, -1], $class="plastic");
               align([0, 0, -1])
                    translated([0, 0, hoseBarb2])
                    rod(d=hoseBarbOD, h=1, anchor=[0, 0, -1], $class="plastic");
          };
          rod(d=couplerID, h=500, $class="hole", $fn=detail);
     }

}

coupler();
