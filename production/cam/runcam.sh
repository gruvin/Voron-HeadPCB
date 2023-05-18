# NOTE: ignore 'CRITICAL... Unknown RS-274X...' output (or turn off X2 extensions in KiCAD gerber plot)
# !! UNITS = INCHES !!

usage() { echo "Usage: $(basename $0) [ -m <mirror-x-coordinate[in|mm]> ] <output-path>" 1>&2; exit 1; }
MIRRORX="0.0000in"
while getopts ':m:' OPTION; do
  case "$OPTION" in 
    m) 
      MIRRORX="$OPTARG"
      shift 2
      ;;

    ?) 
      usage
      ;;
  esac
done
[ $# -eq 0 ] && usage

OUTPUT_PATH=$1
if [ ! -d "${OUTPUT_PATH}" ]; then 
    echo "path ${OUTPUT_PATH}/ does not exist"
    exit 1
fi

echo "Mirror X coordinate ${MIRRORX}"
echo "OUTPUT PATH: ${OUTPUT_PATH}/"

pcb2gcode \
    --ignore-warnings \
    --voronoi 0 \
    --zsafe 0.3mm \
    --zchange 2in \
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
    --nog64 1 \
    --mirror-axis ${MIRRORX} \
    --nom6 1 \
\
    --drill ../*.drl \
    --zdrill -0.067 \
    --drill-feed 600mm/min \
    --drill-side front \
    --drill-speed 24000 \
    --milldrill-diameter 2.0mm \
    --min-milldrill-hole-diameter 2.2mm \
    --zmilldrill -0.067 \
    --drill-output ${OUTPUT_PATH}/1001_TOP_drilled-holes.nc \
    --milldrill-output ${OUTPUT_PATH}/1002_TOP_milled-holes.nc \
\
    --front ../*-F_Cu.gbr \
    --front-output ${OUTPUT_PATH}/2001_TOP-isolation.nc \
\
    --back ../*-B_Cu.gbr \
    --back-output ${OUTPUT_PATH}/3001_BOTTOM-isolation.nc \
\
    --outline ../*-Edge_Cuts.gbr \
    --cut-side back \
    --zcut -0.067 \
    --cut-feed 1080mm/min \
    --cut-vertfeed 320mm/min \
    --cut-infeed 0.5mm \
    --cut-speed 24000 \
    --outline-output ${OUTPUT_PATH}/4001_BOTTOM-outline.nc \

if [ $? != 0 ]; then exit $?; fi

pcb2gcode \
    --ignore-warnings \
    --zsafe 0.3mm \
    --zchange 2in \
    --cutter-diameter 2mm \
    --zero-start 1 \
    --nog64 1 \
\
    --outline ../*-Edge_Cuts.gbr \
    --cut-side front \
    --zcut 0.1 \
    --cut-feed 1080mm/min \
    --cut-vertfeed 320mm/min \
    --cut-infeed -0.1 \
    --cut-speed 24000 \
    --outline-output ${OUTPUT_PATH}/5001_TOP_CHECK-outline.nc

cat  ${OUTPUT_PATH}/4001_BOTTOM-outline.nc ${OUTPUT_PATH}/5001_TOP_CHECK-outline.nc > ${OUTPUT_PATH}/6001_ALLIGNMENT_CHECK-outline.nc

