class Position
	TO_OKI = 28
	OKI_START = 39
	OKI_END = 42
	STOP = 14
	GOAL = 38

  def x_move_north(num)
  north_x = [55, 55, 55, 55, 105,
             155, 205, 205, 205, 205,
             205, 205, 205, 255, 305,	#マス10〜
             305, 355, 405, 455, 505,
             505, 555, 605, 655, 655,	#マス20〜
             655, 655, 655, 655, 605,
             555, 505, 455, 405, 405,	#マス30〜
             405, 455, 505, 555, 165,
             55, 55, 165]
    return north_x[num]
  end

  def y_move_north(num)
  north_y = [475, 525, 575, 625, 625,
             625, 625, 575, 525, 475,
             425, 375, 325, 325, 325,	#マス10〜
             275, 275, 275, 275, 275,
             325, 325, 325, 325, 275,	#マス20〜
             225, 175, 125, 75, 75,
             75, 75, 75, 75, 125,	#マス30〜
             175, 175, 175, 175, 35,
             35, 85, 85]
    return north_y[num]
  end

  def photo_north(num)
  north_z = ["start","keiran","budou", "meron", "genji", 
             "kuuhaku","kagura", "akaten", "nodoguro","jizake" ,
             "kuuhaku","aquas", "gounokawa", "sanbezan", "bunki",        # マス10〜 
             "sand_museum","wakame", "shinziko", "suigousai", "yamato", 
             "kuuhaku","yaegaki", "adati", "horikawa", "matsuezyou",     # マス20〜 
             "men","daikon", "mihonoseki", "fely","itihata" ,
             "gobiusu", "kuuhaku" ,"hinomisaki","soba", "izumotaisya",   # マス30〜
             "kuuhaku", "shimane_wine", "ago", "goal", "fely", 
              "ro_soku","ushi", "awabi"]

      return north_z[num]
  end

  def x_move_south(num)
  south_x = [55, 55, 55, 55, 105,
             155, 205, 205, 205, 205,
             205, 205, 205, 255, 305,	#マス10〜
             305, 355, 405, 455, 505,
             505, 555, 605, 655, 655,	#マス20〜
             655, 655, 655, 655, 605,
             555, 505, 455, 405, 405,	#マス30〜
             405, 455, 505, 555, 155,
             55, 55, 155]
    return south_x[num]
  end

  def y_move_south(num)
  south_y = [475, 525, 575, 625, 625,
             625, 625, 575, 525, 475,
             425, 375, 325, 325, 325,	#マス10〜
             375, 375, 375, 375, 375,
             325, 325, 325, 325, 275,	#マス20〜
             225, 175, 125, 75, 75,
             75, 75, 75, 75, 125,	#マス30〜
             175, 175, 175, 175, 35,
             35, 85, 85]
    return south_y[num]
  end

  def photo_south(num)
  south_z = ["start","keiran","budou", "meron", "genji", 
             "kuuhaku","kagura", "akaten", "nodoguro","jizake" ,
             "kuuhaku","aquas", "gounokawa", "sanbezan", "bunki",        # マス10〜 
             "iwamiginzan","izumoshinwa", "dojou", "tamatsukuri", "cha", 
             "kuuhaku","yaegaki", "adati", "horikawa", "matsuezyou",     # マス20〜 
             "men","daikon", "mihonoseki", "fely","itihata" ,
             "gobiusu", "kuuhaku" ,"hinomisaki","soba", "izumotaisya",   # マス30〜
             "kuuhaku", "shimane_wine", "ago", "goal", "fely" ,
             "ro_soku","ushi", "awabi"]

      return south_z[num]
  end
end
