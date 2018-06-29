
-- IDENTITY(x,y); x = em qual começa, y = intervalo;

CREATE TABLE Herois(idHeroi INT IDENTITY, nome VARCHAR(100) NOT NULL, dificuldade  TINYINT NOT NULL, funcao VARCHAR(10) NOT NULL);

CREATE TABLE Habilidades(idHabilidade INT IDENTITY, nome VARCHAR(100) NOT NULL, descricao TEXT DEFAULT 'N/A', idHeroi INT NOT NULL);

ALTER TABLE Herois ADD CONSTRAINT PKHeroi PRIMARY KEY(idHeroi);
ALTER TABLE Habilidades ADD CONSTRAINT PKHabilidade PRIMARY KEY(idHabilidade);
ALTER TABLE Habilidades ADD CONSTRAINT FKHeroi FOREIGN KEY(idHeroi) REFERENCES Herois(idHeroi);

INSERT INTO Herois (nome, dificuldade, funcao) VALUES (UPPER('BASTION'), 1, UPPER('Dano')),
													  (UPPER('TRACER'), 2, UPPER('Dano')),
													  (UPPER('REAPER'), 1, UPPER('Dano')),
													  (UPPER('GENJI'), 3, UPPER('Dano')),
													  (UPPER('winston'), 2, UPPER('Tanque')),
													  (UPPER('zenyatta'), 3, UPPER('support')),
													  (UPPER('D.Va'), 2, UPPER('TANQUE')),
													  (UPPER('Orisa'), 2, UPPER('TANQUE')),
													  (UPPER('Reinhardt'), 1, UPPER('TANQUE')),
													  (UPPER('Roadhog'), 1, UPPER('TANQUE')),
													  (UPPER('Zarya'), 3, UPPER('TANQUE')),
													  (UPPER('Doomfist'), 3, UPPER('dano')),
													  (UPPER('Hanzo'), 3, UPPER('dano')),
													  (UPPER('Junkrat'), 2, UPPER('dano')),
													  (UPPER('McCree'), 2, UPPER('dano')),
													  (UPPER('Mei'), 3, UPPER('dano')),
													  (UPPER('Pharah'), 1, UPPER('dano')),
													  (UPPER('Soldado: 76'), 1, UPPER('dano')),
													  (UPPER('Sombra'), 3, UPPER('dano')),
													  (UPPER('Symmetra'), 2, UPPER('dano')),
													  (UPPER('Torbjörn'), 2, UPPER('dano')),
													  (UPPER('Widowmaker'), 2, UPPER('dano')),
													  (UPPER('Ana'), 3, UPPER('suporte')),
													  (UPPER('Brigitte'), 1, UPPER('suporte')),
													  (UPPER('Lúcio'), 2, UPPER('suporte')),
													  (UPPER('Mercy'), 1, UPPER('suporte')),
													  (UPPER('Moira'), 2, UPPER('suporte'));

-- D.Va										
INSERT INTO Habilidades (idHeroi, nome, descricao) VALUES 
((SELECT idHeroi FROM Herois WHERE nome = UPPER('D.Va')), UPPER('CANHÕES DE FUSÃO'), 'O mecha da D.Va é equipado com canhões rotativos de curto alcance. Eles projetam disparos contínuos de alto dano, sem a necessidade de carregar, mas reduzem a velocidade de movimento da D.Va enquanto estão ativos.'),
((SELECT idHeroi FROM Herois WHERE nome = UPPER('D.Va')), UPPER('PISTOLA DE LUZ'), 'Enquanto estiver fora de seu mecha, D.Va pode continuar a luta com um desintegrador automático de médio alcance.'),
((SELECT idHeroi FROM Herois WHERE nome = UPPER('D.Va')), UPPER('PROPULSORES'), 'O mecha da D.Va se lança no ar e sua força a empurra para frente. Ela pode virar e mudar de direção ou atropelar seus inimigos, empurrando-os para trás.'),
((SELECT idHeroi FROM Herois WHERE nome = UPPER('D.Va')), UPPER('MATRIZ DE DEFESA'), 'D.Va pode ativar seus projetores frontais por um curto período. Enquanto os projetores estiverem ativos, deterão projéteis iminentes.'),
((SELECT idHeroi FROM Herois WHERE nome = UPPER('D.Va')), UPPER('MICRO MÍSSEIS'), 'D.VA lança uma salva de foguetes explosivos'),
((SELECT idHeroi FROM Herois WHERE nome = UPPER('D.Va')), UPPER('AUTODESTRUIR'), 'D.Va ejeta de seu mecha e arma seu reator para explodir, causando dano massivo a seus inimigos próximos.'),
((SELECT idHeroi FROM Herois WHERE nome = UPPER('D.Va')), UPPER('CHAMAR MECHA'), 'Se sua armadura de batalha for destruída, D.Va pode chamar um mecha novinho em folha para retornar para as trincheiras.');

