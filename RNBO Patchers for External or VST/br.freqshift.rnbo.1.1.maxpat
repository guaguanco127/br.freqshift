{
    "patcher": {
        "fileversion": 1,
        "appversion": {
            "major": 9,
            "minor": 1,
            "revision": 4,
            "architecture": "x64",
            "modernui": 1
        },
        "classnamespace": "box",
        "rect": [
            134.0,
            159.0,
            820.0,
            620.0
        ],
        "description": "br.freqshift.rnbo.1.1 -- Created by Brian Riordan, guaguanco127@gmail.com -- https://github.com/guaguanco127/ -- Credits: allpass-pair Hilbert structure after Olli Niemitalo (coefficients refit here for 20 Hz - 20 kHz at 44.1 - 192 kHz); frequency shifting as taught in Cipriani & Giri, Electronic Music and Sound Design Vol. 3.",
        "autosave": 0,
        "parameters": {
            "obj-gain": [
                "Out",
                "Out",
                0
            ],
            "inherited_shortname": 1
        },
        "boxes": [
            {
                "box": {
                    "id": "obj-signature",
                    "maxclass": "comment",
                    "text": "br.freqshift.rnbo.1.1 -- Created by Brian Riordan, guaguanco127@gmail.com\nhttps://github.com/guaguanco127/ -- Credits: allpass-pair Hilbert structure after Olli Niemitalo (coefficients refit here for 20 Hz - 20 kHz at 44.1 - 192 kHz); frequency shifting as taught in Cipriani & Giri, Electronic Music and Sound Design Vol. 3.",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        250.0,
                        15.0,
                        520.0,
                        60.0
                    ],
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "linecount": 4
                }
            },
            {
                "box": {
                    "id": "obj-intro",
                    "maxclass": "comment",
                    "text": "RNBO version of br.freqshift.1.1 (same gen~ code). Drop a sample onto the playlist~, start it, raise the slider slowly, then play with the parameters. Try Shift 25, Feedback 0.85 for the barber-pole.",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        250.0,
                        80.0,
                        520.0,
                        47.0
                    ],
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "linecount": 3
                }
            },
            {
                "box": {
                    "id": "obj-drop",
                    "maxclass": "comment",
                    "text": "Drop sample into here",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        30.0,
                        15.0,
                        150.0,
                        20.0
                    ],
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "id": "obj-pl",
                    "maxclass": "playlist~",
                    "mode": "basic",
                    "quality": "basic",
                    "numinlets": 1,
                    "numoutlets": 5,
                    "outlettype": [
                        "signal",
                        "signal",
                        "signal",
                        "",
                        "dictionary"
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        30.0,
                        40.0,
                        150.0,
                        30.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-attr0",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "attr": "Shift",
                    "parameter_enable": 0,
                    "patching_rect": [
                        250.0,
                        140.0,
                        180.0,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-attr1",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "attr": "Sideband",
                    "parameter_enable": 0,
                    "patching_rect": [
                        250.0,
                        164.0,
                        180.0,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-attr2",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "attr": "Delay",
                    "parameter_enable": 0,
                    "patching_rect": [
                        250.0,
                        188.0,
                        180.0,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-attr3",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "attr": "Feedback",
                    "parameter_enable": 0,
                    "patching_rect": [
                        250.0,
                        212.0,
                        180.0,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-attr4",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "attr": "Mix",
                    "parameter_enable": 0,
                    "patching_rect": [
                        450.0,
                        140.0,
                        180.0,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-attr5",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "attr": "MixMode",
                    "parameter_enable": 0,
                    "patching_rect": [
                        450.0,
                        164.0,
                        180.0,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-attr6",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "attr": "OnOff",
                    "parameter_enable": 0,
                    "patching_rect": [
                        450.0,
                        188.0,
                        180.0,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "autosave": 1,
                    "id": "obj-rnbo",
                    "maxclass": "newobj",
                    "numinlets": 9,
                    "numoutlets": 3,
                    "outlettype": [
                        "signal",
                        "signal",
                        "list"
                    ],
                    "patching_rect": [
                        30.0,
                        330.0,
                        600.0,
                        22.0
                    ],
                    "rnboversion": "1.4.3",
                    "text": "rnbo~",
                    "varname": "rnbo~",
                    "inletInfo": {
                        "IOInfo": [
                            {
                                "type": "signal",
                                "index": 1,
                                "tag": "in1",
                                "comment": "Left In (Signal)"
                            },
                            {
                                "type": "signal",
                                "index": 2,
                                "tag": "in2",
                                "comment": "Right In (Signal)"
                            },
                            {
                                "type": "event",
                                "index": 3,
                                "tag": "in3",
                                "comment": "Shift (Float) 0.000001 - 2000 Hz. How far every partial moves; in Hz (not a pitch interval). Never negative; Sideband picks Up or Down. Default 0.1"
                            },
                            {
                                "type": "event",
                                "index": 4,
                                "tag": "in4",
                                "comment": "Sideband (Int) 0 = Down; 1 = Up: which way the shift goes. Switching crossfades over 10 ms. Default 1"
                            },
                            {
                                "type": "event",
                                "index": 5,
                                "tag": "in5",
                                "comment": "Delay (Float) 1 - 2000 ms between echoes. Each echo goes through the shifter again; so it moves one more step. A new time crossfades over 50 ms. Default 250"
                            },
                            {
                                "type": "event",
                                "index": 6,
                                "tag": "in6",
                                "comment": "Feedback (Float) 0 - 0.99. How much of each echo goes back in. The loop is soft-limited; so it can never run away. Default 0 (no echoes)"
                            },
                            {
                                "type": "event",
                                "index": 7,
                                "tag": "in7",
                                "comment": "Mix (Float) 0 - 1. 0 = dry; 0.5 = equal; 1 = all wet (equal-power crossfade). Default 1"
                            },
                            {
                                "type": "event",
                                "index": 8,
                                "tag": "in8",
                                "comment": "Mix Mode (Int) 0 = Thru; 1 = Aux: what you hear when Off. Thru = the dry signal; Aux = silence. Default 0"
                            },
                            {
                                "type": "event",
                                "index": 9,
                                "tag": "in9",
                                "comment": "On/Off (Int) 1 on; 0 off. Off fades over 20 ms; then the shifter pauses and its echoes are cleared. Default 1"
                            }
                        ]
                    },
                    "outletInfo": {
                        "IOInfo": [
                            {
                                "type": "signal",
                                "index": 1,
                                "tag": "out1",
                                "comment": "Left Out (Signal)"
                            },
                            {
                                "type": "signal",
                                "index": 2,
                                "tag": "out2",
                                "comment": "Right Out (Signal)"
                            }
                        ]
                    },
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_invisible": 1,
                            "parameter_longname": "rnbo~",
                            "parameter_modmode": 0,
                            "parameter_shortname": "rnbo~",
                            "parameter_type": 3
                        }
                    },
                    "saved_object_attributes": {
                        "optimization": "O1",
                        "parameter_enable": 1,
                        "uuid": "b49aba7e-7712-43ec-a6da-d3ac11b8133f"
                    },
                    "patcher": {
                        "fileversion": 1,
                        "appversion": {
                            "major": 9,
                            "minor": 1,
                            "revision": 4,
                            "architecture": "x64",
                            "modernui": 1
                        },
                        "classnamespace": "rnbo",
                        "rect": [
                            60.0,
                            100.0,
                            1500.0,
                            520.0
                        ],
                        "default_fontname": "Lato",
                        "title": "untitled",
                        "boxes": [
                            {
                                "box": {
                                    "id": "r-in1",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        30.0,
                                        20.0,
                                        180.0,
                                        38.0
                                    ],
                                    "text": "in~ 1 @comment \"Left In (Signal)\"",
                                    "rnbo_classname": "in~",
                                    "rnbo_extra_attributes": {
                                        "meta": ""
                                    },
                                    "rnbo_serial": 1,
                                    "rnbo_uniqueid": "in~_r-in1",
                                    "linecount": 2
                                }
                            },
                            {
                                "box": {
                                    "id": "r-in2",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        230.0,
                                        20.0,
                                        180.0,
                                        38.0
                                    ],
                                    "text": "in~ 2 @comment \"Right In (Signal)\"",
                                    "rnbo_classname": "in~",
                                    "rnbo_extra_attributes": {
                                        "meta": ""
                                    },
                                    "rnbo_serial": 2,
                                    "rnbo_uniqueid": "in~_r-in2",
                                    "linecount": 2
                                }
                            },
                            {
                                "box": {
                                    "id": "r-in3",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        430.0,
                                        20.0,
                                        190.0,
                                        94.0
                                    ],
                                    "text": "in 3 @comment \"Shift (Float) 0.000001 - 2000 Hz. How far every partial moves; in Hz (not a pitch interval). Never negative; Sideband picks Up or Down. Default 0.1\"",
                                    "rnbo_classname": "in",
                                    "rnbo_extra_attributes": {
                                        "meta": ""
                                    },
                                    "rnbo_serial": 1,
                                    "rnbo_uniqueid": "in_r-in3",
                                    "linecount": 6
                                }
                            },
                            {
                                "box": {
                                    "id": "p-Shift",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        ""
                                    ],
                                    "patching_rect": [
                                        430.0,
                                        140.0,
                                        180.0,
                                        52.0
                                    ],
                                    "text": "param Shift 0.1 @min 0.000001 @max 2000.0 @order 1",
                                    "rnbo_classname": "param",
                                    "rnbo_extra_attributes": {
                                        "enum": "",
                                        "fromnormalized": "",
                                        "exponent": 1.0,
                                        "displayname": "",
                                        "ctlin": -1.0,
                                        "tonormalized": "",
                                        "steps": 0.0,
                                        "unit": "",
                                        "sendinit": 1,
                                        "meta": "",
                                        "displayorder": "-",
                                        "preset": 1
                                    },
                                    "rnbo_serial": 1,
                                    "rnbo_uniqueid": "Shift",
                                    "linecount": 2,
                                    "varname": "Shift"
                                }
                            },
                            {
                                "box": {
                                    "id": "r-in4",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        630.0,
                                        20.0,
                                        190.0,
                                        94.0
                                    ],
                                    "text": "in 4 @comment \"Sideband (Int) 0 = Down; 1 = Up: which way the shift goes. Switching crossfades over 10 ms. Default 1\"",
                                    "rnbo_classname": "in",
                                    "rnbo_extra_attributes": {
                                        "meta": ""
                                    },
                                    "rnbo_serial": 2,
                                    "rnbo_uniqueid": "in_r-in4",
                                    "linecount": 6
                                }
                            },
                            {
                                "box": {
                                    "id": "p-Sideband",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        ""
                                    ],
                                    "patching_rect": [
                                        630.0,
                                        140.0,
                                        180.0,
                                        52.0
                                    ],
                                    "text": "param Sideband 1 @enum Down Up @order 2",
                                    "rnbo_classname": "param",
                                    "rnbo_extra_attributes": {
                                        "enum": "Down Up",
                                        "fromnormalized": "",
                                        "exponent": 1.0,
                                        "displayname": "",
                                        "ctlin": -1.0,
                                        "tonormalized": "",
                                        "steps": 0.0,
                                        "unit": "",
                                        "sendinit": 1,
                                        "meta": "",
                                        "displayorder": "-",
                                        "preset": 1
                                    },
                                    "rnbo_serial": 2,
                                    "rnbo_uniqueid": "Sideband",
                                    "linecount": 2,
                                    "varname": "Sideband"
                                }
                            },
                            {
                                "box": {
                                    "id": "r-in5",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        830.0,
                                        20.0,
                                        190.0,
                                        94.0
                                    ],
                                    "text": "in 5 @comment \"Delay (Float) 1 - 2000 ms between echoes. Each echo goes through the shifter again; so it moves one more step. A new time crossfades over 50 ms. Default 250\"",
                                    "rnbo_classname": "in",
                                    "rnbo_extra_attributes": {
                                        "meta": ""
                                    },
                                    "rnbo_serial": 3,
                                    "rnbo_uniqueid": "in_r-in5",
                                    "linecount": 6
                                }
                            },
                            {
                                "box": {
                                    "id": "p-Delay",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        ""
                                    ],
                                    "patching_rect": [
                                        830.0,
                                        140.0,
                                        180.0,
                                        52.0
                                    ],
                                    "text": "param Delay 250 @min 1.0 @max 2000.0 @exponent 3.0 @order 3",
                                    "rnbo_classname": "param",
                                    "rnbo_extra_attributes": {
                                        "enum": "",
                                        "fromnormalized": "",
                                        "exponent": 3.0,
                                        "displayname": "",
                                        "ctlin": -1.0,
                                        "tonormalized": "",
                                        "steps": 0.0,
                                        "unit": "",
                                        "sendinit": 1,
                                        "meta": "",
                                        "displayorder": "-",
                                        "preset": 1
                                    },
                                    "rnbo_serial": 3,
                                    "rnbo_uniqueid": "Delay",
                                    "linecount": 2,
                                    "varname": "Delay"
                                }
                            },
                            {
                                "box": {
                                    "id": "r-in6",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        1030.0,
                                        20.0,
                                        190.0,
                                        94.0
                                    ],
                                    "text": "in 6 @comment \"Feedback (Float) 0 - 0.99. How much of each echo goes back in. The loop is soft-limited; so it can never run away. Default 0 (no echoes)\"",
                                    "rnbo_classname": "in",
                                    "rnbo_extra_attributes": {
                                        "meta": ""
                                    },
                                    "rnbo_serial": 4,
                                    "rnbo_uniqueid": "in_r-in6",
                                    "linecount": 6
                                }
                            },
                            {
                                "box": {
                                    "id": "p-Feedback",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        ""
                                    ],
                                    "patching_rect": [
                                        1030.0,
                                        140.0,
                                        180.0,
                                        52.0
                                    ],
                                    "text": "param Feedback 0 @min 0.0 @max 0.99 @order 4",
                                    "rnbo_classname": "param",
                                    "rnbo_extra_attributes": {
                                        "enum": "",
                                        "fromnormalized": "",
                                        "exponent": 1.0,
                                        "displayname": "",
                                        "ctlin": -1.0,
                                        "tonormalized": "",
                                        "steps": 0.0,
                                        "unit": "",
                                        "sendinit": 1,
                                        "meta": "",
                                        "displayorder": "-",
                                        "preset": 1
                                    },
                                    "rnbo_serial": 4,
                                    "rnbo_uniqueid": "Feedback",
                                    "linecount": 2,
                                    "varname": "Feedback"
                                }
                            },
                            {
                                "box": {
                                    "id": "r-in7",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        1230.0,
                                        20.0,
                                        190.0,
                                        94.0
                                    ],
                                    "text": "in 7 @comment \"Mix (Float) 0 - 1. 0 = dry; 0.5 = equal; 1 = all wet (equal-power crossfade). Default 1\"",
                                    "rnbo_classname": "in",
                                    "rnbo_extra_attributes": {
                                        "meta": ""
                                    },
                                    "rnbo_serial": 5,
                                    "rnbo_uniqueid": "in_r-in7",
                                    "linecount": 6
                                }
                            },
                            {
                                "box": {
                                    "id": "p-Mix",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        ""
                                    ],
                                    "patching_rect": [
                                        1230.0,
                                        140.0,
                                        180.0,
                                        52.0
                                    ],
                                    "text": "param Mix 1 @min 0.0 @max 1.0 @order 5",
                                    "rnbo_classname": "param",
                                    "rnbo_extra_attributes": {
                                        "enum": "",
                                        "fromnormalized": "",
                                        "exponent": 1.0,
                                        "displayname": "",
                                        "ctlin": -1.0,
                                        "tonormalized": "",
                                        "steps": 0.0,
                                        "unit": "",
                                        "sendinit": 1,
                                        "meta": "",
                                        "displayorder": "-",
                                        "preset": 1
                                    },
                                    "rnbo_serial": 5,
                                    "rnbo_uniqueid": "Mix",
                                    "linecount": 2,
                                    "varname": "Mix"
                                }
                            },
                            {
                                "box": {
                                    "id": "r-in8",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        1430.0,
                                        20.0,
                                        190.0,
                                        94.0
                                    ],
                                    "text": "in 8 @comment \"Mix Mode (Int) 0 = Thru; 1 = Aux: what you hear when Off. Thru = the dry signal; Aux = silence. Default 0\"",
                                    "rnbo_classname": "in",
                                    "rnbo_extra_attributes": {
                                        "meta": ""
                                    },
                                    "rnbo_serial": 6,
                                    "rnbo_uniqueid": "in_r-in8",
                                    "linecount": 6
                                }
                            },
                            {
                                "box": {
                                    "id": "p-MixMode",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        ""
                                    ],
                                    "patching_rect": [
                                        1430.0,
                                        140.0,
                                        180.0,
                                        52.0
                                    ],
                                    "text": "param MixMode 0 @enum Thru Aux @order 6",
                                    "rnbo_classname": "param",
                                    "rnbo_extra_attributes": {
                                        "enum": "Thru Aux",
                                        "fromnormalized": "",
                                        "exponent": 1.0,
                                        "displayname": "",
                                        "ctlin": -1.0,
                                        "tonormalized": "",
                                        "steps": 0.0,
                                        "unit": "",
                                        "sendinit": 1,
                                        "meta": "",
                                        "displayorder": "-",
                                        "preset": 1
                                    },
                                    "rnbo_serial": 6,
                                    "rnbo_uniqueid": "MixMode",
                                    "linecount": 2,
                                    "varname": "MixMode"
                                }
                            },
                            {
                                "box": {
                                    "id": "r-in9",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        1630.0,
                                        20.0,
                                        190.0,
                                        94.0
                                    ],
                                    "text": "in 9 @comment \"On/Off (Int) 1 on; 0 off. Off fades over 20 ms; then the shifter pauses and its echoes are cleared. Default 1\"",
                                    "rnbo_classname": "in",
                                    "rnbo_extra_attributes": {
                                        "meta": ""
                                    },
                                    "rnbo_serial": 7,
                                    "rnbo_uniqueid": "in_r-in9",
                                    "linecount": 6
                                }
                            },
                            {
                                "box": {
                                    "id": "p-OnOff",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        ""
                                    ],
                                    "patching_rect": [
                                        1630.0,
                                        140.0,
                                        180.0,
                                        52.0
                                    ],
                                    "text": "param OnOff 1 @enum off on @order 7",
                                    "rnbo_classname": "param",
                                    "rnbo_extra_attributes": {
                                        "enum": "off on",
                                        "fromnormalized": "",
                                        "exponent": 1.0,
                                        "displayname": "",
                                        "ctlin": -1.0,
                                        "tonormalized": "",
                                        "steps": 0.0,
                                        "unit": "",
                                        "sendinit": 1,
                                        "meta": "",
                                        "displayorder": "-",
                                        "preset": 1
                                    },
                                    "rnbo_serial": 7,
                                    "rnbo_uniqueid": "OnOff",
                                    "linecount": 2,
                                    "varname": "OnOff"
                                }
                            },
                            {
                                "box": {
                                    "id": "r-gen",
                                    "maxclass": "newobj",
                                    "numinlets": 9,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "signal",
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        30.0,
                                        260.0,
                                        1780.0,
                                        23.0
                                    ],
                                    "text": "gen~ @title br.freqshift.1.1",
                                    "rnbo_classname": "gen~",
                                    "rnbo_extra_attributes": {
                                        "exposeparams": 0
                                    },
                                    "rnbo_serial": 1,
                                    "rnbo_uniqueid": "br.freqshift.1.1",
                                    "varname": "br.freqshift.1.1",
                                    "genpatcher": {
                                        "patcher": {
                                            "fileversion": 1,
                                            "appversion": {
                                                "major": 9,
                                                "minor": 1,
                                                "revision": 4,
                                                "architecture": "x64",
                                                "modernui": 1
                                            },
                                            "classnamespace": "dsp.gen",
                                            "rect": [
                                                100.0,
                                                87.0,
                                                1255.0,
                                                883.0
                                            ],
                                            "boxes": [
                                                {
                                                    "box": {
                                                        "fontname": "Arial",
                                                        "fontsize": 12.0,
                                                        "id": "obj-1",
                                                        "maxclass": "newobj",
                                                        "numinlets": 0,
                                                        "numoutlets": 1,
                                                        "outlettype": [
                                                            ""
                                                        ],
                                                        "patching_rect": [
                                                            20.0,
                                                            20.0,
                                                            155.0,
                                                            22.0
                                                        ],
                                                        "text": "in 1 @comment audio L"
                                                    }
                                                },
                                                {
                                                    "box": {
                                                        "fontname": "Arial",
                                                        "fontsize": 12.0,
                                                        "id": "obj-2",
                                                        "maxclass": "newobj",
                                                        "numinlets": 0,
                                                        "numoutlets": 1,
                                                        "outlettype": [
                                                            ""
                                                        ],
                                                        "patching_rect": [
                                                            190.0,
                                                            20.0,
                                                            155.0,
                                                            22.0
                                                        ],
                                                        "text": "in 2 @comment audio R"
                                                    }
                                                },
                                                {
                                                    "box": {
                                                        "fontname": "Arial",
                                                        "fontsize": 12.0,
                                                        "id": "obj-3",
                                                        "linecount": 3,
                                                        "maxclass": "newobj",
                                                        "numinlets": 0,
                                                        "numoutlets": 1,
                                                        "outlettype": [
                                                            ""
                                                        ],
                                                        "patching_rect": [
                                                            360.0,
                                                            20.0,
                                                            168.0,
                                                            49.0
                                                        ],
                                                        "text": "in 3 @comment shift @default 0.1 @min -2000 @max 2000"
                                                    }
                                                },
                                                {
                                                    "box": {
                                                        "fontname": "Arial",
                                                        "fontsize": 12.0,
                                                        "id": "obj-4",
                                                        "linecount": 2,
                                                        "maxclass": "newobj",
                                                        "numinlets": 0,
                                                        "numoutlets": 1,
                                                        "outlettype": [
                                                            ""
                                                        ],
                                                        "patching_rect": [
                                                            575.0,
                                                            20.0,
                                                            200.0,
                                                            35.0
                                                        ],
                                                        "text": "in 4 @comment sideband @default 1 @min 0 @max 1"
                                                    }
                                                },
                                                {
                                                    "box": {
                                                        "fontname": "Arial",
                                                        "fontsize": 12.0,
                                                        "id": "obj-5",
                                                        "linecount": 3,
                                                        "maxclass": "newobj",
                                                        "numinlets": 0,
                                                        "numoutlets": 1,
                                                        "outlettype": [
                                                            ""
                                                        ],
                                                        "patching_rect": [
                                                            790.0,
                                                            20.0,
                                                            174.0,
                                                            49.0
                                                        ],
                                                        "text": "in 5 @comment delay @default 250 @min 1 @max 2000"
                                                    }
                                                },
                                                {
                                                    "box": {
                                                        "fontname": "Arial",
                                                        "fontsize": 12.0,
                                                        "id": "obj-6",
                                                        "linecount": 2,
                                                        "maxclass": "newobj",
                                                        "numinlets": 0,
                                                        "numoutlets": 1,
                                                        "outlettype": [
                                                            ""
                                                        ],
                                                        "patching_rect": [
                                                            1005.0,
                                                            20.0,
                                                            200.0,
                                                            35.0
                                                        ],
                                                        "text": "in 6 @comment feedback @default 0 @min 0 @max 0.99"
                                                    }
                                                },
                                                {
                                                    "box": {
                                                        "fontname": "Arial",
                                                        "fontsize": 12.0,
                                                        "id": "obj-7",
                                                        "linecount": 2,
                                                        "maxclass": "newobj",
                                                        "numinlets": 0,
                                                        "numoutlets": 1,
                                                        "outlettype": [
                                                            ""
                                                        ],
                                                        "patching_rect": [
                                                            755.75,
                                                            157.0,
                                                            200.0,
                                                            35.0
                                                        ],
                                                        "text": "in 7 @comment mix @default 1 @min 0 @max 1"
                                                    }
                                                },
                                                {
                                                    "box": {
                                                        "fontname": "Arial",
                                                        "fontsize": 12.0,
                                                        "id": "obj-8",
                                                        "linecount": 2,
                                                        "maxclass": "newobj",
                                                        "numinlets": 0,
                                                        "numoutlets": 1,
                                                        "outlettype": [
                                                            ""
                                                        ],
                                                        "patching_rect": [
                                                            970.75,
                                                            157.0,
                                                            200.0,
                                                            35.0
                                                        ],
                                                        "text": "in 8 @comment mode @default 0 @min 0 @max 1"
                                                    }
                                                },
                                                {
                                                    "box": {
                                                        "fontname": "Arial",
                                                        "fontsize": 12.0,
                                                        "id": "obj-9",
                                                        "linecount": 2,
                                                        "maxclass": "newobj",
                                                        "numinlets": 0,
                                                        "numoutlets": 1,
                                                        "outlettype": [
                                                            ""
                                                        ],
                                                        "patching_rect": [
                                                            1001.0,
                                                            233.0,
                                                            200.0,
                                                            35.0
                                                        ],
                                                        "text": "in 9 @comment on @default 1 @min 0 @max 1"
                                                    }
                                                },
                                                {
                                                    "box": {
                                                        "code": "// br.freqshift.1.1 -- stereo frequency shifter with a feedback delay, L and R processed the same way\n// A frequency shifter moves every partial by the same number of Hz (not a pitch shift, which multiplies).\n// 100 Hz + 100 Hz up = 200 Hz, but 300 Hz -> 400 Hz: harmonic sounds turn bell-like and inharmonic.\n// How: each channel is split into two copies 90 degrees apart (a Hilbert transform made from two chains\n// of six allpass filters), then multiplied by a cosine and a sine at the Shift frequency and combined.\n// re*cos - im*sin keeps only the upper sideband (up), re*cos + im*sin only the lower one (down).\n// The allpass coefficients were fitted for this patch: the two chains stay 90 degrees apart (+-0.27)\n// from 20 Hz to 20 kHz at every sample rate from 44.1 to 192 kHz, so the unwanted sideband is below -52 dB.\n// Feedback: the shifted sound goes into a delay and back into the shifter, so each echo is shifted\n// again (barber-pole: echoes climb up, or fall down, step by step).\n// Safety in the loop, so the feedback can never run away: Feedback stops at 0.99, every pass goes\n// through tanh (a soft limiter that never goes past 1), a 20 Hz DC blocker and a gentle 12 kHz lowpass\n// (echoes shifted past the top fold back down; this lets them fade). If anything ever turns into\n// not-a-number, the whole loop resets to silence.\n// Sideband and Mix crossfade over 10 ms (equal power); Shift glides 2 ms.\n// A new Delay time crossfades over 50 ms from the old read head to a new one (no pitch bend, no click).\n// On/Off and Mix Mode crossfade over 20 ms: Off + Thru = dry passes, Off + Aux = silent.\n// Fully Off = paused: nothing is computed, the loop restarts clean (old echoes are never played back).\n// in1 / in2 audio L / R, in3 shift Hz, in4 sideband 0 down / 1 up, in5 delay ms, in6 feedback 0..0.99,\n// in7 mix 0 dry .. 1 wet, in8 mix mode 0 Thru / 1 Aux, in9 on 0/1\n// out1 / out2 audio L / R\n\nDelay dlyl(384100);   // 2000 ms at 192 kHz, plus a little\nDelay dlyr(384100);\nHistory ph(0);\nHistory sh_s(0);\nHistory sd_s(0);\nHistory hda(0);\nHistory hdb(0);\nHistory hdir(0);\nHistory hxf(0);\nHistory fb_s(0);\nHistory mx_s(0);\nHistory md_s(0);\nHistory on_s(1);\nHistory hpl(0);\nHistory hpxl(0);\nHistory hpr(0);\nHistory hpxr(0);\nHistory lpl(0);\nHistory lpr(0);\nHistory fresh(0);\nHistory init(0);\nHistory paused(0);\nHistory al01(0);\nHistory al02(0);\nHistory al11(0);\nHistory al12(0);\nHistory al21(0);\nHistory al22(0);\nHistory al31(0);\nHistory al32(0);\nHistory al41(0);\nHistory al42(0);\nHistory al51(0);\nHistory al52(0);\nHistory bl01(0);\nHistory bl02(0);\nHistory bl11(0);\nHistory bl12(0);\nHistory bl21(0);\nHistory bl22(0);\nHistory bl31(0);\nHistory bl32(0);\nHistory bl41(0);\nHistory bl42(0);\nHistory bl51(0);\nHistory bl52(0);\nHistory zl(0);\nHistory ar01(0);\nHistory ar02(0);\nHistory ar11(0);\nHistory ar12(0);\nHistory ar21(0);\nHistory ar22(0);\nHistory ar31(0);\nHistory ar32(0);\nHistory ar41(0);\nHistory ar42(0);\nHistory ar51(0);\nHistory ar52(0);\nHistory br01(0);\nHistory br02(0);\nHistory br11(0);\nHistory br12(0);\nHistory br21(0);\nHistory br22(0);\nHistory br31(0);\nHistory br32(0);\nHistory br41(0);\nHistory br42(0);\nHistory br51(0);\nHistory br52(0);\nHistory zr(0);\n\nsr = samplerate;\nc2 = 1 - exp(-1 / max(1, mstosamps(2)));\nc10 = 1 - exp(-1 / max(1, mstosamps(10)));\nc20 = 1 - exp(-1 / max(1, mstosamps(20)));\nxst = 1 / max(1, mstosamps(50));          // delay crossfade step, 50 ms\nchp = exp(-twopi * 20 / sr);               // loop DC blocker, 20 Hz\nclp = 1 - exp(-twopi * min(12000, sr * 0.45) / sr);   // loop lowpass, 12 kHz\n\nsh = sh_s;\nsd = sd_s;\nfb = fb_s;\nmx = mx_s;\nmd = md_s;\nonv = on_s;\n\n// first sample: start the smoothed values at their targets (no glide at load)\nif (init < 0.5) {\n\tsh = clip(in3, -2000, 2000);\n\tsd = clip(in4, 0, 1);\n\tfb = clip(in6, 0, 0.99);\n\tmx = clip(in7, 0, 1);\n\tmd = clip(in8, 0, 1);\n\tonv = in9 > 0.5;\n}\nsh = sh + c2 * (clip(in3, -2000, 2000) - sh);\nsd = sd + c10 * ((in4 > 0.5) - sd);\ntgt = clip(mstosamps(clip(in5, 1, 2000)), 1, 384000);\nfb = fb + c10 * (clip(in6, 0, 0.99) - fb);\nmx = mx + c10 * (clip(in7, 0, 1) - mx);\nmd = md + c20 * (clip(in8, 0, 1) - md);\nonv = onv + c20 * ((in9 > 0.5) - onv);\n\ndryl = fixnan(in1);\ndryr = fixnan(in2);\nwl = 0;\nwr = 0;\nw = 0;\nra = 0;\nrb = 0;\nxl = 0;\nxr = 0;\ncur = 0;\nda = hda;\ndb = hdb;\ndir = hdir;\nxf = hxf;\nif (init < 0.5) {\n\tda = tgt;\n\tdb = tgt;\n}\nfbl = 0;\nfbr = 0;\ncs = 0;\nsn = 0;\ngu = 0;\ngd = 0;\nul = 0;\nur = 0;\nloopl = 0;\nloopr = 0;\nrel = 0;\niml = 0;\nrer = 0;\nimr = 0;\n\nif (onv < 0.0001 && in9 < 0.5) {\n\t// fully off: paused. Once, on the way in, the loop is cleared and the restart counter set to 0,\n\t// so turning On starts clean and old echoes in the delay are never read\n\tonv = 0;\n\tif (paused < 0.5) {\n\t\thpl = 0;\n\t\thpxl = 0;\n\t\thpr = 0;\n\t\thpxr = 0;\n\t\tlpl = 0;\n\t\tlpr = 0;\n\t\tfresh = 0;\n\t\tal01 = 0;\n\t\tal02 = 0;\n\t\tal11 = 0;\n\t\tal12 = 0;\n\t\tal21 = 0;\n\t\tal22 = 0;\n\t\tal31 = 0;\n\t\tal32 = 0;\n\t\tal41 = 0;\n\t\tal42 = 0;\n\t\tal51 = 0;\n\t\tal52 = 0;\n\t\tbl01 = 0;\n\t\tbl02 = 0;\n\t\tbl11 = 0;\n\t\tbl12 = 0;\n\t\tbl21 = 0;\n\t\tbl22 = 0;\n\t\tbl31 = 0;\n\t\tbl32 = 0;\n\t\tbl41 = 0;\n\t\tbl42 = 0;\n\t\tbl51 = 0;\n\t\tbl52 = 0;\n\t\tzl = 0;\n\t\tar01 = 0;\n\t\tar02 = 0;\n\t\tar11 = 0;\n\t\tar12 = 0;\n\t\tar21 = 0;\n\t\tar22 = 0;\n\t\tar31 = 0;\n\t\tar32 = 0;\n\t\tar41 = 0;\n\t\tar42 = 0;\n\t\tar51 = 0;\n\t\tar52 = 0;\n\t\tbr01 = 0;\n\t\tbr02 = 0;\n\t\tbr11 = 0;\n\t\tbr12 = 0;\n\t\tbr21 = 0;\n\t\tbr22 = 0;\n\t\tbr31 = 0;\n\t\tbr32 = 0;\n\t\tbr41 = 0;\n\t\tbr42 = 0;\n\t\tbr51 = 0;\n\t\tbr52 = 0;\n\t\tzr = 0;\n\t\tpaused = 1;\n\t}\n} else {\n\tpaused = 0;\n\t// --- feedback read: only from audio written since the last restart ---\n\t// two read heads: a new Delay time goes to the idle head, then a 50 ms crossfade moves over to it\n\tcur = dir > 0.5 ? db : da;\n\tif (abs(xf - dir) < 0.000001 && abs(tgt - cur) > 0.5) {\n\t\tif (dir > 0.5) {\n\t\t\tda = tgt;\n\t\t\tdir = 0;\n\t\t} else {\n\t\t\tdb = tgt;\n\t\t\tdir = 1;\n\t\t}\n\t}\n\txf = dir > 0.5 ? min(xf + xst, 1) : max(xf - xst, 0);\n\tfbl = (da < fresh ? dlyl.read(da) : 0) * (1 - xf) + (db < fresh ? dlyl.read(db) : 0) * xf;\n\tfbr = (da < fresh ? dlyr.read(da) : 0) * (1 - xf) + (db < fresh ? dlyr.read(db) : 0) * xf;\n\tfresh = min(fresh + 1, 400000);\n\t// the input fades in and out with On/Off, so the loop never gets a sudden start\n\txl = dryl * onv + fb * fbl;\n\txr = dryr * onv + fb * fbr;\n\n\t// --- left: two allpass chains, 90 degrees apart (each stage: w = x + c*w2, y = c*w - w2) ---\n\tra = xl;\n\tw = ra + 0.358622725382832 * al02; ra = 0.358622725382832 * w - al02; al02 = al01; al01 = w;\n\tw = ra + 0.777979975605745 * al12; ra = 0.777979975605745 * w - al12; al12 = al11; al11 = w;\n\tw = ra + 0.939492944045651 * al22; ra = 0.939492944045651 * w - al22; al22 = al21; al21 = w;\n\tw = ra + 0.984644674224027 * al32; ra = 0.984644674224027 * w - al32; al32 = al31; al31 = w;\n\tw = ra + 0.996284655917862 * al42; ra = 0.996284655917862 * w - al42; al42 = al41; al41 = w;\n\tw = ra + 0.999523921150860 * al52; ra = 0.999523921150860 * w - al52; al52 = al51; al51 = w;\n\trb = xl;\n\tw = rb + 0.110473540019392 * bl02; rb = 0.110473540019392 * w - bl02; bl02 = bl01; bl01 = w;\n\tw = rb + 0.603754682719554 * bl12; rb = 0.603754682719554 * w - bl12; bl12 = bl11; bl11 = w;\n\tw = rb + 0.882343786273773 * bl22; rb = 0.882343786273773 * w - bl22; bl22 = bl21; bl21 = w;\n\tw = rb + 0.969376023460218 * bl32; rb = 0.969376023460218 * w - bl32; bl32 = bl31; bl31 = w;\n\tw = rb + 0.992368749390720 * bl42; rb = 0.992368749390720 * w - bl42; bl42 = bl41; bl41 = w;\n\tw = rb + 0.998328679742826 * bl52; rb = 0.998328679742826 * w - bl52; bl52 = bl51; bl51 = w;\n\tw = ra; ra = zl; zl = w;   // chain a gets one extra sample of delay\n\timl = ra;   // 90 degrees behind\n\trel = rb;\n\n\t// --- right: two allpass chains, 90 degrees apart (each stage: w = x + c*w2, y = c*w - w2) ---\n\tra = xr;\n\tw = ra + 0.358622725382832 * ar02; ra = 0.358622725382832 * w - ar02; ar02 = ar01; ar01 = w;\n\tw = ra + 0.777979975605745 * ar12; ra = 0.777979975605745 * w - ar12; ar12 = ar11; ar11 = w;\n\tw = ra + 0.939492944045651 * ar22; ra = 0.939492944045651 * w - ar22; ar22 = ar21; ar21 = w;\n\tw = ra + 0.984644674224027 * ar32; ra = 0.984644674224027 * w - ar32; ar32 = ar31; ar31 = w;\n\tw = ra + 0.996284655917862 * ar42; ra = 0.996284655917862 * w - ar42; ar42 = ar41; ar41 = w;\n\tw = ra + 0.999523921150860 * ar52; ra = 0.999523921150860 * w - ar52; ar52 = ar51; ar51 = w;\n\trb = xr;\n\tw = rb + 0.110473540019392 * br02; rb = 0.110473540019392 * w - br02; br02 = br01; br01 = w;\n\tw = rb + 0.603754682719554 * br12; rb = 0.603754682719554 * w - br12; br12 = br11; br11 = w;\n\tw = rb + 0.882343786273773 * br22; rb = 0.882343786273773 * w - br22; br22 = br21; br21 = w;\n\tw = rb + 0.969376023460218 * br32; rb = 0.969376023460218 * w - br32; br32 = br31; br31 = w;\n\tw = rb + 0.992368749390720 * br42; rb = 0.992368749390720 * w - br42; br42 = br41; br41 = w;\n\tw = rb + 0.998328679742826 * br52; rb = 0.998328679742826 * w - br52; br52 = br51; br51 = w;\n\tw = ra; ra = zr; zr = w;   // chain a gets one extra sample of delay\n\timr = ra;   // 90 degrees behind\n\trer = rb;\n\n\t// --- shift: one oscillator for both channels ---\n\tph = wrap(ph + sh / sr, 0, 1);\n\tcs = cos(twopi * ph);\n\tsn = sin(twopi * ph);\n\tgu = sin(sd * halfpi);   // sideband crossfade, equal power\n\tgd = cos(sd * halfpi);\n\tul = rel * cs - iml * sn;\n\tur = rer * cs - imr * sn;\n\twl = ul * gu + (rel * cs + iml * sn) * gd;\n\twr = ur * gu + (rer * cs + imr * sn) * gd;\n\n\t// --- loop: DC blocker, lowpass, tanh soft limit, into the delay ---\n\thpl = chp * (hpl + wl - hpxl);\n\thpxl = wl;\n\thpr = chp * (hpr + wr - hpxr);\n\thpxr = wr;\n\tlpl = lpl + clp * (hpl - lpl);\n\tlpr = lpr + clp * (hpr - lpr);\n\tloopl = fixdenorm(tanh(lpl));\n\tloopr = fixdenorm(tanh(lpr));\n\tif (isnan(loopl) || isnan(loopr) || isnan(wl) || isnan(wr)) {\n\t\t// should never happen; if it does, restart the loop silent instead of screaming\n\t\thpl = 0;\n\t\thpxl = 0;\n\t\thpr = 0;\n\t\thpxr = 0;\n\t\tlpl = 0;\n\t\tlpr = 0;\n\t\tfresh = 0;\n\t\tal01 = 0;\n\t\tal02 = 0;\n\t\tal11 = 0;\n\t\tal12 = 0;\n\t\tal21 = 0;\n\t\tal22 = 0;\n\t\tal31 = 0;\n\t\tal32 = 0;\n\t\tal41 = 0;\n\t\tal42 = 0;\n\t\tal51 = 0;\n\t\tal52 = 0;\n\t\tbl01 = 0;\n\t\tbl02 = 0;\n\t\tbl11 = 0;\n\t\tbl12 = 0;\n\t\tbl21 = 0;\n\t\tbl22 = 0;\n\t\tbl31 = 0;\n\t\tbl32 = 0;\n\t\tbl41 = 0;\n\t\tbl42 = 0;\n\t\tbl51 = 0;\n\t\tbl52 = 0;\n\t\tzl = 0;\n\t\tar01 = 0;\n\t\tar02 = 0;\n\t\tar11 = 0;\n\t\tar12 = 0;\n\t\tar21 = 0;\n\t\tar22 = 0;\n\t\tar31 = 0;\n\t\tar32 = 0;\n\t\tar41 = 0;\n\t\tar42 = 0;\n\t\tar51 = 0;\n\t\tar52 = 0;\n\t\tbr01 = 0;\n\t\tbr02 = 0;\n\t\tbr11 = 0;\n\t\tbr12 = 0;\n\t\tbr21 = 0;\n\t\tbr22 = 0;\n\t\tbr31 = 0;\n\t\tbr32 = 0;\n\t\tbr41 = 0;\n\t\tbr42 = 0;\n\t\tbr51 = 0;\n\t\tbr52 = 0;\n\t\tzr = 0;\n\t\tloopl = 0;\n\t\tloopr = 0;\n\t\twl = 0;\n\t\twr = 0;\n\t}\n\tdlyl.write(loopl);\n\tdlyr.write(loopr);\n}\n\n// --- output: equal-power dry/wet while on; Off crossfades to dry (Thru) or silence (Aux) ---\nwg = sin(mx * halfpi);\ndg = cos(mx * halfpi);\nout1 = onv * (wl * wg + dryl * dg) + dryl * (1 - onv) * (1 - md);\nout2 = onv * (wr * wg + dryr * dg) + dryr * (1 - onv) * (1 - md);\n\nsh_s = sh;\nsd_s = sd;\nhda = da;\nhdb = db;\nhdir = dir;\nhxf = xf;\nfb_s = fb;\nmx_s = mx;\nmd_s = md;\non_s = onv;\ninit = 1;",
                                                        "fontface": 0,
                                                        "fontname": "<Monospaced>",
                                                        "fontsize": 12.0,
                                                        "id": "obj-code",
                                                        "maxclass": "codebox",
                                                        "numinlets": 9,
                                                        "numoutlets": 2,
                                                        "outlettype": [
                                                            "",
                                                            ""
                                                        ],
                                                        "patching_rect": [
                                                            20.0,
                                                            294.0,
                                                            1000.0,
                                                            560.0
                                                        ]
                                                    }
                                                },
                                                {
                                                    "box": {
                                                        "fontname": "Arial",
                                                        "fontsize": 12.0,
                                                        "id": "obj-o1",
                                                        "maxclass": "newobj",
                                                        "numinlets": 1,
                                                        "numoutlets": 0,
                                                        "patching_rect": [
                                                            20.0,
                                                            884.0,
                                                            161.0,
                                                            22.0
                                                        ],
                                                        "text": "out 1 @comment audio L"
                                                    }
                                                },
                                                {
                                                    "box": {
                                                        "fontname": "Arial",
                                                        "fontsize": 12.0,
                                                        "id": "obj-o2",
                                                        "maxclass": "newobj",
                                                        "numinlets": 1,
                                                        "numoutlets": 0,
                                                        "patching_rect": [
                                                            1001.0,
                                                            884.0,
                                                            161.0,
                                                            22.0
                                                        ],
                                                        "text": "out 2 @comment audio R"
                                                    }
                                                }
                                            ],
                                            "lines": [
                                                {
                                                    "patchline": {
                                                        "destination": [
                                                            "obj-code",
                                                            0
                                                        ],
                                                        "source": [
                                                            "obj-1",
                                                            0
                                                        ]
                                                    }
                                                },
                                                {
                                                    "patchline": {
                                                        "destination": [
                                                            "obj-code",
                                                            1
                                                        ],
                                                        "midpoints": [
                                                            199.5,
                                                            84.0,
                                                            152.125,
                                                            84.0
                                                        ],
                                                        "source": [
                                                            "obj-2",
                                                            0
                                                        ]
                                                    }
                                                },
                                                {
                                                    "patchline": {
                                                        "destination": [
                                                            "obj-code",
                                                            2
                                                        ],
                                                        "midpoints": [
                                                            369.5,
                                                            96.0,
                                                            274.75,
                                                            96.0
                                                        ],
                                                        "source": [
                                                            "obj-3",
                                                            0
                                                        ]
                                                    }
                                                },
                                                {
                                                    "patchline": {
                                                        "destination": [
                                                            "obj-code",
                                                            3
                                                        ],
                                                        "midpoints": [
                                                            584.5,
                                                            108.0,
                                                            397.375,
                                                            108.0
                                                        ],
                                                        "source": [
                                                            "obj-4",
                                                            0
                                                        ]
                                                    }
                                                },
                                                {
                                                    "patchline": {
                                                        "destination": [
                                                            "obj-code",
                                                            4
                                                        ],
                                                        "midpoints": [
                                                            799.5,
                                                            120.0,
                                                            520.0,
                                                            120.0
                                                        ],
                                                        "source": [
                                                            "obj-5",
                                                            0
                                                        ]
                                                    }
                                                },
                                                {
                                                    "patchline": {
                                                        "destination": [
                                                            "obj-code",
                                                            5
                                                        ],
                                                        "midpoints": [
                                                            1014.5,
                                                            132.0,
                                                            642.625,
                                                            132.0
                                                        ],
                                                        "source": [
                                                            "obj-6",
                                                            0
                                                        ]
                                                    }
                                                },
                                                {
                                                    "patchline": {
                                                        "destination": [
                                                            "obj-code",
                                                            6
                                                        ],
                                                        "source": [
                                                            "obj-7",
                                                            0
                                                        ]
                                                    }
                                                },
                                                {
                                                    "patchline": {
                                                        "destination": [
                                                            "obj-code",
                                                            7
                                                        ],
                                                        "midpoints": [
                                                            980.25,
                                                            208.0,
                                                            887.875,
                                                            208.0
                                                        ],
                                                        "source": [
                                                            "obj-8",
                                                            0
                                                        ]
                                                    }
                                                },
                                                {
                                                    "patchline": {
                                                        "destination": [
                                                            "obj-code",
                                                            8
                                                        ],
                                                        "source": [
                                                            "obj-9",
                                                            0
                                                        ]
                                                    }
                                                },
                                                {
                                                    "patchline": {
                                                        "destination": [
                                                            "obj-o1",
                                                            0
                                                        ],
                                                        "source": [
                                                            "obj-code",
                                                            0
                                                        ]
                                                    }
                                                },
                                                {
                                                    "patchline": {
                                                        "destination": [
                                                            "obj-o2",
                                                            0
                                                        ],
                                                        "source": [
                                                            "obj-code",
                                                            1
                                                        ]
                                                    }
                                                }
                                            ]
                                        }
                                    }
                                }
                            },
                            {
                                "box": {
                                    "id": "r-out1",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "outlettype": [],
                                    "patching_rect": [
                                        30.0,
                                        320.0,
                                        220.0,
                                        38.0
                                    ],
                                    "text": "out~ 1 @comment \"Left Out (Signal)\"",
                                    "rnbo_classname": "out~",
                                    "rnbo_extra_attributes": {
                                        "meta": "",
                                        "comment": ""
                                    },
                                    "rnbo_serial": 1,
                                    "rnbo_uniqueid": "out~_r-out1",
                                    "linecount": 2
                                }
                            },
                            {
                                "box": {
                                    "id": "r-out2",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "outlettype": [],
                                    "patching_rect": [
                                        260.0,
                                        320.0,
                                        220.0,
                                        38.0
                                    ],
                                    "text": "out~ 2 @comment \"Right Out (Signal)\"",
                                    "rnbo_classname": "out~",
                                    "rnbo_extra_attributes": {
                                        "meta": "",
                                        "comment": ""
                                    },
                                    "rnbo_serial": 2,
                                    "rnbo_uniqueid": "out~_r-out2",
                                    "linecount": 2
                                }
                            },
                            {
                                "box": {
                                    "id": "r-note",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        30.0,
                                        400.0,
                                        900.0,
                                        50.0
                                    ],
                                    "linecount": 3,
                                    "text": "gen~ code MUST MATCH br.freqshift.1.1 (open both: same gen~ patcher and codebox). The 7 params have the same names, ranges and dial curves as the controls in br.freqshift.ui.1.1; inlets 3 to 9 set them, so the external has the same 9 inlets as the abstraction (controls as numbers only)."
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "source": [
                                        "r-in1",
                                        0
                                    ],
                                    "destination": [
                                        "r-gen",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "r-in2",
                                        0
                                    ],
                                    "destination": [
                                        "r-gen",
                                        1
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "r-in3",
                                        0
                                    ],
                                    "destination": [
                                        "p-Shift",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "p-Shift",
                                        0
                                    ],
                                    "destination": [
                                        "r-gen",
                                        2
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "r-in4",
                                        0
                                    ],
                                    "destination": [
                                        "p-Sideband",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "p-Sideband",
                                        0
                                    ],
                                    "destination": [
                                        "r-gen",
                                        3
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "r-in5",
                                        0
                                    ],
                                    "destination": [
                                        "p-Delay",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "p-Delay",
                                        0
                                    ],
                                    "destination": [
                                        "r-gen",
                                        4
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "r-in6",
                                        0
                                    ],
                                    "destination": [
                                        "p-Feedback",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "p-Feedback",
                                        0
                                    ],
                                    "destination": [
                                        "r-gen",
                                        5
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "r-in7",
                                        0
                                    ],
                                    "destination": [
                                        "p-Mix",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "p-Mix",
                                        0
                                    ],
                                    "destination": [
                                        "r-gen",
                                        6
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "r-in8",
                                        0
                                    ],
                                    "destination": [
                                        "p-MixMode",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "p-MixMode",
                                        0
                                    ],
                                    "destination": [
                                        "r-gen",
                                        7
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "r-in9",
                                        0
                                    ],
                                    "destination": [
                                        "p-OnOff",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "p-OnOff",
                                        0
                                    ],
                                    "destination": [
                                        "r-gen",
                                        8
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "r-gen",
                                        0
                                    ],
                                    "destination": [
                                        "r-out1",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "r-gen",
                                        1
                                    ],
                                    "destination": [
                                        "r-out2",
                                        0
                                    ]
                                }
                            }
                        ]
                    }
                }
            },
            {
                "box": {
                    "id": "obj-gain",
                    "maxclass": "live.gain~",
                    "numinlets": 2,
                    "numoutlets": 5,
                    "outlettype": [
                        "signal",
                        "signal",
                        "",
                        "float",
                        "list"
                    ],
                    "parameter_enable": 1,
                    "lastchannelcount": 0,
                    "patching_rect": [
                        30.0,
                        380.0,
                        48.0,
                        136.0
                    ],
                    "varname": "live.gain~",
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [
                                -70.0
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "Out",
                            "parameter_mmax": 6.0,
                            "parameter_mmin": -70.0,
                            "parameter_modmode": 0,
                            "parameter_shortname": "Out",
                            "parameter_type": 0,
                            "parameter_unitstyle": 4
                        }
                    }
                }
            },
            {
                "box": {
                    "id": "obj-dac",
                    "maxclass": "ezdac~",
                    "numinlets": 2,
                    "numoutlets": 0,
                    "patching_rect": [
                        30.0,
                        530.0,
                        45.0,
                        45.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-export",
                    "maxclass": "comment",
                    "text": "EXPORT NAME: br.freqshift.1.1~\nMax External Export asks for a name: keep the ~ at the end. Without it the external has the same name as the abstraction and Max loads whichever it finds first.",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        250.0,
                        380.0,
                        340.0,
                        75.0
                    ],
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "linecount": 5
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "source": [
                        "obj-pl",
                        0
                    ],
                    "destination": [
                        "obj-rnbo",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-pl",
                        1
                    ],
                    "destination": [
                        "obj-rnbo",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-attr0",
                        0
                    ],
                    "destination": [
                        "obj-rnbo",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-attr1",
                        0
                    ],
                    "destination": [
                        "obj-rnbo",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-attr2",
                        0
                    ],
                    "destination": [
                        "obj-rnbo",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-attr3",
                        0
                    ],
                    "destination": [
                        "obj-rnbo",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-attr4",
                        0
                    ],
                    "destination": [
                        "obj-rnbo",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-attr5",
                        0
                    ],
                    "destination": [
                        "obj-rnbo",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-attr6",
                        0
                    ],
                    "destination": [
                        "obj-rnbo",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-rnbo",
                        0
                    ],
                    "destination": [
                        "obj-gain",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-rnbo",
                        1
                    ],
                    "destination": [
                        "obj-gain",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-gain",
                        0
                    ],
                    "destination": [
                        "obj-dac",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-gain",
                        1
                    ],
                    "destination": [
                        "obj-dac",
                        1
                    ]
                }
            }
        ]
    }
}