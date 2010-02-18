# language: pt
Funcionalidade: Jogador inicia jogo
	Como um Jogador
	Quero iniciar um Jogo
	Para descobrir o código
	
	Cenário: Iniciar jogo
		Dado que ainda não estou jogando
		Quando inicio um novo jogo
		Então o jogo diz "Seja Bem Vindo ao Mastermind!"
			E o jogo diz "Informe o código: "