-- Orisa 									
INSERT INTO Habilidades (idHeroi, nome, descricao) VALUES 
((SELECT idHeroi FROM Herois WHERE nome = UPPER('Orisa')), UPPER('METRALHADORA DE FUSÃO'), 'O canhão de projéteis automático de Orisa causa dano constante mas reduz a velocidade de movimento enquanto dispara.'),
((SELECT idHeroi FROM Herois WHERE nome = UPPER('Orisa')), UPPER('FORTIFICAR'), 'Orisa reduz temporariamente o dano recebido e não pode ser afetada por efeitos que impedem suas ações.'),
((SELECT idHeroi FROM Herois WHERE nome = UPPER('Orisa')), UPPER('PARADOS!'), 'Orisa lança uma carga de grávitons que pode ser detonada para desacelerar inimigos próximos e puxá-los para o centro da explosão.'),
((SELECT idHeroi FROM Herois WHERE nome = UPPER('Orisa')), UPPER('BARREIRA PROTETORA'), 'Orisa cria uma barreira fixa que protege a ela e seus aliados de fogo inimigo.'),
((SELECT idHeroi FROM Herois WHERE nome = UPPER('Orisa')), UPPER('AMPLIFICADOR'), 'Orisa implanta um dispositivo que aumenta o dano causado por aliados em seu campo de visão.');

-- Reinhardt 									
INSERT INTO Habilidades (idHeroi, nome, descricao) VALUES 
((SELECT idHeroi FROM Herois WHERE nome = UPPER('Reinhardt')), UPPER('MARTELO PROPULSOR'), 'O Martelo Propulsor de Reinhardt é uma arma corpo-a-corpo exemplar, podendo causar dano em um arco amplo com cada balanço do martelo.'),
((SELECT idHeroi FROM Herois WHERE nome = UPPER('Reinhardt')), UPPER('CAMPO DE BARREIRA'), 'Reinhardt projeta uma barreira frontal ampla, que pode absorver uma quantidade substancial de dano antes de ser destruída. Apesar de Reinhardt poder proteger a si mesmo e seus companheiros com a barreira, ele não pode atacar enquanto a mantém.'),
((SELECT idHeroi FROM Herois WHERE nome = UPPER('Reinhardt')), UPPER('INVESTIDA'), 'Reinhardt avança em linha reta, carregando o primeiro inimigo que aparecer na sua frente e tirando os outros do caminho. Se ele colidir com uma parede, o adversário que estiver carregando sofrerá dano extremo.'),
((SELECT idHeroi FROM Herois WHERE nome = UPPER('Reinhardt')), UPPER('TIRO FLAMEJANTE'), 'Ao brandir seu Martelo Propulsor, Reinhardt lança um projétil flamejante que perfura e inflige dano a qualquer inimigo que tocar.'),
((SELECT idHeroi FROM Herois WHERE nome = UPPER('Reinhardt')), UPPER('ABALO TERRESTRE'), 'Reinhardt bate seu martelo propulsor no chão com força, infligindo dano e derrubando todos os inimigos a sua frente.');

-- Roadhog  									
INSERT INTO Habilidades (idHeroi, nome, descricao) VALUES 
((SELECT idHeroi FROM Herois WHERE nome = UPPER('Roadhog')), UPPER('ARMA DE SUCATA'), 'A Arma de Sucata de Roadhog dispara explosões de estilhaços de curto alcance com grande difusão. Como alternativa, ela pode disparar uma bola de estilhaços que detona mais longe, arremeçando fragmentos de metal a partir do ponto de impacto.'),
((SELECT idHeroi FROM Herois WHERE nome = UPPER('Roadhog')), UPPER('PEGANDO FÔLEGO'), 'Roadhog recupera partes de sua vida depois de um breve período de tempo.'),
((SELECT idHeroi FROM Herois WHERE nome = UPPER('Roadhog')), UPPER('CORRENTE DE GANCHO'), 'Roadhog lança sua corrente em um alvo, se ela acerta, ele o puxa para perto.'),
((SELECT idHeroi FROM Herois WHERE nome = UPPER('Roadhog')), UPPER('CAIR MATANDO'), 'Depois de amontoar um carregador superior em sua Arma de Sucata, Roadhog despeja munição. Por um curto período de tempo, ele é capaz de de lançar um fluxo de estilhaços que arremessa os inimigos para trás.');

-- Winston									
INSERT INTO Habilidades (idHeroi, nome, descricao) VALUES 
((SELECT idHeroi FROM Herois WHERE nome = UPPER('Winston')), UPPER('CANHÃO DE TESLA'), 'A arma de Winston dispara uma rajada elétrica de curto alcance enquanto ele mantiver o gatilho pressionado.'),
((SELECT idHeroi FROM Herois WHERE nome = UPPER('Winston')), UPPER('SALTO A JATO'), 'Com a ajuda do seu jato de energia, Winston ataca pelo ar, causando dano significativo e atordoando inimigos próximos ao aterrissar.'),
((SELECT idHeroi FROM Herois WHERE nome = UPPER('Winston')), UPPER('PROJETOR DE BARREIRA'), 'O Projetor de Barreira de Winston estende um campo em forma de bolha que absorve dano até ser destruído. Aliados dentro da barreira podem atirar de dentro dela.'),
((SELECT idHeroi FROM Herois WHERE nome = UPPER('Winston')), UPPER('FÚRIA PRIMATA'), 'Winston retorna à sua natureza animal, aumentando significativamente sua vida e deixando-o mais difícil de matar, fortalecendo seu ataque corpo-a-corpo e permitindo a ele usar sua habilidade Salto a Jato com maior frequência. Durante sua fúria, Winston só é capaz de realizar ataques corpo-a-corpo e com o Salto a Jato.');

