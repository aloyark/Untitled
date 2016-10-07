#Info
=begin
Project: (Undecided)
‎Created: Saturday, ‎October ‎1, ‎2016, ‏‎10:04:37 PM
Author: Xavier Yorks
=end
#/Info

#Todo
=begin
Make game Textures
Make textures for game
Procedural generation
Enemys
Wepons
Inventory style
Rock, paper, sciccors mechanic(Maybe)
=end
#/Todo

#Loading Files
$: << File.dirname(__FILE__)
#/Loading Files

#Gems
require 'gosu'
require 'rubygems'
include Gosu
#/Gems

#Scripts
require "scripts/GameWindow.rb"
require "scripts/SceneMap.rb"
require "scripts/Player.rb"
#/Scripts

#Window
$window = GameWindow.new
$window.show
#/Window
