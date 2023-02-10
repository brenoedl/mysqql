SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

CREATE DATABASE IF NOT EXISTS `cadatro` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `cadatro`;

CREATE TABLE `pessoas` (
  `id` int(11) NOT NULL,
  `nome` varchar(30) NOT NULL,
  `nascimento` date DEFAULT NULL,
  `sexo` enum('M','F') DEFAULT NULL,
  `peso` decimal(5,2) DEFAULT NULL,
  `autura` decimal(3,2) DEFAULT NULL,
  `nacionalidade` varchar(20) DEFAULT 'Brasl'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

INSERT INTO `pessoas` (`id`, `nome`, `nascimento`, `sexo`, `peso`, `autura`, `nacionalidade`) VALUES
(1, 'Breno Emanuel', '2002-03-17', 'M', '50.21', '1.62', 'Brasl'),
(2, 'Ellen Lima', '1984-09-11', 'F', '80.21', '1.52', 'Brasl'),
(3, 'Amdré Lima', '1974-11-25', 'M', '93.61', '1.83', 'Brasl'),
(4, 'Ana Lima', '1974-10-12', 'F', '63.61', '1.43', 'Brasl'),
(5, 'Roberto Colombo', '1955-02-28', 'M', '79.00', '1.68', 'Brasl'),
(6, 'Jozefa Colombo', '1958-03-26', 'F', '66.00', '1.55', 'Brasl'),
(7, 'Daiana Inter', '1958-01-08', 'F', '69.00', '1.68', 'Brasl'),
(8, 'Daniele De Aquino', '2002-12-06', 'F', '65.53', '1.60', 'Brasl'),
(9, 'Eduardo Lima', '2004-11-09', 'M', '55.36', '1.81', 'Brasl');

CREATE TABLE `series` (
  `id` int(11) NOT NULL,
  `nome` varchar(30) NOT NULL,
  `descricao` text DEFAULT NULL,
  `lansamento` year(4) DEFAULT NULL,
  `categoria` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

INSERT INTO `series` (`id`, `nome`, `descricao`, `lansamento`, `categoria`) VALUES
(1, 'Edens Zero', 'aventura traz as aventuras de Rebecca e Shiki em um universo com viagens espaciais e muitos robos', 2021, 'Anime'),
(2, 'Fullmetal Alchemist', 'Situado em um universo ficcional em que a alquimia é uma das mais avançadas técnicas científicas conhecidas pelo homem, a história centra-se nos irmãos Edward Elric e Alphonse Elric, que estão procurando a pedra filosofal para restaurar seus corpos após uma desastrosa tentativa de trazer a mãe falecida de volta à vida ...', 2001, 'Anime'),
(3, 'Bleach', 'segue as aventuras de Ichigo Kurosaki que após ganhar os poderes de um Ceifeiro de Almas, através de uma Ceifeira de Almas, Rukia Kuchiki.', 2004, 'Anime'),
(4, 'Naruto', 'A série gira em torno das aventuras vividas por Naruto Uzumaki, um jovem órfão habitante da Aldeia da Folha que sonha em se tornar o quinto Hokage, o maior guerreiro e governante da vila.', 1999, 'Anime'),
(5, 'One Piece', 'segue a história de um grupo de piratas liderado por Monkey D. Luffy. O garoto, que possui um corpo elástico, pretende se tornar o Rei dos Piratas e para isso deve encontrar o One Piece, tesouro misterioso capaz de torná-lo imbatível, segundo as lendas.', 1999, 'Anime'),
(6, 'La Casa Papel', 'Oito ladrões se trancam com reféns na Casa da Moeda da Espanha. Seu líder manipula a polícia para realizar um plano. Será o maior roubo da história, ou uma missão em vão?', 2017, 'live action'),
(7, 'Wandinha', 'Inteligente, sarcástica e apática, Wandinha Addams pode estar meio morta por dentro, mas na Escola Nunca Mais ela vai fazer amigos, inimigos e investigar assassinatos.', 2022, 'live action'),
(8, 'A Casa Coruja', 'Luz, uma adolescente humana, por acaso tropeça em um portal para um novo mundo mágico, onde ela faz amizade com uma bruxa rebelde, Eda, e um guerreiro minúsculo, King.', 2020, 'desenho'),
(9, 'Nanatsu no Taizai', 'estavam na ordem mais forte e mais cruel dos Cavaleiros Sagrados no Reino de Liones. Eles foram formados por sete criminosos brutais, que tinham sido todos condenados por crimes graves e tinham esculpido os símbolos de sete animais em seus corpos.', 2014, 'Anime'),
(10, 'Dragon Ball ', 'As aventuras de um poderoso guerreiro chamado Goku, seu filho Gohan e seus aliados, que se esforçam para defender a Terra das ameaças. Eles são auxiliados por um dragão que concede os desejos de quem quer que reúna as sete Esferas do Dragão.', 1998, 'Anime'),
(11, 'Amphibia', 'Anne Boonchuy, uma garota de 13 anos, vai parar no mundo mágico de Amphibia, um lugar habitado por pessoas sapo. Lá, ela conhece Sprig, um jovem sapo de quem se torna amiga.', 2018, 'desenho'),
(12, 'Star Wars', 'Star Wars é uma franquia do tipo space opera estadunidense criada pelo cineasta George Lucas, que conta com uma série de nove filmes de fantasia científica e dois spin-offs.', 1977, 'live action'),
(13, 'Star vs. As Forças do Mal', 'Star Borboleta é uma princesa mágica de outra dimensão que é enviada à Terra por seus pais como \"estudante de intercâmbio\". Mas, em vez de viver uma vida normal, ela continua a combater vilões não só em todo o universo, mas também na escola.', 2015, 'desenho'),
(14, 'Como Treinar o Seu Dragão', 'Soluço é um jovem viking que não tem capacidade para lutar contra os dragões, como é a tradição local. Sua vida muda quando ele ajuda um dragão que lhe mostra toda a verdade. Juntos, eles tentam provar que dragões e humanos podem ser amigos.', 2010, 'desenho'),
(15, 'Os Cavaleiros do Zodíaco', 'Acompanhe histórias de um grupo de cinco jovens guerreiro, que lutam para proteger Saori Kido, a reencarnação da deusa da sabedoria grega Atena. Para lutar, os guerreiros utilizam sua energia interior, o cosmos, assim como seus punhos e armaduras.', 1986, 'Anime'),
(16, 'Kung Fu Panda', 'Po é um panda que trabalha na loja de macarrão da sua família e sonha em transformar-se em um mestre de kung fu. Seu sonho se torna realidade quando, inesperadamente, ele deve cumprir uma profecia antiga e estudar a arte marcial com seus ídolos, os Cinco Furiosos. Po precisa de toda a sabedoria, força e habilidade que conseguir reunir para proteger seu povo de um leopardo da neve malvado.', 2008, 'desenho'),
(17, 'Sobrenatural', 'Os irmãos Sam e Dean Winchester, que viajam pela América em um Chevy Impala 1967 preto investigando e combatendo eventos paranormais e outras ocorrências inexplicáveis, muitas delas baseadas em lendas urbanas e folclore americano, bem como em criaturas sobrenaturais clássicas como vampiros, lobisomens, ...', 2005, 'live action'),
(18, 'Steven Universo', 'Steven Universe é um desenho animado que conta a história de um grupo rebelde chamado Crystal Gems. Milhares de anos atrás, uma raça alienígena (as Gems), toda composta por mulheres, invadiu a terra com a intenção de colonizar o planeta e explorar seus recursos', 2013, 'desenho');


ALTER TABLE `pessoas`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `series`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `pessoas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

ALTER TABLE `series`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
