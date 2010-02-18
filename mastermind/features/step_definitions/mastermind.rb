def messenger 
  @messenger ||= StringIO.new
end

def game 
  @game ||= Mastermind::Game.new(messenger)
end

def messages_should_include(message) 
  messenger.string.split("\n").should include(message)
end

Dado /^que ainda não estou jogando$/ do
end

Quando /^inicio um novo jogo$/ do
  game.start(%w[r g y c])
end

Entao /^o jogo diz "([^\"]*)"$/ do |message|
  messenger.string.split("\n").should include(message)
end

Dado /^que o código é (. . . .)$/ do |codigo|
  game.start(codigo.split)
end

Quando /^eu tento (. . . .)$/ do |codigo|
  game.guess(codigo.split)
end

Entao /^a resposta deve ser (.*)$/ do |resposta|
  messages_should_include(resposta)
end


