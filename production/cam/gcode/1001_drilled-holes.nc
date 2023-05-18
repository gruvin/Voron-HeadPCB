( pcb2gcode 2.5.0 )
( Software-independent Gcode )

( This file uses 3 drill bit sizes. )
( Bit sizes: [0.023622inch] [0.0314961inch] [0.0393701inch] )

G94       (Inches per minute feed rate.)
G20       (Units == INCHES.)
G91.1     (Incremental arc distance mode.)
G90       (Absolute coordinates.)
G00 S24000     (RPM spindle speed.)

G00 Z2.36220 (Retract)
T1
M5      (Spindle stop.)
G04 P1.00000
(MSG, Change tool bit to drill size 0.023622inch)
M6      (Tool change.)
M0      (Temporary machine stop.)
M3      (Spindle on clockwise.)
G0 Z0.01181
G04 P1.00000

G81 R0.01181 Z-0.06700 F31.49606 X0.29331 Y-0.15453
X0.51181 Y-0.35138
X0.58071 Y-0.41142
X0.47441 Y-0.53937
X0.61516 Y-0.71260
X0.56004 Y-0.82874
X0.83760 Y-0.48327
X0.90650 Y-0.52264
X1.01870 Y-0.66831
X1.11713 Y-0.82874
X1.22244 Y-0.66732
X1.67421 Y-0.82874
X1.62598 Y-0.71260
X1.95472 Y-0.15453
X1.44980 Y-0.15453
X1.50295 Y-0.38189
X1.41535 Y-0.46949
X1.21457 Y-0.47244
X1.11614 Y-0.47244
X0.87402 Y-0.15453
X0.54528 Y-0.15453
G80

G00 Z2.36220 (Retract)
T2
M5      (Spindle stop.)
G04 P1.00000
(MSG, Change tool bit to drill size 0.0314961inch)
M6      (Tool change.)
M0      (Temporary machine stop.)
M3      (Spindle on clockwise.)
G0 Z0.01181
G04 P1.00000

G81 R0.01181 Z-0.06700 F31.49606 X0.35433 Y-0.19685
X0.43307 Y-0.19685
X0.98425 Y-0.19685
X1.06299 Y-0.19685
X1.26772 Y-0.19685
X1.34646 Y-0.19685
G80

G00 Z2.36220 (Retract)
T3
M5      (Spindle stop.)
G04 P1.00000
(MSG, Change tool bit to drill size 0.0393701inch)
M6      (Tool change.)
M0      (Temporary machine stop.)
M3      (Spindle on clockwise.)
G0 Z0.01181
G04 P1.00000

G81 R0.01181 Z-0.06700 F31.49606 X0.63780 Y-0.30709
X0.77559 Y-0.30709
X0.69685 Y-0.77756
X0.79528 Y-0.77756
X0.89370 Y-0.77756
X0.99213 Y-0.77756
X0.98819 Y-0.58268
X1.08661 Y-0.58268
X1.24902 Y-0.77756
X1.34744 Y-0.77756
X1.44587 Y-0.77756
X1.54429 Y-0.77756
X1.28346 Y-0.58268
X1.18504 Y-0.58268
X1.57480 Y-0.21654
X1.67323 Y-0.21654
X1.77165 Y-0.21654
X1.87008 Y-0.21654
G80

G00 Z2.362 ( All done -- retract )

M5      (Spindle off.)
G04 P1.000000
M9      (Coolant off.)
M2      (Program end.)

