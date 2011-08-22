class Event
require_relative 'player' # 「Game.new」した際に呼び出されるメソッド「initialize」を定義する。
  
  def initialize
    @x = 250
    @y = 420
    @sum = 0
  end
 
  def start(money)
    return money
  end

  def oki(money)
    return money
  end

  def keiran(money)
    image_file = "Event_image/Event01.png"
    image = Image.load(image_file)
    Window.draw(@x, @y, image)
    money = money - 500
    return money
  end

  def budou(money)
    image_file = "Event_image/Event02.png"
    image = Image.load(image_file)
    Window.draw(@x, @y, image)
    money = money - 600
    return money
  end

  def meron(money)
    image_file = "Event_image/Event03.png"
    image = Image.load(image_file)
    Window.draw(@x, @y, image)
    money = money - 3800
    return money
  end

  def genji(money)
    image_file = "Event_image/Event04.png"
    image = Image.load(image_file)
    Window.draw(@x, @y, image)
    money = money - 250
    return money
  end

  def kuuhaku(money)
    image_file = "Event_image/Event05.png"
    image = Image.load(image_file)
    Window.draw(@x, @y, image)
    money = money
    return money
  end

  def kagura(money)
    image_file = "Event_image/Event06.png"
    image = Image.load(image_file)
    Window.draw(@x, @y, image)
    money = money - 3000
    return money
  end

  def akaten(money)
    image_file = "Event_image/Event07.png"
    image = Image.load(image_file)
    Window.draw(@x, @y, image)
    money = money - 500
    return money
  end

  def nodoguro(money)
    image_file = "Event_image/Event08.png"
    image = Image.load(image_file)
    Window.draw(@x, @y, image)
    money = money - 150
    return money
  end

  def jizake(money)
    image_file = "Event_image/Event09.png"
    image = Image.load(image_file)
    Window.draw(@x, @y, image)
    money = money - 2500
    return money
  end
  
  def kuuhaku(money)
    image_file = "Event_image/Event10.png"
    image = Image.load(image_file)
    Window.draw(@x, @y, image)
    money = money
    return money
  end
  
  def aquas (money)
    image_file = "Event_image/Event11.png"
    image = Image.load(image_file)
    Window.draw(@x, @y, image)
    money = money - 1500
    return money
  end

  def gounokawa (money)
    image_file = "Event_image/Event12.png"
    image = Image.load(image_file)
    Window.draw(@x, @y,image)
    money = money - 0
    return money
  end

  def sanbezan (money)
    image_file = "Event_image/Event13.png"
    image = Image.load(image_file)
    Window.draw(@x, @y,image)
    money = money - 0
    return money
  end

  def bunki (money)
    money = money
    return money
  end

  def sand_museum (money)
    image_file = "Event_image/Event15_a.png"
    image = Image.load(image_file)
    Window.draw(@x, @y,image)
    money = money - 700
    return money
  end
  
  def wakame(money)
    image_file = "Event_image/Event16_A.png"
    image = Image.load(image_file)
    Window.draw(@x, @y, image)
    money = money - 880
    return money
  end

  def shinziko (money)
    image_file = "Event_image/Event17_a.png"
    image = Image.load(image_file)
    Window.draw(@x, @y,image)
    money = money + 2000
    return money
  end
  
  def suigousai (money)
    image_file = "Event_image/Event18_a.png"
    image = Image.load(image_file)
    Window.draw(@x, @y,image)
     money = money - 0
     return money
  end
  
  def yamato(money)
    image_file = "Event_image/Event19_A.png"
    image = Image.load(image_file)
    Window.draw(@x, @y, image)
    money = money - 3500
    return money
  end
  
  def iwamiginzan (money)
    image_file = "Event_image/Event15_b.png"
    image = Image.load(image_file)
    Window.draw(@x, @y,image)
    money = money + 10000
    return money
  end
  
  def izumoshinwa (money)
    image_file = "Event_image/Event16_b.png"
    image = Image.load(image_file)
    Window.draw(@x, @y,image)
    money = money - 0
    return money
  end
  
  def dojou(money)
    image_file = "Event_image/Event17_B.png"
    image = Image.load(image_file)
    Window.draw(@x, @y, image)
    money = money - 600
    return money
  end

  def tamatsukuri (money)
    image_file = "Event_image/Event18_b.png"
    image = Image.load(image_file)
    Window.draw(@x, @y,image)
    money = money - 500
    return money
  end
  
  def cha(money)
    image_file = "Event_image/Event19_B.png"
    image = Image.load(image_file)
    Window.draw(@x, @y, image)
    money = money - 450
    return money
  end

  def kuuhaku(money)
    image_file = "Event_image/Event20.png"
    image = Image.load(image_file)
    Window.draw(@x, @y, image)
    money = money
    return money
  end
  
  def yaegaki (money)
    image_file = "Event_image/Event21.png"
    image = Image.load(image_file)
    Window.draw(@x, @y,image)
    money = money - 0
    return money
  end
  
  def adati (money)
    image_file = "Event_image/Event22.png"
    image = Image.load(image_file)
    Window.draw(@x, @y,image)
     money = money - 2200
     return money
  end

  def horikawa (money)
    image_file = "Event_image/Event23.png"
    image = Image.load(image_file)
    Window.draw(@x, @y,image)
    money = money - 1200
    return money
  end
  
  def matsuezyou (money)
    image_file = "Event_image/Event24.png"
    image = Image.load(image_file)
    Window.draw(@x, @y,image)
    money = money - 550
    return money
  end
  
  def men(money)
    image_file = "Event_image/Event25.png"
    image = Image.load(image_file)
    Window.draw(@x, @y, image)
    money = money - 500
    return money
  end

  def daikon (money)
    image_file = "Event_image/Event26.png"
    image = Image.load(image_file)
    Window.draw(@x, @y,image)
    money = money - 0
    return money
  end

  def mihonoseki (money)
    image_file = "Event_image/Event27.png"
    image = Image.load(image_file)
    Window.draw(@x, @y,image)
    money = money - 0
    return money
  end

  def fely (money)
