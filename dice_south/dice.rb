class Dice
  def initialize
    #初期画面としてサイコロの目１を表示する
    image_file = "images/dice_1.png"
    @image = Image.load(image_file)
    Window.draw(850, 590, @image)		
    @masume = rand(6) + 1
    @status = :shoot
    @sum = 0					#マス目の合計

    @flag = 0
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
    @masume =  1 if @status == :shoot
    @image = Image.load("images/dice_#{@masume}.png")

    # ウィンドウ上に描画（draw）するよう命ずる。
    Window.draw(850, 590, @image)
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
#      sleep(0.80)
    end
    return pos
  end
end
