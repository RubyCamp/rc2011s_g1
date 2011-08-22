# サイコロの処理を定義
class Dice
  attr_reader :d_image

  # 初期化
  def initialize
    #初期画面としてサイコロの目１を表示する
    d_image = "Dice_image/dice_1.png"
    @image = Image.load(d_image)
    Window.draw(850, 590, @image)
    @masume = rand(6) + 1
    @status = :shoot
    @sum = 0					#マス目の合計
  end

  # サイコロのマス目を変える
  def play
    #SPACEキーを押した時にサイコロの状態をトグル(反転)する
    if Input.keyPush?(K_SPACE)
      case @status
      when :shoot
        @status = :played
      when :played
        @status = :shoot
      end
    end

    #shoot状態の時にサイコロを振る
    @masume = rand(6) +1 if @status == :shoot
    d_image = "Dice_image/dice_#{@masume}.png"
    @image = Image.load(d_image)

    pos = 0

	  #キャラをマス目分動かす
    if @status == :played			#サイコロ停止時
      pos = @masume
      case @status
      when :shoot
        @status = :played
      when :played
        @status = :shoot
      end
      #sleep(0.80)
    end
    return pos
  end
  
  # さいころを描画
  def draw
    Window.draw(850, 590, @image)
  end
end
