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
            85.0,
            104.0,
            1300.0,
            460.0
        ],
        "openrect": [
            85.0,
            104.0,
            206.0,
            78.0
        ],
        "openrectmode": 0,
        "openinpresentation": 1,
        "devicewidth": 206.0,
        "description": "br.freqshift.ui.1.0 -- Created by Brian Riordan, guaguanco127@gmail.com -- https://github.com/guaguanco127/ -- Credits: allpass-pair Hilbert structure after Olli Niemitalo (coefficients refit here for 20 Hz - 20 kHz at 44.1 - 192 kHz); frequency shifting as taught in Cipriani & Giri, Electronic Music and Sound Design Vol. 3.",
        "boxes": [
            {
                "box": {
                    "id": "in-0",
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        15.0,
                        15.0,
                        30.0,
                        30.0
                    ],
                    "index": 1,
                    "comment": "Left In (Signal)"
                }
            },
            {
                "box": {
                    "id": "in-1",
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        90.0,
                        15.0,
                        30.0,
                        30.0
                    ],
                    "index": 2,
                    "comment": "Right In (Signal)"
                }
            },
            {
                "box": {
                    "id": "in-2",
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        165.0,
                        15.0,
                        30.0,
                        30.0
                    ],
                    "index": 3,
                    "comment": "Shift (Float) -2000 - 2000 Hz. How far every partial moves, in Hz (not a pitch interval). With Sideband Up, + moves up and - moves down. Default 0"
                }
            },
            {
                "box": {
                    "id": "ctl-shift",
                    "maxclass": "live.dial",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "float"
                    ],
                    "parameter_enable": 1,
                    "patching_rect": [
                        165.0,
                        60.0,
                        44.0,
                        48.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        4,
                        26,
                        44.0,
                        48.0
                    ],
                    "activeneedlecolor": [
                        1.0,
                        1.0,
                        1.0,
                        1.0
                    ],
                    "textcolor": [
                        1.0,
                        1.0,
                        1.0,
                        1.0
                    ],
                    "varname": "Shift",
                    "saved_attribute_attributes": {
                        "activeneedlecolor": {
                            "expression": ""
                        },
                        "textcolor": {
                            "expression": ""
                        },
                        "valueof": {
                            "parameter_exponent": 1.0,
                            "parameter_initial": [
                                0.0
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "Shift",
                            "parameter_mmax": 2000.0,
                            "parameter_mmin": -2000.0,
                            "parameter_modmode": 0,
                            "parameter_shortname": "Shift",
                            "parameter_type": 0,
                            "parameter_unitstyle": 3
                        }
                    }
                }
            },
            {
                "box": {
                    "id": "store-shift",
                    "maxclass": "newobj",
                    "text": "f 0.0",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "patching_rect": [
                        165.0,
                        120,
                        50,
                        22
                    ],
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "outlettype": [
                        ""
                    ]
                }
            },
            {
                "box": {
                    "id": "st-shift-t",
                    "maxclass": "newobj",
                    "text": "t f f",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "patching_rect": [
                        165.0,
                        150,
                        40,
                        22
                    ],
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "outlettype": [
                        "",
                        ""
                    ]
                }
            },
            {
                "box": {
                    "id": "st-shift-c",
                    "maxclass": "newobj",
                    "text": "change 0.",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "patching_rect": [
                        185.0,
                        200,
                        66,
                        22
                    ],
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "outlettype": [
                        "",
                        "int",
                        "int"
                    ]
                }
            },
            {
                "box": {
                    "id": "st-shift-p",
                    "maxclass": "newobj",
                    "text": "prepend shift",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "patching_rect": [
                        185.0,
                        228,
                        95,
                        22
                    ],
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "outlettype": [
                        ""
                    ]
                }
            },
            {
                "box": {
                    "id": "in-3",
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        240.0,
                        15.0,
                        30.0,
                        30.0
                    ],
                    "index": 4,
                    "comment": "Sideband (Int) 0 = Down, 1 = Up: which way the shift goes. Switching crossfades over 10 ms. Default 1"
                }
            },
            {
                "box": {
                    "id": "ctl-sideband",
                    "maxclass": "live.text",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        ""
                    ],
                    "parameter_enable": 1,
                    "patching_rect": [
                        240.0,
                        60.0,
                        44.0,
                        18.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        158,
                        4,
                        44.0,
                        18.0
                    ],
                    "text": "Down",
                    "texton": "Up",
                    "varname": "Sideband",
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_enum": [
                                "off",
                                "on"
                            ],
                            "parameter_initial": [
                                1
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "Sideband",
                            "parameter_mmax": 1,
                            "parameter_modmode": 0,
                            "parameter_shortname": "Sideband",
                            "parameter_type": 2
                        }
                    }
                }
            },
            {
                "box": {
                    "id": "store-sideband",
                    "maxclass": "newobj",
                    "text": "i 1",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "patching_rect": [
                        240.0,
                        120,
                        50,
                        22
                    ],
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "outlettype": [
                        ""
                    ]
                }
            },
            {
                "box": {
                    "id": "st-sideband-t",
                    "maxclass": "newobj",
                    "text": "t i i",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "patching_rect": [
                        240.0,
                        150,
                        40,
                        22
                    ],
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "outlettype": [
                        "",
                        ""
                    ]
                }
            },
            {
                "box": {
                    "id": "st-sideband-c",
                    "maxclass": "newobj",
                    "text": "change -1",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "patching_rect": [
                        260.0,
                        260,
                        66,
                        22
                    ],
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "outlettype": [
                        "",
                        "int",
                        "int"
                    ]
                }
            },
            {
                "box": {
                    "id": "st-sideband-p",
                    "maxclass": "newobj",
                    "text": "prepend sideband",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "patching_rect": [
                        260.0,
                        288,
                        116,
                        22
                    ],
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "outlettype": [
                        ""
                    ]
                }
            },
            {
                "box": {
                    "id": "in-4",
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        315.0,
                        15.0,
                        30.0,
                        30.0
                    ],
                    "index": 5,
                    "comment": "Delay (Float) 1 - 2000 ms between echoes. Each echo goes through the shifter again, so it moves one more step. A new time crossfades over 50 ms. Default 250"
                }
            },
            {
                "box": {
                    "id": "ctl-delay",
                    "maxclass": "live.dial",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "float"
                    ],
                    "parameter_enable": 1,
                    "patching_rect": [
                        315.0,
                        60.0,
                        44.0,
                        48.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        54,
                        26,
                        44.0,
                        48.0
                    ],
                    "activeneedlecolor": [
                        1.0,
                        1.0,
                        1.0,
                        1.0
                    ],
                    "textcolor": [
                        1.0,
                        1.0,
                        1.0,
                        1.0
                    ],
                    "varname": "Delay",
                    "saved_attribute_attributes": {
                        "activeneedlecolor": {
                            "expression": ""
                        },
                        "textcolor": {
                            "expression": ""
                        },
                        "valueof": {
                            "parameter_exponent": 3.0,
                            "parameter_initial": [
                                250.0
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "Delay",
                            "parameter_mmax": 2000.0,
                            "parameter_mmin": 1.0,
                            "parameter_modmode": 0,
                            "parameter_shortname": "Delay",
                            "parameter_type": 0,
                            "parameter_unitstyle": 2
                        }
                    }
                }
            },
            {
                "box": {
                    "id": "store-delay",
                    "maxclass": "newobj",
                    "text": "f 250.0",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "patching_rect": [
                        315.0,
                        120,
                        50,
                        22
                    ],
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "outlettype": [
                        ""
                    ]
                }
            },
            {
                "box": {
                    "id": "st-delay-t",
                    "maxclass": "newobj",
                    "text": "t f f",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "patching_rect": [
                        315.0,
                        150,
                        40,
                        22
                    ],
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "outlettype": [
                        "",
                        ""
                    ]
                }
            },
            {
                "box": {
                    "id": "st-delay-c",
                    "maxclass": "newobj",
                    "text": "change 0.",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "patching_rect": [
                        335.0,
                        200,
                        66,
                        22
                    ],
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "outlettype": [
                        "",
                        "int",
                        "int"
                    ]
                }
            },
            {
                "box": {
                    "id": "st-delay-p",
                    "maxclass": "newobj",
                    "text": "prepend delay",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "patching_rect": [
                        335.0,
                        228,
                        95,
                        22
                    ],
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "outlettype": [
                        ""
                    ]
                }
            },
            {
                "box": {
                    "id": "in-5",
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        390.0,
                        15.0,
                        30.0,
                        30.0
                    ],
                    "index": 6,
                    "comment": "Feedback (Float) 0 - 0.99. How much of each echo goes back in. The loop is soft-limited, so it can never run away. Default 0 (no echoes)"
                }
            },
            {
                "box": {
                    "id": "ctl-feedback",
                    "maxclass": "live.dial",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "float"
                    ],
                    "parameter_enable": 1,
                    "patching_rect": [
                        390.0,
                        60.0,
                        44.0,
                        48.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        104,
                        26,
                        44.0,
                        48.0
                    ],
                    "activeneedlecolor": [
                        1.0,
                        1.0,
                        1.0,
                        1.0
                    ],
                    "textcolor": [
                        1.0,
                        1.0,
                        1.0,
                        1.0
                    ],
                    "varname": "Feedback",
                    "saved_attribute_attributes": {
                        "activeneedlecolor": {
                            "expression": ""
                        },
                        "textcolor": {
                            "expression": ""
                        },
                        "valueof": {
                            "parameter_exponent": 1.0,
                            "parameter_initial": [
                                0.0
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "Feedback",
                            "parameter_mmax": 0.99,
                            "parameter_mmin": 0.0,
                            "parameter_modmode": 0,
                            "parameter_shortname": "Feedback",
                            "parameter_type": 0,
                            "parameter_unitstyle": 1
                        }
                    }
                }
            },
            {
                "box": {
                    "id": "store-feedback",
                    "maxclass": "newobj",
                    "text": "f 0.0",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "patching_rect": [
                        390.0,
                        120,
                        50,
                        22
                    ],
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "outlettype": [
                        ""
                    ]
                }
            },
            {
                "box": {
                    "id": "st-feedback-t",
                    "maxclass": "newobj",
                    "text": "t f f",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "patching_rect": [
                        390.0,
                        150,
                        40,
                        22
                    ],
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "outlettype": [
                        "",
                        ""
                    ]
                }
            },
            {
                "box": {
                    "id": "st-feedback-c",
                    "maxclass": "newobj",
                    "text": "change 0.",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "patching_rect": [
                        410.0,
                        260,
                        66,
                        22
                    ],
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "outlettype": [
                        "",
                        "int",
                        "int"
                    ]
                }
            },
            {
                "box": {
                    "id": "st-feedback-p",
                    "maxclass": "newobj",
                    "text": "prepend feedback",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "patching_rect": [
                        410.0,
                        288,
                        116,
                        22
                    ],
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "outlettype": [
                        ""
                    ]
                }
            },
            {
                "box": {
                    "id": "in-6",
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        465.0,
                        15.0,
                        30.0,
                        30.0
                    ],
                    "index": 7,
                    "comment": "Mix (Float) 0 - 1. 0 = dry, 0.5 = equal, 1 = all wet (equal-power crossfade). Default 1"
                }
            },
            {
                "box": {
                    "id": "ctl-mix",
                    "maxclass": "live.dial",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "float"
                    ],
                    "parameter_enable": 1,
                    "patching_rect": [
                        465.0,
                        60.0,
                        44.0,
                        48.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        154,
                        26,
                        44.0,
                        48.0
                    ],
                    "activeneedlecolor": [
                        1.0,
                        1.0,
                        1.0,
                        1.0
                    ],
                    "textcolor": [
                        1.0,
                        1.0,
                        1.0,
                        1.0
                    ],
                    "varname": "Mix",
                    "saved_attribute_attributes": {
                        "activeneedlecolor": {
                            "expression": ""
                        },
                        "textcolor": {
                            "expression": ""
                        },
                        "valueof": {
                            "parameter_exponent": 1.0,
                            "parameter_initial": [
                                1.0
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "Mix",
                            "parameter_mmax": 1.0,
                            "parameter_mmin": 0.0,
                            "parameter_modmode": 0,
                            "parameter_shortname": "Mix",
                            "parameter_type": 0,
                            "parameter_unitstyle": 1
                        }
                    }
                }
            },
            {
                "box": {
                    "id": "store-mix",
                    "maxclass": "newobj",
                    "text": "f 1.0",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "patching_rect": [
                        465.0,
                        120,
                        50,
                        22
                    ],
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "outlettype": [
                        ""
                    ]
                }
            },
            {
                "box": {
                    "id": "st-mix-t",
                    "maxclass": "newobj",
                    "text": "t f f",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "patching_rect": [
                        465.0,
                        150,
                        40,
                        22
                    ],
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "outlettype": [
                        "",
                        ""
                    ]
                }
            },
            {
                "box": {
                    "id": "st-mix-c",
                    "maxclass": "newobj",
                    "text": "change 0.",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "patching_rect": [
                        485.0,
                        200,
                        66,
                        22
                    ],
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "outlettype": [
                        "",
                        "int",
                        "int"
                    ]
                }
            },
            {
                "box": {
                    "id": "st-mix-p",
                    "maxclass": "newobj",
                    "text": "prepend mix",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "patching_rect": [
                        485.0,
                        228,
                        81,
                        22
                    ],
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "outlettype": [
                        ""
                    ]
                }
            },
            {
                "box": {
                    "id": "in-7",
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        540.0,
                        15.0,
                        30.0,
                        30.0
                    ],
                    "index": 8,
                    "comment": "Mix Mode (Int) 0 = Thru, 1 = Aux: what you hear when Off. Thru = the dry signal, Aux = silence. Default 0"
                }
            },
            {
                "box": {
                    "id": "ctl-mode",
                    "maxclass": "live.text",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        ""
                    ],
                    "parameter_enable": 1,
                    "patching_rect": [
                        540.0,
                        60.0,
                        44.0,
                        18.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        112,
                        4,
                        44.0,
                        18.0
                    ],
                    "text": "Thru",
                    "texton": "Aux",
                    "varname": "Mix Mode",
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_enum": [
                                "off",
                                "on"
                            ],
                            "parameter_initial": [
                                0
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "Mix Mode",
                            "parameter_mmax": 1,
                            "parameter_modmode": 0,
                            "parameter_shortname": "Mix Mode",
                            "parameter_type": 2
                        }
                    }
                }
            },
            {
                "box": {
                    "id": "store-mode",
                    "maxclass": "newobj",
                    "text": "i 0",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "patching_rect": [
                        540.0,
                        120,
                        50,
                        22
                    ],
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "outlettype": [
                        ""
                    ]
                }
            },
            {
                "box": {
                    "id": "st-mode-t",
                    "maxclass": "newobj",
                    "text": "t i i",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "patching_rect": [
                        540.0,
                        150,
                        40,
                        22
                    ],
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "outlettype": [
                        "",
                        ""
                    ]
                }
            },
            {
                "box": {
                    "id": "st-mode-c",
                    "maxclass": "newobj",
                    "text": "change -1",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "patching_rect": [
                        560.0,
                        260,
                        66,
                        22
                    ],
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "outlettype": [
                        "",
                        "int",
                        "int"
                    ]
                }
            },
            {
                "box": {
                    "id": "st-mode-p",
                    "maxclass": "newobj",
                    "text": "prepend mode",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "patching_rect": [
                        560.0,
                        288,
                        88,
                        22
                    ],
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "outlettype": [
                        ""
                    ]
                }
            },
            {
                "box": {
                    "id": "in-8",
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        615.0,
                        15.0,
                        30.0,
                        30.0
                    ],
                    "index": 9,
                    "comment": "On/Off (Int) 1 on, 0 off. Off fades over 20 ms, then the shifter pauses and its echoes are cleared. Default 1"
                }
            },
            {
                "box": {
                    "id": "ctl-on",
                    "maxclass": "live.text",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        ""
                    ],
                    "parameter_enable": 1,
                    "patching_rect": [
                        615.0,
                        60.0,
                        44.0,
                        18.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        66,
                        4,
                        44.0,
                        18.0
                    ],
                    "text": "Off",
                    "texton": "On",
                    "varname": "On/Off",
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_enum": [
                                "off",
                                "on"
                            ],
                            "parameter_initial": [
                                1
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "On/Off",
                            "parameter_mmax": 1,
                            "parameter_modmode": 0,
                            "parameter_shortname": "On/Off",
                            "parameter_type": 2
                        }
                    }
                }
            },
            {
                "box": {
                    "id": "store-on",
                    "maxclass": "newobj",
                    "text": "i 1",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "patching_rect": [
                        615.0,
                        120,
                        50,
                        22
                    ],
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "outlettype": [
                        ""
                    ]
                }
            },
            {
                "box": {
                    "id": "st-on-t",
                    "maxclass": "newobj",
                    "text": "t i i",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "patching_rect": [
                        615.0,
                        150,
                        40,
                        22
                    ],
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "outlettype": [
                        "",
                        ""
                    ]
                }
            },
            {
                "box": {
                    "id": "st-on-c",
                    "maxclass": "newobj",
                    "text": "change -1",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "patching_rect": [
                        635.0,
                        200,
                        66,
                        22
                    ],
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "outlettype": [
                        "",
                        "int",
                        "int"
                    ]
                }
            },
            {
                "box": {
                    "id": "st-on-p",
                    "maxclass": "newobj",
                    "text": "prepend on",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "patching_rect": [
                        635.0,
                        228,
                        74,
                        22
                    ],
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "outlettype": [
                        ""
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-signature",
                    "maxclass": "comment",
                    "text": "br.freqshift.ui.1.0 -- Created by Brian Riordan, guaguanco127@gmail.com -- https://github.com/guaguanco127/ -- Credits: allpass-pair Hilbert structure after Olli Niemitalo (coefficients refit here for 20 Hz - 20 kHz at 44.1 - 192 kHz); frequency shifting as taught in Cipriani & Giri, Electronic Music and Sound Design Vol. 3.",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        720,
                        15,
                        520,
                        60
                    ],
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "linecount": 4
                }
            },
            {
                "box": {
                    "id": "obj-why",
                    "maxclass": "comment",
                    "text": "[br.freqshift.1.0] is the real object: the gen~ lives inside it. This file only adds the panel, keeps each control's value in an [f]/[i] and re-sends them all at load (deferlow), and reports changes on the State outlet as <name> <value>.",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        720,
                        80,
                        520,
                        60
                    ],
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "linecount": 4
                }
            },
            {
                "box": {
                    "id": "obj-lb",
                    "maxclass": "newobj",
                    "text": "loadbang",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "patching_rect": [
                        720,
                        150,
                        72,
                        22
                    ],
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "outlettype": [
                        "bang"
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-dl",
                    "maxclass": "newobj",
                    "text": "deferlow",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "patching_rect": [
                        720,
                        175,
                        72,
                        22
                    ],
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "outlettype": [
                        ""
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-tbs",
                    "maxclass": "newobj",
                    "text": "t b b b b b b b",
                    "numinlets": 1,
                    "numoutlets": 7,
                    "patching_rect": [
                        720,
                        200,
                        150,
                        22
                    ],
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "outlettype": [
                        "bang",
                        "bang",
                        "bang",
                        "bang",
                        "bang",
                        "bang",
                        "bang"
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-reset",
                    "maxclass": "comment",
                    "text": "each control's value is kept in an [f]/[i]; at load they are all re-sent to the core (deferlow), so the dials and the gen~ always agree.",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        720,
                        225,
                        520,
                        33
                    ],
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "linecount": 2
                }
            },
            {
                "box": {
                    "id": "obj-core",
                    "maxclass": "newobj",
                    "text": "br.freqshift.1.0",
                    "numinlets": 9,
                    "numoutlets": 2,
                    "patching_rect": [
                        15,
                        340,
                        640,
                        22
                    ],
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "outlettype": [
                        "signal",
                        "signal"
                    ]
                }
            },
            {
                "box": {
                    "id": "out-0",
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        15.0,
                        400.0,
                        30.0,
                        30.0
                    ],
                    "index": 1,
                    "comment": "Left Out (Signal)"
                }
            },
            {
                "box": {
                    "id": "out-1",
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        105.0,
                        400.0,
                        30.0,
                        30.0
                    ],
                    "index": 2,
                    "comment": "Right Out (Signal)"
                }
            },
            {
                "box": {
                    "id": "out-state",
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        640.0,
                        400.0,
                        30.0,
                        30.0
                    ],
                    "index": 3,
                    "comment": "State (Message): shift, sideband, delay, feedback, mix, mode, on, sent the moment a control changes. Pick them out by name: [route shift sideband delay feedback mix mode on]"
                }
            },
            {
                "box": {
                    "id": "lbl-title",
                    "maxclass": "comment",
                    "text": "freqshift",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        726,
                        300,
                        70,
                        20
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        2,
                        3,
                        62,
                        20
                    ],
                    "textcolor": [
                        1.0,
                        1.0,
                        1.0,
                        1.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-panel",
                    "maxclass": "panel",
                    "annotation": "br.freqshift.ui.1.0 -- Created by Brian Riordan, guaguanco127@gmail.com -- https://github.com/guaguanco127/ -- Credits: allpass-pair Hilbert structure after Olli Niemitalo (coefficients refit here for 20 Hz - 20 kHz at 44.1 - 192 kHz); frequency shifting as taught in Cipriani & Giri, Electronic Music and Sound Design Vol. 3.",
                    "hint": "br.freqshift.ui.1.0 -- Created by Brian Riordan, guaguanco127@gmail.com -- https://github.com/guaguanco127/ -- Credits: allpass-pair Hilbert structure after Olli Niemitalo (coefficients refit here for 20 Hz - 20 kHz at 44.1 - 192 kHz); frequency shifting as taught in Cipriani & Giri, Electronic Music and Sound Design Vol. 3.",
                    "background": 1,
                    "bgcolor": [
                        0.0,
                        0.0,
                        0.0,
                        1.0
                    ],
                    "bordercolor": [
                        0.0,
                        0.0,
                        0.0,
                        1.0
                    ],
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        900.0,
                        300.0,
                        128.0,
                        128.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        0.0,
                        0.0,
                        206.0,
                        78.0
                    ],
                    "rounded": 7
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "source": [
                        "in-0",
                        0
                    ],
                    "destination": [
                        "obj-core",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "in-1",
                        0
                    ],
                    "destination": [
                        "obj-core",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "in-2",
                        0
                    ],
                    "destination": [
                        "ctl-shift",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "ctl-shift",
                        0
                    ],
                    "destination": [
                        "store-shift",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "store-shift",
                        0
                    ],
                    "destination": [
                        "st-shift-t",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "st-shift-t",
                        0
                    ],
                    "destination": [
                        "obj-core",
                        2
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "st-shift-t",
                        1
                    ],
                    "destination": [
                        "st-shift-c",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "st-shift-c",
                        0
                    ],
                    "destination": [
                        "st-shift-p",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "st-shift-p",
                        0
                    ],
                    "destination": [
                        "out-state",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "in-3",
                        0
                    ],
                    "destination": [
                        "ctl-sideband",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "ctl-sideband",
                        0
                    ],
                    "destination": [
                        "store-sideband",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "store-sideband",
                        0
                    ],
                    "destination": [
                        "st-sideband-t",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "st-sideband-t",
                        0
                    ],
                    "destination": [
                        "obj-core",
                        3
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "st-sideband-t",
                        1
                    ],
                    "destination": [
                        "st-sideband-c",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "st-sideband-c",
                        0
                    ],
                    "destination": [
                        "st-sideband-p",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "st-sideband-p",
                        0
                    ],
                    "destination": [
                        "out-state",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "in-4",
                        0
                    ],
                    "destination": [
                        "ctl-delay",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "ctl-delay",
                        0
                    ],
                    "destination": [
                        "store-delay",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "store-delay",
                        0
                    ],
                    "destination": [
                        "st-delay-t",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "st-delay-t",
                        0
                    ],
                    "destination": [
                        "obj-core",
                        4
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "st-delay-t",
                        1
                    ],
                    "destination": [
                        "st-delay-c",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "st-delay-c",
                        0
                    ],
                    "destination": [
                        "st-delay-p",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "st-delay-p",
                        0
                    ],
                    "destination": [
                        "out-state",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "in-5",
                        0
                    ],
                    "destination": [
                        "ctl-feedback",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "ctl-feedback",
                        0
                    ],
                    "destination": [
                        "store-feedback",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "store-feedback",
                        0
                    ],
                    "destination": [
                        "st-feedback-t",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "st-feedback-t",
                        0
                    ],
                    "destination": [
                        "obj-core",
                        5
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "st-feedback-t",
                        1
                    ],
                    "destination": [
                        "st-feedback-c",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "st-feedback-c",
                        0
                    ],
                    "destination": [
                        "st-feedback-p",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "st-feedback-p",
                        0
                    ],
                    "destination": [
                        "out-state",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "in-6",
                        0
                    ],
                    "destination": [
                        "ctl-mix",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "ctl-mix",
                        0
                    ],
                    "destination": [
                        "store-mix",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "store-mix",
                        0
                    ],
                    "destination": [
                        "st-mix-t",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "st-mix-t",
                        0
                    ],
                    "destination": [
                        "obj-core",
                        6
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "st-mix-t",
                        1
                    ],
                    "destination": [
                        "st-mix-c",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "st-mix-c",
                        0
                    ],
                    "destination": [
                        "st-mix-p",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "st-mix-p",
                        0
                    ],
                    "destination": [
                        "out-state",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "in-7",
                        0
                    ],
                    "destination": [
                        "ctl-mode",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "ctl-mode",
                        0
                    ],
                    "destination": [
                        "store-mode",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "store-mode",
                        0
                    ],
                    "destination": [
                        "st-mode-t",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "st-mode-t",
                        0
                    ],
                    "destination": [
                        "obj-core",
                        7
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "st-mode-t",
                        1
                    ],
                    "destination": [
                        "st-mode-c",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "st-mode-c",
                        0
                    ],
                    "destination": [
                        "st-mode-p",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "st-mode-p",
                        0
                    ],
                    "destination": [
                        "out-state",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "in-8",
                        0
                    ],
                    "destination": [
                        "ctl-on",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "ctl-on",
                        0
                    ],
                    "destination": [
                        "store-on",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "store-on",
                        0
                    ],
                    "destination": [
                        "st-on-t",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "st-on-t",
                        0
                    ],
                    "destination": [
                        "obj-core",
                        8
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "st-on-t",
                        1
                    ],
                    "destination": [
                        "st-on-c",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "st-on-c",
                        0
                    ],
                    "destination": [
                        "st-on-p",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "st-on-p",
                        0
                    ],
                    "destination": [
                        "out-state",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-lb",
                        0
                    ],
                    "destination": [
                        "obj-dl",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-dl",
                        0
                    ],
                    "destination": [
                        "obj-tbs",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-tbs",
                        0
                    ],
                    "destination": [
                        "store-shift",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-tbs",
                        1
                    ],
                    "destination": [
                        "store-sideband",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-tbs",
                        2
                    ],
                    "destination": [
                        "store-delay",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-tbs",
                        3
                    ],
                    "destination": [
                        "store-feedback",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-tbs",
                        4
                    ],
                    "destination": [
                        "store-mix",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-tbs",
                        5
                    ],
                    "destination": [
                        "store-mode",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-tbs",
                        6
                    ],
                    "destination": [
                        "store-on",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-core",
                        0
                    ],
                    "destination": [
                        "out-0",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-core",
                        1
                    ],
                    "destination": [
                        "out-1",
                        0
                    ]
                }
            }
        ]
    }
}