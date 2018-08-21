-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 21-Ago-2018 às 17:43
-- Versão do servidor: 10.1.31-MariaDB
-- PHP Version: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gerar_sites`
--
CREATE DATABASE IF NOT EXISTS `gerar_sites` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `gerar_sites`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `administradores`
--

CREATE TABLE `administradores` (
  `id` int(11) NOT NULL,
  `nome` text NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `administradores`
--

INSERT INTO `administradores` (`id`, `nome`, `email`, `password`) VALUES
(2, 'Gabriel', 'deostulti2@gmail.com', '$2y$10$J3KGve8R/tO8I2I.ktd.6.BOhu0SwObsB9cm4Wtt9Bco2WkxOmpsK'),
(5, 'teste123', 'teste123@gmail.com', '$2y$10$nEyE8r3ksPBwEdYGRJxJmO9MSF0jtqYmuCSileMSciaONm0khvtHy');

-- --------------------------------------------------------

--
-- Estrutura da tabela `codigo_template`
--

CREATE TABLE `codigo_template` (
  `id` int(11) NOT NULL,
  `id_secao` int(11) NOT NULL,
  `id_template` int(11) NOT NULL,
  `codigo` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `codigo_template`
--

INSERT INTO `codigo_template` (`id`, `id_secao`, `id_template`, `codigo`) VALUES
(1, 1, 2, '<section class=\'site-section\' id=\'sobre\'>       <div class=\'container\'>         <div class=\'row\'>           <div class=\'col-md-5 site-animate mb-5\'>             <h4 class=\'site-sub-title\'><!--Titulo_Sobre_sub--> $titulo </h4>             <h2 class=\'site-primary-title display-4\'><!--Titulo_Sobre--><!--Titulo_Sobre_sub--><!--fim_Titulo_Sobre--> $titulo </h2>                          <!--P_Titulo_Sobre--><p class=\'mb-4\'> $info <!--P_Titulo_Sobre_sub--></p><!--fim_P_Titulo_Sobre-->             <p><a href=\'#\' class=\'btn btn-secondary btn-lg\'>Botão #1</a></p>           </div>           <div class=\'col-md-1\'></div>           <div class=\'col-md-6 site-animate img\' data-animate-effect=\'fadeInRight\'>             <img src=\'images/about_img_1.jpg\' alt=\'Webmax\' class=\'img-fluid\'>           </div>         </div>       </div>     </section>'),
(2, 3, 2, '<section class=\'site-section\' id=\'menu\'>\r\n      <div class=\'container\'>\r\n        <div class=\'row\'>\r\n          <div class=\'col-md-12 text-center mb-5 site-animate\'>\r\n            <h2 class=\'display-4\'>$titulo</h2>\r\n            <div class=\'row justify-content-center\'>\r\n              <div class=\'col-md-7\'>\r\n                <p class=\'lead\'>$info</p>\r\n              </div>\r\n            </div>\r\n          </div>\r\n\r\n          <div class=\'col-md-12 text-center\'>\r\n\r\n            <ul class=\'nav site-tab-nav nav-pills mb-5\' id=\'pills-tab\' role=\'tablist\'>\r\n              <li class=\'nav-item site-animate\'>\r\n                <a class=\'nav-link active\' id=\'pills-breakfast-tab\' data-toggle=\'pill\' href=\'#pills-breakfast\' role=\'tab\' aria-controls=\'pills-breakfast\' aria-selected=\'true\'>Pequeno-Almoço</a>\r\n              </li>\r\n              <li class=\'nav-item site-animate\'>\r\n                <a class=\'nav-link\' id=\'pills-lunch-tab\' data-toggle=\'pill\' href=\'#pills-lunch\' role=\'tab\' aria-controls=\'pills-lunch\' aria-selected=\'false\'>Almoço</a>\r\n              </li>\r\n              <li class=\'nav-item site-animate\'>\r\n                <a class=\'nav-link\' id=\'pills-dinner-tab\' data-toggle=\'pill\' href=\'#pills-dinner\' role=\'tab\' aria-controls=\'pills-dinner\' aria-selected=\'false\'>Jantar</a>\r\n              </li>\r\n            </ul>\r\n\r\n            <div class=\'tab-content text-left\'>\r\n              <div class=\'tab-pane fade show active\' id=\'pills-breakfast\' role=\'tabpanel\' aria-labelledby=\'pills-breakfast-tab\'>\r\n                <div class=\'row\'>\r\n                  <div class=\'col-md-6 site-animate\'>\r\n                    <div class=\'media menu-item\'>\r\n                      <img class=\'mr-3\' src=\'images/menu_1.jpg\' class=\'img-fluid\' alt=\'Webmax\'>\r\n                      <div class=\'media-body\'>\r\n                        <h5 class=\'mt-0\'>Salted Fried Chicken</h5>\r\n                        <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>\r\n                        <h6 class=\'text-primary menu-price\'>$35.50</h6>\r\n                      </div>\r\n                    </div>\r\n\r\n                    <div class=\'media menu-item\'>\r\n                      <img class=\'mr-3\' src=\'images/menu_2.jpg\' class=\'img-fluid\' alt=\'Webmax\'>\r\n                      <div class=\'media-body\'>\r\n                        <h5 class=\'mt-0\'>Italian Sauce Mushroom</h5>\r\n                        <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>\r\n                        <h6 class=\'text-primary menu-price\'>$24.50</h6>\r\n                      </div>\r\n                    </div>\r\n\r\n                    <div class=\'media menu-item\'>\r\n                      <img class=\'mr-3\' src=\'images/menu_3.jpg\' class=\'img-fluid\' alt=\'Webmax\'>\r\n                      <div class=\'media-body\'>\r\n                        <h5 class=\'mt-0\'>Fried Potato w/ Garlic</h5>\r\n                        <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>\r\n                        <h6 class=\'text-primary menu-price\'>$14.50</h6>\r\n                      </div>\r\n                    </div>\r\n\r\n                  </div>\r\n                  <div class=\'col-md-6 site-animate\'>\r\n                    <div class=\'media menu-item\'>\r\n                      <img class=\'mr-3\' src=\'images/menu_2.jpg\' class=\'img-fluid\' alt=\'Webmax\'>\r\n                      <div class=\'media-body\'>\r\n                        <h5 class=\'mt-0\'>Italian Sauce Mushroom</h5>\r\n                        <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>\r\n                        <h6 class=\'text-primary menu-price\'>$35.50</h6>\r\n                      </div>\r\n                    </div>\r\n\r\n                    <div class=\'media menu-item\'>\r\n                      <img class=\'mr-3\' src=\'images/menu_1.jpg\' class=\'img-fluid\' alt=\'Webmax\'>\r\n                      <div class=\'media-body\'>\r\n                        <h5 class=\'mt-0\'>Salted Fried Chicken</h5>\r\n                        <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>\r\n                        <h6 class=\'text-primary menu-price\'>$12.50</h6>\r\n                      </div>\r\n                    </div>\r\n\r\n                    <div class=\'media menu-item\'>\r\n                      <img class=\'mr-3\' src=\'images/menu_3.jpg\' class=\'img-fluid\' alt=\'Webmax\'>\r\n                      <div class=\'media-body\'>\r\n                        <h5 class=\'mt-0\'>Fried Potato w/ Garlic</h5>\r\n                        <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>\r\n                        <h6 class=\'text-primary menu-price\'>$18.50</h6>\r\n                      </div>\r\n                    </div>\r\n                  </div>\r\n                </div>\r\n              </div>\r\n              <div class=\'tab-pane fade\' id=\'pills-lunch\' role=\'tabpanel\' aria-labelledby=\'pills-lunch-tab\'>\r\n                <div class=\'row\'>\r\n                  <div class=\'col-md-6 site-animate\'>\r\n\r\n                    <div class=\'media menu-item\'>\r\n                      <img class=\'mr-3\' src=\'images/menu_3.jpg\' class=\'img-fluid\' alt=\'Webmax\'>\r\n                      <div class=\'media-body\'>\r\n                        <h5 class=\'mt-0\'>Fried Potato w/ Garlic</h5>\r\n                        <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>\r\n                        <h6 class=\'text-primary menu-price\'>$14.50</h6>\r\n                      </div>\r\n                    </div>\r\n\r\n                    <div class=\'media menu-item\'>\r\n                      <img class=\'mr-3\' src=\'images/menu_1.jpg\' class=\'img-fluid\' alt=\'Webmax\'>\r\n                      <div class=\'media-body\'>\r\n                        <h5 class=\'mt-0\'>Salted Fried Chicken</h5>\r\n                        <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>\r\n                        <h6 class=\'text-primary menu-price\'>$35.50</h6>\r\n                      </div>\r\n                    </div>\r\n\r\n                    <div class=\'media menu-item\'>\r\n                      <img class=\'mr-3\' src=\'images/menu_2.jpg\' class=\'img-fluid\' alt=\'Webmax\'>\r\n                      <div class=\'media-body\'>\r\n                        <h5 class=\'mt-0\'>Italian Sauce Mushroom</h5>\r\n                        <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>\r\n                        <h6 class=\'text-primary menu-price\'>$24.50</h6>\r\n                      </div>\r\n                    </div>\r\n\r\n                  </div>\r\n                  <div class=\'col-md-6 site-animate\'>\r\n\r\n                    <div class=\'media menu-item\'>\r\n                      <img class=\'mr-3\' src=\'images/menu_3.jpg\' class=\'img-fluid\' alt=\'Webmax\'>\r\n                      <div class=\'media-body\'>\r\n                        <h5 class=\'mt-0\'>Fried Potato w/ Garlic</h5>\r\n                        <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>\r\n                        <h6 class=\'text-primary menu-price\'>$18.50</h6>\r\n                      </div>\r\n                    </div>\r\n\r\n                    <div class=\'media menu-item\'>\r\n                      <img class=\'mr-3\' src=\'images/menu_2.jpg\' class=\'img-fluid\' alt=\'Webmax\'>\r\n                      <div class=\'media-body\'>\r\n                        <h5 class=\'mt-0\'>Italian Sauce Mushroom</h5>\r\n                        <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>\r\n                        <h6 class=\'text-primary menu-price\'>$35.50</h6>\r\n                      </div>\r\n                    </div>\r\n\r\n                    <div class=\'media menu-item\'>\r\n                      <img class=\'mr-3\' src=\'images/menu_1.jpg\' class=\'img-fluid\' alt=\'Webmax\'>\r\n                      <div class=\'media-body\'>\r\n                        <h5 class=\'mt-0\'>Salted Fried Chicken</h5>\r\n                        <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>\r\n                        <h6 class=\'text-primary menu-price\'>$12.50</h6>\r\n                      </div>\r\n                    </div>\r\n\r\n                    \r\n                  </div>\r\n                </div>\r\n              </div>\r\n              <div class=\'tab-pane fade\' id=\'pills-dinner\' role=\'tabpanel\' aria-labelledby=\'pills-dinner-tab\'>\r\n                <div class=\'row\'>\r\n                  <div class=\'col-md-6 site-animate\'>\r\n\r\n                    <div class=\'media menu-item\'>\r\n                      <img class=\'mr-3\' src=\'images/menu_2.jpg\' class=\'img-fluid\' alt=\'Webmax\'>\r\n                      <div class=\'media-body\'>\r\n                        <h5 class=\'mt-0\'>Italian Sauce Mushroom</h5>\r\n                        <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>\r\n                        <h6 class=\'text-primary menu-price\'>$24.50</h6>\r\n                      </div>\r\n                    </div>\r\n\r\n                    <div class=\'media menu-item\'>\r\n                      <img class=\'mr-3\' src=\'images/menu_1.jpg\' class=\'img-fluid\' alt=\'Webmax\'>\r\n                      <div class=\'media-body\'>\r\n                        <h5 class=\'mt-0\'>Salted Fried Chicken</h5>\r\n                        <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>\r\n                        <h6 class=\'text-primary menu-price\'>$35.50</h6>\r\n                      </div>\r\n                    </div>\r\n\r\n                    <div class=\'media menu-item\'>\r\n                      <img class=\'mr-3\' src=\'images/menu_3.jpg\' class=\'img-fluid\' alt=\'Webmax\'>\r\n                      <div class=\'media-body\'>\r\n                        <h5 class=\'mt-0\'>Fried Potato w/ Garlic</h5>\r\n                        <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>\r\n                        <h6 class=\'text-primary menu-price\'>$14.50</h6>\r\n                      </div>\r\n                    </div>\r\n\r\n                  </div>\r\n                  <div class=\'col-md-6 site-animate\'>\r\n\r\n                    <div class=\'media menu-item\'>\r\n                      <img class=\'mr-3\' src=\'images/menu_3.jpg\' class=\'img-fluid\' alt=\'Webmax\'>\r\n                      <div class=\'media-body\'>\r\n                        <h5 class=\'mt-0\'>Fried Potato w/ Garlic</h5>\r\n                        <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>\r\n                        <h6 class=\'text-primary menu-price\'>$18.50</h6>\r\n                      </div>\r\n                    </div>\r\n\r\n                    <div class=\'media menu-item\'>\r\n                      <img class=\'mr-3\' src=\'images/menu_2.jpg\' class=\'img-fluid\' alt=\'Webmax\'>\r\n                      <div class=\'media-body\'>\r\n                        <h5 class=\'mt-0\'>Italian Sauce Mushroom</h5>\r\n                        <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>\r\n                        <h6 class=\'text-primary menu-price\'>$35.50</h6>\r\n                      </div>\r\n                    </div>\r\n\r\n                    <div class=\'media menu-item\'>\r\n                      <img class=\'mr-3\' src=\'images/menu_1.jpg\' class=\'img-fluid\' alt=\'Webmax\'>\r\n                      <div class=\'media-body\'>\r\n                        <h5 class=\'mt-0\'>Salted Fried Chicken</h5>\r\n                        <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>\r\n                        <h6 class=\'text-primary menu-price\'>$12.50</h6>\r\n                      </div>\r\n                    </div>\r\n\r\n                    \r\n                  </div>\r\n                </div>\r\n              </div>\r\n            </div>\r\n\r\n          </div>\r\n        </div>\r\n      </div>\r\n    </section>'),
(3, 2, 2, '<section class=\'site-section bg-light\' id=\'especialidades\'>\r\n      <div class=\'container\'>\r\n        \r\n        <div class=\'row\'>\r\n          <div class=\'col-md-12 text-center mb-5 site-animate\'>\r\n            <h4 class=\'site-sub-title\'>$titulo</h4>\r\n            <h2 class=\'display-4\'>$titulo</h2>\r\n            <div class=\'row justify-content-center\'>\r\n              <div class=\'col-md-7\'>\r\n                <p class=\'lead\'>$info</p>\r\n              </div>\r\n            </div>\r\n          </div>\r\n          <div class=\'col-md-12\'>\r\n            <div class=\'owl-carousel site-owl\'>\r\n\r\n              <div class=\'item\'>\r\n                <div class=\'media d-block mb-4 text-center site-media site-animate border-0\'>\r\n                  <img src=\'images/offer_1.jpg\' alt=\'Webmax\' class=\'img-fluid\'>\r\n                  <div class=\'media-body p-md-5 p-4\'>\r\n                    <h5 class=\'text-primary\'>$19.50</h5>\r\n                    <h5 class=\'mt-0 h4\'>Beef with Sausage</h5>\r\n                    <p class=\'mb-4\'>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>\r\n\r\n                    <p class=\'mb-0\'><a href=\'#\' class=\'btn btn-primary btn-sm\'>Order Now!</a></p>\r\n                  </div>\r\n                </div>\r\n              </div>\r\n\r\n              <div class=\'item\'>\r\n                <div class=\'media d-block mb-4 text-center site-media site-animate border-0\'>\r\n                  <img src=\'images/offer_2.jpg\' alt=\'Webmax\' class=\'img-fluid\'>\r\n                  <div class=\'media-body p-md-5 p-4\'>\r\n                    <h5 class=\'text-primary\'>$29.50</h5>\r\n                    <h5 class=\'mt-0 h4\'>Egg with Garlic </h5>\r\n                    <p class=\'mb-4\'>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>\r\n\r\n                    <p class=\'mb-0\'><a href=\'#\' class=\'btn btn-primary btn-sm\'>Order Now!</a></p>\r\n                  </div>\r\n                </div>\r\n              </div>\r\n              \r\n              <div class=\'item\'>\r\n                <div class=\'media d-block mb-4 text-center site-media site-animate border-0\'>\r\n                  <img src=\'images/offer_3.jpg\' alt=\'Webmax\' class=\'img-fluid\'>\r\n                  <div class=\'media-body p-md-5 p-4\'>\r\n                    <h5 class=\'text-primary\'>$11.50</h5>\r\n                    <h5 class=\'mt-0 h4\'>Beef Ribs</h5>\r\n                    <p class=\'mb-4\'>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>\r\n\r\n                    <p class=\'mb-0\'><a href=\'#\' class=\'btn btn-primary btn-sm\'>Order Now!</a></p>\r\n                  </div>\r\n                </div>\r\n              </div>\r\n\r\n              <div class=\'item\'>\r\n                <div class=\'media d-block mb-4 text-center site-media site-animate border-0\'>\r\n                  <img src=\'images/offer_1.jpg\' alt=\'Webmax\' class=\'img-fluid\'>\r\n                  <div class=\'media-body p-md-5 p-4\'>\r\n                    <h5 class=\'text-primary\'>$33.50</h5>\r\n                    <h5 class=\'mt-0 h4\'>Beef with Sauce</h5>\r\n                    <p class=\'mb-4\'>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>\r\n\r\n                    <p class=\'mb-0\'><a href=\'#\' class=\'btn btn-primary btn-sm\'>Order Now!</a></p>\r\n                  </div>\r\n                </div>\r\n              </div>\r\n\r\n              <div class=\'item\'>\r\n                <div class=\'media d-block mb-4 text-center site-media site-animate border-0\'>\r\n                  <img src=\'images/offer_2.jpg\' alt=\'Webmax\' class=\'img-fluid\'>\r\n                  <div class=\'media-body p-md-5 p-4\'>\r\n                    <h5 class=\'text-primary\'>$12.50</h5>\r\n                    <h5 class=\'mt-0 h4\'>Fresh Salmon Fish</h5>\r\n                    <p class=\'mb-4\'>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>\r\n\r\n                    <p class=\'mb-0\'><a href=\'#\' class=\'btn btn-primary btn-sm\'>Order Now!</a></p>\r\n                  </div>\r\n                </div>\r\n              </div>\r\n              \r\n              <div class=\'item\'>\r\n                <div class=\'media d-block mb-4 text-center site-media site-animate border-0\'>\r\n                  <img src=\'images/offer_3.jpg\' alt=\'Webmax\' class=\'img-fluid\'>\r\n                  <div class=\'media-body p-md-5 p-4\'>\r\n                    <h5 class=\'text-primary\'>$53.50</h5>\r\n                    <h5 class=\'mt-0 h4\'>Beef Ribs</h5>\r\n                    <p class=\'mb-4\'>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>\r\n\r\n                    <p class=\'mb-0\'><a href=\'#\' class=\'btn btn-primary btn-sm\'>Order Now!</a></p>\r\n                  </div>\r\n                </div>\r\n              </div>\r\n\r\n              <div class=\'item\'>\r\n                <div class=\'media d-block mb-4 text-center site-media site-animate border-0\'>\r\n                  <img src=\'images/offer_1.jpg\' alt=\'Webmax\' class=\'img-fluid\'>\r\n                  <div class=\'media-body p-md-5 p-4\'>\r\n                    <h5 class=\'text-primary\'>$22.50</h5>\r\n                    <h5 class=\'mt-0 h4\'>Beef with Sauce</h5>\r\n                    <p class=\'mb-4\'>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>\r\n\r\n                    <p class=\'mb-0\'><a href=\'#\' class=\'btn btn-primary btn-sm\'>Order Now!</a></p>\r\n                  </div>\r\n                </div>\r\n              </div>\r\n\r\n              <div class=\'item\'>\r\n                <div class=\'media d-block mb-4 text-center site-media site-animate border-0\'>\r\n                  <img src=\'images/offer_2.jpg\' alt=\'Webmax\' class=\'img-fluid\'>\r\n                  <div class=\'media-body p-md-5 p-4\'>\r\n                    <h5 class=\'text-primary\'>$39.50</h5>\r\n                    <h5 class=\'mt-0 h4\'>Fresh Salmon Fish</h5>\r\n                    <p class=\'mb-4\'>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>\r\n\r\n                    <p class=\'mb-0\'><a href=\'#\' class=\'btn btn-primary btn-sm\'>Order Now!</a></p>\r\n                  </div>\r\n                </div>\r\n              </div>\r\n              \r\n              <div class=\'item\'>\r\n                <div class=\'media d-block mb-4 text-center site-media site-animate border-0\'>\r\n                  <img src=\'images/offer_3.jpg\' alt=\'Webmax\' class=\'img-fluid\'>\r\n                  <div class=\'media-body p-md-5 p-4\'>\r\n                    <h5 class=\'text-primary\'>$39.50</h5>\r\n                    <h5 class=\'mt-0 h4\'>Beef Ribs</h5>\r\n                    <p class=\'mb-4\'>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>\r\n\r\n                    <p class=\'mb-0\'><a href=\'#\' class=\'btn btn-primary btn-sm\'>Order Now!</a></p>\r\n                  </div>\r\n                </div>\r\n              </div>\r\n\r\n            </div>\r\n          </div>\r\n          \r\n        </div>\r\n      </div>\r\n    </section>\r\n    <!-- END section -->'),
(4, 4, 2, '<section class=\'site-section bg-light\' id=\'noticias\'>\r\n      <div class=\'container\'>\r\n\r\n        <div class=\'row\'>\r\n          <div class=\'col-md-12 text-center mb-5 site-animate\'>\r\n            <h2 class=\'display-4\'>$titulo</h2> <div class=\'row justify-content-center\'>\r\n              <div class=\'col-md-7\'>\r\n                <p class=\'lead\'>$info</p>\r\n              </div>\r\n            </div>\r\n          </div>\r\n\r\n          <div class=\'col-lg-4 col-md-6 col-sm-6\'>\r\n            <div class=\'media d-block mb-4 text-center site-media site-animate\'>\r\n              <img src=\'images/offer_1.jpg\' alt=\'Webmax\' class=\'img-fluid\'>\r\n              <div class=\'media-body p-md-5 p-4\'>\r\n                <h5 class=\'mt-0 h4\'>We Have Dilecious Food</h5>\r\n                <p class=\'mb-4\'>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>\r\n\r\n                <p class=\'mb-0\'><a href=\'#\' class=\'btn btn-primary btn-sm\'>Read More</a></p>\r\n              </div>\r\n            </div>\r\n          </div>\r\n          <div class=\'col-lg-4 col-md-6 col-sm-6\'>\r\n            <div class=\'media d-block mb-4 text-center site-media site-animate\'>\r\n              <img src=\'images/offer_2.jpg\' alt=\'Webmax\' class=\'img-fluid\'>\r\n              <div class=\'media-body p-md-5 p-4\'>\r\n                <h5 class=\'mt-0 h4\'>Chef Special Menu</h5>\r\n                <p class=\'mb-4\'>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>\r\n\r\n                <p class=\'mb-0\'><a href=\'#\' class=\'btn btn-primary btn-sm\'>Read More</a></p>\r\n              </div>\r\n            </div>\r\n          </div>\r\n          <div class=\'col-lg-4 col-md-6 col-sm-6\'>\r\n            <div class=\'media d-block mb-4 text-center site-media site-animate\'>\r\n              <img src=\'images/offer_3.jpg\' alt=\'Webmax\' class=\'img-fluid\'>\r\n              <div class=\'media-body p-md-5 p-4\'>\r\n                <h5 class=\'mt-0 h4\'>Merriage Celebrations</h5>\r\n                <p class=\'mb-4\'>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>\r\n\r\n                <p class=\'mb-0\'><a href=\'#\' class=\'btn btn-primary btn-sm\'>Read More</a></p>\r\n              </div>\r\n            </div>\r\n          </div>\r\n        </div>\r\n      </div>\r\n    </section>\r\n    <!-- END section -->'),
(5, 5, 2, '<section class=\'site-section\' id=\'galeria\'>\r\n      <div class=\'container\'>\r\n        <div class=\'row site-custom-gutters\'>\r\n\r\n          <div class=\'col-md-12 text-center mb-5 site-animate\'>\r\n            <h2 class=\'display-4\'>$titulo</h2>\r\n            <div class=\'row justify-content-center\'>\r\n              <div class=\'col-md-7\'>\r\n                <p class=\'lead\'>$info</p>\r\n              </div>\r\n            </div>\r\n          </div>\r\n\r\n          <div class=\'col-md-4 site-animate\'>\r\n            <a href=\'images/menu_1.jpg\' class=\'site-thumbnail image-popup\'>\r\n              <img src=\'images/menu_1.jpg\' alt=\'Webmax\' class=\'img-fluid\'>\r\n            </a>\r\n          </div>\r\n          <div class=\'col-md-4 site-animate\'>\r\n            <a href=\'images/menu_2.jpg\' class=\'site-thumbnail image-popup\'>\r\n              <img src=\'images/menu_2.jpg\' alt=\'Webmax\' class=\'img-fluid\'>\r\n            </a>\r\n          </div>\r\n          <div class=\'col-md-4 site-animate\'>\r\n            <a href=\'images/menu_3.jpg\' class=\'site-thumbnail image-popup\'>\r\n              <img src=\'images/menu_3.jpg\' alt=\'Webmax\' class=\'img-fluid\'>\r\n            </a>\r\n          </div>\r\n\r\n          <div class=\'col-md-4 site-animate\'>\r\n            <a href=\'images/menu_2.jpg\' class=\'site-thumbnail image-popup\'>\r\n              <img src=\'images/menu_2.jpg\' alt=\'Webmax\' class=\'img-fluid\'>\r\n            </a>\r\n          </div>\r\n          <div class=\'col-md-4 site-animate\'>\r\n            <a href=\'images/menu_3.jpg\' class=\'site-thumbnail image-popup\'>\r\n              <img src=\'images/menu_3.jpg\' alt=\'Webmax\' class=\'img-fluid\'>\r\n            </a>\r\n          </div>\r\n          <div class=\'col-md-4 site-animate\'>\r\n            <a href=\'images/menu_1.jpg\' class=\'site-thumbnail image-popup\'>\r\n              <img src=\'images/menu_1.jpg\' alt=\'Webmax\' class=\'img-fluid\'>\r\n            </a>\r\n          </div>\r\n\r\n        </div>\r\n      </div>\r\n    </section>'),
(6, 6, 2, '<section class=\'site-section bg-light\' id=\'contactos\'>\r\n      <div class=\'container\'>\r\n        <div class=\'row\'>\r\n\r\n          <div class=\'col-md-12 text-center mb-5 site-animate\'>\r\n            <h2 class=\'display-4\'>$titulo</h2>\r\n            <div class=\'row justify-content-center\'>\r\n              <div class=\'col-md-7\'>\r\n                <p class=\'lead\'>$info</p>\r\n              </div>\r\n            </div>\r\n          </div>\r\n\r\n          <div class=\'col-md-7 mb-5 site-animate\'>\r\n            <form action=\'\' method=\'post\'>\r\n              <div class=\'form-group\'>\r\n                <label for=\'name\' class=\'sr-only\'>Name</label>\r\n                <input type=\'text\' class=\'form-control\' id=\'name\' placeholder=\'Name\'>\r\n              </div>\r\n              <div class=\'form-group\'>\r\n                <label for=\'email\' class=\'sr-only\'>Email</label>\r\n                <input type=\'text\' class=\'form-control\' id=\'email\' placeholder=\'Email\'>\r\n              </div>\r\n              <div class=\'form-group\'>\r\n                <label for=\'message\' class=\'sr-only\'>Message</label>\r\n                <textarea name=\'message\' id=\'message\' cols=\'30\' rows=\'10\' class=\'form-control\' placeholder=\'Write your message\'></textarea>\r\n              </div>\r\n              <div class=\'form-group\'>\r\n                <input type=\'submit\' class=\'btn btn-primary btn-lg\' value=\'Send Message\'>\r\n              </div>\r\n            </form>\r\n          </div>\r\n          <div class=\'col-md-1\'></div>\r\n          <div class=\'col-md-4 site-animate\'>\r\n            <p><img src=\'images/about_img_1.jpg\' alt=\'\' class=\'img-fluid\'></p>\r\n            <p class=\'text-black\'>\r\n              Address: <br> 121 Street, Melbourne Victoria <br> 3000 Australia <br> <br>\r\n              Phone: <br> 90 987 65 44 <br> <br>\r\n              Email: <br> <a href=\'mailto:info@yoursite.com\'>info@yoursite.com</a>\r\n            </p>\r\n\r\n          </div>\r\n          \r\n        </div>\r\n      </div>\r\n    </section>'),
(7, 7, 2, '<div id=\'map\'></div>'),
(8, 2, 3, '<section class=\'top-dish-area section-gap\' id=\'especialidades\'>\r\n				<div class=\'container\'>\r\n					<div class=\'row d-flex justify-content-center\'>\r\n						<div class=\'menu-content pb-60 col-lg-8\'>\r\n							<div class=\'title text-center\'>\r\n								<h1 class=\'mb-10\'>$titulo</h1>\r\n								<p>$info</p>\r\n							</div>\r\n						</div>\r\n					</div>						\r\n					<div class=\'row\'>\r\n						<div class=\'single-dish col-lg-4\'>\r\n							<div class=\'thumb\'>\r\n								<img class=\'img-fluid\'  src=\'img/d1.jpg\' alt=\'\'>\r\n							</div>\r\n							<h4 class=\'text-uppercase pt-20 pb-20\'>Bread Fruit Cheese Sandwich</h4>\r\n							<p>\r\n								inappropriate behavior is often laughed off as “boys will be boys,” women face higher conduct women face higher conduct.\r\n							</p>\r\n						</div>\r\n						<div class=\'single-dish col-lg-4\'>\r\n							<div class=\'thumb\'>\r\n								<img class=\'img-fluid\'  src=\'img/d2.jpg\' alt=\'\'>\r\n							</div>\r\n							<h4 class=\'text-uppercase pt-20 pb-20\'>Beef Cutlet with Spring Onion</h4>\r\n							<p>\r\n								inappropriate behavior is often laughed off as “boys will be boys,” women face higher conduct women face higher conduct.\r\n							</p>\r\n						</div>\r\n						<div class=\'single-dish col-lg-4\'>\r\n							<div class=\'thumb\'>\r\n								<img class=\'img-fluid\'  src=\'img/d3.jpg\' alt=\'\'>\r\n							</div>\r\n							<h4 class=\'text-uppercase pt-20 pb-20\'>Meat with sauce & Vegetables</h4>\r\n							<p>\r\n								inappropriate behavior is often laughed off as “boys will be boys,” women face higher conduct women face higher conduct.\r\n							</p>\r\n						</div>												\r\n					</div>\r\n				</div>	\r\n</section>'),
(9, 8, 3, '\r\n<section class=\'team-area section-gap\' id=\'testemunhos\'>\r\n				<div class=\'container\'>\r\n					<div class=\'row d-flex justify-content-center\'>\r\n						<div class=\'menu-content pb-70 col-lg-8\'>\r\n							<div class=\'title text-center\'>\r\n								<h1 class=\'mb-10\'>$titulo</h1>\r\n								<p>$info</p>\r\n							</div>\r\n						</div>\r\n					</div>						\r\n					<div class=\'row justify-content-center d-flex align-items-center\'>\r\n						<div class=\'col-md-3 single-team\'>\r\n						    <div class=\'thumb\'>\r\n						        <img class=\'img-fluid\' src=\'img/t1.jpg\' alt=\'\'>\r\n						        <div class=\'align-items-center justify-content-center d-flex\'>\r\n									<a href=\'#\'><i class=\'fa fa-facebook\'></i></a>\r\n									<a href=\'#\'><i class=\'fa fa-twitter\'></i></a>\r\n									<a href=\'#\'><i class=\'fa fa-linkedin\'></i></a>\r\n						        </div>\r\n						    </div>\r\n						    <div class=\'meta-text mt-30 text-center\'>\r\n							    <h4>Ethel Davis</h4>\r\n							    <p>Managing Director (Sales)</p>									    	\r\n						    </div>\r\n						</div>\r\n						<div class=\'col-md-3 single-team\'>\r\n						    <div class=\'thumb\'>\r\n						        <img class=\'img-fluid\' src=\'img/t2.jpg\' alt=\'\'>\r\n						        <div class=\'align-items-center justify-content-center d-flex\'>\r\n									<a href=\'#\'><i class=\'fa fa-facebook\'></i></a>\r\n									<a href=\'#\'><i class=\'fa fa-twitter\'></i></a>\r\n									<a href=\'#\'><i class=\'fa fa-linkedin\'></i></a>\r\n						        </div>\r\n						    </div>\r\n						    <div class=\'meta-text mt-30 text-center\'>\r\n							    <h4>Rodney Cooper</h4>\r\n							    <p>Creative Art Director (Project)</p>			    	\r\n						    </div>\r\n						</div>	\r\n						<div class=\'col-md-3 single-team\'>\r\n						    <div class=\'thumb\'>\r\n						        <img class=\'img-fluid\' src=\'img/t3.jpg\' alt=\'\'>\r\n						        <div class=\'align-items-center justify-content-center d-flex\'>\r\n									<a href=\'#\'><i class=\'fa fa-facebook\'></i></a>\r\n									<a href=\'#\'><i class=\'fa fa-twitter\'></i></a>\r\n									<a href=\'#\'><i class=\'fa fa-linkedin\'></i></a>\r\n						        </div>\r\n						    </div>\r\n						    <div class=\'meta-text mt-30 text-center\'>\r\n							    <h4>Dora Walker</h4>\r\n							    <p>Senior Core Developer</p>			    	\r\n						    </div>\r\n						</div>	\r\n						<div class=\'col-md-3 single-team\'>\r\n						    <div class=\'thumb\'>\r\n						        <img class=\'img-fluid\' src=\'img/t4.jpg\' alt=\'\'>\r\n						        <div class=\'align-items-center justify-content-center d-flex\'>\r\n									<a href=\'#\'><i class=\'fa fa-facebook\'></i></a>\r\n									<a href=\'#\'><i class=\'fa fa-twitter\'></i></a>\r\n									<a href=\'#\'><i class=\'fa fa-linkedin\'></i></a>\r\n						        </div>\r\n						    </div>\r\n						    <div class=\'meta-text mt-30 text-center\'>\r\n							    <h4>Lena Keller</h4>\r\n							    <p>Creative Content Developer</p>			    	\r\n						    </div>\r\n						</div>																		\r\n					</div>\r\n				</div>	\r\n</section>'),
(10, 4, 3, '<section class=\'blog-area section-gap\' id=\'noticias\'>\r\n				<div class=\'container\'>\r\n					<div class=\'row d-flex justify-content-center\'>\r\n						<div class=\'menu-content pb-70 col-lg-8\'>\r\n							<div class=\'title text-center\'>\r\n								<h1 class=\'mb-10\'>$titulo</h1>\r\n								<p>$info</p>\r\n							</div>\r\n						</div>\r\n					</div>					\r\n					<div class=\'row\'>\r\n						<div class=\'col-lg-3 col-md-6 single-blog\'>\r\n							<div class=\'thumb\'>\r\n								<img class=\'img-fluid\' src=\'img/b1.jpg\' alt=\'\'>\r\n							</div>\r\n							<p class=\'date\'>10 Jan 2018</p>\r\n							<a href=\'#\'><h4>Cooking Perfect Fried Rice\r\n							in minutes</h4></a>\r\n							<p>\r\n								inappropriate behavior ipsum dolor sit amet, consectetur.\r\n							</p>\r\n							<div class=\'meta-bottom d-flex justify-content-between\'>\r\n								<p><span class=\'lnr lnr-heart\'></span> 15 Likes</p>\r\n								<p><span class=\'lnr lnr-bubble\'></span> 02 Comments</p>\r\n							</div>									\r\n						</div>\r\n						<div class=\'col-lg-3 col-md-6 single-blog\'>\r\n							<div class=\'thumb\'>\r\n								<img class=\'img-fluid\' src=\'img/b2.jpg\' alt=\'\'>\r\n							</div>\r\n							<p class=\'date\'>10 Jan 2018</p>\r\n							<a href=\'#\'><h4>Secret of making Heart \r\n							Shaped eggs</h4></a>\r\n							<p>\r\n								inappropriate behavior ipsum dolor sit amet, consectetur.\r\n							</p>\r\n							<div class=\'meta-bottom d-flex justify-content-between\'>\r\n								<p><span class=\'lnr lnr-heart\'></span> 15 Likes</p>\r\n								<p><span class=\'lnr lnr-bubble\'></span> 02 Comments</p>\r\n							</div>									\r\n						</div>\r\n						<div class=\'col-lg-3 col-md-6 single-blog\'>\r\n							<div class=\'thumb\'>\r\n								<img class=\'img-fluid\' src=\'img/b3.jpg\' alt=\'\'>\r\n							</div>\r\n							<p class=\'date\'>10 Jan 2018</p>\r\n							<a href=\'#\'><h4>How to check steak if \r\n							it is tender or not</h4></a>\r\n							<p>\r\n								inappropriate behavior ipsum dolor sit amet, consectetur.\r\n							</p>\r\n							<div class=\'meta-bottom d-flex justify-content-between\'>\r\n								<p><span class=\'lnr lnr-heart\'></span> 15 Likes</p>\r\n								<p><span class=\'lnr lnr-bubble\'></span> 02 Comments</p>\r\n							</div>									\r\n						</div>\r\n						<div class=\'col-lg-3 col-md-6 single-blog\'>\r\n							<div class=\'thumb\'>\r\n								<img class=\'img-fluid\' src=\'img/b4.jpg\' alt=\'\'>\r\n							</div>\r\n							<p class=\'date\'>10 Jan 2018</p>\r\n							<a href=\'#\'><h4>Addiction When Gambling\r\n							Becomes A Problem</h4></a>\r\n							<p>\r\n								inappropriate behavior ipsum dolor sit amet, consectetur.\r\n							</p>\r\n							<div class=\'meta-bottom d-flex justify-content-between\'>\r\n								<p><span class=\'lnr lnr-heart\'></span> 15 Likes</p>\r\n								<p><span class=\'lnr lnr-bubble\'></span> 02 Comments</p>\r\n							</div>									\r\n						</div>						\r\n					</div>\r\n				</div>	\r\n			</section>\r\n'),
(11, 6, 3, '<section class=\'contact-area\' id=\'contactos\'>\r\n				<div class=\'container-fluid\'>\r\n\r\n					<div class=\'row align-items-center d-flex justify-content-start\'>\r\n						<div class=\'col-lg-6 col-md-12 contact-left no-padding\'>\r\n	      					<div style=\' width:100%;\r\n	                height: 545px;\' id=\'map\'></div>\r\n						</div>\r\n						<div class=\'col-lg-4 col-md-12 pt-100 pb-100\'>\r\n							<form class=\'form-area\' id=\'myForm\' action=\'mail.php\' method=\'post\' class=\'contact-form text-right\'>\r\n								<h1>$titulo</h1>\r\n								<p style=\'color: grey;\'>$info</p>\r\n								<input name=\'fname\' placeholder=\'Enter your name\' onfocus=\'this.placeholder = \'\'\' onblur=\'this.placeholder = \'Enter your name\'\' class=\'common-input mt-10\' required=\'\' type=\'text\'>\r\n								<input name=\'email\' placeholder=\'Enter email address\' pattern=\'[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{1,63}$\' onfocus=\'this.placeholder = \'\'\' onblur=\'this.placeholder = \'Enter email address\'\' class=\'common-input mt-10\' required=\'\' type=\'email\'>\r\n								<textarea class=\'common-textarea mt-10\' name=\'message\' placeholder=\'Messege\' onfocus=\'this.placeholder = \'\'\' onblur=\'this.placeholder = \'Messege\'\' required=\'\'></textarea>\r\n								<button class=\'primary-btn mt-20\'>Send Message<span class=\'lnr lnr-arrow-right\'></span></button>\r\n								<div class=\'mt-10 alert-msg\'>\r\n								</div>\r\n							</form>\r\n						</div>\r\n					</div>\r\n				</div>\r\n</section>'),
(12, 7, 3, '<div style=\' width:100%; height: 545px;\' id=\'map\'></div>'),
(13, 1, 4, '    <section class=\'caviar-about-us-area section-padding-150\' id=\'sobre\'>\r\n        <div class=\'container\'>\r\n            <!-- About Us Single Area -->\r\n            <div class=\'row align-items-center\'>\r\n                <div class=\'col-12 col-md-6\'>\r\n                    <div class=\'about-us-thumbnail wow fadeInUp\' data-wow-delay=\'0.5s\'>\r\n                        <img src=\'img/bg-img/about-1.jpg\' alt=\'\'>\r\n                    </div>\r\n                </div>\r\n                <div class=\'col-12 col-md-6 col-lg-5 ml-md-auto\'>\r\n                    <div class=\'section-heading\'>\r\n                        <h2>$titulo</h2>\r\n                    </div>\r\n                    <div class=\'about-us-content\'>\r\n                        <span></span>\r\n                        <p>$info</p>\r\n                    </div>\r\n                </div>\r\n            </div>\r\n            <!-- About Us Single Area -->\r\n            <div class=\'about-us-second-part\'>\r\n                <div class=\'row align-items-center pt-200\'>\r\n                    <div class=\'col-12 col-md-6 col-lg-5\'>\r\n                        <div class=\'about-us-content\'>\r\n                            <span>$titulo</span>\r\n                            <p>$info</p>\r\n                        </div>\r\n                    </div>\r\n                    <div class=\'col-12 col-md-6 ml-md-auto\'>\r\n                        <div class=\'about-us-thumbnail wow fadeInUp\' data-wow-delay=\'0.5s\'>\r\n                            <img src=\'img/bg-img/about-2.jpg\' alt=\'\'>\r\n                        </div>\r\n                    </div>\r\n                </div>\r\n            </div>\r\n        </div>\r\n    </section>'),
(14, 3, 4, ' <section class=\'caviar-dish-menu\' id=\'menu\'>\r\n        <div class=\'container\'>\r\n            <div class=\'row\'>\r\n                <div class=\'col-12 menu-heading\'>\r\n                    <div class=\'section-heading text-center\'>\r\n                        <h2>$titulo</h2>\r\n                    </div>\r\n                    <!-- btn -->\r\n                    <a href=\'menu.html\' class=\'btn caviar-btn\'><span></span> $titulo</a>\r\n                </div>\r\n            </div>\r\n            <div class=\'row\'>\r\n                <div class=\'col-12 col-sm-6 col-md-4\'>\r\n                    <div class=\'caviar-single-dish wow fadeInUp\' data-wow-delay=\'0.5s\'>\r\n                        <img src=\'img/menu-img/dish-1.png\' alt=\'\'>\r\n                        <div class=\'dish-info\'>\r\n                            <h6 class=\'dish-name\'>Lorem Ipsum Dolor Sit Amet</h6>\r\n                            <p class=\'dish-price\'>$45</p>\r\n                        </div>\r\n                    </div>\r\n                </div>\r\n                <div class=\'col-12 col-sm-6 col-md-4\'>\r\n                    <div class=\'caviar-single-dish wow fadeInUp\' data-wow-delay=\'1s\'>\r\n                        <img src=\'img/menu-img/dish-2.png\' alt=\'\'>\r\n                        <div class=\'dish-info\'>\r\n                            <h6 class=\'dish-name\'>Lorem Ipsum</h6>\r\n                            <p class=\'dish-price\'>$45</p>\r\n                        </div>\r\n                    </div>\r\n                </div>\r\n                <div class=\'col-12 col-sm-6 col-md-4\'>\r\n                    <div class=\'caviar-single-dish wow fadeInUp\' data-wow-delay=\'1.5s\'>\r\n                        <img src=\'img/menu-img/dish-3.png\' alt=\'\'>\r\n                        <div class=\'dish-info\'>\r\n                            <h6 class=\'dish-name\'>Lorem Ipsum Dolor Sit Amet</h6>\r\n                            <p class=\'dish-price\'>$45</p>\r\n                        </div>\r\n                    </div>\r\n                </div>\r\n            </div>\r\n        </div>\r\n    </section>'),
(15, 8, 4, ' <section class=\'caviar-testimonials-area\' id=\'testemunhos\'>\r\n        <div class=\'container\'>\r\n            <div class=\'row\'>\r\n                <div class=\'col-12\'>\r\n                    <div class=\'testimonials-content\'>\r\n                        <div class=\'section-heading text-center\'>\r\n                            <h2>$titulo</h2>\r\n                            <p>$info</p>\r\n                        </div>\r\n                        <div class=\'caviar-testimonials-slides owl-carousel\'>\r\n                            <!-- Single Testimonial Area -->\r\n                            <div class=\'single-testimonial\'>\r\n                                <div class=\'testimonial-thumb-name d-flex align-items-center\'>\r\n                                    <img src=\'img/testimonial-img/3.jpg\' alt=\'\'>\r\n                                    <div class=\'tes-name\'>\r\n                                        <h5>Robert Jonson</h5>\r\n                                        <p>lorem ipsum</p>\r\n                                    </div>\r\n                                </div>\r\n                                <p>Sed commodo augue eu diam tincidunt, sit amet auctor lectus semper. Mauris porttitor diam at fringilla tempor. Integer molestie rhoncus nisi a euismod.</p>\r\n                            </div>\r\n                            <!-- Single Testimonial Area -->\r\n                            <div class=\'single-testimonial\'>\r\n                                <div class=\'testimonial-thumb-name d-flex align-items-center\'>\r\n                                    <img src=\'img/testimonial-img/2.jpg\' alt=\'\'>\r\n                                    <div class=\'tes-name\'>\r\n                                        <h5>Clara Hudson</h5>\r\n                                        <p>lorem ipsum</p>\r\n                                    </div>\r\n                                </div>\r\n                                <p>Sed commodo augue eu diam tincidunt, sit amet auctor lectus semper. Mauris porttitor diam at fringilla tempor. Integer molestie rhoncus nisi a euismod.</p>\r\n                            </div>\r\n                            <!-- Single Testimonial Area -->\r\n                            <div class=\'single-testimonial\'>\r\n                                <div class=\'testimonial-thumb-name d-flex align-items-center\'>\r\n                                    <img src=\'img/testimonial-img/1.jpg\' alt=\'\'>\r\n                                    <div class=\'tes-name\'>\r\n                                        <h5>Jane Black</h5>\r\n                                        <p>lorem ipsum</p>\r\n                                    </div>\r\n                                </div>\r\n                                <p>Sed commodo augue eu diam tincidunt, sit amet auctor lectus semper. Mauris porttitor diam at fringilla tempor. Integer molestie rhoncus nisi a euismod.</p>\r\n                            </div>\r\n                        </div>\r\n                    </div>\r\n                </div>\r\n            </div>\r\n        </div>\r\n    </section>'),
(16, 6, 4, '<div class=\'caviar-contact-area d-md-flex align-items-center\' id=\'contactos\'>\r\n        <div class=\'contact-form-area d-flex justify-content-end\'>\r\n            <div class=\'contact-form\'>\r\n                <h2>$titulo</h2>\r\n                <div class=\'contact-form-title\'>\r\n                    <p>$info</p>\r\n                </div>\r\n                <form action=\'#\'>\r\n                    <div class=\'row\'>\r\n                        <div class=\'col-12\'>\r\n                            <input type=\'text\' class=\'form-control\' placeholder=\'Your Name\'>\r\n                        </div>\r\n                        <div class=\'col-12\'>\r\n                            <input type=\'email\' class=\'form-control\' placeholder=\'Your Email\'>\r\n                        </div>\r\n                        <div class=\'col-12\'>\r\n                            <textarea name=\'message\' class=\'form-control\' id=\'Message\' cols=\'30\' rows=\'10\' placeholder=\'Your Message\'></textarea>\r\n                        </div>\r\n                        <div class=\'col-12\'>\r\n                            <button type=\'submit\' class=\'btn caviar-btn\'><span></span> Mensagem</button>\r\n                        </div>\r\n                    </div>\r\n                </form>\r\n            </div>\r\n        </div>\r\n        <div class=\'caviar-map-area wow fadeInRightBig\' data-wow-delay=\'0.5s\'>\r\n            <div id=\'googleMap\'></div>\r\n        </div>\r\n    </div>'),
(17, 1, 6, ' <section id=\'sobre\' class=\'description_content\'>\r\n            <div class=\'text-content container\'>\r\n                <div class=\'col-md-6\'>\r\n                    <h1>$titulo</h1>\r\n                    <div class=\'fa fa-cutlery fa-2x\'></div>\r\n                    <p class=\'desc-text\'>$info</p>\r\n                </div>\r\n                <div class=\'col-md-6\'>\r\n                    <div class=\'img-section\'>\r\n                       <img src=\'images/kabob.jpg\' width=\'250\' height=\'220\'>\r\n                       <img src=\'images/limes.jpg\' width=\'250\' height=\'220\'>\r\n                       <div class=\'img-section-space\'></div>\r\n                       <img src=\'images/radish.jpg\'  width=\'250\' height=\'220\'>\r\n                       <img src=\'images/corn.jpg\'  width=\'250\' height=\'220\'>\r\n                   </div>\r\n                </div>\r\n            </div>\r\n        </section>');
INSERT INTO `codigo_template` (`id`, `id_secao`, `id_template`, `codigo`) VALUES
(18, 3, 6, '<section id =\'menu\' class=\'description_content\'>\r\n             <div class=\'pricing background_content\'>\r\n                <h1><span>$titulo</span></h1>\r\n                <p>$info</p>\r\n             </div>\r\n            <div class=\'text-content container\'> \r\n                <div class=\'container\'>\r\n                    <div class=\'row\'>\r\n                        <div id=\'w\'>\r\n                            <ul id=\'filter-list\' class=\'clearfix\'>\r\n                                <li class=\'filter\' data-filter=\'all\'>All</li>\r\n                                <li class=\'filter\' data-filter=\'breakfast\'>Breakfast</li>\r\n                                <li class=\'filter\' data-filter=\'special\'>Special</li>\r\n                                <li class=\'filter\' data-filter=\'desert\'>Desert</li>\r\n                                <li class=\'filter\' data-filter=\'dinner\'>Dinner</li>\r\n                            </ul><!-- @end #filter-list -->    \r\n                            <ul id=\'portfolio\'>\r\n                                <li class=\'item breakfast\'><img src=\'images/food_icon01.jpg\' alt=\'Food\' >\r\n                                    <h2 class=\'white\'>$20</h2>\r\n                                </li>\r\n\r\n                                <li class=\'item dinner special\'><img src=\'images/food_icon02.jpg\' alt=\'Food\' >\r\n                                    <h2 class=\'white\'>$20</h2>\r\n                                </li>\r\n                                <li class=\'item dinner breakfast\'><img src=\'images/food_icon03.jpg\' alt=\'Food\' >\r\n                                    <h2 class=\'white\'>$18</h2>\r\n                                </li>\r\n                                <li class=\'item special\'><img src=\'images/food_icon04.jpg\' alt=\'Food\' >\r\n                                    <h2 class=\'white\'>$15</h2>\r\n                                </li>\r\n                                <li class=\'item dinner\'><img src=\'images/food_icon05.jpg\' alt=\'Food\' >\r\n                                    <h2 class=\'white\'>$20</h2>\r\n                                </li>\r\n                                <li class=\'item special\'><img src=\'images/food_icon06.jpg\' alt=\'Food\' >\r\n                                    <h2 class=\'white\'>$22</h2>\r\n                                </li>\r\n                                <li class=\'item desert\'><img src=\'images/food_icon07.jpg\' alt=\'Food\' >\r\n                                    <h2 class=\'white\'>$32</h2>\r\n                                </li>\r\n                                <li class=\'item desert breakfast\'><img src=\'images/food_icon08.jpg\' alt=\'Food\' >\r\n                                    <h2 class=\'white\'>$38</h2>\r\n                                </li>\r\n                            </ul><!-- @end #portfolio -->\r\n                        </div><!-- @end #w -->\r\n                    </div>\r\n                </div>\r\n            </div>  \r\n        </section>'),
(19, 8, 6, '        <section id =\'testemunhos\' class=\'description_content\'>\r\n            <div  class=\'beer background_content\'>\r\n                <h1><span>$titulo</span></h1>\r\n            </div>\r\n            <div class=\'text-content container\'> \r\n                <div class=\'col-md-5\'>\r\n                   <div class=\'img-section\'>\r\n                       <img src=\'images/beer_spec.jpg\' width=\'100%\'>\r\n                   </div>\r\n                </div>\r\n                <br>\r\n                <div class=\'col-md-6 col-md-offset-1\'>\r\n                    <h1>Testemunhos</h1>\r\n                    <div class=\'icon-beer fa-2x\'></div>\r\n                    <p class=\'desc-text\'>$info</p>\r\n                </div>\r\n            </div>\r\n        </section>'),
(20, 2, 6, '          <section id=\'especialidades\' class=\' description_content\'>\r\n            <div  class=\'bread background_content\'>\r\n                <h1><span>$titulo</span></h1>\r\n            </div>\r\n            <div class=\'text-content container\'> \r\n                <div class=\'col-md-6\'>\r\n                    <h1>Mais: </h1>\r\n                    <div class=\'icon-bread fa-2x\'></div>\r\n                    <p class=\'desc-text\'>$info</p>\r\n                </div>\r\n                <div class=\'col-md-6\'>\r\n                    <img src=\'images/bread1.jpg\' width=\'260\' alt=\'Bread\'>\r\n                    <img src=\'images/bread1.jpg\' width=\'260\' alt=\'Bread\'>\r\n                </div>\r\n            </div>\r\n        </section>'),
(21, 5, 6, ' <section id=\'galeria\' class=\'description_content\'>\r\n            <div  class=\'featured background_content\'>\r\n                <h1><span>$titulo</span></h1>\r\n            </div>\r\n            <div class=\'text-content container\'> \r\n                <div class=\'col-md-6\'>\r\n                    <h1>Mais: </h1>\r\n                    <div class=\'icon-hotdog fa-2x\'></div>\r\n                    <p class=\'desc-text\'>$info</p>\r\n                </div>\r\n                <div class=\'col-md-6\'>\r\n                    <ul class=\'image_box_story2\'>\r\n                        <div id=\'carousel-example-generic\' class=\'carousel slide\' data-ride=\'carousel\'>\r\n                            <!-- Indicators -->\r\n                            <ol class=\'carousel-indicators\'>\r\n                                <li data-target=\'#carousel-example-generic\' data-slide-to=\'0\' class=\'active\'></li>\r\n                                <li data-target=\'#carousel-example-generic\' data-slide-to=\'1\'></li>\r\n                                <li data-target=\'#carousel-example-generic\' data-slide-to=\'2\'></li>\r\n                            </ol>\r\n\r\n                            <!-- Wrapper for slides -->\r\n                            <div class=\'carousel-inner\'>\r\n                                <div class=\'item active\'>\r\n                                    <img src=\'images/slider1.jpg\'  alt=\'...\'>\r\n                                    <div class=\'carousel-caption\'>\r\n                                        \r\n                                    </div>\r\n                                </div>\r\n                                <div class=\'item\'>\r\n                                    <img src=\'images/slider2.jpg\' alt=\'...\'>\r\n                                    <div class=\'carousel-caption\'>\r\n                                        \r\n                                    </div>\r\n                                </div>\r\n                                <div class=\'item\'>\r\n                                    <img src=\'images/slider3.JPG\' alt=\'...\'>\r\n                                    <div class=\'carousel-caption\'>\r\n                                        \r\n                                    </div>\r\n                                </div>\r\n                            </div>\r\n                        </div>\r\n                    </ul>\r\n                </div>\r\n            </div>\r\n        </section>'),
(22, 6, 6, '<section id=\'contactos\'>\r\n            <div id=\'map\' style=\'width: 100%; height: 400px;\'>\r\n\r\n            </div>\r\n            <div class=\'container\'>\r\n                <div class=\'row\'>\r\n                    <div class=\'col-md-12\'>\r\n                        <div class=\'inner contact\'>\r\n                            <!-- Form Area -->\r\n                            <div class=\'contact-form\'>\r\n                                <!-- Form -->\r\n                                <form id=\'contact-us\' method=\'post\' action=\'contact.php\'>\r\n                                    <!-- Left Inputs -->\r\n                                    <div class=\'col-md-6 \'>\r\n                                        <!-- Name -->\r\n                                        <input type=\'text\' name=\'name\' id=\'name\' required=\'required\' class=\'form\' placeholder=\'Name\' />\r\n                                        <!-- Email -->\r\n                                        <input type=\'email\' name=\'email\' id=\'email\' required=\'required\' class=\'form\' placeholder=\'Email\' />\r\n                                        <!-- Subject -->\r\n                                        <input type=\'text\' name=\'subject\' id=\'subject\' required=\'required\' class=\'form\' placeholder=\'Subject\' />\r\n                                    </div><!-- End Left Inputs -->\r\n                                    <!-- Right Inputs -->\r\n                                    <div class=\'col-md-6\'>\r\n                                        <!-- Message -->\r\n                                        <textarea name=\'message\' id=\'message\' class=\'form textarea\'  placeholder=\'Message\'></textarea>\r\n                                    </div><!-- End Right Inputs -->\r\n                                    <!-- Bottom Submit -->\r\n                                    <div class=\'relative fullwidth col-xs-12\'>\r\n                                        <!-- Send Button -->\r\n                                        <button type=\'submit\' id=\'submit\' name=\'submit\' class=\'form-btn\'>Send Message</button> \r\n                                    </div><!-- End Bottom Submit -->\r\n                                    <!-- Clear -->\r\n                                    <div class=\'clear\'></div>\r\n                                </form>\r\n                            </div><!-- End Contact Form Area -->\r\n                        </div><!-- End Inner -->\r\n                    </div>\r\n                </div>\r\n            </div>\r\n        </section>'),
(23, 1, 7, '<section class=\'video-sec-area pb-100 pt-40\' id=\'sobre\'>\r\n			<div class=\'container\'>\r\n				<div class=\'row justify-content-start align-items-center\'>\r\n					<div class=\'col-lg-6 video-right justify-content-center align-items-center d-flex\'>\r\n					</div>						\r\n					<div class=\'col-lg-6 video-left\'>\r\n						<h1>$titulo</h1>\r\n						<p>\r\n							$info\r\n						</p>\r\n						<img class=\'img-fluid\' src=\'img/signature.png\' alt=\'\'>\r\n					</div>\r\n				</div>\r\n			</div>	\r\n		</section>'),
(24, 3, 7, '<section class=\'menu-area section-gap\' id=\'menu\'>\r\n			<div class=\'container\'>\r\n				<div class=\'row d-flex justify-content-center\'>\r\n					<div class=\'menu-content pb-60 col-lg-10\'>\r\n						<div class=\'title text-center\'>\r\n							<h1 class=\'mb-10\'>$titulo</h1>\r\n							<p>$info</p>\r\n						</div>\r\n					</div>\r\n				</div>						\r\n				<div class=\'row\'>\r\n					<div class=\'col-lg-4\'>\r\n						<div class=\'single-menu\'>\r\n							<div class=\'title-div justify-content-between d-flex\'>\r\n								<h4>Cappuccino</h4>\r\n								<p class=\'price float-right\'>\r\n									$49\r\n								</p>\r\n							</div>\r\n							<p>\r\n								Usage of the Internet is becoming more common due to rapid advance.\r\n							</p>								\r\n						</div>\r\n					</div>\r\n					<div class=\'col-lg-4\'>\r\n						<div class=\'single-menu\'>\r\n							<div class=\'title-div justify-content-between d-flex\'>\r\n								<h4>Americano</h4>\r\n								<p class=\'price float-right\'>\r\n									$49\r\n								</p>\r\n							</div>\r\n							<p>\r\n								Usage of the Internet is becoming more common due to rapid advance.\r\n							</p>								\r\n						</div>\r\n					</div>\r\n					<div class=\'col-lg-4\'>\r\n						<div class=\'single-menu\'>\r\n							<div class=\'title-div justify-content-between d-flex\'>\r\n								<h4>Espresso</h4>\r\n								<p class=\'price float-right\'>\r\n									$49\r\n								</p>\r\n							</div>\r\n							<p>\r\n								Usage of the Internet is becoming more common due to rapid advance.\r\n							</p>								\r\n						</div>\r\n					</div>	\r\n					<div class=\'col-lg-4\'>\r\n						<div class=\'single-menu\'>\r\n							<div class=\'title-div justify-content-between d-flex\'>\r\n								<h4>Macchiato</h4>\r\n								<p class=\'price float-right\'>\r\n									$49\r\n								</p>\r\n							</div>\r\n							<p>\r\n								Usage of the Internet is becoming more common due to rapid advance.\r\n							</p>								\r\n						</div>\r\n					</div>\r\n					<div class=\'col-lg-4\'>\r\n						<div class=\'single-menu\'>\r\n							<div class=\'title-div justify-content-between d-flex\'>\r\n								<h4>Mocha</h4>\r\n								<p class=\'price float-right\'>\r\n									$49\r\n								</p>\r\n							</div>\r\n							<p>\r\n								Usage of the Internet is becoming more common due to rapid advance.\r\n							</p>								\r\n						</div>\r\n					</div>\r\n					<div class=\'col-lg-4\'>\r\n						<div class=\'single-menu\'>\r\n							<div class=\'title-div justify-content-between d-flex\'>\r\n								<h4>Coffee Latte</h4>\r\n								<p class=\'price float-right\'>\r\n									$49\r\n								</p>\r\n							</div>\r\n							<p>\r\n								Usage of the Internet is becoming more common due to rapid advance.\r\n							</p>								\r\n						</div>\r\n					</div>\r\n					<div class=\'col-lg-4\'>\r\n						<div class=\'single-menu\'>\r\n							<div class=\'title-div justify-content-between d-flex\'>\r\n								<h4>Piccolo Latte</h4>\r\n								<p class=\'price float-right\'>\r\n									$49\r\n								</p>\r\n							</div>\r\n							<p>\r\n								Usage of the Internet is becoming more common due to rapid advance.\r\n							</p>								\r\n						</div>\r\n					</div>\r\n					<div class=\'col-lg-4\'>\r\n						<div class=\'single-menu\'>\r\n							<div class=\'title-div justify-content-between d-flex\'>\r\n								<h4>Ristretto</h4>\r\n								<p class=\'price float-right\'>\r\n									$49\r\n								</p>\r\n							</div>\r\n							<p>\r\n								Usage of the Internet is becoming more common due to rapid advance.\r\n							</p>								\r\n						</div>\r\n					</div>\r\n					<div class=\'col-lg-4\'>\r\n						<div class=\'single-menu\'>\r\n							<div class=\'title-div justify-content-between d-flex\'>\r\n								<h4>Affogato</h4>\r\n								<p class=\'price float-right\'>\r\n									$49\r\n								</p>\r\n							</div>\r\n							<p>\r\n								Usage of the Internet is becoming more common due to rapid advance.\r\n							</p>								\r\n						</div>\r\n					</div>															\r\n				</div>\r\n			</div>	\r\n		</section>'),
(25, 5, 7, '<section class=\'gallery-area section-gap\' id=\'galeria\'>\r\n			<div class=\'container\'>\r\n				<div class=\'row d-flex justify-content-center\'>\r\n					<div class=\'menu-content pb-60 col-lg-10\'>\r\n						<div class=\'title text-center\'>\r\n							<h1 class=\'mb-10\'>$titulo</h1>\r\n							<p>$info</p>\r\n						</div>\r\n					</div>\r\n				</div>						\r\n				<div class=\'row\'>\r\n					<div class=\'col-lg-4\'>\r\n						<a href=\'img/g1.jpg\' class=\'img-pop-home\'>\r\n							<img class=\'img-fluid\' src=\'img/g1.jpg\' alt=\'\'>\r\n						</a>	\r\n						<a href=\'img/g2.jpg\' class=\'img-pop-home\'>\r\n							<img class=\'img-fluid\' src=\'img/g2.jpg\' alt=\'\'>\r\n						</a>	\r\n					</div>\r\n					<div class=\'col-lg-8\'>\r\n						<a href=\'img/g3.jpg\' class=\'img-pop-home\'>\r\n							<img class=\'img-fluid\' src=\'img/g3.jpg\' alt=\'\'>\r\n						</a>	\r\n						<div class=\'row\'>\r\n							<div class=\'col-lg-6\'>\r\n								<a href=\'img/g4.jpg\' class=\'img-pop-home\'>\r\n									<img class=\'img-fluid\' src=\'img/g4.jpg\' alt=\'\'>\r\n								</a>	\r\n							</div>\r\n							<div class=\'col-lg-6\'>\r\n								<a href=\'img/g5.jpg\' class=\'img-pop-home\'>\r\n									<img class=\'img-fluid\' src=\'img/g5.jpg\' alt=\'\'>\r\n								</a>	\r\n							</div>\r\n						</div>\r\n					</div>\r\n				</div>\r\n			</div>	\r\n		</section>'),
(26, 8, 7, '<section class=\'review-area section-gap\' id=\'testemunhos\'>\r\n			<div class=\'container\'>\r\n				<div class=\'row d-flex justify-content-center\'>\r\n					<div class=\'menu-content pb-60 col-lg-10\'>\r\n						<div class=\'title text-center\'>\r\n							<h1 class=\'mb-10\'>$titulo</h1>\r\n							<p>$info</p>\r\n						</div>\r\n					</div>\r\n				</div>						\r\n				<div class=\'row\'>\r\n					<div class=\'col-lg-6 col-md-6 single-review\'>\r\n						<img src=\'img/r1.png\' alt=\'\'>\r\n						<div class=\'title d-flex flex-row\'>\r\n							<h4>lorem ipusm</h4>\r\n							<div class=\'star\'>\r\n								<span class=\'fa fa-star checked\'></span>\r\n								<span class=\'fa fa-star checked\'></span>\r\n								<span class=\'fa fa-star checked\'></span>\r\n								<span class=\'fa fa-star\'></span>\r\n								<span class=\'fa fa-star\'></span>								\r\n							</div>\r\n						</div>\r\n						<p>\r\n							Accessories Here you can find the best computer accessory for your laptop, monitor, printer, scanner, speaker. Here you can find the best computer accessory for your laptop, monitor, printer, scanner, speaker.\r\n						</p>\r\n					</div>	\r\n					<div class=\'col-lg-6 col-md-6 single-review\'>\r\n						<img src=\'img/r2.png\' alt=\'\'>\r\n						<div class=\'title d-flex flex-row\'>\r\n							<h4>lorem ipusm</h4>\r\n							<div class=\'star\'>\r\n								<span class=\'fa fa-star checked\'></span>\r\n								<span class=\'fa fa-star checked\'></span>\r\n								<span class=\'fa fa-star\'></span>\r\n								<span class=\'fa fa-star\'></span>\r\n								<span class=\'fa fa-star\'></span>								\r\n							</div>\r\n						</div>\r\n						<p>\r\n							Accessories Here you can find the best computer accessory for your laptop, monitor, printer, scanner, speaker. Here you can find the best computer accessory for your laptop, monitor, printer, scanner, speaker.\r\n						</p>\r\n					</div>	\r\n				</div>\r\n				<div class=\'row counter-row\'>\r\n					<div class=\'col-lg-3 col-md-6 single-counter\'>\r\n						<h1 class=\'counter\'>2536</h1>\r\n						<p>Happy Client</p>\r\n					</div>\r\n					<div class=\'col-lg-3 col-md-6 single-counter\'>\r\n						<h1 class=\'counter\'>7562</h1>\r\n						<p>Total Projects</p>\r\n					</div>\r\n					<div class=\'col-lg-3 col-md-6 single-counter\'>\r\n						<h1 class=\'counter\'>2013</h1>\r\n						<p>Cups Coffee</p>\r\n					</div>\r\n					<div class=\'col-lg-3 col-md-6 single-counter\'>\r\n						<h1 class=\'counter\'>10536</h1>\r\n						<p>Total Submitted</p>\r\n					</div>																		\r\n				</div>\r\n			</div>	\r\n		</section>'),
(27, 4, 7, '<section class=\'blog-area section-gap\' id=\'noticias\'>\r\n			<div class=\'container\'>\r\n				<div class=\'row d-flex justify-content-center\'>\r\n					<div class=\'menu-content pb-60 col-lg-10\'>\r\n						<div class=\'title text-center\'>\r\n							<h1 class=\'mb-10\'>$titulo</h1>\r\n							<p>$info</p>\r\n						</div>\r\n					</div>\r\n				</div>						\r\n				<div class=\'row\'>\r\n					<div class=\'col-lg-6 col-md-6 single-blog\'>\r\n						<img class=\'img-fluid\' src=\'img/b1.jpg\' alt=\'\'>\r\n						<ul class=\'post-tags\'>\r\n							<li><a href=\'#\'>Travel</a></li>\r\n							<li><a href=\'#\'>Life Style</a></li>\r\n						</ul>\r\n						<a href=\'#\'><h4>Portable latest Fashion for young women</h4></a>\r\n						<p>\r\n							Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore  et dolore.\r\n						</p>\r\n						<p class=\'post-date\'>\r\n							31st January, 2018\r\n						</p>\r\n					</div>\r\n					<div class=\'col-lg-6 col-md-6 single-blog\'>\r\n						<img class=\'img-fluid\' src=\'img/b2.jpg\' alt=\'\'>\r\n						<ul class=\'post-tags\'>\r\n							<li><a href=\'#\'>Travel</a></li>\r\n							<li><a href=\'#\'>Life Style</a></li>\r\n						</ul>\r\n						<a href=\'#\'><h4>Portable latest Fashion for young women</h4></a>\r\n						<p>\r\n							Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore  et dolore.\r\n						</p>\r\n						<p class=\'post-date\'>\r\n							31st January, 2018\r\n						</p>\r\n					</div>						\r\n				</div>\r\n			</div>	\r\n		</section>'),
(28, 7, 7, '<div id=\'map\' style=\'height: 400px; width: 100%\'></div>'),
(29, 1, 8, '<section id=\'sobre\' class=\'about\'>\r\n            <img src=\'images/icons/about_color.png\' class=\'img-responsive section-icon hidden-sm hidden-xs\'>\r\n            <div class=\'wrapper\'>\r\n                <div class=\'container-fluid\'>\r\n                    <div class=\'row dis-table\'>\r\n                        <div class=\'hidden-xs col-sm-6 section-bg about-bg dis-table-cell\'>\r\n\r\n                        </div>\r\n                        <div class=\'col-xs-12 col-sm-6 dis-table-cell\'>\r\n                            <div class=\'section-content\'>\r\n                                <h2 class=\'section-content-title\'>$titulo</h2>\r\n                                <p class=\'section-content-para\'>\r\n                                    $info\r\n                                </p>\r\n                                <p class=\'section-content-para\'>\r\n                                    $info\r\n                                </p>\r\n                            </div> <!-- /.section-content -->\r\n                        </div>\r\n                    </div> <!-- /.row -->\r\n                </div> <!-- /.container-fluid -->\r\n            </div> <!-- /.wrapper -->\r\n        </section> <!-- /#about -->'),
(30, 3, 8, '<section id=\'menu\' class=\'pricing\'>\r\n            <div id=\'w\'>\r\n                <div class=\'pricing-filter\'>\r\n                    <div class=\'pricing-filter-wrapper\'>\r\n                        <div class=\'container\'>\r\n                            <div class=\'row\'>\r\n                                <div class=\'col-md-10 col-md-offset-1\'>\r\n                                    <div class=\'section-header\'>\r\n                                        <h2 class=\'pricing-title\'>$titulo</h2>\r\n                                        <ul id=\'filter-list\' class=\'clearfix\'>\r\n                                            <li class=\'filter\' data-filter=\'all\'>All</li>\r\n                                            <li class=\'filter\' data-filter=\'.breakfast\'>Breakfast</li>\r\n                                            <li class=\'filter\' data-filter=\'.special\'>Special</li>\r\n                                            <li class=\'filter\' data-filter=\'.desert\'>Desert</li>\r\n                                            <li class=\'filter\' data-filter=\'.dinner\'>Dinner</li>\r\n                                        </ul><!-- @end #filter-list -->\r\n                                    </div>\r\n                                </div>\r\n                            </div>\r\n                        </div>\r\n                    </div>\r\n                </div>\r\n\r\n                <div class=\'container\'>\r\n                    <div class=\'row\'>  \r\n                        <div class=\'col-md-10 col-md-offset-1\'>\r\n                            <ul id=\'menu-pricing\' class=\'menu-price\'>\r\n                                <li class=\'item dinner\'>\r\n\r\n                                    <a href=\'#\'>\r\n                                        <img src=\'images/food1.jpg\' class=\'img-responsive\' alt=\'Food\' >\r\n                                        <div class=\'menu-desc text-center\'>\r\n                                            <span>\r\n                                                <h3>Tomato Curry</h3>\r\n                                                Natalie &amp; Justin Cleaning by Justin Younger\r\n                                            </span>\r\n                                        </div>\r\n                                    </a>\r\n                                        \r\n                                    <h2 class=\'white\'>$20</h2>\r\n                                </li>\r\n\r\n                                <li class=\'item breakfast\'>\r\n\r\n                                    <a href=\'#\'>\r\n                                        <img src=\'images/food2.jpg\' class=\'img-responsive\' alt=\'Food\' >\r\n                                        <div class=\'menu-desc\'>\r\n                                            <span>\r\n                                                <h3>Prawn Dish</h3>\r\n                                                Lorem ipsum dolor sit amet\r\n                                            </span>\r\n                                        </div>\r\n                                    </a>\r\n                                        \r\n                                    <h2 class=\'white\'>$20</h2>\r\n                                </li>\r\n                                <li class=\'item desert\'>\r\n\r\n                                    <a href=\'#\'>\r\n                                        <img src=\'images/food3.jpg\' class=\'img-responsive\' alt=\'Food\' >\r\n                                        <div class=\'menu-desc\'>\r\n                                            <span>\r\n                                                <h3>Salad Dish</h3>\r\n                                                Consectetur adipisicing elit, sed do eiusmod\r\n                                            </span>\r\n                                        </div>\r\n                                    </a>\r\n                                        \r\n                                    <h2 class=\'white\'>$18</h2>\r\n                                </li>\r\n                                <li class=\'item breakfast special\'>\r\n\r\n                                    <a href=\'#\'>\r\n                                        <img src=\'images/food4.jpg\' class=\'img-responsive\' alt=\'Food\' >\r\n                                        <div class=\'menu-desc\'>\r\n                                            <span>\r\n                                                <h3>Prawn Dish</h3>\r\n                                                Tempor incididunt ut labore et dolore\r\n                                            </span>\r\n                                        </div>\r\n                                    </a>\r\n                                        \r\n                                    <h2 class=\'white\'>$15</h2>\r\n                                </li>\r\n                                <li class=\'item breakfast\'>\r\n\r\n                                    <a href=\'#\'>\r\n                                        <img src=\'images/food5.jpg\' class=\'img-responsive\' alt=\'Food\' >\r\n                                        <div class=\'menu-desc\'>\r\n                                            <span>\r\n                                                <h3>Vegetable Dish</h3>\r\n                                                Magna aliqua. Ut enim ad minim veniam\r\n                                            </span>\r\n                                        </div>\r\n                                    </a>\r\n                                        \r\n                                    <h2 class=\'white\'>$20</h2>\r\n                                </li>\r\n                                <li class=\'item dinner special\'>\r\n\r\n                                    <a href=\'#\'>\r\n                                        <img src=\'images/food6.jpg\' class=\'img-responsive\' alt=\'Food\' >\r\n                                        <div class=\'menu-desc\'>\r\n                                            <span>\r\n                                                <h3>Chicken Dish</h3>\r\n                                                Quis nostrud exercitation ullamco laboris\r\n                                            </span>\r\n                                        </div>\r\n                                    </a>\r\n\r\n                                    <h2 class=\'white\'>$22</h2>\r\n                                </li>\r\n                                <li class=\'item desert\'>\r\n\r\n                                    <a href=\'#\'>\r\n                                        <img src=\'images/food7.jpg\' class=\'img-responsive\' alt=\'Food\' >\r\n                                        <div class=\'menu-desc\'>\r\n                                            <span>\r\n                                                <h3>Vegetable Noodles</h3>\r\n                                                Nisi ut aliquip ex ea commodo\r\n                                            </span>\r\n                                        </div>\r\n                                    </a>\r\n\r\n                                    <h2 class=\'white\'>$32</h2>\r\n                                </li>\r\n                                <li class=\'item dinner\'>\r\n\r\n                                    <a href=\'#\'>\r\n                                        <img src=\'images/food8.jpg\' class=\'img-responsive\' alt=\'Food\' >\r\n                                        <div class=\'menu-desc\'>\r\n                                            <span>\r\n                                                <h3>Special Salad</h3>\r\n                                                Duis aute irure dolor in reprehenderit\r\n                                            </span>\r\n                                        </div>\r\n                                    </a>\r\n\r\n                                    <h2 class=\'white\'>$38</h2>\r\n                                </li>\r\n                                <li class=\'item desert special\'>\r\n\r\n                                    <a href=\'#\'>\r\n                                        <img src=\'images/food9.jpg\' class=\'img-responsive\' alt=\'Food\' >\r\n                                        <div class=\'menu-desc\'>\r\n                                            <span>\r\n                                                <h3>Ice-cream</h3>\r\n                                                Excepteur sint occaecat cupidatat non\r\n                                            </span>\r\n                                        </div>\r\n                                    </a>\r\n                                    \r\n                                    <h2 class=\'white\'>$38</h2>\r\n                                </li>  \r\n                            </ul>\r\n\r\n                            <!-- <div class=\'text-center\'>\r\n                                    <a id=\'loadPricingContent\' class=\'btn btn-middle hidden-sm hidden-xs\'>Load More <span class=\'caret\'></span></a>\r\n                            </div> -->\r\n\r\n                        </div>   \r\n                    </div>\r\n                </div>\r\n\r\n            </div> \r\n        </section>'),
(31, 8, 8, '<section id=\'testemunhos\' class=\'beer\'>\r\n            <img class=\'img-responsive section-icon hidden-sm hidden-xs\' src=\'images/icons/beer_color.png\'>\r\n            <div class=\'container-fluid\'>\r\n                <div class=\'row dis-table\'>\r\n                    <div class=\'hidden-xs col-sm-6 dis-table-cell section-bg\'>\r\n\r\n                    </div>\r\n\r\n                    <div class=\'col-xs-12 col-sm-6 dis-table-cell\'>\r\n                        <div class=\'section-content\'>\r\n                            <h2 class=\'section-content-title\'>$titulo</h2>\r\n                            <div class=\'section-description\'>\r\n                                <p class=\'section-content-para\'>\r\n                                    $info\r\n                                </p>\r\n                            </div>\r\n                        </div>\r\n                    </div>\r\n                </div>\r\n            </div>\r\n        </section>'),
(32, 6, 8, ' <section id=\'contactos\' class=\'contact\'>\r\n            <div class=\'container-fluid color-bg\'>\r\n                <div class=\'row dis-table\'>\r\n                    <div class=\'hidden-xs col-sm-6 dis-table-cell\'>\r\n                        <h2 class=\'section-title\'>$titulo</h2>\r\n                        <p>$info</p>\r\n                    </div>\r\n                    <div class=\'col-xs-6 col-sm-6 dis-table-cell\'>\r\n                        <div class=\'section-content\'>\r\n                            <p>16th Birn street Get Plaza (4th floar) USA</p>\r\n                            <p>+44 12 213584</p>\r\n                            <p>example@mail.com </p>\r\n                        </div>\r\n                    </div>\r\n                </div>\r\n                <div class=\'social-media\'>\r\n                    <div class=\'row\'>\r\n                        <div class=\'col-md-6 col-md-offset-3\'>\r\n                            <ul class=\'center-block\'>\r\n                                <li><a href=\'#\' class=\'fb\'></a></li>\r\n                                <li><a href=\'#\' class=\'twit\'></a></li>\r\n                                <li><a href=\'#\' class=\'g-plus\'></a></li>\r\n                                <li><a href=\'#\' class=\'link\'></a></li>\r\n                            </ul>\r\n                        </div>\r\n                    </div>\r\n                </div>\r\n            </div>\r\n        </section>'),
(33, 7, 8, '        <div class=\'container-fluid\'>\r\n            <div class=\'row\'>\r\n                <div id=\'map\' style=\'height: 400px;width: 100%;\'></div>\r\n            </div>\r\n        </div>');

-- --------------------------------------------------------

--
-- Estrutura da tabela `galeria_template`
--

CREATE TABLE `galeria_template` (
  `id` int(11) NOT NULL,
  `src` text NOT NULL,
  `referencia_galeria` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `galeria_template`
--

INSERT INTO `galeria_template` (`id`, `src`, `referencia_galeria`) VALUES
(105, '', '55'),
(15032, 'images/bg_3.jpg', '1'),
(15033, 'images/about_img_1.jpg', '1'),
(15034, 'images/menu_1.jpg', '1'),
(15035, 'images/menu_2.jpg', '1'),
(15036, 'images/menu_2.jpg', '1'),
(15037, 'images/menu_3.jpg', '1'),
(15038, 'images/menu_1.jpg', '1'),
(15039, 'images/menu_3.jpg', '1'),
(15040, 'images/menu_3.jpg', '1'),
(15041, 'images/menu_1.jpg', '1'),
(15042, 'images/menu_2.jpg', '1'),
(15043, 'images/menu_3.jpg', '1'),
(15044, 'images/menu_2.jpg', '1'),
(15045, 'images/menu_2.jpg', '1'),
(15046, 'images/menu_1.jpg', '1'),
(15047, 'images/menu_1.jpg', '1'),
(15048, 'images/menu_3.jpg', '1'),
(15049, 'images/menu_3.jpg', '1'),
(15050, 'images/menu_2.jpg', '1'),
(15051, 'images/menu_1.jpg', '1'),
(15052, 'images/menu_1.jpg', '1'),
(15053, 'images/menu_2.jpg', '1'),
(15054, 'images/menu_3.jpg', '1'),
(15055, 'images/menu_2.jpg', '1'),
(15056, 'images/menu_3.jpg', '1'),
(15057, 'images/menu_1.jpg', '1'),
(15058, 'images/about_img_1.jpg', '1'),
(15059, 'images/reservation_1.jpg', '1'),
(15060, 'img/header-bg.jpg', '2'),
(15061, 'img/logo.png', '2'),
(15062, 'img/d2.jpg', '2'),
(15063, 'img/d1.jpg', '2'),
(15064, 'img/d3.jpg', '2'),
(15065, 'img/t1.jpg', '2'),
(15066, 'img/t2.jpg', '2'),
(15067, 'img/t3.jpg', '2'),
(15068, 'img/t4.jpg', '2'),
(15069, 'img/b1.jpg', '2'),
(15070, 'img/b2.jpg', '2'),
(15071, 'img/b4.jpg', '2'),
(15072, 'img/b3.jpg', '2'),
(15073, 'img/core-img/preload-1.png', '3'),
(15074, 'img/core-img/preload-2.png', '3'),
(15075, 'img/bg-img/hero-1.jpg', '3'),
(15076, 'img/core-img/preload-3.png', '3'),
(15077, 'img/bg-img/hero-2.jpg', '3'),
(15078, 'img/bg-img/hero-2.jpg', '3'),
(15079, 'img/bg-img/about-1.jpg', '3'),
(15080, 'img/bg-img/hero-1.jpg', '3'),
(15081, 'img/bg-img/about-2.jpg', '3'),
(15082, 'img/menu-img/dish-1.png', '3'),
(15083, 'img/menu-img/dish-2.png', '3'),
(15084, 'img/menu-img/dish-3.png', '3'),
(15085, 'img/testimonial-img/3.jpg', '3'),
(15086, 'img/testimonial-img/2.jpg', '3'),
(15087, 'img/testimonial-img/1.jpg', '3'),
(15088, 'images/limes.jpg', '4'),
(15089, 'images/kabob.jpg', '4'),
(15090, 'images/steak.jpg', '4'),
(15091, 'images/radish.jpg', '4'),
(15092, 'images/corn.jpg', '4'),
(15093, 'images/pricing.jpg', '4'),
(15094, 'images/food_icon01.jpg', '4'),
(15095, 'images/food_icon02.jpg', '4'),
(15096, 'images/food_icon03.jpg', '4'),
(15097, 'images/food_icon04.jpg', '4'),
(15098, 'images/food_icon05.jpg', '4'),
(15099, 'images/food_icon06.jpg', '4'),
(15100, 'images/food_icon07.jpg', '4'),
(15101, 'images/food_icon08.jpg', '4'),
(15102, 'images/beer.jpg', '4'),
(15103, 'images/bread1.jpg', '4'),
(15104, 'images/beer_spec.jpg', '4'),
(15105, 'images/breakfast.jpg', '4'),
(15106, 'images/featured.jpg', '4'),
(15107, 'images/bread1.jpg', '4'),
(15108, 'images/slider1.jpg', '4'),
(15109, 'images/slider2.jpg', '4'),
(15110, 'images/slider3.JPG', '4'),
(15111, 'img/signature.png', '5'),
(15112, 'img/logo.png', '5'),
(15113, 'img/header-bg.jpg', '5'),
(15114, 'img/video-bg.jpg', '5'),
(15115, 'img/menu-bg.jpg', '5'),
(15116, 'img/play-icon.png', '5'),
(15117, 'img/g2.jpg', '5'),
(15118, 'img/g1.jpg', '5'),
(15119, 'img/g3.jpg', '5'),
(15120, 'img/g4.jpg', '5'),
(15121, 'img/g5.jpg', '5'),
(15122, 'img/r1.png', '5'),
(15123, 'img/r2.png', '5'),
(15124, 'img/b1.jpg', '5'),
(15125, 'img/b2.jpg', '5'),
(15126, 'img/footer-bg.jpg', '5'),
(15127, 'images/Logo_main.png', '6'),
(15128, 'images/icons/about_color.png', '6'),
(15129, 'images/3.jpg', '6'),
(15130, 'images/1.jpg', '6'),
(15131, 'images/3.jpg', '6'),
(15132, 'images/2.jpg', '6'),
(15133, 'images/About-C-bg.jpg', '6'),
(15134, 'images/food1.jpg', '6'),
(15135, 'images/pricing_bg.jpg', '6'),
(15136, 'images/food2.jpg', '6'),
(15137, 'images/food4.jpg', '6'),
(15138, 'images/food3.jpg', '6'),
(15139, 'images/food5.jpg', '6'),
(15140, 'images/food6.jpg', '6'),
(15141, 'images/food7.jpg', '6'),
(15142, 'images/food8.jpg', '6'),
(15143, 'images/food9.jpg', '6'),
(15144, 'images/icons/beer_black.png', '6'),
(15145, 'images/GPtE-bg.jpg', '6'),
(15146, 'images/icons/beer_color.png', '6'),
(15147, 'images/beer-bg1.png', '6'),
(15148, 'images/icons/bread_black.png', '6'),
(15149, 'images/OBM-bg.jpg', '6'),
(15150, 'images/icons/bread_color.png', '6'),
(15151, 'images/icons/food_black.png', '6'),
(15152, 'images/bread-bg1.png', '6'),
(15153, 'images/OFDM-bg.jpg', '6'),
(15154, 'images/menu-gallery/menu1.png', '6'),
(15155, 'images/icons/food_color.png', '6'),
(15156, 'images/menu-gallery/menu2.jpg', '6'),
(15157, 'images/menu-gallery/menu3.png', '6'),
(15158, 'images/menu-gallery/menu4.jpg', '6'),
(15159, 'images/menu-gallery/menu5.jpg', '6'),
(15160, 'images/menu-gallery/menu7.jpg', '6'),
(15161, 'images/menu-gallery/menu6.jpg', '6'),
(15162, 'images/menu-gallery/menu8.jpg', '6'),
(15163, 'images/menu-gallery/menu9.jpg', '6'),
(15164, 'images/menu-gallery/menu10.jpg', '6'),
(15165, 'images/menu-gallery/menu11.jpg', '6'),
(15166, 'images/icons/reserve_black.png', '6'),
(15167, 'images/RaT-bg.jpg', '6'),
(15168, 'images/icons/reserve_color.png', '6'),
(15169, 'images/social/facebook_color.png', '6'),
(15170, 'images/social/twitter_color.png', '6'),
(15171, 'images/social/g-plus_color.png', '6'),
(15172, 'images/social/linkedin_color.png', '6');

-- --------------------------------------------------------

--
-- Estrutura da tabela `lista_secoes`
--

CREATE TABLE `lista_secoes` (
  `id` int(11) NOT NULL,
  `secao` varchar(255) NOT NULL,
  `scroll_tag` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `lista_secoes`
--

INSERT INTO `lista_secoes` (`id`, `secao`, `scroll_tag`) VALUES
(1, 'Sobre', '#sobre'),
(2, 'Especialidades', '#especialidades'),
(3, 'Menu', '#menu'),
(4, 'Notícias', '#noticias'),
(5, 'Galeria', '#galeria'),
(6, 'Contactos', '#contactos'),
(7, 'Mapa', '#map'),
(8, 'Testemunhos', '#testemunhos');

-- --------------------------------------------------------

--
-- Estrutura da tabela `lista_templates`
--

CREATE TABLE `lista_templates` (
  `id_info` int(11) NOT NULL,
  `id_admin` int(11) NOT NULL,
  `id_template` int(11) NOT NULL,
  `titulo_template` varchar(255) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `css_extra` text NOT NULL,
  `template_criado` varchar(255) NOT NULL,
  `referencia_rand` varchar(250) NOT NULL,
  `latitude` text NOT NULL,
  `longitude` text NOT NULL,
  `nome_localizacao` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `opcoes_template`
--

CREATE TABLE `opcoes_template` (
  `id` int(11) NOT NULL,
  `id_secao` int(11) NOT NULL,
  `id_template` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `css` text NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `info` varchar(255) NOT NULL,
  `id_codigo` int(11) NOT NULL,
  `referencia_rand` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `template`
--

CREATE TABLE `template` (
  `titulo` varchar(30) NOT NULL,
  `id` int(11) NOT NULL,
  `referencia` varchar(255) NOT NULL,
  `template` varchar(255) NOT NULL,
  `imagem` varchar(255) NOT NULL,
  `ref_galeria` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `template`
--

INSERT INTO `template` (`titulo`, `id`, `referencia`, `template`, `imagem`, `ref_galeria`) VALUES
('EatWell', 2, 'Restaurante', 'Templates/EatWell/', 'Templates/Eatwell/aaa.png', '1'),
('Rest_#123', 3, 'Restaurante', 'Templates/rest_123/', 'Templates/rest_123/rest_123.png', '2'),
('Caviar', 4, 'Restaurante', 'Templates/caviar/', 'Templates/caviar/imagem.png', '3'),
('Restaurant-master', 6, 'Restaurante', 'Templates/Restaurant-master/', 'Templates/Restaurant-master/imagem.png', '4'),
('coffee', 7, 'Restaurante', 'Templates/coffee/', 'Templates/coffee/imagem.png', '5'),
('Mamma', 8, 'Restaurante', 'Templates/mamma/', 'Templates/mamma/imagem.png', '6');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `administradores`
--
ALTER TABLE `administradores`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `codigo_template`
--
ALTER TABLE `codigo_template`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_secao_cod` (`id_secao`) USING BTREE,
  ADD KEY `id_template_cod` (`id_template`);

