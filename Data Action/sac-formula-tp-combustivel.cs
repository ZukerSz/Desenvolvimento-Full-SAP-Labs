[TP_Combustivel] = if(
	([GLACCOUNT] == "3010101001"||[GLACCOUNT] == "3010101002"||[GLACCOUNT] == "3010101003"||[GLACCOUNT] == "3010201001"||[GLACCOUNT] == "3010101001"||[GLACCOUNT] == "3010101003"), 
	"GASOLINA", 
	if(
		([GLACCOUNT] == "3010102001"||[GLACCOUNT] == "3010102002"||[GLACCOUNT] == "3010102003"||[GLACCOUNT] == "3010201002"||[GLACCOUNT] == "3010102001"||[GLACCOUNT] == "3010102003"), 
		"DIESEL_S10", 
		if(
			([GLACCOUNT] == "3010102004"||[GLACCOUNT] == "3010102005"||[GLACCOUNT] == "3010102006"||[GLACCOUNT] == "3010201003"), 
			"DIESEL_S500", 
			if(
				([GLACCOUNT] == "3010101001"||[GLACCOUNT] == "3010102001"||[GLACCOUNT] == "3010102003"||[GLACCOUNT] == "3010101003"||[GLACCOUNT] == "3010102006"), 
				"BASE", 
				if(
					([GLACCOUNT] == "3010202003"&&[SOLDMATERIAL] == "54"||[GLACCOUNT] == "3010202003"&&[SOLDMATERIAL] == "34"||[GLACCOUNT] == "3010202003"&&[SOLDMATERIAL]
                     == "42"||[GLACCOUNT] == "3010202003"&&[SOLDMATERIAL] == "53"||[GLACCOUNT] == "3010202003"&&[SOLDMATERIAL] == "101"||[GLACCOUNT] == "3010202003"&&[SOLDMATERIAL]
                      == "102"||[GLACCOUNT] == "3010202003"&&[SOLDMATERIAL] == "103"||[GLACCOUNT] == "3010202003"&&[SOLDMATERIAL] == "118"||[GLACCOUNT] == "3010202003"&&[SOLDMATERIAL]
                       == "134"||[GLACCOUNT] == "3010202003"&&[SOLDMATERIAL] == "3817"||[GLACCOUNT] == "3010202003"&&[SOLDMATERIAL] == "3820"||[GLACCOUNT] == "3010202003"&&[SOLDMATERIAL]
                        == "3822"||[GLACCOUNT] == "3010202003"&&[SOLDMATERIAL] == "3823"||[GLACCOUNT] == "3010202003"&&[SOLDMATERIAL] == "3824"||[GLACCOUNT] == "3010202003"&&[SOLDMATERIAL]
                         == "3830"||[GLACCOUNT] == "3010202003"&&[SOLDMATERIAL] == "3842"||[GLACCOUNT] == "3010202003"&&[SOLDMATERIAL] == "3862"||[GLACCOUNT] == "3010202003"&&[SOLDMATERIAL]
                          == "3867"||[GLACCOUNT] == "3010202003"&&[SOLDMATERIAL] == "3868"||[GLACCOUNT] == "3010202003"&&[SOLDMATERIAL] == "3869"||[GLACCOUNT] == "3010202003"&&[SOLDMATERIAL]
                           == "MMCC-A"), 
					"GASOLINA", 
					if(
						([GLACCOUNT] == "3010202003"&&[SOLDMATERIAL] == "39"||[GLACCOUNT] == "3010202003"&&[SOLDMATERIAL] == "40"||[GLACCOUNT] == "3010202003"&&[SOLDMATERIAL]
                         == "43"||[GLACCOUNT] == "3010202003"&&[SOLDMATERIAL] == "56"||[GLACCOUNT] == "3010202003"&&[SOLDMATERIAL] == "58"||[GLACCOUNT] == "3010202003"&&[SOLDMATERIAL]
                          == "89"||[GLACCOUNT] == "3010202003"&&[SOLDMATERIAL] == "99"||[GLACCOUNT] == "3010202003"&&[SOLDMATERIAL] == "117"||[GLACCOUNT] == "3010202003"&&[SOLDMATERIAL]
                           == "121"||[GLACCOUNT] == "3010202003"&&[SOLDMATERIAL] == "146"||[GLACCOUNT] == "3010202003"&&[SOLDMATERIAL] == "147"||[GLACCOUNT] == "3010202003"&&[SOLDMATERIAL]
                            == "148"), 
						"DIESEL_S10", 
						if(
							([GLACCOUNT] == "3010202003"&&[SOLDMATERIAL] == "41"||[GLACCOUNT] == "3010202003"&&[SOLDMATERIAL] == "60"||[GLACCOUNT] == "3010202003"&&[SOLDMATERIAL]
                             == "61"||[GLACCOUNT] == "3010202003"&&[SOLDMATERIAL] == "100"||[GLACCOUNT] == "3010202003"&&[SOLDMATERIAL] == "140"||[GLACCOUNT] == "3010202003"&&[SOLDMATERIAL]
                              == "141"||[GLACCOUNT] == "3010202003"&&[SOLDMATERIAL] == "173"||[GLACCOUNT] == "3010202003"&&[SOLDMATERIAL] == "3864"), 
							"DIESEL_S500", 
							if(
								([GLACCOUNT] == "3010202001"&&[SOLDMATERIAL] == "54"||[GLACCOUNT] == "3010202001"&&[SOLDMATERIAL] == "34"||[GLACCOUNT] == "3010202001"&&[SOLDMATERIAL]
                                 == "42"||[GLACCOUNT] == "3010202001"&&[SOLDMATERIAL] == "53"||[GLACCOUNT] == "3010202001"&&[SOLDMATERIAL] == "101"||[GLACCOUNT] == "3010202001"&&[SOLDMATERIAL]
                                  == "102"||[GLACCOUNT] == "3010202001"&&[SOLDMATERIAL] == "103"||[GLACCOUNT] == "3010202001"&&[SOLDMATERIAL] == "118"||[GLACCOUNT] == "3010202001"&&[SOLDMATERIAL]
                                   == "134"||[GLACCOUNT] == "3010202001"&&[SOLDMATERIAL] == "3817"||[GLACCOUNT] == "3010202001"&&[SOLDMATERIAL] == "3820"||[GLACCOUNT] == "3010202001"&&[SOLDMATERIAL]
                                    == "3822"||[GLACCOUNT] == "3010202001"&&[SOLDMATERIAL] == "3823"||[GLACCOUNT] == "3010202001"&&[SOLDMATERIAL] == "3824"||[GLACCOUNT] == "3010202001"&&[SOLDMATERIAL]
                                     == "3830"||[GLACCOUNT] == "3010202001"&&[SOLDMATERIAL] == "3842"||[GLACCOUNT] == "3010202001"&&[SOLDMATERIAL] == "3862"||[GLACCOUNT] == "3010202001"&&[SOLDMATERIAL]
                                      == "3867"||[GLACCOUNT] == "3010202001"&&[SOLDMATERIAL] == "3868"||[GLACCOUNT] == "3010202001"&&[SOLDMATERIAL] == "3869"||[GLACCOUNT] == "3010202001"&&[SOLDMATERIAL]
                                       == "MMCC-A"), 
								"GASOLINA", 
								if(
									([GLACCOUNT] == "3010202001"&&[SOLDMATERIAL] == "39"||[GLACCOUNT] == "3010202001"&&[SOLDMATERIAL] == "40"||[GLACCOUNT] == "3010202001"&&[SOLDMATERIAL]
                                     == "43"||[GLACCOUNT] == "3010202001"&&[SOLDMATERIAL] == "56"||[GLACCOUNT] == "3010202001"&&[SOLDMATERIAL] == "58"||[GLACCOUNT] == "3010202001"&&[SOLDMATERIAL]
                                      == "89"||[GLACCOUNT] == "3010202001"&&[SOLDMATERIAL] == "99"||[GLACCOUNT] == "3010202001"&&[SOLDMATERIAL] == "117"||[GLACCOUNT] == "3010202001"&&[SOLDMATERIAL]
                                       == "121"||[GLACCOUNT] == "3010202001"&&[SOLDMATERIAL] == "146"||[GLACCOUNT] == "3010202001"&&[SOLDMATERIAL] == "147"||[GLACCOUNT] == "3010202001"&&[SOLDMATERIAL]
                                        == "148"), 
									"DIESEL_S10", 
									if(
										([GLACCOUNT] == "3010202001"&&[SOLDMATERIAL] == "41"||[GLACCOUNT] == "3010202001"&&[SOLDMATERIAL] == "60"||[GLACCOUNT] == "3010202001"&&[SOLDMATERIAL]
                                         == "61"||[GLACCOUNT] == "3010202001"&&[SOLDMATERIAL] == "100"||[GLACCOUNT] == "3010202001"&&[SOLDMATERIAL] == "140"||[GLACCOUNT] == "3010202001"&&[SOLDMATERIAL]
                                          == "141"||[GLACCOUNT] == "3010202001"&&[SOLDMATERIAL] == "173"||[GLACCOUNT] == "3010202001"&&[SOLDMATERIAL] == "3864"), 
										"DIESEL_S500", 
										if(
											([GLACCOUNT] == "3010202002"&&[SOLDMATERIAL] == "54"||[GLACCOUNT] == "3010202002"&&[SOLDMATERIAL] == "34"||[GLACCOUNT] == "3010202002"&&[SOLDMATERIAL]
                                             == "42"||[GLACCOUNT] == "3010202002"&&[SOLDMATERIAL] == "53"||[GLACCOUNT] == "3010202002"&&[SOLDMATERIAL] == "101"||[GLACCOUNT] == "3010202002"&&[SOLDMATERIAL]
                                              == "102"||[GLACCOUNT] == "3010202002"&&[SOLDMATERIAL] == "103"||[GLACCOUNT] == "3010202002"&&[SOLDMATERIAL] == "118"||[GLACCOUNT] == "3010202002"&&[SOLDMATERIAL]
                                               == "134"||[GLACCOUNT] == "3010202002"&&[SOLDMATERIAL] == "3817"||[GLACCOUNT] == "3010202002"&&[SOLDMATERIAL] == "3820"||[GLACCOUNT] == "3010202002"&&[SOLDMATERIAL]
                                                == "3822"||[GLACCOUNT] == "3010202002"&&[SOLDMATERIAL] == "3823"||[GLACCOUNT] == "3010202002"&&[SOLDMATERIAL] == "3824"||[GLACCOUNT] == "3010202002"&&[SOLDMATERIAL]
                                                 == "3830"||[GLACCOUNT] == "3010202002"&&[SOLDMATERIAL] == "3842"||[GLACCOUNT] == "3010202002"&&[SOLDMATERIAL] == "3862"||[GLACCOUNT] == "3010202002"&&[SOLDMATERIAL]
                                                  == "3867"||[GLACCOUNT] == "3010202002"&&[SOLDMATERIAL] == "3868"||[GLACCOUNT] == "3010202002"&&[SOLDMATERIAL] == "3869"||[GLACCOUNT] == "3010202002"&&[SOLDMATERIAL]
                                                   == "MMCC-A"), 
											"GASOLINA", 
											if(
												([GLACCOUNT] == "3010202002"&&[SOLDMATERIAL] == "39"||[GLACCOUNT] == "3010202002"&&[SOLDMATERIAL] == "40"||[GLACCOUNT] == "3010202002"&&[SOLDMATERIAL]
                                                 == "43"||[GLACCOUNT] == "3010202002"&&[SOLDMATERIAL] == "56"||[GLACCOUNT] == "3010202002"&&[SOLDMATERIAL] == "58"||[GLACCOUNT] == "3010202002"&&[SOLDMATERIAL]
                                                  == "89"||[GLACCOUNT] == "3010202002"&&[SOLDMATERIAL] == "99"||[GLACCOUNT] == "3010202002"&&[SOLDMATERIAL] == "117"||[GLACCOUNT] == "3010202002"&&[SOLDMATERIAL]
                                                   == "121"||[GLACCOUNT] == "3010202002"&&[SOLDMATERIAL] == "146"||[GLACCOUNT] == "3010202002"&&[SOLDMATERIAL] == "147"||[GLACCOUNT] == "3010202002"&&[SOLDMATERIAL]
                                                    == "148"), 
												"DIESEL_S10", 
												if(
													([GLACCOUNT] == "3010202002"&&[SOLDMATERIAL] == "41"||[GLACCOUNT] == "3010202002"&&[SOLDMATERIAL] == "60"||[GLACCOUNT] == "3010202002"&&[SOLDMATERIAL]
                                                     == "61"||[GLACCOUNT] == "3010202002"&&[SOLDMATERIAL] == "100"||[GLACCOUNT] == "3010202002"&&[SOLDMATERIAL] == "140"||[GLACCOUNT] == "3010202002"&&[SOLDMATERIAL]
                                                      == "141"||[GLACCOUNT] == "3010202002"&&[SOLDMATERIAL] == "173"||[GLACCOUNT] == "3010202002"&&[SOLDMATERIAL] == "3864"), 
													"DIESEL_S500", 
													if(
														([GLACCOUNT] == "3010202004"&&[SOLDMATERIAL] == "54"||[GLACCOUNT] == "3010202004"&&[SOLDMATERIAL] == "34"||[GLACCOUNT] == "3010202004"&&[SOLDMATERIAL]
                                                         == "42"||[GLACCOUNT] == "3010202004"&&[SOLDMATERIAL] == "53"||[GLACCOUNT] == "3010202004"&&[SOLDMATERIAL] == "101"||[GLACCOUNT] == "3010202004"&&[SOLDMATERIAL]
                                                          == "102"||[GLACCOUNT] == "3010202004"&&[SOLDMATERIAL] == "103"||[GLACCOUNT] == "3010202004"&&[SOLDMATERIAL] == "118"||[GLACCOUNT] == "3010202004"&&[SOLDMATERIAL]
                                                           == "134"||[GLACCOUNT] == "3010202004"&&[SOLDMATERIAL] == "3817"||[GLACCOUNT] == "3010202004"&&[SOLDMATERIAL] == "3820"||[GLACCOUNT] == "3010202004"&&[SOLDMATERIAL]
                                                            == "3822"||[GLACCOUNT] == "3010202004"&&[SOLDMATERIAL] == "3823"||[GLACCOUNT] == "3010202004"&&[SOLDMATERIAL] == "3824"||[GLACCOUNT] == "3010202004"&&[SOLDMATERIAL]
                                                             == "3830"||[GLACCOUNT] == "3010202004"&&[SOLDMATERIAL] == "3842"||[GLACCOUNT] == "3010202004"&&[SOLDMATERIAL] == "3862"||[GLACCOUNT] == "3010202004"&&[SOLDMATERIAL]
                                                              == "3867"||[GLACCOUNT] == "3010202004"&&[SOLDMATERIAL] == "3868"||[GLACCOUNT] == "3010202004"&&[SOLDMATERIAL] == "3869"||[GLACCOUNT] == "3010202004"&&[SOLDMATERIAL]
                                                               == "MMCC-A"), 
														"GASOLINA", 
														if(
															([GLACCOUNT] == "3010202004"&&[SOLDMATERIAL] == "39"||[GLACCOUNT] == "3010202004"&&[SOLDMATERIAL] == "40"||[GLACCOUNT] == "3010202004"&&[SOLDMATERIAL]
                                                             == "43"||[GLACCOUNT] == "3010202004"&&[SOLDMATERIAL] == "56"||[GLACCOUNT] == "3010202004"&&[SOLDMATERIAL] == "58"||[GLACCOUNT] == "3010202004"&&[SOLDMATERIAL]
                                                              == "89"||[GLACCOUNT] == "3010202004"&&[SOLDMATERIAL] == "99"||[GLACCOUNT] == "3010202004"&&[SOLDMATERIAL] == "117"||[GLACCOUNT] == "3010202004"&&[SOLDMATERIAL]
                                                               == "121"||[GLACCOUNT] == "3010202004"&&[SOLDMATERIAL] == "146"||[GLACCOUNT] == "3010202004"&&[SOLDMATERIAL] == "147"||[GLACCOUNT] == "3010202004"&&[SOLDMATERIAL]
                                                                == "148"), 
															"DIESEL_S10", 
															if(
																([GLACCOUNT] == "3010202004"&&[SOLDMATERIAL] == "41"||[GLACCOUNT] == "3010202004"&&[SOLDMATERIAL] == "60"||[GLACCOUNT] == "3010202004"&&[SOLDMATERIAL]
                                                                 == "61"||[GLACCOUNT] == "3010202004"&&[SOLDMATERIAL] == "100"||[GLACCOUNT] == "3010202004"&&[SOLDMATERIAL] == "140"||[GLACCOUNT] == "3010202004"&&[SOLDMATERIAL]
                                                                  == "141"||[GLACCOUNT] == "3010202004"&&[SOLDMATERIAL] == "173"||[GLACCOUNT] == "3010202004"&&[SOLDMATERIAL] == "3864"), 
																"DIESEL_S500", 
																"NAO_ATRIBUIDO"
															)
														)
													)
												)
											)
										)
									)
								)
							)
						)
					)
				)
			)
		)
	)
)