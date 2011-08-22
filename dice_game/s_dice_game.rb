# -*- coding: sjis -*-

require 'dxruby'
require 'dxrubyex'
require_relative 'game_director'
require_relative 'sound'
#require_relative 'game'

# ゲーム本体クラス
class SDiceGame
  
  # ウィンドウの初期情報定義
  SCREEN_WIDTH  = 1000
  SCREEN_HEIGHT = 700
  WINDOW_TITLE  = "Shimane's Dice Game"
  VERSION       = "0.1.1"

  # ゲーム初期化処理
  def initialize
    Window.caption = WINDOW_TITLE
    Window.width   = SCREEN_WIDTH
    Window.height  = SCREEN_HEIGHT

    # ゲームディレクタオブジェクトの生成
    @director = GameDirector.new
    #@game = Game.new
  end


  # ゲーム本体
  def run
    scene = :title
    
    # メインループ
    # DxRubyのデフォルトでは、1/60間隔でブロックの内容を実行し続ける
    Window.loop do
      if scene == :title
 		    if Input.mouseDown?(M_LBUTTON) &&
           (630..980).include?(Input.mousePosX) && 
    			 (610..670).include?(Input.mousePosY)
 	  		  scene = :game

			    #BGM起動
			    @bgm = Bgm.new()
          @bgm.volume(250)
			    @bgm.attack
        end
		
        image_file = "Map_image/start.png"
    		@image = Image.load(image_file)
    		Window.draw(0, 0, @image)
      elsif scene == :game
        # ESCキーが押下されたらメインループを脱出
        break if Input.keyPush?(K_ESCAPE)
        
        # ゲームディレクタに、ゲーム進行を命ずる
        @director.play
        #@game.play
      end
    end
  end
end
