require File.join(File.dirname(__FILE__), "/../spec_helper")

module Mastermind 
  describe Game do 

    before(:each) do
      @messenger = mock("messenger").as_null_object
      @game = Game.new(@messenger) 
    end
    
    context "iniciando jogo" do       
      it "deve dar mensagem de boas vindas" do
        @messenger.should_receive(:puts).with("Seja Bem Vindo ao Mastermind!")
        @game.start(%w[r g y c])
      end
      
      it "deve solicitar o código" do 
        @messenger.should_receive(:puts).with("Informe o código: ") 
        @game.start(%w[r c g y])
      end
    end  
    
    context "fazendo tentativa" do
      context "com 4 cores corretas nos lugares corretos" do
        it "deve responder bbbb" do
          @game.start(%w[r g y c])
          @messenger.should_receive(:puts).with("bbbb")
          @game.guess(%w[r g y c])
        end
      end
      
      context "com 4 corres corretas com 2 lugares corretos" do 
        it "deve responder bbww" do
          @game.start(%w[r g y c])
          @messenger.should_receive(:puts).with("bbww" )
          @game.guess(%w[r g c y])
        end 
      end
      
      context "com 4 corres corretas com 1 lugar correto" do 
        it "deve responder bwww" do
          @game.start(%w[r g y c])
          @messenger.should_receive(:puts).with("bwww" )
          @game.guess(%w[y r g c])
        end 
      end
    end
    
  end
end