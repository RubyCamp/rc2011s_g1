# -*- coding: sjis -*-

require 'dxruby'
#require_relative 'game_director'
require_relative 'map'
require_relative 'dice'
require_relative 'player'

# ゲーム本体クラス
class SDiceGame
  # ウィンドウの初期情報定義
  SCREEN_WIDTH  = 1000
  SCREEN_HEIGHT = 700
  WINDOW_TITLE  = "SDiceGame"
  VERSION       = "0.1.1"


  # ゲーム初期化処理
  def initialize
    Window.caption = WINDOW_TITLE
    Window.width   = SCREEN_WIDTH
    Window.height  = SCREEN_HEIGHT

    # ゲームディレクタオブジェクトの生成
    #@director = GameDirector.new
    @num = 0
    @map = Map.new
    @dice = Dice.new
    @player = Player.new(55, 475, "images/player1.png")	
    @mass = 0 #追加分
  end


  # ゲーム本体
  def run
    # メインループ
    # DxRubyのデフォルトでは、1/60間隔でブロックの内容を実行し続ける
    Window.loop do
      # ESCキーが押下されたらメインループを脱出
      break if Input.keyPush?(K_ESCAPE)
      @map.draw
      num = @dice.play

case num
when 1
if @mass == 0
@player.direction(0)
@mass = 1
end
when 2
if @mass == 0
@player.direction(0)
@mass = 1
end
when 3
if @mass == 0
@player.direction(0)
@mass = 1
end
when 4
if @mass == 0
@player.direction(1)
@mass = 1
end
when 5
if @mass == 0
@player.direction(1)
@mass = 1
end
when 6
if @mass == 0
@player.direction(1)
@mass = 1
end
end
#if [1, 2, 3].include?(num) 
#if @mass == 0
#  @player.direction(0)
#@mass = 1
#end 
#else
#if @mass == 0
#  @player.direction(1)
#@mass = 1
#end
#end

@player.draw(num)
    end
  end
end
