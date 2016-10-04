class SceneMap
    def initialize
        @player = Player.new(320, 240)
        @tileset = Image.load_tiles($window, "graphics/tiles/tileset.png", 16, 16, true)

        @level = []
        @level[0] = [14,14,22,22,22,22,22,22,22,22,22,22,22,22,22,22,23,0,0,0,0,0,0,0,0]
        @level[1] = [14,23,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
        @level[2] = [10,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
        @level[3] = [10,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
        @level[4] = [14,2,2,2,2,2,2,5,0,0,0,0,0,1,2,2,2,2,2,2,2,2,2,2,2]
        @level[5] = [14,14,14,14,23,0,0,0,0,0,0,0,0,0,21,22,22,22,22,14,14,14,14,14,14]
        @level[6] = [14,23,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,21,14,14]
        @level[7] = [14,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,21,14]
        @level[8] = [14,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,14]
        @level[9] = [14,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,14]
        @level[10] = [14,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,14]
        @level[11] = [14,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,14]
        @level[12] = [14,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,14]
        @level[13] = [14,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,14]
        @level[14] = [14,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,14]

    end

    def update
        @player.update

        if $window.button_down? char_to_button_id("w") then @player.up end
        if $window.button_down? char_to_button_id("a") then @player.left end
        if $window.button_down? char_to_button_id("s") then @player.down end
        if $window.button_down? char_to_button_id("d") then @player.right end
        if $window.button_down? char_to_button_id("w") and $window.button_down? char_to_button_id("s") then @player.movingFalse end
        if $window.button_down? char_to_button_id("a") and $window.button_down? char_to_button_id("d") then @player.movingFalse end
    end

    def draw
        @player.draw

        for y in 0...@level.size
            for x in 0...@level[y].size
                @tileset[@level[y][x]].draw(x * 16, y * 16, 1)
            end
        end
    end

    def button_down(id)
        if id == KbNumpad0 then close end
    end

    def button_up(id)

    end
end
