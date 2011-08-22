require 'drb/drb'
require 'dxruby'
require 'dxrubyex'

require_relative 'player'

class GameServer
  # 全ターン数を示す定数
  TURN = 0
  # 各プレイヤーのターン情報を示す定数
  PLAYER_TURN = 0
  
  # 最大プレイヤー数
  MAX_PLAYER_NUMBER = 4

  attr_reader :players, :event_mas, :turn_p

  def initialize
    @turn_p = PLAYER_TURN
    @turn = TURN
    
    # 各プレイヤーの初期情報を格納
    @players_stock =[
                     {:name => "player4", :x => 20, :y => 420, :image => "Player_image/player4.png", :money => 10000,#55,600
                      :img_x => 730, :img_y => 385, :name_x => 850, :name_y => 365, :money_x => 850, :money_y => 425},
                     {:name => "player3", :x => 40, :y => 420, :image => "Player_image/player3.png", :money => 10000,#115,600
                      :img_x => 730, :img_y => 270, :name_x => 850, :name_y => 250, :money_x => 850, :money_y => 310},
                     {:name => "player2", :x => 20, :y => 450, :image => "Player_image/player2.png", :money => 10000,#55,500
                      :img_x => 730, :img_y => 155, :name_x => 850, :name_y => 135, :money_x => 850, :money_y => 195},
                     {:name => "player1", :x => 40, :y => 450, :image => "Player_image/player1.png", :money => 10000,#115,500
                      :img_x => 730, :img_y => 35, :name_x => 850, :name_y => 15, :money_x => 850, :money_y => 75}
                    ]
    
    # プレイヤー情報を格納する配列
    @players = []
    @event_mas = 0
  end

  # プレイヤーを新規追加
  def add_player
    # 最大プレイヤー数に到達していたら受け入れを拒否
    return false if @players.size >= MAX_PLAYER_NUMBER
    
    # ゲームが開始していれば受け入れを拒否
    #return false if @turn != 0
  
    # 新規プレイヤー情報を格納
    @players << @players_stock.pop
    return @players.size - 1
  end


  # ターンの遷移
  def turn_rotate
  	if @turn_p < @players.size - 1
  		@turn_p += 1
  	else
  		@turn_p = 0
  	end
  	
  	@turn += 1
  end

  # プレイヤー情報を更新
  def update_player(player, p_id)
  	@players[p_id][:x] = player[:x] - 25
   	@players[p_id][:y] = player[:y] - 25
   	@players[p_id][:money] = player[:money]
   	@event_mas = player[:mas]

  end
end

# GameServerを起動
uri = ARGV.shift || 'druby://127.0.0.1:3001'
DRb.start_service(uri, GameServer.new)

sleep
