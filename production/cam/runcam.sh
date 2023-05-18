# NOTE: ignore 'CRITICAL... Unknown RS-274X...' output (or turn off X2 extensions in KiCAD gerber plot)
# !! UNITS = INCHES !!

usage() { echo "Usage: $0 <output-path>" 1>&2; exit 1; }
[ $# -eq 0 ] && usage
OUTPUT_PATH=$1
if [ ! -d "${OUTPUT_PATH}" ]; then 
    echo "path ${OUTPUT_PATH}/ does not exist"
    exit 1
fi

pcb2gcode \
    --ignore-warnings \
    --voronoi 0 \
    --zsafe 0.3mm \
    --zchange 60mm \
    --drills-available 0.4mm 0.6mm 0.80mm 1.0mm \
    --mill-diameters 0.1mm \
    --cutter-diameter 2mm \
    --isolation-width 0.3mm \
    --zwork -0.002 \
    --mill-feed 800mm/min \
    --mill-vertfeed 320mm/min \
    --mill-speed 24000 \
    --zero-start 1 \
    --pre-milling-gcode M7 \
\
    --drill ../*.drl \
    --zdrill -0.067 \
    --drill-feed 800mm/min \
    --drill-side front \
    --drill-speed 24000 \
    --milldrill-diameter 2.0mm \
    --min-milldrill-hole-diameter 2.2mm \
    --zmilldrill -0.067 \
    --drill-output ${OUTPUT_PATH}/1001_TOP_drilled-holes.nc \
    --milldrill-output ${OUTPUT_PATH}/1002_TOP_milled-holes.nc \
\
    --front ../*-F_Cu.gbr \
    --front-output ${OUTPUT_PATH}/1003_TOP-isolation.nc \
\
    --back ../*-B_Cu.gbr \
    --back-output ${OUTPUT_PATH}/2001_BOTTOM-isolation.nc \
\
    --outline ../*-Edge_Cuts.gbr \
    --cut-side back \
    --zcut -0.067 \
    --cut-feed 1080mm/min \
    --cut-vertfeed 320mm/min \
    --cut-infeed 0.5mm \
    --cut-speed 24000 \
    --outline-output ${OUTPUT_PATH}/2002_BOTTOM-outline.nc \