-- Zarya
INSERT INTO Habilidades (idHeroi, nome, descricao) VALUES 
((SELECT idHeroi FROM Herois WHERE nome = UPPER('Zarya')), UPPER('CANHÃO DE PARTÍCULAS'), 'O poderoso Canhão de Partículas de Zarya dispara um raio de energia destrutiva de curto alcance. Como alternativa, Zarya pode liberar uma carga explosiva para acertar múltiplos inimigos.'),
((SELECT idHeroi FROM Herois WHERE nome = UPPER('Zarya')), UPPER('BARREIRA DE PARTÍCULAS'), 'O Canhão de Partículas pode emitir uma barreira individual que protege Zarya contra ataques eminentes, redirecionando a energia deles para aumentar o dano de sua própria arma e a largura de seu raio.'),
((SELECT idHeroi FROM Herois WHERE nome = UPPER('Zarya')), UPPER('BARREIRA PROJETADA'), 'Zarya cerca um dos membros de sua equipe com uma barreira de energia que simultaneamente absorve fogo inimigo e aumenta o poder de seu Canhão de Partículas.'),
((SELECT idHeroi FROM Herois WHERE nome = UPPER('Zarya')), UPPER('SURTO DE GRÁVITONS'), 'Zarya lança uma bomba de gravidade que atrai os combatentes inimigos, causando dano enquanto eles estão presos.');

-- Bastion											
INSERT INTO Habilidades (idHeroi, nome, descricao) VALUES 
((SELECT idHeroi FROM Herois WHERE nome = UPPER('Bastion')), UPPER('Configuração: Reconhecimento'), 'Em modo Reconhecimento, Bastion fica completamente móvel e equipado com uma submetralhadora que dispara séries consistentes de balas, a um alcance médio.'),
((SELECT idHeroi FROM Herois WHERE nome = UPPER('bastion')), UPPER('Configuração: Sentinela'), 'Em modo Sentinela, Bastion vira uma usina de força estacionária, protegido por uma barreira frontal e equipado com uma Gatling capaz de disparar uma chuva de balas. É possível “andar” com a mira da arma por múltiplos alvos, causando dano devastador de curta à média distância.'),
((SELECT idHeroi FROM Herois WHERE nome = UPPER('bastion')), UPPER('Reconfigurar'), 'Bastion se transforma entre seus dois modos primários de combate para se adaptar às condições de batalha.'),
((SELECT idHeroi FROM Herois WHERE nome = UPPER('bastion')), UPPER('Auto Reparo'), 'Bastion recupera sua vida, porém, ele não pode utilizar suas armas enquanto o processo de reparo estiver em efeito'),
((SELECT idHeroi FROM Herois WHERE nome = UPPER('bastion')), UPPER('Configuração: Tanque'), 'No modo Tanque, Bastion expõe esteiras e um canhão poderoso de longo alcance. Os cartuchos explosivos do canhão detonam alvos em um grande raio, mas Bastion só pode permanecer neste modo por um curto período.');

-- Doomfist
INSERT INTO Habilidades (idHeroi, nome, descricao) VALUES 
((SELECT idHeroi FROM Herois WHERE nome = UPPER('Doomfist')), UPPER('CANHÃO DE MÃO'), 'Doomfist dispara uma explosão de curto alcance de seu punho. A munição se regenera automaticamente depois de um curto período.'),
((SELECT idHeroi FROM Herois WHERE nome = UPPER('Doomfist')), UPPER('ABALO SÍSMICO'), 'Doomfist salta para a frente batendo no chão, trazendo inimigos próximos para sua direção.'),
((SELECT idHeroi FROM Herois WHERE nome = UPPER('Doomfist')), UPPER('GANCHO ASCENDENTE'), 'Doomfist acerta um gancho nos inimigos em sua frente, lançando-os no ar.'),
((SELECT idHeroi FROM Herois WHERE nome = UPPER('Doomfist')), UPPER('SOCO FOGUETE'), 'Depois de carregar, Doomfist se lança para frente e arremessa um inimigo para trás, causando dano adicional se ele atingir uma parede.'),
((SELECT idHeroi FROM Herois WHERE nome = UPPER('Doomfist')), UPPER('A MELHOR DEFESA...'), 'Doomfist gera escudos pessoais temporariamente quando causa dano com habilidades.'),
((SELECT idHeroi FROM Herois WHERE nome = UPPER('Doomfist')), UPPER('IMPACTO METEORO'), 'Doomfist salta para os céus, depois acerta o chão, causando dano significativo.');

-- Genji
INSERT INTO Habilidades (idHeroi, nome, descricao) VALUES 
((SELECT idHeroi FROM Herois WHERE nome = UPPER('Genji')), UPPER('SHURIKEN'), 'Genji solta três estrelas ninjas mortais em sucessão rápida. Como alternativa, ele pode jogar três shurikens em uma abrangência maior.'),
((SELECT idHeroi FROM Herois WHERE nome = UPPER('Genji')), UPPER('DESVIAR'), 'Com ataques velozes de sua espada, Genji reflete projéteis iminentes e os lança de volta em seu oponente.'),
((SELECT idHeroi FROM Herois WHERE nome = UPPER('Genji')), UPPER('GOLPE VELOZ'), 'Genji avança para frente, golpeando com sua katana e passando por inimigos em seu caminho. Se Genji eliminar um alvo com essa habilidade, ele pode usá-la de novo instantaneamente.'),
((SELECT idHeroi FROM Herois WHERE nome = UPPER('Genji')), UPPER('SOCO FOGUETE'), 'Depois de carregar, Doomfist se lança para frente e arremessa um inimigo para trás, causando dano adicional se ele atingir uma parede.'),
((SELECT idHeroi FROM Herois WHERE nome = UPPER('Genji')), UPPER('LÂMINA DO DRAGÃO'), 'Genji brande sua katana por um breve período de tempo. Até embainhar sua espada, Genji consegue acertar golpes mortais em qualquer alvo ao seu alcance.');

