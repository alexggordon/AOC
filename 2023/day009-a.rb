#!/Users/alexggordon/.rbenv/shims/ruby
require 'active_support/all'

input = <<-AOC
27 49 92 176 327 586 1039 1879 3511 6711 12850 24194 44291 78456 134365 222769 358339 560653 855336 1275364 1862543
15 25 36 57 117 286 706 1643 3584 7420 14791 28745 55012 104457 197703 373565 703877 1318603 2446886 4482001 8081143
2 -1 -1 5 35 140 429 1101 2482 5067 9586 17171 29829 51664 91688 169675 327410 648943 1295161 2560233 4960367
17 40 75 124 195 314 553 1083 2269 4852 10332 21799 45683 95258 197352 404834 819561 1634448 3210609 6218318 11892083
12 28 47 77 148 320 690 1410 2740 5170 9648 17942 33138 60228 106667 182671 300884 474856 715541 1024739 1384064
23 34 56 98 179 335 630 1192 2323 4773 10330 22981 51089 111404 236460 488303 984007 1942732 3771076 7214380 13617999
-3 9 34 76 147 268 465 760 1157 1623 2064 2296 2011 738 -2201 -7740 -17123 -31963 -54306 -86700 -132269
2 5 10 28 85 240 617 1451 3148 6359 12068 21694 37207 61258 97323 149861 224486 328153 469358 658352 907369
2 8 19 26 30 54 164 525 1536 4108 10175 23584 51670 108250 219765 438340 869318 1727304 3445143 6876026 13651774
-7 -3 9 42 129 327 726 1476 2850 5366 9996 18495 33888 61158 108183 186975 315279 518595 832691 1306680 2006739
14 15 24 47 93 174 306 517 868 1493 2664 4887 9035 16524 29538 51309 86458 141403 224840 348303 526809
-4 10 50 125 241 410 669 1105 1873 3186 5269 8334 12802 20376 37376 83418 211850 554706 1416484 3461131 8070127
15 39 76 141 268 519 996 1856 3329 5739 9528 15283 23766 35947 53040 76542 108275 150431 205620 276921 367936
24 38 52 61 53 10 -73 -138 42 1075 4356 12809 32195 73394 156469 318214 626801 1211053 2319569 4439602 8532786
4 10 36 100 243 556 1233 2668 5629 11577 23262 45830 88824 169667 319485 592472 1080426 1934604 3397664 5849192 9869161
-4 7 35 84 170 335 665 1316 2552 4799 8719 15308 26022 42935 68933 107948 165236 247703 364283 526372 748322
-7 4 31 85 196 437 976 2172 4734 9973 20207 39455 74747 138831 256043 475047 895657 1722829 3370197 6649632 13104456
16 32 58 111 217 410 745 1344 2499 4865 9805 20028 40853 82880 167863 341774 703534 1466538 3085872 6511449 13672565
-5 -11 -19 -29 -41 -55 -71 -89 -109 -131 -155 -181 -209 -239 -271 -305 -341 -379 -419 -461 -505
5 8 27 84 220 507 1078 2190 4332 8382 15798 28785 50293 83555 130708 190077 252623 301509 328232 401228 871348
22 31 48 86 172 357 726 1417 2671 4960 9297 17952 36037 74887 159044 340266 724833 1525270 3155647 6402851 12728283
13 26 37 45 58 113 311 867 2175 4888 10013 19021 33972 57655 93743 146963 223281 330102 476485 673373 933838
12 37 78 151 286 522 901 1478 2383 3991 7275 14433 29888 61749 123771 237731 435898 762853 1275224 2036831 3105150
8 21 55 123 237 408 646 960 1358 1847 2433 3121 3915 4818 5832 6958 8196 9545 11003 12567 14233
3 19 44 71 100 149 259 491 916 1602 2605 3974 5783 8206 11654 16996 25889 41245 67866 113281 188822
8 19 57 138 279 498 814 1247 1818 2549 3463 4584 5937 7548 9444 11653 14204 17127 20453 24214 28443
9 4 5 23 80 223 554 1285 2829 5953 12058 23725 45786 87356 165507 311589 581617 1072658 1947779 3472867 6069516
4 5 15 44 100 191 336 594 1120 2264 4761 10142 21660 46317 99077 211200 446093 928628 1898502 3807091 7495429
15 29 52 91 168 327 635 1168 1976 3031 4181 5172 5894 7252 13693 39949 128019 387751 1089032 2861339 7106618
4 27 76 163 300 499 772 1131 1588 2155 2844 3667 4636 5763 7060 8539 10212 12091 14188 16515 19084
0 14 49 126 288 620 1290 2632 5308 10611 21004 41028 78750 147953 271285 484572 842448 1425348 2347731 3767130 5893244
3 5 19 56 140 317 663 1291 2357 4065 6671 10486 15878 23273 33155 46065 62599 83405 109179 140660 178624
15 24 50 100 174 275 432 735 1381 2730 5370 10190 18460 31917 52856 84225 129723 193900 282258 401352 558890
3 10 28 67 151 337 751 1653 3540 7288 14321 26777 47618 80603 130010 199955 293113 408598 538706 664167 747489
20 41 74 126 209 345 579 1013 1892 3804 8106 17770 38987 84130 177153 363333 726644 1420251 2718970 5107486 9425181
15 27 39 51 63 75 87 99 111 123 135 147 159 171 183 195 207 219 231 243 255
8 21 58 139 303 630 1288 2630 5374 10904 21738 42245 79828 147184 267217 484267 889432 1675307 3248534 6450147 12967977
12 18 24 30 36 42 48 54 60 66 72 78 84 90 96 102 108 114 120 126 132
0 4 25 68 141 272 548 1191 2693 6050 13171 27607 55878 109928 211696 401582 753886 1404336 2597893 4769494 8676715
4 -3 -3 13 61 170 394 850 1809 3869 8243 17220 34937 68787 132155 249818 468390 875793 1636077 3049219 5650065
-7 -12 -10 18 99 265 551 994 1633 2510 3672 5174 7083 9483 12481 16214 20857 26632 33818 42762 53891
10 11 22 61 152 325 616 1067 1726 2647 3890 5521 7612 10241 13492 17455 22226 27907 34606 42437 51520
-3 8 30 79 184 392 785 1526 2963 5845 11749 23884 48524 97419 191628 367293 683905 1235574 2165672 3684933 6092624
2 3 19 75 213 511 1120 2320 4588 8669 15665 27239 46225 78349 136635 251895 496486 1036135 2239379 4901527 10688757
1 16 38 75 146 280 530 1025 2091 4478 9733 20768 42711 84231 159727 293088 524193 920024 1593528 2736001 4674548
3 25 64 128 238 443 857 1732 3581 7365 14758 28504 52880 94279 161927 268748 432391 676433 1031772 1538224 2246338
15 31 66 135 254 453 816 1572 3270 7080 15271 31926 63963 122540 224931 396969 676161 1115589 1788720 2795257 4268172
27 52 87 132 187 252 327 412 507 612 727 852 987 1132 1287 1452 1627 1812 2007 2212 2427
6 4 2 0 -2 -4 -6 -8 -10 -12 -14 -16 -18 -20 -22 -24 -26 -28 -30 -32 -34
4 11 20 44 117 313 790 1867 4137 8611 16871 31171 54336 89114 136235 189681 226470 186864 -59204 -757963 -2305449
4 11 27 57 125 292 679 1491 3030 5674 9787 15514 22407 28825 31055 22114 -9784 -83075 -224933 -473457 -879727
13 17 21 35 75 166 351 719 1485 3189 7136 16294 37055 82679 180193 384661 809354 1689777 3517915 7317730 15196654
10 17 24 31 38 45 52 59 66 73 80 87 94 101 108 115 122 129 136 143 150
27 49 91 159 267 461 851 1657 3290 6505 12672 24205 45163 81989 144294 245595 404241 646129 1014881 1605299 2658415
19 34 60 116 232 449 819 1405 2281 3532 5254 7554 10550 14371 19157 25059 32239 40870 51136 63232 77364
18 24 42 87 174 318 534 837 1242 1764 2418 3219 4182 5322 6654 8193 9954 11952 14202 16719 19518
6 29 59 90 126 189 331 657 1366 2817 5627 10808 19950 35457 60843 101095 163110 256213 392763 588854 865118
24 38 63 112 208 396 772 1544 3141 6387 12773 24924 47533 89430 168250 320635 623454 1235720 2477499 4972172 9893262
20 31 47 90 193 406 812 1566 2988 5773 11448 23343 48599 102174 214505 445531 909284 1815331 3536133 6713024 12418165
2 8 15 29 71 183 441 988 2108 4377 8967 18275 37245 76104 155813 318424 645830 1292206 2537887 4875649 9144499
12 27 60 123 244 489 1000 2064 4242 8598 17076 33085 62395 114591 205730 363815 640895 1140372 2078175 3917166 7655393
18 41 85 154 264 458 825 1540 2955 5784 11438 22579 43975 83751 155144 278883 486328 823515 1356267 2176544 3410218
25 47 94 176 295 447 637 917 1470 2781 5959 13315 29395 62880 130203 262551 519331 1013463 1957376 3743766 7082563
12 36 78 153 285 506 857 1391 2178 3312 4920 7173 10299 14598 20459 28379 38984 53052 71538 95601 126633
-9 -10 -9 -9 -1 49 226 731 2030 5162 12340 28097 61446 129887 266659 533459 1041993 1989246 3713317 6779115 12106201
20 29 35 31 19 21 90 321 862 1925 3797 6851 11557 18493 28356 41973 60312 84493 115799 155687 205799
-6 -3 11 42 98 202 434 1017 2457 5737 12550 25536 48463 86262 144791 230163 347428 498349 677957 869510 1037416
4 7 5 -2 -13 -16 32 239 835 2267 5358 11580 23540 45868 86847 161361 296086 538343 970707 1734362 3065353
23 34 45 56 67 78 89 100 111 122 133 144 155 166 177 188 199 210 221 232 243
15 24 53 118 232 398 608 856 1169 1659 2616 4730 9709 21946 52622 128909 313015 739022 1680219 3666426 7680242
17 38 88 196 409 802 1506 2779 5162 9791 18983 37288 73326 142974 274971 521020 974399 1804584 3321362 6091664 11147623
8 8 10 17 39 104 275 677 1544 3319 6903 14301 30250 66118 148768 339775 775365 1746373 3853149 8297308 17418410
-3 2 15 47 120 283 651 1479 3282 7013 14320 27926 52219 94208 165102 282908 476627 792860 1305925 2132937 3455722
16 26 41 60 86 138 269 592 1329 2920 6269 13283 28019 59072 124461 261459 545998 1130142 2312689 4668734 9281108
-6 6 46 126 262 491 897 1643 3003 5392 9425 16132 27661 49173 93242 189001 399616 853530 1797416 3682042 7296424
-4 -1 13 47 127 326 824 2022 4746 10587 22427 45208 87060 161160 289492 511743 907304 1648299 3121165 6190937 12747973
17 31 61 134 285 567 1071 1956 3494 6140 10642 18211 30776 51354 84570 137367 219951 347021 539339 825700 1245367
4 3 11 37 90 179 313 501 752 1075 1479 1973 2566 3267 4085 5029 6108 7331 8707 10245 11954
19 46 84 140 224 358 596 1065 2064 4295 9340 20529 44357 92619 185525 356467 660393 1191126 2121031 3794357 6943216
8 16 37 100 246 537 1085 2114 4078 7876 15236 29393 56278 106613 199710 370762 685812 1274056 2398767 4611270 9075822
2 -4 -19 -38 -51 -33 87 495 1640 4543 11410 26772 59475 125979 255657 499296 943299 1735447 3136428 5630823 10173850
13 27 38 49 83 210 581 1472 3345 6937 13400 24555 43443 75674 132840 240992 460991 935765 1996936 4399387 9824965
3 12 35 67 93 81 -25 -310 -889 -1902 -3501 -5827 -8975 -12945 -17577 -22468 -26869 -29560 -28701 -21657 -4795
15 27 46 66 87 125 222 456 951 1887 3510 6142 10191 16161 24662 36420 52287 73251 100446 135162 178855
14 23 39 75 169 398 911 2007 4290 8934 18087 35434 66925 121655 212859 358956 584542 921193 1407895 2090869 3022505
15 36 81 166 312 559 986 1730 2993 5021 8033 12071 16734 20750 21330 13237 -12509 -70382 -182663 -382436 -717404
19 32 45 58 71 84 97 110 123 136 149 162 175 188 201 214 227 240 253 266 279
-2 5 22 60 151 373 887 1980 4103 7888 14123 23659 37218 55066 76510 99173 117996 123911 102124 29942 -125927
9 12 22 34 39 22 -29 -77 87 1096 4442 13136 32617 71938 145339 274569 492877 852644 1440422 2405998 4016403
-9 -6 6 35 100 239 526 1098 2199 4271 8176 15743 31038 63112 131591 277503 583471 1210275 2461445 4894923 9512306
12 23 55 123 242 427 693 1055 1528 2127 2867 3763 4830 6083 7537 9207 11108 13255 15663 18347 21322
11 14 21 26 25 31 109 449 1515 4352 11208 26742 60269 129816 269400 542212 1064843 2052166 3900239 7337374 13693713
10 31 73 150 276 476 823 1514 2996 6142 12452 24210 44460 76567 122998 182788 246942 290761 261763 61494 -480916
-4 -8 -10 -5 30 161 548 1551 3942 9304 20736 44029 89532 174989 329698 600421 1059560 1816208 3030786 4934087 7851666
-4 3 20 47 84 131 188 255 332 419 516 623 740 867 1004 1151 1308 1475 1652 1839 2036
8 12 16 20 24 28 32 36 40 44 48 52 56 60 64 68 72 76 80 84 88
21 30 36 46 86 222 598 1499 3452 7392 14956 29058 55103 103623 195940 375980 734087 1453470 2898156 5775242 11427276
-6 -9 -4 16 58 129 236 386 586 843 1164 1556 2026 2581 3228 3974 4826 5791 6876 8088 9434
8 13 20 29 40 53 68 85 104 125 148 173 200 229 260 293 328 365 404 445 488
19 26 32 48 96 211 458 978 2082 4425 9321 19308 39132 77369 148902 278349 504201 882744 1489634 2415052 3745420
10 16 24 40 81 183 409 857 1668 3034 5206 8502 13315 20121 29487 42079 58670 80148 107524 141940 184677
21 26 30 39 59 99 190 425 1023 2422 5411 11315 22256 41568 74658 131212 231061 418918 798584 1606547 3360157
9 8 8 22 86 266 662 1403 2625 4431 6867 10055 14884 25203 53477 133622 347577 876546 2094306 4729204 10134266
-1 -2 8 32 73 143 280 580 1265 2834 6384 14244 31139 66195 136212 270772 519915 965310 1736072 3030632 5146357
-2 -2 13 54 132 258 443 698 1034 1462 1993 2638 3408 4314 5367 6578 7958 9518 11269 13222 15388
-2 6 37 114 269 538 965 1638 2793 5036 9744 19705 40030 79298 150754 273141 470376 768738 1189479 1733748 2355379
16 23 24 15 6 48 281 1011 2839 6897 15303 32048 64706 127665 248103 476869 908233 1716234 3223529 6036316 11315929
19 32 68 142 265 447 721 1214 2309 4976 11411 26234 58716 126943 265692 541495 1081721 2131187 4163142 8097743 15731633
1 -3 -6 -2 22 89 251 650 1660 4159 9982 22608 48171 97033 186547 346470 630043 1136417 2054362 3743666 6880068
24 47 92 170 291 461 690 1024 1630 2995 6347 14470 33172 73795 157408 321954 635304 1221423 2316722 4394762 8439429
23 48 86 149 276 546 1093 2138 4061 7537 13765 24853 44523 79524 142575 258436 475994 891197 1688199 3208496 6058065
3 13 49 128 272 504 852 1373 2208 3676 6407 11496 20625 36039 60164 94507 137265 178775 193541 127056 -125026
4 -2 -11 -25 -36 3 218 875 2497 6123 13899 30391 65368 139404 294608 614273 1257478 2518044 4922297 9387695 17475856
5 19 49 109 219 403 687 1103 1706 2616 4111 6822 12116 22794 44271 86434 166379 312193 567853 999139 1700177
21 50 107 220 438 835 1512 2597 4243 6624 9929 14354 20092 27321 36190 46803 59201 73342 89079 106136 124082
27 51 101 202 395 740 1313 2194 3454 5171 7538 11170 17772 31396 60592 121846 244797 479835 908803 1659658 2926089
17 37 67 109 166 250 412 817 1900 4669 11281 26120 57765 122464 250040 493560 944611 1756661 3179751 5610679 9663912
13 15 16 16 15 13 10 6 1 -5 -12 -20 -29 -39 -50 -62 -75 -89 -104 -120 -137
12 13 11 -2 -39 -104 -149 24 963 3946 11669 29464 67455 144426 294890 582251 1123729 2138238 4039298 7616181 14386452
7 20 51 104 183 292 435 616 839 1108 1427 1800 2231 2724 3283 3912 4615 5396 6259 7208 8247
5 5 8 19 51 134 329 746 1571 3135 6123 12145 25114 54288 120647 269980 599712 1314292 2840161 6063874 12820008
12 15 13 7 0 -3 5 33 92 195 357 595 928 1377 1965 2717 3660 4823 6237 7935 9952
1 8 16 31 81 244 689 1737 3973 8477 17295 34347 67092 129523 247677 470351 891245 1696557 3268454 6407922 12805039
9 33 76 143 237 360 525 789 1317 2487 5046 10327 20537 39126 71247 124317 208689 338445 532320 814767 1217173
11 31 64 110 169 241 326 424 535 659 796 946 1109 1285 1474 1676 1891 2119 2360 2614 2881
26 42 70 127 236 435 800 1487 2809 5398 10572 21146 43107 88829 182848 371662 739580 1433330 2698962 4935561 8771430
2 11 40 93 179 314 517 803 1177 1632 2152 2725 3398 4496 7371 16631 46060 132925 369880 971301 2402941
5 15 28 44 63 85 110 138 169 203 240 280 323 369 418 470 525 583 644 708 775
12 24 48 106 232 475 909 1662 2974 5293 9422 16753 29700 52649 94250 173043 330936 664202 1391576 2997148 6517328
-1 17 59 136 265 479 854 1563 2960 5693 10849 20148 36241 63285 108309 184739 321329 583473 1120691 2265768 4730029
2 -3 -5 14 91 282 664 1350 2548 4733 9060 18229 38123 80680 168633 342961 674142 1278589 2341985 4151616 7140235
11 32 67 124 226 434 878 1803 3653 7238 14067 27011 51650 99105 192160 378598 759877 1551137 3202487 6635077 13683300
22 49 84 133 214 355 588 943 1457 2233 3620 6653 14027 32153 75410 174913 396773 880766 1923511 4158780 8947225
15 33 73 148 287 553 1078 2128 4219 8323 16251 31416 60433 116531 226750 446724 890047 1784573 3576629 7117548 13987187
8 16 40 102 243 527 1056 2021 3824 7316 14206 27706 53487 101031 185474 330045 569216 952688 1550348 2458342 3806419
14 32 56 87 145 286 626 1379 2934 6028 12118 24115 47717 93666 181356 344335 638374 1152920 2026908 3470079 5791137
16 30 47 82 166 351 715 1367 2452 4156 6711 10400 15562 22597 31971 44221 59960 79882 104767 135486 173006
15 21 33 65 152 369 870 1969 4302 9132 18888 38064 74645 142274 263427 473922 829153 1412511 2346531 3807387 6043446
2 11 34 82 177 374 809 1793 3980 8650 18179 36848 72337 138680 262338 494747 937838 1794641 3466872 6738086 13108833
8 32 85 189 374 673 1107 1667 2323 3124 4498 7917 17159 40477 94074 207383 430762 846336 1582851 2835549 4892228
23 44 84 148 239 358 504 674 863 1064 1268 1464 1639 1778 1864 1878 1799 1604 1268 764 63
8 11 30 73 153 292 535 989 1912 3905 8328 18210 40229 88947 195693 426912 921729 1968565 4161259 8717037 18122990
19 20 16 7 -7 -26 -50 -79 -113 -152 -196 -245 -299 -358 -422 -491 -565 -644 -728 -817 -911
-1 5 18 47 118 279 616 1295 2650 5354 10743 21411 42250 82159 156668 291686 528445 929423 1584524 2615995 4179378
1 4 5 4 1 -4 -11 -20 -31 -44 -59 -76 -95 -116 -139 -164 -191 -220 -251 -284 -319
10 30 63 115 204 363 637 1086 1835 3268 6569 15003 36649 89801 213009 482818 1043768 2157242 4278403 8173867 15097050
25 41 67 117 222 433 820 1480 2579 4477 8040 15359 31320 66885 145720 317282 682310 1442050 2992534 6103186 12250215
12 18 24 30 36 42 48 54 60 66 72 78 84 90 96 102 108 114 120 126 132
15 22 40 80 159 300 532 890 1415 2154 3160 4492 6215 8400 11124 14470 18527 23390 29160 35944 43855
8 7 11 41 134 350 790 1640 3278 6516 13097 26628 54204 109065 214728 411149 763596 1375053 2403127 4082595 6754906
19 29 36 40 53 119 342 922 2199 4705 9224 16860 29113 47963 75962 116334 173083 251109 356332 495824 677949
0 0 -5 -5 35 192 613 1574 3615 7833 16464 33946 68728 136175 263016 493891 900674 1595382 2747625 4607709 7536673
-2 0 7 14 16 6 -27 -83 -90 254 1829 6796 19932 51036 119067 258967 532494 1044852 1969467 3583930 6320920
26 35 52 99 221 492 1020 1960 3549 6182 10553 17890 30318 51389 86823 145509 240820 392301 627794 986069 1520035
5 21 46 78 125 234 550 1426 3608 8527 18748 38671 75709 142525 261777 476692 874459 1636085 3137694 6146600 12183961
-2 -6 -6 18 104 324 825 1919 4252 9083 18697 36969 70134 128019 226586 393988 684961 1212859 2215513 4180473 8066083
9 3 0 17 89 288 750 1702 3476 6492 11187 17862 26414 35915 43995 45981 33739 -5839 -92766 -256377 -538305
8 14 18 21 28 50 115 309 881 2459 6437 15606 35115 73861 146420 275644 496062 858236 1434236 2324411 3665646
-7 -11 -6 15 60 157 387 931 2131 4565 9136 17175 30558 51837 84385 132555 201853 299125 432758 612895 851664
10 19 24 25 22 15 4 -11 -30 -53 -80 -111 -146 -185 -228 -275 -326 -381 -440 -503 -570
13 19 31 52 101 226 526 1205 2703 5983 13105 28309 60021 124633 253872 509555 1013313 2005639 3960067 7796758 15268381
1 8 29 69 132 232 426 877 1954 4375 9398 19064 36495 66249 114733 190674 305647 474658 716779 1055831 1521110
16 24 26 23 18 16 24 51 108 208 366 599 926 1368 1948 2691 3624 4776 6178 7863 9866
2 9 16 23 30 37 44 51 58 65 72 79 86 93 100 107 114 121 128 135 142
-6 -7 -8 -9 -10 -11 -12 -13 -14 -15 -16 -17 -18 -19 -20 -21 -22 -23 -24 -25 -26
16 35 60 94 145 232 391 684 1223 2231 4173 8002 15578 30332 58262 109364 199618 353667 608346 1017238 1656455
-2 3 31 105 258 541 1053 2022 3981 8098 16734 34318 68643 132702 247198 443877 769848 1293069 2109193 3349983 5193520
-8 -13 -18 -23 -28 -33 -38 -43 -48 -53 -58 -63 -68 -73 -78 -83 -88 -93 -98 -103 -108
10 30 63 126 257 536 1124 2334 4755 9470 18464 35449 67620 129460 250952 495036 993952 2023078 4146993 8500420 17313419
-9 -12 -14 -15 -15 -14 -12 -9 -5 0 6 13 21 30 40 51 63 76 90 105 121
-5 -8 -10 -4 22 91 247 575 1252 2676 5755 12487 27048 57780 120827 246847 493437 967924 1868360 3555370 6674502
1 7 13 19 25 31 37 43 49 55 61 67 73 79 85 91 97 103 109 115 121
10 12 19 46 131 355 869 1923 3896 7344 13120 22688 38891 67754 122697 234467 474563 1009589 2223578 4982855 11186148
3 -1 7 43 125 273 509 857 1343 1995 2843 3919 5257 6893 8865 11213 13979 17207 20943 25235 30133
13 24 36 47 70 147 361 848 1829 3712 7353 14609 29360 59215 118142 230266 435053 794032 1399090 2382195 3926146
9 6 11 46 151 398 912 1911 3803 7420 14528 28829 57767 115566 228065 440074 826157 1505954 2665385 4585336 7679711
16 39 76 127 192 287 472 902 1936 4380 10002 22541 49545 105547 217409 433311 838156 1580625 2921540 5320719 9591714
0 3 21 71 173 355 678 1297 2575 5268 10799 21634 41766 77341 137657 237491 403773 694697 1250635 2419574 5045700
6 13 17 26 67 205 584 1500 3516 7629 15499 29750 54353 95101 160186 260888 412386 634701 953781 1402738 2023247
13 25 45 80 128 176 209 245 427 1232 3904 11298 29466 70580 158268 337300 691065 1372831 2660967 5054944 9439092
12 27 56 109 217 450 952 2016 4237 8811 18102 36684 73186 143428 275536 517963 951618 1707611 2992452 5122887 8572903
11 9 18 50 123 268 550 1128 2407 5389 12427 28744 65328 144230 308068 637127 1280826 2517520 4871558 9346510 17891302
21 38 67 119 209 358 602 1007 1685 2817 4726 8115 14700 28634 59344 126700 269817 561276 1129161 2190075 4097255
20 42 87 173 334 639 1220 2307 4268 7652 13233 22053 35462 55153 83190 122027 174516 243902 333803 448173 591246
-8 -17 -31 -55 -87 -106 -57 174 807 2254 5266 11168 22214 42099 76670 134883 230058 381489 616471 972811 1501895
0 7 34 95 211 424 819 1555 2919 5449 10239 19663 38964 79482 164782 341635 698754 1397451 2720024 5143775 9451177
19 26 34 59 144 369 871 1896 3913 7829 15369 29767 57136 109398 210718 411416 816946 1645551 3337551 6752638 13509007
17 28 54 109 207 362 588 899 1309 1832 2482 3273 4219 5334 6632 8127 9833 11764 13934 16357 19047
17 24 43 87 168 300 509 860 1528 2974 6339 14232 32144 70737 149186 299524 571463 1036320 1787319 2931489 4565420
0 8 33 87 192 392 779 1532 2965 5579 10114 17600 29411 47333 73666 111391 164446 238170 339991 480453 674698
-10 -13 -4 36 137 338 676 1159 1720 2174 2272 2106 3430 13019 50131 161667 451022 1130269 2610728 5654808 11623123
12 27 59 121 226 387 617 929 1336 1851 2487 3257 4174 5251 6501 7937 9572 11419 13491 15801 18362
-6 5 43 135 328 690 1307 2277 3702 5679 8291 11599 15636 20404 25875 31997 38706 45945 53691 61991 71008
-4 -10 -24 -54 -111 -209 -365 -599 -934 -1396 -2014 -2820 -3849 -5139 -6731 -8669 -11000 -13774 -17044 -20866 -25299
14 13 10 15 48 152 421 1050 2418 5219 10660 20749 38700 69486 120575 202888 332022 529785 826094 1261291 1888936
13 32 68 142 287 548 982 1658 2657 4072 6008 8582 11923 16172 21482 28018 35957 45488 56812 70142 85703
-5 0 15 47 113 262 609 1386 3024 6296 12579 24342 46049 85805 158353 290736 533880 988511 1866498 3637488 7371468
4 4 8 16 28 44 64 88 116 148 184 224 268 316 368 424 484 548 616 688 764
3 5 9 15 23 33 45 59 75 93 113 135 159 185 213 243 275 309 345 383 423
8 23 45 76 121 182 252 312 334 293 191 96 199 892 2870 7260 15780 30931 56225 96452 157989
AOC

# input = <<-AOC
# 0 3 6 9 12 15
# 1 3 6 10 15 21
# 10 13 16 21 30 45
# AOC

input = input.split("\n").map { _1.split.map(&:to_i) }

sum = 0

puts input.each_with_index.reduce([]) { |map, (line, idx)|
  # puts map, line, idx
  last = line
  map[idx] ||= []
  map[idx].push(line)
  while !last.all? { _1.zero? }
    arr = []
    last.each_with_index {|datum, didx|
      unless last.count == (didx + 1)
        arr.push(last[didx+1] - datum)
      end
    }
    map[idx].push(arr)
    last = arr
  end
  map
}.reduce(0) {|cnt, map|
  map.reverse.each_cons(2).with_index.map do |(last,nxt), idx|
    nxt.push(last.last + nxt.last) 
  end
  cnt += map.first.last
}


















