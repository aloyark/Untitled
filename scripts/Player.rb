class Player
	def initialize(x, y)
		#Sprites
		@idle_up = Image.load_tiles($window, "graphics/sprites/idle_up.png", 32, 32, false)
		@idle_left = Image.load_tiles($window, "graphics/sprites/idle_left.png", 32, 32, false)
		@idle_down = Image.load_tiles($window, "graphics/sprites/idle_down.png", 32, 32, false)
		@idle_right = Image.load_tiles($window, "graphics/sprites/idle_right.png", 32, 32, false)

		@walk_down = Image.load_tiles($window, "graphics/sprites/player_down.png", 32, 32, false)
		@walk_up = Image.load_tiles($window, "graphics/sprites/player_up.png", 32, 32, false)
		@walk_left = Image.load_tiles($window, "graphics/sprites/player_left.png", 32, 32, false)
		@walk_right = Image.load_tiles($window, "graphics/sprites/player_right.png", 32, 32, false)
		#/Sprites

		#Misc
		@realX = x
		@realY = y

		@sprite = @idle_right

		@x = @realX + (@sprite[0].width / 2)
		@y = @realY + (@sprite[0].height)

		@moveX = 0
		@moveY = 0
		@moving = false
		@dir = :right
		#/Misc
	end

	def update
		@realX = @x - (@sprite[0].width / 2)
		@realY = @y - (@sprite[0].height)

		#Movement
		if @moving
			if @moveX > 0
				@moveX -= 1
				@x += 1
			elsif @moveX < 0
				@moveX += 1
				@x -= 1
			elsif @moveX == 0
				@moving = false
			end

			if @moveY > 0 then
				@moveY -= 1
				@y -= 1
			elsif @moveY < 0 then
				@moveY += 1
				@y += 1
			elsif @moveY == 0 then
				@moving = false
			end

		else
			if @dir == :left then
				@sprite = @idle_left
			elsif @dir == :right then
				@sprite = @idle_right
			elsif @dir == :down then
				@sprite = @idle_down
			elsif @dir == :up then
				@sprite = @idle_up
			end
		end
		#/Movement
	end

	#Movement Functions
	def up
		@moveY = 5
		@moving = true
		@dir = :up
		@sprite = @walk_up
	end

	def left
		@moveX = -5
		@moving = true
		@dir = :left
		@sprite = @walk_left
	end

	def down
		@moveY = -5
		@moving = true
		@dir = :down
		@sprite = @walk_down
	end

	def right
		@moveX = 5
		@moving = true
		@dir = :right
		@sprite = @walk_right
	end
	#/Movement Functions

	#Getters
	def getY
		return @y
	end

	def getX
		return @x
	end

	def movingFalse
		@moving = false
		@sprite = @idle_right
	end

	def movingTrue
		@moving = true
		@sprite = @idle_down
	end
	#/Getters

	def draw(z=5)
		#Drawing Player
		frame = milliseconds / 100 % @sprite.size
		@sprite[frame].draw(@realX, @realY, z)
		#/Drawing Player
	end
end