-- Hanzo 
INSERT INTO Habilidades (idHeroi, nome, descricao) VALUES 
((SELECT idHeroi FROM Herois WHERE nome = UPPER('Hanzo')), UPPER('ARCO DA TEMPESTADE'), 'Hanzo empunha e dispara uma flecha em seu alvo'),
((SELECT idHeroi FROM Herois WHERE nome = UPPER('Hanzo')), UPPER('FLECHA SÔNICA'), 'Hanzo dispara uma flecha que contém um rastreador sonar. Qualquer inimigo no raio de detecção é marcado como visível, tornando a caçada mais fácil para Hanzo e seus aliados.'),
((SELECT idHeroi FROM Herois WHERE nome = UPPER('Hanzo')), UPPER('FLECHAS DA TEMPESTADE'), 'As próximas flechas atiradas por Hanzo serão instantâneas mas causarão dano reduzido.'),
((SELECT idHeroi FROM Herois WHERE nome = UPPER('Hanzo')), UPPER('SALTO'), 'Hanzo pode executar um salto duplo, permitindo que ele mude de direção no ar.'),
((SELECT idHeroi FROM Herois WHERE nome = UPPER('Hanzo')), UPPER('GOLPE DO DRAGÃO'), 'Hanzo invoca uma emanação dracônica que percorre o ar em linha. Ela atravessa as paredes em seu caminho, devorando qualquer inimigo que encontrar.');

-- Junkrat 
INSERT INTO Habilidades (idHeroi, nome, descricao) VALUES 
((SELECT idHeroi FROM Herois WHERE nome = UPPER('Junkrat')), UPPER('LANÇADOR DE GRANADAS'), 'O Lançador de Granadas do Junkrat lança granadas a uma distância significativa. Elas rebatem para atingir seu destino e explodem quando acertam um inimigo.'),
((SELECT idHeroi FROM Herois WHERE nome = UPPER('Junkrat')), UPPER('MINA DE CONCUSSÃO'), 'Depois de colocar uma de suas Minas de Concussão caseira, Junkrat pode ativá-la para causar danos aos inimigos e os mandar pelos ares... ou impulsionar ele mesmo pelo ar.'),
((SELECT idHeroi FROM Herois WHERE nome = UPPER('Junkrat')), UPPER('ARMADILHA DE AÇO'), 'Junkrat joga uma armadilha de metal dentada gigante. Caso um inimigo passe muito perto da armadilha, ela se agarra a ele, causando dano e imobilizando.'),
((SELECT idHeroi FROM Herois WHERE nome = UPPER('Junkrat')), UPPER('CAOS TOTAL'), 'O senso de humor bisonho do Junkrat persiste após sua morte. Ao morrer, ele deixa para trás uma série de granadas.'),
((SELECT idHeroi FROM Herois WHERE nome = UPPER('Junkrat')), UPPER('PNEU DA MORTE'), 'Junkrat dá a partida em uma bomba relógio motorizada e a envia pelo campo de batalha, subindo em paredes e obstáculos. Ele pode detonar remotamente o Pneu da Morte para causar danos sérios aos inimigos pegos na explosão ou esperar que ele exploda sozinho.');

-- McCree 
INSERT INTO Habilidades (idHeroi, nome, descricao) VALUES 
((SELECT idHeroi FROM Herois WHERE nome = UPPER('McCree')), UPPER('PACIFICADOR'), 'McCree dispara um cartucho de seu confiável revólver de seis balas. Ele pode bater rapidamente no cão do Pacificador para descarregar o tambor inteiro.'),
((SELECT idHeroi FROM Herois WHERE nome = UPPER('McCree')), UPPER('ROLAMENTO'), 'McCree mergulha na direção em que está se movendo, recarregando seu Pacificador sem esforço algum no processo.'),
((SELECT idHeroi FROM Herois WHERE nome = UPPER('McCree')), UPPER('CLARÃO'), 'McCree lança uma granada ofuscante que explode logo após deixar sua mão. A explosão atordoa os inimigos num pequeno raio.'),
((SELECT idHeroi FROM Herois WHERE nome = UPPER('McCree')), UPPER('TIRO CERTEIRO'), 'Focar. Mirar. Sacar. McCree toma alguns preciosos instantes para mirar. Quando está pronto para disparar, ele atira em todos os inimigos em seu campo de visão. Quanto mais fracos seus alvos, mais rápido ele dispara seus tiros mortais.');

