pcb2gcode \
    --zsafe 0.3mm --zchange 60mm \
\
    --outline ../*-Edge_Cuts.gbr \
    --cutter-diameter 2mm \
    --zcut -0.067 \
    --cut-feed 1080mm/min \
    --cut-vertfeed 320mm/min \
    --cut-infeed 0.5mm \
    --cut-speed 24000 \
    --outline-output /Volumes/gcode/outline.nc \
\
    --back ../*-B_Cu.gbr \
    --voronoi 0 \
    --mill-diameters 0.004 \
    --isolation-width 0.3mm \
    --zwork -0.002 \
    --mill-feed 800mm/min \
    --mill-vertfeed 320mm/min \
    --mill-speed 24000 \
    --back-output /Volumes/gcode/back-isolation.nc \
\
    --drill ../*.drl \
    --zdrill -0.067 \
    --drill-feed 800mm/min \
    --drill-side back \
    --drill-speed 24000 \
    --drills-available 0.6mm 0.80mm 1.0mm \
    --milldrill-diameter 2.0mm \
    --min-milldrill-hole-diameter 2.0mm \
    --zmilldrill -0.67 \
    --drill-output /Volumes/gcode/drilled-holes.nc \
    --milldrill-output /Volumes/gcode/milled-holes.nc
