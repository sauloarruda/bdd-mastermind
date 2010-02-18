#!/usr/bin/env ruby
$LOAD_PATH.push File.join(File.dirname(__FILE__), "/../lib") 
require 'mastermind'
game = Mastermind::Game.new(STDOUT) 
game.start(%w[r g y c]) 
while guess = gets
  game.guess guess.split
end