-- Mei
INSERT INTO Habilidades (idHeroi, nome, descricao) VALUES 
((SELECT idHeroi FROM Herois WHERE nome = UPPER('Mei')), UPPER('ANIQUILADOR ENDOTÉRMICO'), 'O aniquilador da Mei libera um raio de gelo concentrado e de curto alcance que desacelera, inflige dano e por fim congela seus inimigos no lugar. Mei também pode usar seu aniquilador para atirar projéteis de gelo de médio alcance.'),
((SELECT idHeroi FROM Herois WHERE nome = UPPER('Mei')), UPPER('CONGELAMENTO CRIOGÊNICO'), 'Mei se envolve instantaneamente em um bloco de gelo espesso. Ela se cura e ignora dano enquanto está envolvida, mas não pode se mover ou usar habilidades.'),
((SELECT idHeroi FROM Herois WHERE nome = UPPER('Mei')), UPPER('MURALHA DE GELO'), 'Mei cria uma enorme muralha de gelo que obstrui as linhas de visão, interrompe movimentos e bloqueia ataques.'),
((SELECT idHeroi FROM Herois WHERE nome = UPPER('Mei')), UPPER('NEVASCA'), 'Mei lança um drone de manipulação climática que emite rajadas de vento e neve em uma área ampla. Inimigos pegos na nevasca são desacelerados e recebem dano e aqueles que ficarem nela por muito tempo são congelados');

-- Pharah
INSERT INTO Habilidades (idHeroi, nome, descricao) VALUES 
((SELECT idHeroi FROM Herois WHERE nome = UPPER('Pharah')), UPPER('LANÇADOR DE FOGUETES'), 'A arma primária de Pharah lança um foguete que inflige dano significativo num amplo raio de explosão.'),
((SELECT idHeroi FROM Herois WHERE nome = UPPER('Pharah')), UPPER('SALTO FOGUETE'), 'A arma primária de Pharah lança um foguete que inflige dano significativo num amplo raio de explosão.'),
((SELECT idHeroi FROM Herois WHERE nome = UPPER('Pharah')), UPPER('EXPLOSÃO CONCUSSIVA'), 'Pharah dispara um foguete de pulso que lança para longe os inimigos que atinge.'),
((SELECT idHeroi FROM Herois WHERE nome = UPPER('Pharah')), UPPER('BOMBARDEIO'), 'Pharah direciona uma salva contínua de mini-foguetes para destruir grupos de inimigos.');

-- Reaper
INSERT INTO Habilidades (idHeroi, nome, descricao) VALUES 
((SELECT idHeroi FROM Herois WHERE nome = UPPER('Reaper')), UPPER('ESPINGARDAS INFERNAIS'), 'Reaper estraçalha os inimigos com suas espingardas.'),
((SELECT idHeroi FROM Herois WHERE nome = UPPER('Reaper')), UPPER('FORMA FANTASMA'), 'Reaper se torna uma sombra por um curto período de tempo. Enquanto está nessa forma, ele não recebe dano e pode atravessar inimigos, mas não pode usar suas armas ou outras habilidades.'),
((SELECT idHeroi FROM Herois WHERE nome = UPPER('Reaper')), UPPER('PASSOS DAS SOMBRAs'), 'Após marcar um destino, Reaper desaparece e reaparece naquele destino.'),
((SELECT idHeroi FROM Herois WHERE nome = UPPER('Reaper')), UPPER('DESABROCHAR DA MORTE'), 'Em um movimento rápido, Reaper esvazia as duas espingardas infernais em velocidade relâmpago, infligindo dano massivo aos inimigos nas proximidades.');

-- Soldado: 76 
INSERT INTO Habilidades (idHeroi, nome, descricao) VALUES 
((SELECT idHeroi FROM Herois WHERE nome = UPPER('Soldado: 76')), UPPER('RIFLE DE PULSO PESADO'), 'O rifle do Soldado: 76 permanece relativamente estável enquanto descarrega pulsos completamente automáticos.'),
((SELECT idHeroi FROM Herois WHERE nome = UPPER('Soldado: 76')), UPPER('FOGUETES HÉLIX'), 'Pequenos foguetes saem do Rifle de Pulso de Soldado: 76 de uma única vez. A explosão do foguete inflige dano aos inimigos em curto alcance.'),
((SELECT idHeroi FROM Herois WHERE nome = UPPER('Soldado: 76')), UPPER('DISPARADA'), 'Caso ele precise fugir de um tiroteio ou voltar para um, Soldado: 76 pode avançar com uma explosão de velocidade. Sua corrida termina se ele realizar outra ação além de avançar para frente.'),
((SELECT idHeroi FROM Herois WHERE nome = UPPER('Soldado: 76')), UPPER('CAMPO BIÓTICO'), 'O Soldado: 76 instala um emissor biótico no chão. Sua projeção energética restaura a vida de 76 e quaisquer membros de sua equipe no campo.'),
((SELECT idHeroi FROM Herois WHERE nome = UPPER('Soldado: 76')), UPPER('VISOR TÁTICO'), 'O visor tático de localização do Soldado: 76 fixa sua mira no alvo mais próximo. Se um inimigo deixa seu campo de visão, Soldado 76 pode rapidamente trocar para outro alvo.');

