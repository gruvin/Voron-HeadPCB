( pcb2gcode 2.5.0 )
( Software-independent Gcode )

G94 ( Inches per minute feed rate. )
G20 ( Units == INCHES. )

G90 ( Absolute coordinates. )
G00 S24000 ( RPM spindle speed. )
G64 P0.00040 ( set maximum deviation from commanded toolpath )
G01 F42.51969 ( Feedrate. )


G00 Z2.36220 (Retract to tool change height)
T0
M5      (Spindle stop.)
G04 P1.00000 (Wait for spindle to stop)
(MSG, Change tool bit to cutter diameter 0.07874in)
M6      (Tool change.)
M0      (Temporary machine stop.)
M3 ( Spindle on clockwise. )
G04 P1.00000 (Wait for spindle to get up to speed)
G04 P0 ( dwell for no time -- G64 should not smooth over this point )
G00 Z0.01181 ( retract )

G00 X-0.07378 Y-0.54318 ( rapid move to begin. )
G01 Z-0.01675 F12.59843 ( plunge. )
G04 P0 ( dwell for no time -- G64 should not smooth over this point )
G01 F42.51969
G01 X-0.07383 Y-0.54712
G01 X-0.07427 Y-0.55104
G01 X-0.07956 Y-0.58325
G01 X-0.08040 Y-0.58710
G01 X-0.08161 Y-0.59086
G01 X-0.09321 Y-0.62137
G01 X-0.09479 Y-0.62498
G01 X-0.09673 Y-0.62842
G01 X-0.11417 Y-0.65601
G01 X-0.11643 Y-0.65924
G01 X-0.11902 Y-0.66222
G01 X-0.14160 Y-0.68579
G01 X-0.14446 Y-0.68850
G01 X-0.14759 Y-0.69090
G01 X-0.17441 Y-0.70951
G01 X-0.17766 Y-0.71154
G01 X-0.51624 Y-0.90052
G01 X-0.51948 Y-0.90214
G01 X-0.52948 Y-0.90656
G01 X-0.53587 Y-0.90876
G01 X-0.54648 Y-0.91141
G01 X-0.55316 Y-0.91248
G01 X-0.56693 Y-0.91339
G01 X-1.66929 Y-0.91339
G01 X-1.68232 Y-0.91275
G01 X-1.68978 Y-0.91163
G01 X-1.70041 Y-0.90897
G01 X-1.70752 Y-0.90645
G01 X-1.71997 Y-0.90052
G01 X-2.05856 Y-0.71154
G01 X-2.06149 Y-0.70973
G01 X-2.08857 Y-0.69134
G01 X-2.09177 Y-0.68892
G01 X-2.09470 Y-0.68619
G01 X-2.11750 Y-0.66271
G01 X-2.12014 Y-0.65969
G01 X-2.12246 Y-0.65642
G01 X-2.14004 Y-0.62881
G01 X-2.14202 Y-0.62532
G01 X-2.14363 Y-0.62165
G01 X-2.15525 Y-0.59105
G01 X-2.15649 Y-0.58724
G01 X-2.15732 Y-0.58332
G01 X-2.16252 Y-0.55100
G01 X-2.16296 Y-0.54702
G01 X-2.16298 Y-0.54301
G01 X-2.16154 Y-0.51031
G01 X-2.16115 Y-0.50632
G01 X-2.16037 Y-0.50239
G01 X-2.15177 Y-0.46862
G01 X-2.04552 Y-0.12738
G01 X-2.04187 Y-0.11807
G01 X-2.03863 Y-0.11161
G01 X-2.03335 Y-0.10312
G01 X-2.02899 Y-0.09737
G01 X-2.02224 Y-0.08999
G01 X-2.01690 Y-0.08513
G01 X-2.00892 Y-0.07911
G01 X-2.00278 Y-0.07530
G01 X-1.99383 Y-0.07084
G01 X-1.98710 Y-0.06822
G01 X-1.97749 Y-0.06547
G01 X-1.97039 Y-0.06412
G01 X-1.96044 Y-0.06317
G01 X-1.95669 Y-0.06299
G01 X-0.27953 Y-0.06299
G01 X-0.27619 Y-0.06313
G01 X-0.26620 Y-0.06398
G01 X-0.25896 Y-0.06529
G01 X-0.24930 Y-0.06798
G01 X-0.24243 Y-0.07062
G01 X-0.23344 Y-0.07506
G01 X-0.22718 Y-0.07892
G01 X-0.21918 Y-0.08496
G01 X-0.21374 Y-0.08993
G01 X-0.20700 Y-0.09735
G01 X-0.20259 Y-0.10324
G01 X-0.19735 Y-0.11178
G01 X-0.19411 Y-0.11839
G01 X-0.18977 Y-0.13004
G01 X-0.08445 Y-0.46862
G01 X-0.07609 Y-0.50276
G01 X-0.07536 Y-0.50663
G01 X-0.07501 Y-0.51056
G01 X-0.07378 Y-0.54318
G01 Z-0.03350 F12.59843 ( plunge. )
G04 P0 ( dwell for no time -- G64 should not smooth over this point )
G01 F42.51969
G01 X-0.07383 Y-0.54712
G01 X-0.07427 Y-0.55104
G01 X-0.07956 Y-0.58325
G01 X-0.08040 Y-0.58710
G01 X-0.08161 Y-0.59086
G01 X-0.09321 Y-0.62137
G01 X-0.09479 Y-0.62498
G01 X-0.09673 Y-0.62842
G01 X-0.11417 Y-0.65601
G01 X-0.11643 Y-0.65924
G01 X-0.11902 Y-0.66222
G01 X-0.14160 Y-0.68579
G01 X-0.14446 Y-0.68850
G01 X-0.14759 Y-0.69090
G01 X-0.17441 Y-0.70951
G01 X-0.17766 Y-0.71154
G01 X-0.51624 Y-0.90052
G01 X-0.51948 Y-0.90214
G01 X-0.52948 Y-0.90656
G01 X-0.53587 Y-0.90876
G01 X-0.54648 Y-0.91141
G01 X-0.55316 Y-0.91248
G01 X-0.56693 Y-0.91339
G01 X-1.66929 Y-0.91339
G01 X-1.68232 Y-0.91275
G01 X-1.68978 Y-0.91163
G01 X-1.70041 Y-0.90897
G01 X-1.70752 Y-0.90645
G01 X-1.71997 Y-0.90052
G01 X-2.05856 Y-0.71154
G01 X-2.06149 Y-0.70973
G01 X-2.08857 Y-0.69134
G01 X-2.09177 Y-0.68892
G01 X-2.09470 Y-0.68619
G01 X-2.11750 Y-0.66271
G01 X-2.12014 Y-0.65969
G01 X-2.12246 Y-0.65642
G01 X-2.14004 Y-0.62881
G01 X-2.14202 Y-0.62532
G01 X-2.14363 Y-0.62165
G01 X-2.15525 Y-0.59105
G01 X-2.15649 Y-0.58724
G01 X-2.15732 Y-0.58332
G01 X-2.16252 Y-0.55100
G01 X-2.16296 Y-0.54702
G01 X-2.16298 Y-0.54301
G01 X-2.16154 Y-0.51031
G01 X-2.16115 Y-0.50632
G01 X-2.16037 Y-0.50239
G01 X-2.15177 Y-0.46862
G01 X-2.04552 Y-0.12738
G01 X-2.04187 Y-0.11807
G01 X-2.03863 Y-0.11161
G01 X-2.03335 Y-0.10312
G01 X-2.02899 Y-0.09737
G01 X-2.02224 Y-0.08999
G01 X-2.01690 Y-0.08513
G01 X-2.00892 Y-0.07911
G01 X-2.00278 Y-0.07530
G01 X-1.99383 Y-0.07084
G01 X-1.98710 Y-0.06822
G01 X-1.97749 Y-0.06547
G01 X-1.97039 Y-0.06412
G01 X-1.96044 Y-0.06317
G01 X-1.95669 Y-0.06299
G01 X-0.27953 Y-0.06299
G01 X-0.27619 Y-0.06313
G01 X-0.26620 Y-0.06398
G01 X-0.25896 Y-0.06529
G01 X-0.24930 Y-0.06798
G01 X-0.24243 Y-0.07062
G01 X-0.23344 Y-0.07506
G01 X-0.22718 Y-0.07892
G01 X-0.21918 Y-0.08496
G01 X-0.21374 Y-0.08993
G01 X-0.20700 Y-0.09735
G01 X-0.20259 Y-0.10324
G01 X-0.19735 Y-0.11178
G01 X-0.19411 Y-0.11839
G01 X-0.18977 Y-0.13004
G01 X-0.08445 Y-0.46862
G01 X-0.07609 Y-0.50276
G01 X-0.07536 Y-0.50663
G01 X-0.07501 Y-0.51056
G01 X-0.07378 Y-0.54318
G01 Z-0.05025 F12.59843 ( plunge. )
G04 P0 ( dwell for no time -- G64 should not smooth over this point )
G01 F42.51969
G01 X-0.07383 Y-0.54712
G01 X-0.07427 Y-0.55104
G01 X-0.07956 Y-0.58325
G01 X-0.08040 Y-0.58710
G01 X-0.08161 Y-0.59086
G01 X-0.09321 Y-0.62137
G01 X-0.09479 Y-0.62498
G01 X-0.09673 Y-0.62842
G01 X-0.11417 Y-0.65601
G01 X-0.11643 Y-0.65924
G01 X-0.11902 Y-0.66222
G01 X-0.14160 Y-0.68579
G01 X-0.14446 Y-0.68850
G01 X-0.14759 Y-0.69090
G01 X-0.17441 Y-0.70951
G01 X-0.17766 Y-0.71154
G01 X-0.51624 Y-0.90052
G01 X-0.51948 Y-0.90214
G01 X-0.52948 Y-0.90656
G01 X-0.53587 Y-0.90876
G01 X-0.54648 Y-0.91141
G01 X-0.55316 Y-0.91248
G01 X-0.56693 Y-0.91339
G01 X-1.66929 Y-0.91339
G01 X-1.68232 Y-0.91275
G01 X-1.68978 Y-0.91163
G01 X-1.70041 Y-0.90897
G01 X-1.70752 Y-0.90645
G01 X-1.71997 Y-0.90052
G01 X-2.05856 Y-0.71154
G01 X-2.06149 Y-0.70973
G01 X-2.08857 Y-0.69134
G01 X-2.09177 Y-0.68892
G01 X-2.09470 Y-0.68619
G01 X-2.11750 Y-0.66271
G01 X-2.12014 Y-0.65969
G01 X-2.12246 Y-0.65642
G01 X-2.14004 Y-0.62881
G01 X-2.14202 Y-0.62532
G01 X-2.14363 Y-0.62165
G01 X-2.15525 Y-0.59105
G01 X-2.15649 Y-0.58724
G01 X-2.15732 Y-0.58332
G01 X-2.16252 Y-0.55100
G01 X-2.16296 Y-0.54702
G01 X-2.16298 Y-0.54301
G01 X-2.16154 Y-0.51031
G01 X-2.16115 Y-0.50632
G01 X-2.16037 Y-0.50239
G01 X-2.15177 Y-0.46862
G01 X-2.04552 Y-0.12738
G01 X-2.04187 Y-0.11807
G01 X-2.03863 Y-0.11161
G01 X-2.03335 Y-0.10312
G01 X-2.02899 Y-0.09737
G01 X-2.02224 Y-0.08999
G01 X-2.01690 Y-0.08513
G01 X-2.00892 Y-0.07911
G01 X-2.00278 Y-0.07530
G01 X-1.99383 Y-0.07084
G01 X-1.98710 Y-0.06822
G01 X-1.97749 Y-0.06547
G01 X-1.97039 Y-0.06412
G01 X-1.96044 Y-0.06317
G01 X-1.95669 Y-0.06299
G01 X-0.27953 Y-0.06299
G01 X-0.27619 Y-0.06313
G01 X-0.26620 Y-0.06398
G01 X-0.25896 Y-0.06529
G01 X-0.24930 Y-0.06798
G01 X-0.24243 Y-0.07062
G01 X-0.23344 Y-0.07506
G01 X-0.22718 Y-0.07892
G01 X-0.21918 Y-0.08496
G01 X-0.21374 Y-0.08993
G01 X-0.20700 Y-0.09735
G01 X-0.20259 Y-0.10324
G01 X-0.19735 Y-0.11178
G01 X-0.19411 Y-0.11839
G01 X-0.18977 Y-0.13004
G01 X-0.08445 Y-0.46862
G01 X-0.07609 Y-0.50276
G01 X-0.07536 Y-0.50663
G01 X-0.07501 Y-0.51056
G01 X-0.07378 Y-0.54318
G01 Z-0.06700 F12.59843 ( plunge. )
G04 P0 ( dwell for no time -- G64 should not smooth over this point )
G01 F42.51969
G01 X-0.07383 Y-0.54712
G01 X-0.07427 Y-0.55104
G01 X-0.07956 Y-0.58325
G01 X-0.08040 Y-0.58710
G01 X-0.08161 Y-0.59086
G01 X-0.09321 Y-0.62137
G01 X-0.09479 Y-0.62498
G01 X-0.09673 Y-0.62842
G01 X-0.11417 Y-0.65601
G01 X-0.11643 Y-0.65924
G01 X-0.11902 Y-0.66222
G01 X-0.14160 Y-0.68579
G01 X-0.14446 Y-0.68850
G01 X-0.14759 Y-0.69090
G01 X-0.17441 Y-0.70951
G01 X-0.17766 Y-0.71154
G01 X-0.51624 Y-0.90052
G01 X-0.51948 Y-0.90214
G01 X-0.52948 Y-0.90656
G01 X-0.53587 Y-0.90876
G01 X-0.54648 Y-0.91141
G01 X-0.55316 Y-0.91248
G01 X-0.56693 Y-0.91339
G01 X-1.66929 Y-0.91339
G01 X-1.68232 Y-0.91275
G01 X-1.68978 Y-0.91163
G01 X-1.70041 Y-0.90897
G01 X-1.70752 Y-0.90645
G01 X-1.71997 Y-0.90052
G01 X-2.05856 Y-0.71154
G01 X-2.06149 Y-0.70973
G01 X-2.08857 Y-0.69134
G01 X-2.09177 Y-0.68892
G01 X-2.09470 Y-0.68619
G01 X-2.11750 Y-0.66271
G01 X-2.12014 Y-0.65969
G01 X-2.12246 Y-0.65642
G01 X-2.14004 Y-0.62881
G01 X-2.14202 Y-0.62532
G01 X-2.14363 Y-0.62165
G01 X-2.15525 Y-0.59105
G01 X-2.15649 Y-0.58724
G01 X-2.15732 Y-0.58332
G01 X-2.16252 Y-0.55100
G01 X-2.16296 Y-0.54702
G01 X-2.16298 Y-0.54301
G01 X-2.16154 Y-0.51031
G01 X-2.16115 Y-0.50632
G01 X-2.16037 Y-0.50239
G01 X-2.15177 Y-0.46862
G01 X-2.04552 Y-0.12738
G01 X-2.04187 Y-0.11807
G01 X-2.03863 Y-0.11161
G01 X-2.03335 Y-0.10312
G01 X-2.02899 Y-0.09737
G01 X-2.02224 Y-0.08999
G01 X-2.01690 Y-0.08513
G01 X-2.00892 Y-0.07911
G01 X-2.00278 Y-0.07530
G01 X-1.99383 Y-0.07084
G01 X-1.98710 Y-0.06822
G01 X-1.97749 Y-0.06547
G01 X-1.97039 Y-0.06412
G01 X-1.96044 Y-0.06317
G01 X-1.95669 Y-0.06299
G01 X-0.27953 Y-0.06299
G01 X-0.27619 Y-0.06313
G01 X-0.26620 Y-0.06398
G01 X-0.25896 Y-0.06529
G01 X-0.24930 Y-0.06798
G01 X-0.24243 Y-0.07062
G01 X-0.23344 Y-0.07506
G01 X-0.22718 Y-0.07892
G01 X-0.21918 Y-0.08496
G01 X-0.21374 Y-0.08993
G01 X-0.20700 Y-0.09735
G01 X-0.20259 Y-0.10324
G01 X-0.19735 Y-0.11178
G01 X-0.19411 Y-0.11839
G01 X-0.18977 Y-0.13004
G01 X-0.08445 Y-0.46862
G01 X-0.07609 Y-0.50276
G01 X-0.07536 Y-0.50663
G01 X-0.07501 Y-0.51056
G01 X-0.07378 Y-0.54318

G04 P0 ( dwell for no time -- G64 should not smooth over this point )
G00 Z2.362205 ( retract )

M5 ( Spindle off. )
G04 P1.000000
M9 ( Coolant off. )
M2 ( Program end. )

