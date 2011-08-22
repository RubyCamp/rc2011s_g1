require_relative 's_dice_game'
require_relative 'sound'
require_relative 'position'
require_relative 'event'

dice = SDiceGame.new

#BGM起動

bgm = Bgm.new()
bgm.attack#("utage.mid",255)

dice.run
