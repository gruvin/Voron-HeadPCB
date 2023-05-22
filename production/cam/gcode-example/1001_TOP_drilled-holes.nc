( pcb2gcode 2.5.0 )
( Software-independent Gcode )

( This file uses 4 drill bit sizes. )
( Bit sizes: [0.4mm] [0.8mm] [1mm] [1.2mm] )

G94       (Millimeters per minute feed rate.)
G21       (Units == Millimeters.)
G91.1     (Incremental arc distance mode.)
G90       (Absolute coordinates.)
G00 S24000     (RPM spindle speed.)

G00 Z50.00000 (Retract)
T1
M5      (Spindle stop.)
G04 P1.00000
(MSG, Change tool bit to drill size 0.4mm)
M0      (Temporary machine stop.)
M3      (Spindle on clockwise.)
G0 Z0.30000
G04 P1.00000

G81 R0.30000 Z-2.00000 F540.00000 X-14.25000 Y7.30000
X0.15000 Y7.30000
X3.45000 Y11.10000
X14.35000 Y7.30000
X12.90000 Y9.85000
X9.55000 Y17.65000
X6.30000 Y14.65000
X2.50000 Y17.10000
X0.50000 Y14.85000
X-2.35000 Y11.20000
X-5.35000 Y14.75000
X-7.05000 Y16.55000
X-12.65000 Y12.05000
X-16.45000 Y15.85000
X-13.60000 Y18.20000
X-15.25000 Y19.95000
X-20.90000 Y25.92500
X-14.50000 Y25.92500
X-6.15000 Y25.92500
X-0.15000 Y21.05000
X8.47500 Y25.92500
X21.30000 Y25.92500
G80

G00 Z50.00000 (Retract)
T2
M5      (Spindle stop.)
G04 P1.00000
(MSG, Change tool bit to drill size 0.8mm)
M0      (Temporary machine stop.)
M3      (Spindle on clockwise.)
G0 Z0.30000
G04 P1.00000

G81 R0.30000 Z-2.00000 F540.00000 X3.85000 Y19.29000
X5.85000 Y19.29000
X5.85000 Y24.85000
X3.85000 Y24.85000
X-1.35000 Y24.85000
X-3.35000 Y24.85000
X-17.35000 Y24.75000
X-19.35000 Y24.75000
G80

G00 Z50.00000 (Retract)
T3
M5      (Spindle stop.)
G04 P1.00000
(MSG, Change tool bit to drill size 1mm)
M0      (Temporary machine stop.)
M3      (Spindle on clockwise.)
G0 Z0.30000
G04 P1.00000

G81 R0.30000 Z-2.00000 F540.00000 X-10.65000 Y8.30000
X-8.15000 Y8.30000
X-3.25000 Y13.25000
X-0.75000 Y13.25000
X1.75000 Y13.25000
X4.25000 Y13.25000
X3.37500 Y8.30000
X5.87500 Y8.30000
X8.37500 Y8.30000
X10.87500 Y8.30000
X11.65000 Y24.35000
X14.15000 Y24.35000
X16.65000 Y24.35000
X19.15000 Y24.35000
G80

G00 Z50.00000 (Retract)
T4
M5      (Spindle stop.)
G04 P1.00000
(MSG, Change tool bit to drill size 1.2mm)
M0      (Temporary machine stop.)
M3      (Spindle on clockwise.)
G0 Z0.30000
G04 P1.00000

G81 R0.30000 Z-2.00000 F540.00000 X-5.65000 Y8.30000
X-3.15000 Y8.30000
X-12.15000 Y22.05000
X-8.65000 Y22.05000
G80

G00 Z50.000 ( All done -- retract )

M5      (Spindle off.)
G04 P1.000000
M9      (Coolant off.)
M2      (Program end.)

