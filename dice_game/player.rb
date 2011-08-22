# Playerクラスの定義

class Player
  attr_accessor :x, :y, :image, :is_go_north
  attr_reader :mas
  # 初期化処理
  def initialize(x = 45 , y = 100, image_file = "Player_images/player1.png")
    @x, @y = x, y
    @mas = 0
    @image_file = image_file
    @image = Image.load(image_file)
    @position = Position.new
    @in_oki = false
    @money = 10000
    @event = Event.new
    @is_go_north = true
  end

  # キャラクタの表示位置を1フレーム分移動させるメソッド
  def move(mas)
  	return if mas == 0
  	
  	old_mas = @mas
    @mas += mas
    
    result = nil
    if @mas == Position::TO_OKI
    	@in_oki = true
    	@mas = Position::OKI_START
    end
    if !@in_oki && @mas >= Position::GOAL
    	@mas = Position::GOAL
    end
    if @mas > Position::OKI_END
    	@mas = Position::TO_OKI
    	@in_oki = false
    end
    if old_mas < Position::STOP && Position::STOP < @mas
    	@mas = Position::STOP
    	result = :stop
    end
    if @is_go_north
	    @x = @position.x_move_north(@mas)
    	@y = @position.y_move_north(@mas)
    else
	    @x = @position.x_move_south(@mas)
	    @y = @position.y_move_south(@mas)
	  end
	  return result
  end
  
  def use_money(mas)
  	p @event.money_in(mas)
  	@money -= @event.money_in(mas)
  end

  # キャラクタを表す画像を、このインスタンス（オブジェクト）が保持して
  # いる表示位置（@x, @y）に描画するメソッド
  def draw
    Window.draw(@x, @y, @image)
  end
  
  def to_hash
  	return {
	  	:x => @x,
	  	:y => @y,
	  	:mas => @mas,
	  	:image => @image_file,
	  	:money => @money
  	}
  end
end
