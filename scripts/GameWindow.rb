class GameWindow < Window
	def initialize
		super(640, 480, false)
		self.caption = "Dongeon crawler"
		$window = self
		$scene = SceneMap.new
	end

	def update
		$scene.update
	end

	def draw
		$scene.draw
	end

	def button_down(id)
		$scene.button_down(id)
	end

	def button_up(id)
		$scene.button_up(id)
	end
end
