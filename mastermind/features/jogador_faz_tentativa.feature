# language: pt
Feature: Jogador faz tentativa
	O jogador faz uma tentativa de quatro cores. O jogo marca a tentativa com cores branco ou preto.
	Para cada resposta correta para a cor e posição é mostrada a cor preta (black). 
	Para cada resposta correta para cor mas não para posição, é mostrada a cor branca (white).
	
	Esquema do Cenário: fazer tentativa
		Dado que o código é <código>
		Quando eu tento <tentativa>
		Então a resposta deve ser <resposta>

		Exemplos: todas as cores corretas
		    | código  | tentativa | resposta |
		    | r g y c | r g y c   | bbbb     |
		    | r g y c | r g c y   | bbww     |
		    | r g y c | y r g c   | bwww     |
		    | r g y c | c r g y   | wwww     |

		Exemplos: 3 cores corretas
		    | código  | tentativa | resposta |
			| r g y c | w g y c   | bbb      |
			| r g y c | w r y c   | bbw      |
			| r g y c | w r g c   | bww      |
			| r g y c | w r g y   | www      |

		Exemplos: 2 cores corretas
		    | código  | tentativa | resposta |
			| r g y c | w g w c   | bb       |
			| r g y c | w r w c   | bw       |
			| r g y c | g w c w   | ww       |

		Exemplos: 1 cor correta
		    | código  | tentativa | resposta |
			| r g y c | r w w w   | b        |
			| r g y c | w w r w   | w        |