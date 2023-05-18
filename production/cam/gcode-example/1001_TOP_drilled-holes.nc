( pcb2gcode 2.5.0 )
( Software-independent Gcode )

( This file uses 3 drill bit sizes. )
( Bit sizes: [0.015748inch] [0.0314961inch] [0.0393701inch] )

G94       (Inches per minute feed rate.)
G20       (Units == INCHES.)
G91.1     (Incremental arc distance mode.)
G90       (Absolute coordinates.)
G00 S24000     (RPM spindle speed.)

G00 Z2.00000 (Retract)
T1
M5      (Spindle stop.)
G04 P1.00000
(MSG, Change tool bit to drill size 0.015748inch)
M0      (Temporary machine stop.)
M3      (Spindle on clockwise.)
G0 Z0.01181
G04 P1.00000

G81 R0.01181 Z-0.06700 F23.62205 X0.43307 Y0.41535
X0.57382 Y0.24213
X0.51870 Y0.12598
X0.79626 Y0.47146
X0.86516 Y0.43209
X0.97736 Y0.28642
X1.07579 Y0.12598
X1.18110 Y0.28740
X1.63287 Y0.12598
X1.58465 Y0.24213
X1.91339 Y0.80020
X1.40846 Y0.80020
X1.46161 Y0.57283
X1.37402 Y0.48524
X1.17323 Y0.48228
X1.07480 Y0.48228
X0.83268 Y0.80020
X0.53937 Y0.54331
X0.47047 Y0.60335
X0.50394 Y0.80020
X0.25197 Y0.80020
G80

G00 Z2.00000 (Retract)
T2
M5      (Spindle stop.)
G04 P1.00000
(MSG, Change tool bit to drill size 0.0314961inch)
M0      (Temporary machine stop.)
M3      (Spindle on clockwise.)
G0 Z0.01181
G04 P1.00000

G81 R0.01181 Z-0.06700 F23.62205 X0.31299 Y0.75787
X0.39173 Y0.75787
X0.94291 Y0.75787
X1.02165 Y0.75787
X1.22638 Y0.75787
X1.30512 Y0.75787
G80

G00 Z2.00000 (Retract)
T3
M5      (Spindle stop.)
G04 P1.00000
(MSG, Change tool bit to drill size 0.0393701inch)
M0      (Temporary machine stop.)
M3      (Spindle on clockwise.)
G0 Z0.01181
G04 P1.00000

G81 R0.01181 Z-0.06700 F23.62205 X0.59646 Y0.64764
X0.73425 Y0.64764
X0.65551 Y0.17717
X0.75394 Y0.17717
X0.85236 Y0.17717
X0.95079 Y0.17717
X0.94685 Y0.37205
X1.04528 Y0.37205
X1.20768 Y0.17717
X1.30610 Y0.17717
X1.40453 Y0.17717
X1.50295 Y0.17717
X1.24213 Y0.37205
X1.14370 Y0.37205
X1.53346 Y0.73819
X1.63189 Y0.73819
X1.73032 Y0.73819
X1.82874 Y0.73819
G80

G00 Z2.000 ( All done -- retract )

M5      (Spindle off.)
G04 P1.000000
M9      (Coolant off.)
M2      (Program end.)

