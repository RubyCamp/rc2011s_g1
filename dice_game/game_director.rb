# -*- coding: sjis -*-

# ライブラリの読み込み
require 'drb/drb'

require_relative 'player'
require_relative 'map'
require_relative 'dice'

# GameDirectorクラスの定義
class GameDirector
  #attr_reader :p_id, :e_id

  # 初期化
  def initialize(uri = 'druby://192.168.11.8:3001')
    @server = DRbObject.new_with_uri(uri)
    
    @p_id = @server.add_player
    
    # サーバにあるプレイヤー情報を取得
    players = @server.players
    
    @player = Player.new(players[@p_id][:x],players[@p_id][:y],players[@p_id][:image])
    raise "最大参加人数をオーバーしています。" unless @p_id

    # Mapオブジェクト生成
    @map = Map.new
    
    #プレイヤー名のフォント大きさ指定
    @font = Font.new(40)
    
    # 最新のターン情報を初期化
    @current_turn = @server.turn_p
    
    # Diceオブジェクト生成
    @dice = Dice.new
    @event_mas = 0
    @is_stop = false
  end
 
  def play
    players = @server.players
    
    # 最新のターン情報を初期化
    @current_turn = @server.turn_p
    
    # ターン情報
    if(@current_turn == @p_id)
      mas = @dice.play
      
      once_more = false
      not_move = false
      if @is_in_stop
      	if (1..3).include?(mas)
      		@player.is_go_north = true
      	elsif(4..6)
      		@player.is_go_north = false
      	end 
      	@is_in_stop = false
      	once_more = true
      	not_move = true
      end
      result = nil
      if !not_move && !@is_in_stop
      	result = @player.move(mas)
      end
      if result == :stop
      	@is_in_stop = true
      	once_more = true
      end
   	  if Input.keyPush?(K_SPACE)
        @server.turn_rotate if !once_more && !not_move
        @player.use_money(@player.mas)
        # サーバのプレイヤー情報を更新
	    	@server.update_player(@player.to_hash, @p_id)
      end
    end

    # 一括描画処理
    draw_all_items
  end

  # 一括描画処理
  def draw_all_items
    # サーバにあるプレイヤー情報を取得
    players = @server.players
    @event_mas = @server.event_mas
    
    # マップの描画
    @map.draw
    
    @dice.draw
    
    # プレイヤーの描画処理呼出し
    draw(players)
    #@player.draw
    
    Event.draw(@event_mas)
  end

  # プレイヤー情報の描画処理
  def draw(players)
    # プレイヤーの人数分、描画する
    players.each do |player|
      # マップ上のプレイヤーを表示
      Player.new(player[:x],player[:y],player[:image]).draw
      
      #プレイヤーの（右側の）プロフィールを表示
      Player.new(player[:img_x],player[:img_y], player[:image]).draw
			Window.drawFont(player[:name_x],player[:name_y],player[:name],@font, :color => [0,0,0])
			Window.drawFont(player[:money_x],player[:money_y],player[:money].to_s + "円", @font, :color => [0,0,0])
    end
  end

end
