module Mastermind 
  class Game 
    def initialize(messenger)
      @messenger = messenger
    end
    
    def start(codigo)
      @codigo = codigo
      @messenger.puts "Seja Bem Vindo ao Mastermind!"
      @messenger.puts "Informe o código: "
    end
    
    def guess(tentativa)
      result = []
      tentativa.each_with_index do |peg, index|
        if @codigo[index] == peg 
          result << "b"
        elsif @codigo.include?(peg) 
          result << "w"
        end 
      end
      @messenger.puts result.sort.join
    end
  end
end