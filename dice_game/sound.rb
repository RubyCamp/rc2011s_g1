require 'dxruby'

class Bgm
	def initialize
          @music = Sound.new("utage.mid")
	end

  def volume(vol)
		@music.setVolume(vol)
  end

	def attack
		@music.play
	end
end
		