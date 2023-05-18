( pcb2gcode 2.5.0 )
( Software-independent Gcode )

G94 ( Inches per minute feed rate. )
G20 ( Units == INCHES. )

G90 ( Absolute coordinates. )
G00 S24000 ( RPM spindle speed. )
G01 F42.51969 ( Feedrate. )


G00 Z2.00000 (Retract to tool change height)
T0
M5      (Spindle stop.)
G04 P1.00000 (Wait for spindle to stop)
(MSG, Change tool bit to cutter diameter 0.07874in)
M0      (Temporary machine stop.)
M3 ( Spindle on clockwise. )
G04 P1.00000 (Wait for spindle to get up to speed)
G04 P0 ( dwell for no time -- G64 should not smooth over this point )
G00 Z0.01181 ( retract )

G00 X2.12110 Y0.41155 ( rapid move to begin. )
G01 Z-0.01675 F12.59843 ( plunge. )
G04 P0 ( dwell for no time -- G64 should not smooth over this point )
G01 F42.51969
G01 X2.12105 Y0.40760
G01 X2.12060 Y0.40368
G01 X2.11531 Y0.37147
G01 X2.11448 Y0.36762
G01 X2.11327 Y0.36387
G01 X2.10167 Y0.33335
G01 X2.10009 Y0.32974
G01 X2.09815 Y0.32631
G01 X2.08071 Y0.29871
G01 X2.07844 Y0.29549
G01 X2.07586 Y0.29251
G01 X2.05328 Y0.26893
G01 X2.05041 Y0.26623
G01 X2.04729 Y0.26382
G01 X2.02047 Y0.24521
G01 X2.01722 Y0.24318
G01 X1.67863 Y0.05421
G01 X1.67539 Y0.05259
G01 X1.66540 Y0.04816
G01 X1.65900 Y0.04596
G01 X1.64840 Y0.04331
G01 X1.64172 Y0.04224
G01 X1.62795 Y0.04134
G01 X0.52559 Y0.04134
G01 X0.51256 Y0.04198
G01 X0.50510 Y0.04310
G01 X0.49447 Y0.04575
G01 X0.48736 Y0.04828
G01 X0.47490 Y0.05421
G01 X0.13632 Y0.24318
G01 X0.13339 Y0.24499
G01 X0.10631 Y0.26338
G01 X0.10311 Y0.26580
G01 X0.10018 Y0.26853
G01 X0.07738 Y0.29202
G01 X0.07474 Y0.29503
G01 X0.07242 Y0.29830
G01 X0.05484 Y0.32592
G01 X0.05286 Y0.32940
G01 X0.05125 Y0.33307
G01 X0.03962 Y0.36367
G01 X0.03839 Y0.36748
G01 X0.03756 Y0.37140
G01 X0.03236 Y0.40372
G01 X0.03192 Y0.40771
G01 X0.03190 Y0.41171
G01 X0.03334 Y0.44442
G01 X0.03372 Y0.44841
G01 X0.03451 Y0.45234
G01 X0.04311 Y0.48610
G01 X0.14936 Y0.82735
G01 X0.15301 Y0.83666
G01 X0.15625 Y0.84311
G01 X0.16153 Y0.85160
G01 X0.16589 Y0.85735
G01 X0.17264 Y0.86473
G01 X0.17798 Y0.86959
G01 X0.18596 Y0.87562
G01 X0.19210 Y0.87942
G01 X0.20104 Y0.88388
G01 X0.20777 Y0.88650
G01 X0.21739 Y0.88926
G01 X0.22449 Y0.89060
G01 X0.23444 Y0.89155
G01 X0.23819 Y0.89173
G01 X1.91535 Y0.89173
G01 X1.91869 Y0.89159
G01 X1.92868 Y0.89074
G01 X1.93592 Y0.88943
G01 X1.94558 Y0.88674
G01 X1.95245 Y0.88411
G01 X1.96144 Y0.87966
G01 X1.96770 Y0.87580
G01 X1.97570 Y0.86976
G01 X1.98114 Y0.86480
G01 X1.98787 Y0.85737
G01 X1.99229 Y0.85149
G01 X1.99753 Y0.84294
G01 X2.00077 Y0.83633
G01 X2.00511 Y0.82469
G01 X2.11043 Y0.48610
G01 X2.11879 Y0.45197
G01 X2.11952 Y0.44809
G01 X2.11987 Y0.44417
G01 X2.12110 Y0.41155
G01 Z-0.03350 F12.59843 ( plunge. )
G04 P0 ( dwell for no time -- G64 should not smooth over this point )
G01 F42.51969
G01 X2.12105 Y0.40760
G01 X2.12060 Y0.40368
G01 X2.11531 Y0.37147
G01 X2.11448 Y0.36762
G01 X2.11327 Y0.36387
G01 X2.10167 Y0.33335
G01 X2.10009 Y0.32974
G01 X2.09815 Y0.32631
G01 X2.08071 Y0.29871
G01 X2.07844 Y0.29549
G01 X2.07586 Y0.29251
G01 X2.05328 Y0.26893
G01 X2.05041 Y0.26623
G01 X2.04729 Y0.26382
G01 X2.02047 Y0.24521
G01 X2.01722 Y0.24318
G01 X1.67863 Y0.05421
G01 X1.67539 Y0.05259
G01 X1.66540 Y0.04816
G01 X1.65900 Y0.04596
G01 X1.64840 Y0.04331
G01 X1.64172 Y0.04224
G01 X1.62795 Y0.04134
G01 X0.52559 Y0.04134
G01 X0.51256 Y0.04198
G01 X0.50510 Y0.04310
G01 X0.49447 Y0.04575
G01 X0.48736 Y0.04828
G01 X0.47490 Y0.05421
G01 X0.13632 Y0.24318
G01 X0.13339 Y0.24499
G01 X0.10631 Y0.26338
G01 X0.10311 Y0.26580
G01 X0.10018 Y0.26853
G01 X0.07738 Y0.29202
G01 X0.07474 Y0.29503
G01 X0.07242 Y0.29830
G01 X0.05484 Y0.32592
G01 X0.05286 Y0.32940
G01 X0.05125 Y0.33307
G01 X0.03962 Y0.36367
G01 X0.03839 Y0.36748
G01 X0.03756 Y0.37140
G01 X0.03236 Y0.40372
G01 X0.03192 Y0.40771
G01 X0.03190 Y0.41171
G01 X0.03334 Y0.44442
G01 X0.03372 Y0.44841
G01 X0.03451 Y0.45234
G01 X0.04311 Y0.48610
G01 X0.14936 Y0.82735
G01 X0.15301 Y0.83666
G01 X0.15625 Y0.84311
G01 X0.16153 Y0.85160
G01 X0.16589 Y0.85735
G01 X0.17264 Y0.86473
G01 X0.17798 Y0.86959
G01 X0.18596 Y0.87562
G01 X0.19210 Y0.87942
G01 X0.20104 Y0.88388
G01 X0.20777 Y0.88650
G01 X0.21739 Y0.88926
G01 X0.22449 Y0.89060
G01 X0.23444 Y0.89155
G01 X0.23819 Y0.89173
G01 X1.91535 Y0.89173
G01 X1.91869 Y0.89159
G01 X1.92868 Y0.89074
G01 X1.93592 Y0.88943
G01 X1.94558 Y0.88674
G01 X1.95245 Y0.88411
G01 X1.96144 Y0.87966
G01 X1.96770 Y0.87580
G01 X1.97570 Y0.86976
G01 X1.98114 Y0.86480
G01 X1.98787 Y0.85737
G01 X1.99229 Y0.85149
G01 X1.99753 Y0.84294
G01 X2.00077 Y0.83633
G01 X2.00511 Y0.82469
G01 X2.11043 Y0.48610
G01 X2.11879 Y0.45197
G01 X2.11952 Y0.44809
G01 X2.11987 Y0.44417
G01 X2.12110 Y0.41155
G01 Z-0.05025 F12.59843 ( plunge. )
G04 P0 ( dwell for no time -- G64 should not smooth over this point )
G01 F42.51969
G01 X2.12105 Y0.40760
G01 X2.12060 Y0.40368
G01 X2.11531 Y0.37147
G01 X2.11448 Y0.36762
G01 X2.11327 Y0.36387
G01 X2.10167 Y0.33335
G01 X2.10009 Y0.32974
G01 X2.09815 Y0.32631
G01 X2.08071 Y0.29871
G01 X2.07844 Y0.29549
G01 X2.07586 Y0.29251
G01 X2.05328 Y0.26893
G01 X2.05041 Y0.26623
G01 X2.04729 Y0.26382
G01 X2.02047 Y0.24521
G01 X2.01722 Y0.24318
G01 X1.67863 Y0.05421
G01 X1.67539 Y0.05259
G01 X1.66540 Y0.04816
G01 X1.65900 Y0.04596
G01 X1.64840 Y0.04331
G01 X1.64172 Y0.04224
G01 X1.62795 Y0.04134
G01 X0.52559 Y0.04134
G01 X0.51256 Y0.04198
G01 X0.50510 Y0.04310
G01 X0.49447 Y0.04575
G01 X0.48736 Y0.04828
G01 X0.47490 Y0.05421
G01 X0.13632 Y0.24318
G01 X0.13339 Y0.24499
G01 X0.10631 Y0.26338
G01 X0.10311 Y0.26580
G01 X0.10018 Y0.26853
G01 X0.07738 Y0.29202
G01 X0.07474 Y0.29503
G01 X0.07242 Y0.29830
G01 X0.05484 Y0.32592
G01 X0.05286 Y0.32940
G01 X0.05125 Y0.33307
G01 X0.03962 Y0.36367
G01 X0.03839 Y0.36748
G01 X0.03756 Y0.37140
G01 X0.03236 Y0.40372
G01 X0.03192 Y0.40771
G01 X0.03190 Y0.41171
G01 X0.03334 Y0.44442
G01 X0.03372 Y0.44841
G01 X0.03451 Y0.45234
G01 X0.04311 Y0.48610
G01 X0.14936 Y0.82735
G01 X0.15301 Y0.83666
G01 X0.15625 Y0.84311
G01 X0.16153 Y0.85160
G01 X0.16589 Y0.85735
G01 X0.17264 Y0.86473
G01 X0.17798 Y0.86959
G01 X0.18596 Y0.87562
G01 X0.19210 Y0.87942
G01 X0.20104 Y0.88388
G01 X0.20777 Y0.88650
G01 X0.21739 Y0.88926
G01 X0.22449 Y0.89060
G01 X0.23444 Y0.89155
G01 X0.23819 Y0.89173
G01 X1.91535 Y0.89173
G01 X1.91869 Y0.89159
G01 X1.92868 Y0.89074
G01 X1.93592 Y0.88943
G01 X1.94558 Y0.88674
G01 X1.95245 Y0.88411
G01 X1.96144 Y0.87966
G01 X1.96770 Y0.87580
G01 X1.97570 Y0.86976
G01 X1.98114 Y0.86480
G01 X1.98787 Y0.85737
G01 X1.99229 Y0.85149
G01 X1.99753 Y0.84294
G01 X2.00077 Y0.83633
G01 X2.00511 Y0.82469
G01 X2.11043 Y0.48610
G01 X2.11879 Y0.45197
G01 X2.11952 Y0.44809
G01 X2.11987 Y0.44417
G01 X2.12110 Y0.41155
G01 Z-0.06700 F12.59843 ( plunge. )
G04 P0 ( dwell for no time -- G64 should not smooth over this point )
G01 F42.51969
G01 X2.12105 Y0.40760
G01 X2.12060 Y0.40368
G01 X2.11531 Y0.37147
G01 X2.11448 Y0.36762
G01 X2.11327 Y0.36387
G01 X2.10167 Y0.33335
G01 X2.10009 Y0.32974
G01 X2.09815 Y0.32631
G01 X2.08071 Y0.29871
G01 X2.07844 Y0.29549
G01 X2.07586 Y0.29251
G01 X2.05328 Y0.26893
G01 X2.05041 Y0.26623
G01 X2.04729 Y0.26382
G01 X2.02047 Y0.24521
G01 X2.01722 Y0.24318
G01 X1.67863 Y0.05421
G01 X1.67539 Y0.05259
G01 X1.66540 Y0.04816
G01 X1.65900 Y0.04596
G01 X1.64840 Y0.04331
G01 X1.64172 Y0.04224
G01 X1.62795 Y0.04134
G01 X0.52559 Y0.04134
G01 X0.51256 Y0.04198
G01 X0.50510 Y0.04310
G01 X0.49447 Y0.04575
G01 X0.48736 Y0.04828
G01 X0.47490 Y0.05421
G01 X0.13632 Y0.24318
G01 X0.13339 Y0.24499
G01 X0.10631 Y0.26338
G01 X0.10311 Y0.26580
G01 X0.10018 Y0.26853
G01 X0.07738 Y0.29202
G01 X0.07474 Y0.29503
G01 X0.07242 Y0.29830
G01 X0.05484 Y0.32592
G01 X0.05286 Y0.32940
G01 X0.05125 Y0.33307
G01 X0.03962 Y0.36367
G01 X0.03839 Y0.36748
G01 X0.03756 Y0.37140
G01 X0.03236 Y0.40372
G01 X0.03192 Y0.40771
G01 X0.03190 Y0.41171
G01 X0.03334 Y0.44442
G01 X0.03372 Y0.44841
G01 X0.03451 Y0.45234
G01 X0.04311 Y0.48610
G01 X0.14936 Y0.82735
G01 X0.15301 Y0.83666
G01 X0.15625 Y0.84311
G01 X0.16153 Y0.85160
G01 X0.16589 Y0.85735
G01 X0.17264 Y0.86473
G01 X0.17798 Y0.86959
G01 X0.18596 Y0.87562
G01 X0.19210 Y0.87942
G01 X0.20104 Y0.88388
G01 X0.20777 Y0.88650
G01 X0.21739 Y0.88926
G01 X0.22449 Y0.89060
G01 X0.23444 Y0.89155
G01 X0.23819 Y0.89173
G01 X1.91535 Y0.89173
G01 X1.91869 Y0.89159
G01 X1.92868 Y0.89074
G01 X1.93592 Y0.88943
G01 X1.94558 Y0.88674
G01 X1.95245 Y0.88411
G01 X1.96144 Y0.87966
G01 X1.96770 Y0.87580
G01 X1.97570 Y0.86976
G01 X1.98114 Y0.86480
G01 X1.98787 Y0.85737
G01 X1.99229 Y0.85149
G01 X1.99753 Y0.84294
G01 X2.00077 Y0.83633
G01 X2.00511 Y0.82469
G01 X2.11043 Y0.48610
G01 X2.11879 Y0.45197
G01 X2.11952 Y0.44809
G01 X2.11987 Y0.44417
G01 X2.12110 Y0.41155

