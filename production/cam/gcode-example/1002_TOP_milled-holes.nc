( pcb2gcode 2.5.0 )
( Software-independent Gcode )
( This file uses a mill head of 0.07874inch to drill the 1 hole sizes. )
( Hole sizes: [0.125984inch] )

G94       (Inches per minute feed rate.)
G20       (Units == INCHES.)
G91.1     (Incremental arc distance mode.)
G90       (Absolute coordinates.)
S24000    (RPM spindle speed.)

G01 F42.51969 (Feedrate)
G00 Z2.00000 (Retract to tool change height)
T5
M5        (Spindle stop.)
G04 P1.00000
(MSG, Change tool bit to drill size 0.07874inch)
M6        (Tool change.)
M0        (Temporary machine stop.)
M3        (Spindle on clockwise.)
G04 P1.00000
G00 Z0.01181

G0 X0.23425 Y0.41929
G1 Z0.01675 F12.59843
G1 F42.51969
G2 X0.23425 Y0.41929 Z-0.00000 I-0.02362 J0.00000
G2 X0.23425 Y0.41929 Z-0.01675 I-0.02362 J0.00000
G2 X0.23425 Y0.41929 Z-0.03350 I-0.02362 J0.00000
G2 X0.23425 Y0.41929 Z-0.05025 I-0.02362 J0.00000
G2 X0.23425 Y0.41929 Z-0.06700 I-0.02362 J0.00000
G2 X0.23425 Y0.41929 I-0.02362 J0.00000
G1 Z0.01181 F12.59843

G0 X1.96654 Y0.41929
G1 Z0.01675 F12.59843
G1 F42.51969
G2 X1.96654 Y0.41929 Z-0.00000 I-0.02362 J0.00000
G2 X1.96654 Y0.41929 Z-0.01675 I-0.02362 J0.00000
G2 X1.96654 Y0.41929 Z-0.03350 I-0.02362 J0.00000
G2 X1.96654 Y0.41929 Z-0.05025 I-0.02362 J0.00000
G2 X1.96654 Y0.41929 Z-0.06700 I-0.02362 J0.00000
G2 X1.96654 Y0.41929 I-0.02362 J0.00000
G1 Z0.01181 F12.59843

G00 Z2.000000 ( All done -- retract )

M5      (Spindle off.)
G04 P1.000000
M9      (Coolant off.)
M2      (Program end.)