-- Sombra  
INSERT INTO Habilidades (idHeroi, nome, descricao) VALUES 
((SELECT idHeroi FROM Herois WHERE nome = UPPER('Sombra')), UPPER('PISTOLA AUTOMÁTICA'), 'A pistola automática de Sombra dispara em uma dispersão de curto alcance'),
((SELECT idHeroi FROM Herois WHERE nome = UPPER('Sombra')), UPPER('HACKEAR'), 'Sombra hackeia seus inimigos os impedindo temporariamente de usar suas habilidades ou kits médicos, os tornando inúteis para seus oponentes.'),
((SELECT idHeroi FROM Herois WHERE nome = UPPER('Sombra')), UPPER('FURTIVIDADE'), 'Sombra se torna invisível por um curto período de tempo, durante o qual sua velocidade é aumentada consideravelmente. A habilidade é desativada ao atacar, receber dano ou usar habilidades ofensivas.'),
((SELECT idHeroi FROM Herois WHERE nome = UPPER('Sombra')), UPPER('TRANSLOCADOR'), 'Sombra lança um sinalizador translocador. Ela pode retornar instantaneamente para a localização do translocador enquanto ele estiver ativo (inclusive enquanto ele estiver no ar).'),
((SELECT idHeroi FROM Herois WHERE nome = UPPER('Sombra')), UPPER('PEM'), 'Sombra realiza uma descarga de energia eletromagnética de amplo alcance, destruindo barreiras e escudos inimigos e hackeando todos os oponentes pegos na explosão.'),
((SELECT idHeroi FROM Herois WHERE nome = UPPER('Sombra')), UPPER('PEM'), 'Sombra realiza uma descarga de energia eletromagnética de amplo alcance, destruindo barreiras e escudos inimigos e hackeando todos os oponentes pegos na explosão.');

-- Symmetra 
INSERT INTO Habilidades (idHeroi, nome, descricao) VALUES 
((SELECT idHeroi FROM Herois WHERE nome = UPPER('Symmetra')), UPPER('PROJETOR DE FÓTONS'), 'A arma de Symmetra emite um raio que causa dano crescente enquanto estiver conectado. O projetor também pode lançar uma esfera de energia explosiva que causa dano alto com o impacto.'),
((SELECT idHeroi FROM Herois WHERE nome = UPPER('Symmetra')), UPPER('TORRE DE SENTINELAS'), 'Symmetra lança uma pequena torre que automaticamente dispara explosões redutoras de velocidade no inimigo mais próximo dentro de seu alcance. Até três torres podem ser construídas no campo de batalha de uma só vez.'),
((SELECT idHeroi FROM Herois WHERE nome = UPPER('Symmetra')), UPPER('TELETRANSPORTADOR'), 'Symmetra posiciona uma plataforma temporária de saída de teletransporte a distância e a conecta a uma plataforma de entrada em sua posição atual. Aliados (e algumas de suas habilidades, como o Pneu da Morte de Junkrat) podem viajar pelas duas plataformas instantaneamente.'),
((SELECT idHeroi FROM Herois WHERE nome = UPPER('Symmetra')), UPPER('BARREIRA DE FÓTONS'), 'Symmetra arma uma barreira de energia enorme que impede ataques a distância e corta todo o mapa.');

-- Torbjörn  
INSERT INTO Habilidades (idHeroi, nome, descricao) VALUES 
((SELECT idHeroi FROM Herois WHERE nome = UPPER('Torbjörn')), UPPER('PISTOLA DE REBITE'), 'Torbjörn dispara rebites ou ejeta metal quente da sua pistola em rajadas de curto alcance.'),
((SELECT idHeroi FROM Herois WHERE nome = UPPER('Torbjörn')), UPPER('MARTELO DE FORJA'), 'Torbjörn usa seu martelo de múltiplas funções para construir, aprimorar e reparar torres. Em momentos de perigo, ele também pode ser usado como uma arma.'),
((SELECT idHeroi FROM Herois WHERE nome = UPPER('Torbjörn')), UPPER('CONSTRUIR TORRE'), 'Torbjörn constrói um canhão automático que segue o inimigo. Ele pode usar as sucatas que coletar de inimigos ou aliados abatidos para repará-lo ou aprimorá-lo, aumentado sua vida e adicionando um segundo cano de canhão e um lançador de foguetes.'),
((SELECT idHeroi FROM Herois WHERE nome = UPPER('Torbjörn')), UPPER('IMPLEMENTO DE ARMADURA'), 'Torbjörn lança um aprimoramento de armadura. Ele ou seus aliados podem pegá-lo para absorver parte do dano.'),
((SELECT idHeroi FROM Herois WHERE nome = UPPER('Torbjörn')), UPPER('NÚCLEO FUNDIDO'), 'Depois de sobreaquecer sua forja pessoal, Torbjörn ganha um valor significativo de armadura e sucata. Ele também ataca (e constrói e repara torres) muito mais rápido que o normal.');

-- Tracer
INSERT INTO Habilidades (idHeroi, nome, descricao) VALUES
((SELECT idHeroi FROM Herois WHERE nome = UPPER('tracer')), UPPER('pistola eletromagnéticas'), 'Tracer dispara ambas as suas pistolas.'),
((SELECT idHeroi FROM Herois WHERE nome = UPPER('tracer')), UPPER('teleportar'), 'Tracer some horizontalmente no espaço, na direção para qual ela estiver se movendo, e reaparece alguns metros depois. Ela armazena até três cargas da habilidade de teleportar e gera mais cargas a cada poucos segundos.'),
((SELECT idHeroi FROM Herois WHERE nome = UPPER('tracer')), UPPER('recordação'), 'Tracer volta no tempo, retornando sua vida, munição e posição no mapa precisamente para o ponto em que estavam alguns segundos atrás.'),
((SELECT idHeroi FROM Herois WHERE nome = UPPER('tracer')), UPPER('Bombas eletromagnéticas'), 'Tracer joga uma grande bomba que adere a qualquer superfície ou oponente que tiver o azar de ser atingido por ela. Após um breve período, a bomba explode, causando dano alto a todos os inimigos dentro do raio de sua explosão.');