G04 P0 ( dwell for no time -- G64 should not smooth over this point )
G00 Z2.000000 ( retract )

M5 ( Spindle off. )
G04 P1.000000
M9 ( Coolant off. )
M2 ( Program end. )

( pcb2gcode 2.5.0 )
( Software-independent Gcode )

G94 ( Inches per minute feed rate. )
G20 ( Units == INCHES. )

G90 ( Absolute coordinates. )
G00 S24000 ( RPM spindle speed. )
G01 F42.51969 ( Feedrate. )


G00 Z2.00000 (Retract to tool change height)
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

G00 X0.03244 Y0.41155 ( rapid move to begin. )
G01 Z0.10000 F12.59843 ( plunge. )
G04 P0 ( dwell for no time -- G64 should not smooth over this point )
G01 F42.51969
G01 X0.03249 Y0.40760
G01 X0.03294 Y0.40368
G01 X0.03823 Y0.37147
G01 X0.03906 Y0.36762
G01 X0.04027 Y0.36387
G01 X0.05187 Y0.33335
G01 X0.05345 Y0.32974
G01 X0.05539 Y0.32631
G01 X0.07283 Y0.29871
G01 X0.07510 Y0.29549
G01 X0.07768 Y0.29251
G01 X0.10026 Y0.26893
G01 X0.10313 Y0.26623
G01 X0.10625 Y0.26382
G01 X0.13307 Y0.24521
G01 X0.13632 Y0.24318
G01 X0.47491 Y0.05421
G01 X0.47815 Y0.05259
G01 X0.48814 Y0.04816
G01 X0.49454 Y0.04596
G01 X0.50514 Y0.04331
G01 X0.51182 Y0.04224
G01 X0.52559 Y0.04134
G01 X1.62795 Y0.04134
G01 X1.64098 Y0.04198
G01 X1.64844 Y0.04310
G01 X1.65907 Y0.04575
G01 X1.66618 Y0.04828
G01 X1.67864 Y0.05421
G01 X2.01722 Y0.24318
G01 X2.02015 Y0.24499
G01 X2.04723 Y0.26338
G01 X2.05043 Y0.26580
G01 X2.05336 Y0.26853
G01 X2.07616 Y0.29202
G01 X2.07880 Y0.29503
G01 X2.08112 Y0.29830
G01 X2.09870 Y0.32592
G01 X2.10068 Y0.32940
G01 X2.10229 Y0.33307
G01 X2.11392 Y0.36367
G01 X2.11515 Y0.36748
G01 X2.11598 Y0.37140
G01 X2.12118 Y0.40372
G01 X2.12162 Y0.40771
G01 X2.12164 Y0.41171
G01 X2.12020 Y0.44442
G01 X2.11982 Y0.44841
G01 X2.11903 Y0.45234
G01 X2.11043 Y0.48610
G01 X2.00418 Y0.82735
G01 X2.00053 Y0.83666
G01 X1.99729 Y0.84311
G01 X1.99201 Y0.85160
G01 X1.98765 Y0.85735
G01 X1.98090 Y0.86473
G01 X1.97556 Y0.86959
G01 X1.96758 Y0.87562
G01 X1.96144 Y0.87942
G01 X1.95250 Y0.88388
G01 X1.94577 Y0.88650
G01 X1.93615 Y0.88926
G01 X1.92905 Y0.89060
G01 X1.91910 Y0.89155
G01 X1.91535 Y0.89173
G01 X0.23819 Y0.89173
G01 X0.23485 Y0.89159
G01 X0.22486 Y0.89074
G01 X0.21762 Y0.88943
G01 X0.20796 Y0.88674
G01 X0.20109 Y0.88411
G01 X0.19210 Y0.87966
G01 X0.18584 Y0.87580
G01 X0.17784 Y0.86976
G01 X0.17240 Y0.86480
G01 X0.16567 Y0.85737
G01 X0.16125 Y0.85149
G01 X0.15601 Y0.84294
G01 X0.15277 Y0.83633
G01 X0.14843 Y0.82469
G01 X0.04311 Y0.48610
G01 X0.03475 Y0.45197
G01 X0.03402 Y0.44809
G01 X0.03367 Y0.44417
G01 X0.03244 Y0.41155

G04 P0 ( dwell for no time -- G64 should not smooth over this point )
G00 Z2.000000 ( retract )

M5 ( Spindle off. )
G04 P1.000000
M9 ( Coolant off. )
M2 ( Program end. )

