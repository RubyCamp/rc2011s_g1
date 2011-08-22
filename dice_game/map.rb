# Mapクラスの定義
class Map
  def initialize
    @x, @y = 0, 0
    @map_img = Image.load("Map_image/map.png")
  end

  def draw
    Window.draw(@x, @y, @map_img)
  end
end