-- Widowmaker
INSERT INTO Habilidades (idHeroi, nome, descricao) VALUES 
((SELECT idHeroi FROM Herois WHERE nome = UPPER('Torbjörn')), UPPER('BEIJO DA VIÚVA'), 'O versátil rifle de Widowmaker é ideal para disparos em alvos distantes. Caso os alvos se aproximem a uma distância média, o rifle também pode ser usado em modo automático.'),
((SELECT idHeroi FROM Herois WHERE nome = UPPER('Torbjörn')), UPPER('ARPÉU'), 'Widowmaker lança um arpéu em direção ao local em que ela estiver apontando. Quando o gancho se conecta com uma superfície escalável, ela é puxada rapidamente na direção dele, permitindo a ela expandir sua visão do campo de batalha e escapar ou flanquear alvos.'),
((SELECT idHeroi FROM Herois WHERE nome = UPPER('Torbjörn')), UPPER('MINA VENENOSA'), 'Widowmaker adere um mina venenosa de ativação rápida a quase qualquer superfície. Quando um alvo se move dentro do alcance do mecanismo de ativação da mina, ela explode, lançando gás venenoso aos inimigos nas proximidades.'),
((SELECT idHeroi FROM Herois WHERE nome = UPPER('Torbjörn')), UPPER('VISÃO INFRAVERMELHO'), 'O visor de reconhecimento de Widowmaker permite a ela enxergar assinaturas térmicas através de paredes e objetos durante um período moderado de tempo. Essa visão melhorada é compartilhada com seus aliados.');

-- Ana 
INSERT INTO Habilidades (idHeroi, nome, descricao) VALUES 
((SELECT idHeroi FROM Herois WHERE nome = UPPER('Ana')), UPPER('RIFLE BIÓTICO'), 'O rifle de Ana atira dardos que podem restaurar a vida de seus aliados ou causar dano continuado a seus inimigos. Ela é capaz de usar a mira telescópica de seu rifle para dar tiros incrivelmente precisos.'),
((SELECT idHeroi FROM Herois WHERE nome = UPPER('Ana')), UPPER('DARDO SONÍFERO'), 'Ana dispara um dardo de sua arma secundária, deixando seus inimigos inconscientes (porém eles despertam ao receber dano).'),
((SELECT idHeroi FROM Herois WHERE nome = UPPER('Ana')), UPPER('GRANADA BIÓTICA'), 'Ana lança uma granada biótica que causa dano aos inimigos e cura os aliados em uma pequena área de efeito. Aliados afetados recebem por tempo limitado cura aumentada de todas as fontes, enquanto inimigos pegos pela explosão não podem se curar por alguns instantes.'),
((SELECT idHeroi FROM Herois WHERE nome = UPPER('Ana')), UPPER('ESTIMULANTE'), 'Depois que Ana atinge seus aliados com um estimulante de combate, eles causam mais dano e recebem menos dano dos ataques inimigos temporariamente.');

-- Brigitte 
INSERT INTO Habilidades (idHeroi, nome, descricao) VALUES 
((SELECT idHeroi FROM Herois WHERE nome = UPPER('Brigitte')), UPPER('MANGUAL A JATO'), 'A arma de combate corpo a corpo de Brigitte tem alcance aumentado, podendo acertar vários inimigos com um só golpe.'),
((SELECT idHeroi FROM Herois WHERE nome = UPPER('Brigitte')), UPPER('KIT DE REPAROS'), 'Brigitte joga um Kit de Reparos para curar um aliado. Qualquer cura acima do máximo de vida concede armadura.'),
((SELECT idHeroi FROM Herois WHERE nome = UPPER('Brigitte')), UPPER('DISPARO AÇOITADOR'), 'Brigitte arremessa o mangual a uma longa distância, causando dano e empurrando um inimigo para longe dela.'),
((SELECT idHeroi FROM Herois WHERE nome = UPPER('Brigitte')), UPPER('BARREIRA DE ESCUDO'), 'Brigitte cria uma barreira de energia à frente, absorvendo uma quantidade limitada de dano.'),
((SELECT idHeroi FROM Herois WHERE nome = UPPER('Brigitte')), UPPER('GOLPE DE ESCUDO'), 'Ao acionar a Barreira de Escudo, Brigitte pode dar uma arremetida para atordoar um inimigo.'),
((SELECT idHeroi FROM Herois WHERE nome = UPPER('Brigitte')), UPPER('REAGRUPAR'), 'Brigitte anda mais rápido e concede a todos os aliados próximos uma armadura que dura até ser destruída por dano.');

-- Lúcio  
INSERT INTO Habilidades (idHeroi, nome, descricao) VALUES 
((SELECT idHeroi FROM Herois WHERE nome = UPPER('Lúcio')), UPPER('AMPLIFICADOR SÔNICO'), 'lúcio pode acertar seus inimigos com projéteis sônicos ou empurrá-los para trás com uma explosão sonora.'),
((SELECT idHeroi FROM Herois WHERE nome = UPPER('Lúcio')), UPPER('TRANSIÇÃO'), 'Lúcio se energiza continuamente, assim como aliados próximos, com sua música. Ele pode trocar entre duas músicas: uma amplifica a velocidade de movimento, enquanto a outra recupera vida.'),
((SELECT idHeroi FROM Herois WHERE nome = UPPER('Lúcio')), UPPER('SOLTA O SOM'), 'Lúcio aumenta o volume de seus alto-falantes, aumentando os efeitos de suas músicas.'),
((SELECT idHeroi FROM Herois WHERE nome = UPPER('Lúcio')), UPPER('BARREIRA DE SOM'), 'Ondas protetoras irradiam do Amplificador Sônico do Lúcio, garantindo escudos pessoais a ele e a aliados próximos por um breve momento.');

