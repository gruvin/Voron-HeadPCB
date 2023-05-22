# NOTE: ignore 'CRITICAL... Unknown RS-274X...' output (or turn off X2 extensions in KiCAD gerber plot)

# For two-sided PCBs I've found the easiest thing to do is set KiCAD's "Drill/Place File Origin" to
# a cordinate on the horrizontal center of the PCB and use locator pins on the same line. This doesn't 
# have to be precise but making it so helps greatly in checking the flipped allignment in a gcode viewer.

usage() { echo "Usage: $(basename $0) [ -m <mirror-x-coordinate[in|]> ] <output-path>" 1>&2; exit 1; }
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

ZERO_START=0
ARGS=( \ 
    --metric 1 \
    --metricoutput 1 \
    --ignore-warnings \
    --nog64 1 \
    --mirror-axis ${MIRRORX} \
    --nom6 1 \
    --zero-start ${ZERO_START} \
) 
PCB2GCODE="/usr/local/bin/pcb2gcode ${ARGS[@]}"

${PCB2GCODE} \
    --voronoi 0 \
    --zsafe 0.3 \
    --zchange 50.0 \
    --drills-available 0.4 0.5 0.6 0.7 0.80 0.9 1.0 1.1 1.2 1.3 1.4 1.5 \
    --mill-diameters 0.1 \
    --cutter-diameter 2 \
    --isolation-width 0.3 \
    --zwork -0.05 \
    --drill-feed 540mm/min \
    --mill-feed 680mm/min \
    --mill-vertfeed 120mm/min \
    --mill-speed 24000 \
    --pre-milling-gcode M7 \
\
    --drill ../*.drl \
    --zdrill -2.0 \
    --drill-side front \
    --drill-speed 24000 \
    --milldrill-diameter 2.0 \
    --min-milldrill-hole-diameter 2.0 \
    --zmilldrill -1.6 \
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
    --zcut -1.6 \
    --cut-feed 880mm/min \
    --cut-vertfeed 240mm/min \
    --cut-infeed 0.4 \
    --cut-speed 24000 \
    --bridges 1 \
    --bridgesnum 2  \
    --zbridges -1.2 \
    --outline-output ${OUTPUT_PATH}/4001_BOTTOM-outline.nc \

# if [ $? != 0 ]; then exit $?; fi
# 
# ${PCB2GCODE} \
#     --zsafe 3.0 \
#     --zchange 50 \
#     --cutter-diameter 2 \
# \
#     --outline ../*-Edge_Cuts.gbr \
#     --cut-side front \
#     --zcut 2.0 \
#     --cut-feed 1080mm/min \
#     --cut-vertfeed 320mm/min \
#     --cut-infeed -2.0 \
#     --cut-speed 24000 \
#     --outline-output ${OUTPUT_PATH}/5001_TOP_CHECK-outline.nc
# 
# cat  ${OUTPUT_PATH}/4001_BOTTOM-outline.nc ${OUTPUT_PATH}/5001_TOP_CHECK-outline.nc > ${OUTPUT_PATH}/6001_ALLIGNMENT_CHECK-outline.nc
# 