image_file = "Event_image/Event28.png"
    image = Image.load(image_file)
    Window.draw(@x, @y, image)
    money = money
    return money
  end

  def itihata (money)
    image_file = "Event_image/Event29.png"
    image = Image.load(image_file)
    Window.draw(@x, @y,image)
    money = money - 0
    return money
  end

  def gobiusu (money)
    image_file = "Event_image/Event30.png"
    image = Image.load(image_file)
    Window.draw(@x, @y,image)
    money = money - 200
    return money
  end
  
  def kuuhaku(money)
    image_file = "Event_image/Event31.png"
    image = Image.load(image_file)
    Window.draw(@x, @y, image)
    money = money
    return money
  end

  def hinomisaki (money)
    image_file = "Event_image/Event32.png"
    image = Image.load(image_file)
    Window.draw(@x, @y,image)
    money = money - 200
    return money
  end
  
  def soba(money)
    image_file = "Event_image/Event33.png"
    image = Image.load(image_file)
    Window.draw(@x, @y, image)
    money = money - 600
    return money
  end

  def izumotaisya (money)
    image_file = "Event_image/Event34.png"
    image = Image.load(image_file)
    Window.draw(@x, @y,image)
    money = money - 0
    return money
  end
  
  def kuuhaku(money)
    image_file = "Event_image/Event35.png"
    image = Image.load(image_file)
    Window.draw(@x, @y, image)
    money = money
    return money
  end

  def shimane_wine (money)
    image_file = "Event_image/Event36.png"
    image = Image.load(image_file)
    Window.draw(@x, @y,image)
     money = money - 1000
     return money
  end
  
  def ago(money)
    image_file = "Event_image/Event37.png"
    image = Image.load(image_file)
    Window.draw(@x, @y, image)
    money = money - 470
    return money
  end
  
  def goal(money)
    image_file = "Event_image/Event38.png"
    image = Image.load(image_file)
    Window.draw(@x, @y, image)
    money = money - 0
    return money
  end
   
  def fely1 (money)
image_file = "Event_image/Event39.png"
    image = Image.load(image_file)
    Window.draw(@x, @y, image)
    money = money
    return money
  end

  def ro_soku (money)
    image_file = "Event_image/Event40.png"
    image = Image.load(image_file)
    Window.draw(@x, @y,image)
    money = money - 0
    return money
  end
  
  def ushi(money)
    image_file = "Event_image/Event41.png"
    image = Image.load(image_file)
    Window.draw(@x, @y, image)
    money = money - 2500
    return money
  end

  def awabi(money)
    image_file = "Event_image/Event42.png"
    image = Image.load(image_file)
    Window.draw(@x, @y, image)
    money = money - 5000
    return money
  end
end