-- Mercy 
INSERT INTO Habilidades (idHeroi, nome, descricao) VALUES 
((SELECT idHeroi FROM Herois WHERE nome = UPPER('Lúcio')), UPPER('BASTÃO DE CADUCEU'), 'Mercy ativa um de dois raios que se conectam a um aliado. Mantendo seus raios, Mercy pode restaurar a vida desse aliado ou aumentar a quantidade de dano que ele inflige.'),
((SELECT idHeroi FROM Herois WHERE nome = UPPER('Lúcio')), UPPER('DESINTEGRADOR DE CADUCEU'), 'Mercy atira um cartucho de sua arma.'),
((SELECT idHeroi FROM Herois WHERE nome = UPPER('Lúcio')), UPPER('ANJO DA GUARDA'), 'Mercy voa na direção de um aliado que ela tenha mirado, permitindo alcançá-lo rapidamente para fornecer assistência em momentos cruciais.'),
((SELECT idHeroi FROM Herois WHERE nome = UPPER('Lúcio')), UPPER('RESSURREIÇÃO'), 'Mercy traz um aliado morto de volta à batalha, com vida máxima.'),
((SELECT idHeroi FROM Herois WHERE nome = UPPER('Lúcio')), UPPER('DESCENSO ANGELICAL'), 'Impulsionada por sua armadura de Valquíria, Mercy reduz a velocidade de sua descida em grandes alturas.'),
((SELECT idHeroi FROM Herois WHERE nome = UPPER('Lúcio')), UPPER('VALQUÍRIA'), 'Ganha a habilidade de voar. Habilidades são aprimoradas.');

-- Moira 
INSERT INTO Habilidades (idHeroi, nome, descricao) VALUES 
((SELECT idHeroi FROM Herois WHERE nome = UPPER('Moira')), UPPER('PUNHO BIÓTICO'), 'Usando sua mão esquerda, Moira gasta energia biótica para curar aliados à sua frente. Sua mão direita dispara um raio de longa distância que drena a vida dos inimigos e cura Moira, recarregando também sua energia biótica.'),
((SELECT idHeroi FROM Herois WHERE nome = UPPER('Moira')), UPPER('ORBE BIÓTICO'), 'Moira lança uma esfera biótica que rebate. Ela pode escolher entre um efeito de regeneração que cura aliados ao passar por eles ou de deterioração que causa dano aos inimigos.'),
((SELECT idHeroi FROM Herois WHERE nome = UPPER('Moira')), UPPER('DESVANECER'), 'Moira se teletransporta rapidamente por distâncias curtas.'),
((SELECT idHeroi FROM Herois WHERE nome = UPPER('Moira')), UPPER('COALESCÊNCIA'), 'Moira canaliza um raio de longa distância que pode curar aliados ou atravessar barreiras para causar dano a seus inimigos.');

-- Zenyatta 
INSERT INTO Habilidades (idHeroi, nome, descricao) VALUES 
((SELECT idHeroi FROM Herois WHERE nome = UPPER('Zenyatta')), UPPER('ORBE DA DESTRUIÇÃO'), 'Zenyatta projeta seus orbes de energia destrutiva individualmente ou em uma rajada de disparos rápidos após alguns segundos acumulando poder.'),
((SELECT idHeroi FROM Herois WHERE nome = UPPER('Zenyatta')), UPPER('ORBE DA HARMONIA'), 'Zenyatta lança um orbe sobre o ombro de um alvo aliado. Enquanto Zenyatta mantiver uma linha de visão, o orbe recupera lentamente a vida do aliado. Somente um aliado pode receber os benefícios do orbe de cada vez'),
((SELECT idHeroi FROM Herois WHERE nome = UPPER('Zenyatta')), UPPER('ORBE DA DISCÓRDIA'), 'Prender o orbe da discórdia a um oponente amplifica a quantidade de dano que ele recebe enquanto Zenyatta mantiver uma linha de visão. Somente um inimigo pode sofrer os efeitos do orbe de cada vez.'),
((SELECT idHeroi FROM Herois WHERE nome = UPPER('Zenyatta')), UPPER('TRANSCENDÊNCIA'), 'Zenyatta entra em um estado de existência elevada por um breve período de tempo. Enquanto transcende, Zenyatta não pode usar suas habilidades ou armas, mas é imune ao dano e restaura automaticamente a vida dele e de aliados próximos.');	

SELECT idHeroi, nome, dificuldade, funcao FROM Herois;
SELECT idHabilidade, idHeroi, nome, descricao FROM Habilidades;

SELECT he.nome, ha.nome, ha.descricao FROM Herois he INNER JOIN Habilidades ha ON he.idHeroi = ha.idHeroi; 


/*
INSERT INTO herois (nome, dificuldade, funcao) VALUES 
('TRACER',2,'DANO'),
('BASTION',1,'DANO'),
('REAPER',1,'DANO'),
('GENJI',3,'DANO'),
('WINSTON',2,'TANQUE'),
('ZENYATTA',3,'SUPORTE');
*/
