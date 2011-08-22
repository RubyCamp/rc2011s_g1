require_relative 'array'
require_relative 'Event'

  # 初期化処理（いわゆるコンストラクタ）
class Player

  def initialize (x = 55, y = 475, image_file = "images/player1.png")
    # 引数xとyを、それぞれインスタンス変数@x、@yへ代入する。
#    @x, @y = x, y
    # 引数で指定された画像ファイルをメモリにロードし、インスタンス変数
    # に代入する。
    # ※ この時点では画像はウィンドウに描画されない点に注意。
    @image = Image.load(image_file)
    @array = Array.new
    @event = Event.new
    @sum = 0

#↓追加分
    @felyflag = 0 #フェリーに乗るかどうかのフラグ
    @goalflag = 0 #
    @endflag = 0  #flag=1の場合はゴール
    @endflag_before = 0 #endflagをたてるためのフラグ
    @divergence = 0 #分岐点フラグ
    @direction = 0 #北・南分岐フラグ
   
#↑

  end

  # プレイヤーの表示用メソッド
  # 引数xはサイコロの出た目

def direction(x)
@direction = x
end


  def draw(x)
    @sum = @sum + x

if @sum >= 14 && @divergence == 0
@divergence = 1
@sum = 14

end

  if @felyflag == 0
   if @sum == 28
      @goalflag = 1
      @felyflag = 1
      @sum = 39
@endflag_before = 1
    end
  end

  if @sum >=38 
    if @endflag_before == 0
  @endflag = 1
        @sum = 38
    end
  end

  if @sum >= 43
    if @felyflag == 1
         @goalflag = 0
         @sum = 28
         @endflag_before = 0
    end
  end

#if @direction == 0
#xpos = @array.x_move_north(@sum)
#ypos = @array.y_move_north(@sum)
#name = @array.photo_north(@sum)

#else
xpos = @array.x_move_south(@sum)
ypos = @array.y_move_south(@sum)
name = @array.photo_south(@sum)

#end

   
    event = @event.send(name, 1000)
    Window.draw(xpos-25, ypos-25, @image)
  end
end