--
-- Indexes for table `galeria_template`
--
ALTER TABLE `galeria_template`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rref` (`referencia_galeria`);

--
-- Indexes for table `lista_secoes`
--
ALTER TABLE `lista_secoes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lista_templates`
--
ALTER TABLE `lista_templates`
  ADD PRIMARY KEY (`id_info`),
  ADD KEY `id_template` (`id_template`) USING BTREE,
  ADD KEY `id_admin` (`id_admin`) USING BTREE;

--
-- Indexes for table `opcoes_template`
--
ALTER TABLE `opcoes_template`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_secao` (`id_secao`),
  ADD KEY `id_template` (`id_template`),
  ADD KEY `id-user` (`id_user`),
  ADD KEY `id_codigo` (`id_codigo`);

--
-- Indexes for table `template`
--
ALTER TABLE `template`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_galeria` (`ref_galeria`),
  ADD KEY `rreff` (`ref_galeria`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `administradores`
--
ALTER TABLE `administradores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `codigo_template`
--
ALTER TABLE `codigo_template`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `galeria_template`
--
ALTER TABLE `galeria_template`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15173;

--
-- AUTO_INCREMENT for table `lista_secoes`
--
ALTER TABLE `lista_secoes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `lista_templates`
--
ALTER TABLE `lista_templates`
  MODIFY `id_info` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `opcoes_template`
--
ALTER TABLE `opcoes_template`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `template`
--
ALTER TABLE `template`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `codigo_template`
--
ALTER TABLE `codigo_template`
  ADD CONSTRAINT `codigo_template_ibfk_1` FOREIGN KEY (`id_secao`) REFERENCES `lista_secoes` (`id`),
  ADD CONSTRAINT `codigo_template_ibfk_2` FOREIGN KEY (`id_template`) REFERENCES `template` (`id`);

--
-- Limitadores para a tabela `lista_templates`
--
ALTER TABLE `lista_templates`
  ADD CONSTRAINT `lista_templates_ibfk_1` FOREIGN KEY (`id_template`) REFERENCES `template` (`id`),
  ADD CONSTRAINT `lista_templates_ibfk_2` FOREIGN KEY (`id_admin`) REFERENCES `administradores` (`id`);

--
-- Limitadores para a tabela `opcoes_template`
--
ALTER TABLE `opcoes_template`
  ADD CONSTRAINT `opcoes_template_ibfk_1` FOREIGN KEY (`id_secao`) REFERENCES `lista_secoes` (`id`),
  ADD CONSTRAINT `opcoes_template_ibfk_2` FOREIGN KEY (`id_template`) REFERENCES `template` (`id`),
  ADD CONSTRAINT `opcoes_template_ibfk_3` FOREIGN KEY (`id_user`) REFERENCES `administradores` (`id`),
  ADD CONSTRAINT `opcoes_template_ibfk_4` FOREIGN KEY (`id_codigo`) REFERENCES `codigo_template` (`id`);

--
-- Limitadores para a tabela `template`
--
ALTER TABLE `template`
  ADD CONSTRAINT `template_ibfk_1` FOREIGN KEY (`ref_galeria`) REFERENCES `galeria_template` (`referencia_galeria`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
