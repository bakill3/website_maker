<?php
function template_1() {
?>    
    <section class='site-section' id='section-about'>
      <div class='container'>
        <div class='row'>
          <div class='col-md-5 site-animate mb-5'>
            <h4 class='site-sub-title'><!--Titulo_Sobre_sub-->$titulo</h4>
            <h2 class='site-primary-title display-4'><!--Titulo_Sobre--><!--Titulo_Sobre_sub--><!--fim_Titulo_Sobre-->$titulo</h2>
           

            <!--P_Titulo_Sobre--><p class='mb-4'>$info<!--P_Titulo_Sobre_sub--></p><!--fim_P_Titulo_Sobre-->
            <p><a href='#' class='btn btn-secondary btn-lg'>Botão #1</a></p>
          </div>
          <div class='col-md-1'></div>
          <div class='col-md-6 site-animate img' data-animate-effect='fadeInRight'>
            <img src='images/about_img_1.jpg' alt='Webmax' class='img-fluid'>
          </div>
        </div>
      </div>
    </section>
<?php } ?>

<?php
function template_3() {
?>    
    <section class='site-section' id='section-menu'>
      <div class='container'>
        <div class='row'>
          <div class='col-md-12 text-center mb-5 site-animate'>
            <h2 class='display-4'>$titulo</h2>
            <div class='row justify-content-center'>
              <div class='col-md-7'>
                <p class='lead'>$info</p>
              </div>
            </div>
          </div>

          <div class='col-md-12 text-center'>

            <ul class='nav site-tab-nav nav-pills mb-5' id='pills-tab' role='tablist'>
              <li class='nav-item site-animate'>
                <a class='nav-link active' id='pills-breakfast-tab' data-toggle='pill' href='#pills-breakfast' role='tab' aria-controls='pills-breakfast' aria-selected='true'>Pequeno-Almoço</a>
              </li>
              <li class='nav-item site-animate'>
                <a class='nav-link' id='pills-lunch-tab' data-toggle='pill' href='#pills-lunch' role='tab' aria-controls='pills-lunch' aria-selected='false'>Almoço</a>
              </li>
              <li class='nav-item site-animate'>
                <a class='nav-link' id='pills-dinner-tab' data-toggle='pill' href='#pills-dinner' role='tab' aria-controls='pills-dinner' aria-selected='false'>Jantar</a>
              </li>
            </ul>

            <div class='tab-content text-left'>
              <div class='tab-pane fade show active' id='pills-breakfast' role='tabpanel' aria-labelledby='pills-breakfast-tab'>
                <div class='row'>
                  <div class='col-md-6 site-animate'>
                    <div class='media menu-item'>
                      <img class='mr-3' src='images/menu_1.jpg' class='img-fluid' alt='Webmax'>
                      <div class='media-body'>
                        <h5 class='mt-0'>Salted Fried Chicken</h5>
                        <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
                        <h6 class='text-primary menu-price'>$35.50</h6>
                      </div>
                    </div>

                    <div class='media menu-item'>
                      <img class='mr-3' src='images/menu_2.jpg' class='img-fluid' alt='Webmax'>
                      <div class='media-body'>
                        <h5 class='mt-0'>Italian Sauce Mushroom</h5>
                        <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
                        <h6 class='text-primary menu-price'>$24.50</h6>
                      </div>
                    </div>

                    <div class='media menu-item'>
                      <img class='mr-3' src='images/menu_3.jpg' class='img-fluid' alt='Webmax'>
                      <div class='media-body'>
                        <h5 class='mt-0'>Fried Potato w/ Garlic</h5>
                        <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
                        <h6 class='text-primary menu-price'>$14.50</h6>
                      </div>
                    </div>

                  </div>
                  <div class='col-md-6 site-animate'>
                    <div class='media menu-item'>
                      <img class='mr-3' src='images/menu_2.jpg' class='img-fluid' alt='Webmax'>
                      <div class='media-body'>
                        <h5 class='mt-0'>Italian Sauce Mushroom</h5>
                        <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
                        <h6 class='text-primary menu-price'>$35.50</h6>
                      </div>
                    </div>

                    <div class='media menu-item'>
                      <img class='mr-3' src='images/menu_1.jpg' class='img-fluid' alt='Webmax'>
                      <div class='media-body'>
                        <h5 class='mt-0'>Salted Fried Chicken</h5>
                        <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
                        <h6 class='text-primary menu-price'>$12.50</h6>
                      </div>
                    </div>

                    <div class='media menu-item'>
                      <img class='mr-3' src='images/menu_3.jpg' class='img-fluid' alt='Webmax'>
                      <div class='media-body'>
                        <h5 class='mt-0'>Fried Potato w/ Garlic</h5>
                        <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
                        <h6 class='text-primary menu-price'>$18.50</h6>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <div class='tab-pane fade' id='pills-lunch' role='tabpanel' aria-labelledby='pills-lunch-tab'>
                <div class='row'>
                  <div class='col-md-6 site-animate'>

                    <div class='media menu-item'>
                      <img class='mr-3' src='images/menu_3.jpg' class='img-fluid' alt='Webmax'>
                      <div class='media-body'>
                        <h5 class='mt-0'>Fried Potato w/ Garlic</h5>
                        <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
                        <h6 class='text-primary menu-price'>$14.50</h6>
                      </div>
                    </div>

                    <div class='media menu-item'>
                      <img class='mr-3' src='images/menu_1.jpg' class='img-fluid' alt='Webmax'>
                      <div class='media-body'>
                        <h5 class='mt-0'>Salted Fried Chicken</h5>
                        <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
                        <h6 class='text-primary menu-price'>$35.50</h6>
                      </div>
                    </div>

                    <div class='media menu-item'>
                      <img class='mr-3' src='images/menu_2.jpg' class='img-fluid' alt='Webmax'>
                      <div class='media-body'>
                        <h5 class='mt-0'>Italian Sauce Mushroom</h5>
                        <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
                        <h6 class='text-primary menu-price'>$24.50</h6>
                      </div>
                    </div>

                  </div>
                  <div class='col-md-6 site-animate'>

                    <div class='media menu-item'>
                      <img class='mr-3' src='images/menu_3.jpg' class='img-fluid' alt='Webmax'>
                      <div class='media-body'>
                        <h5 class='mt-0'>Fried Potato w/ Garlic</h5>
                        <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
                        <h6 class='text-primary menu-price'>$18.50</h6>
                      </div>
                    </div>

                    <div class='media menu-item'>
                      <img class='mr-3' src='images/menu_2.jpg' class='img-fluid' alt='Webmax'>
                      <div class='media-body'>
                        <h5 class='mt-0'>Italian Sauce Mushroom</h5>
                        <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
                        <h6 class='text-primary menu-price'>$35.50</h6>
                      </div>
                    </div>

                    <div class='media menu-item'>
                      <img class='mr-3' src='images/menu_1.jpg' class='img-fluid' alt='Webmax'>
                      <div class='media-body'>
                        <h5 class='mt-0'>Salted Fried Chicken</h5>
                        <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
                        <h6 class='text-primary menu-price'>$12.50</h6>
                      </div>
                    </div>

                    
                  </div>
                </div>
              </div>
              <div class='tab-pane fade' id='pills-dinner' role='tabpanel' aria-labelledby='pills-dinner-tab'>
                <div class='row'>
                  <div class='col-md-6 site-animate'>

                    <div class='media menu-item'>
                      <img class='mr-3' src='images/menu_2.jpg' class='img-fluid' alt='Webmax'>
                      <div class='media-body'>
                        <h5 class='mt-0'>Italian Sauce Mushroom</h5>
                        <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
                        <h6 class='text-primary menu-price'>$24.50</h6>
                      </div>
                    </div>

                    <div class='media menu-item'>
                      <img class='mr-3' src='images/menu_1.jpg' class='img-fluid' alt='Webmax'>
                      <div class='media-body'>
                        <h5 class='mt-0'>Salted Fried Chicken</h5>
                        <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
                        <h6 class='text-primary menu-price'>$35.50</h6>
                      </div>
                    </div>

                    <div class='media menu-item'>
                      <img class='mr-3' src='images/menu_3.jpg' class='img-fluid' alt='Webmax'>
                      <div class='media-body'>
                        <h5 class='mt-0'>Fried Potato w/ Garlic</h5>
                        <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
                        <h6 class='text-primary menu-price'>$14.50</h6>
                      </div>
                    </div>

                  </div>
                  <div class='col-md-6 site-animate'>

                    <div class='media menu-item'>
                      <img class='mr-3' src='images/menu_3.jpg' class='img-fluid' alt='Webmax'>
                      <div class='media-body'>
                        <h5 class='mt-0'>Fried Potato w/ Garlic</h5>
                        <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
                        <h6 class='text-primary menu-price'>$18.50</h6>
                      </div>
                    </div>

                    <div class='media menu-item'>
                      <img class='mr-3' src='images/menu_2.jpg' class='img-fluid' alt='Webmax'>
                      <div class='media-body'>
                        <h5 class='mt-0'>Italian Sauce Mushroom</h5>
                        <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
                        <h6 class='text-primary menu-price'>$35.50</h6>
                      </div>
                    </div>

                    <div class='media menu-item'>
                      <img class='mr-3' src='images/menu_1.jpg' class='img-fluid' alt='Webmax'>
                      <div class='media-body'>
                        <h5 class='mt-0'>Salted Fried Chicken</h5>
                        <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
                        <h6 class='text-primary menu-price'>$12.50</h6>
                      </div>
                    </div>

                    
                  </div>
                </div>
              </div>
            </div>

          </div>
        </div>
      </div>
    </section>
    <!-- END section -->
<?php } ?>

<?php
function template_2() {
?>  
<section class='site-section bg-light' id='section-offer'>
      <div class='container'>
        
        <div class='row'>
          <div class='col-md-12 text-center mb-5 site-animate'>
            <h4 class='site-sub-title'>$titulo</h4>
            <h2 class='display-4'>$titulo</h2>
            <div class='row justify-content-center'>
              <div class='col-md-7'>
                <p class='lead'>$info</p>
              </div>
            </div>
          </div>
          <div class='col-md-12'>
            <div class='owl-carousel site-owl'>

              <div class='item'>
                <div class='media d-block mb-4 text-center site-media site-animate border-0'>
                  <img src='images/offer_1.jpg' alt='Webmax' class='img-fluid'>
                  <div class='media-body p-md-5 p-4'>
                    <h5 class='text-primary'>$19.50</h5>
                    <h5 class='mt-0 h4'>Beef with Sausage</h5>
                    <p class='mb-4'>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>

                    <p class='mb-0'><a href='#' class='btn btn-primary btn-sm'>Order Now!</a></p>
                  </div>
                </div>
              </div>

              <div class='item'>
                <div class='media d-block mb-4 text-center site-media site-animate border-0'>
                  <img src='images/offer_2.jpg' alt='Webmax' class='img-fluid'>
                  <div class='media-body p-md-5 p-4'>
                    <h5 class='text-primary'>$29.50</h5>
                    <h5 class='mt-0 h4'>Egg with Garlic </h5>
                    <p class='mb-4'>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>

                    <p class='mb-0'><a href='#' class='btn btn-primary btn-sm'>Order Now!</a></p>
                  </div>
                </div>
              </div>
              
              <div class='item'>
                <div class='media d-block mb-4 text-center site-media site-animate border-0'>
                  <img src='images/offer_3.jpg' alt='Webmax' class='img-fluid'>
                  <div class='media-body p-md-5 p-4'>
                    <h5 class='text-primary'>$11.50</h5>
                    <h5 class='mt-0 h4'>Beef Ribs</h5>
                    <p class='mb-4'>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>

                    <p class='mb-0'><a href='#' class='btn btn-primary btn-sm'>Order Now!</a></p>
                  </div>
                </div>
              </div>

              <div class='item'>
                <div class='media d-block mb-4 text-center site-media site-animate border-0'>
                  <img src='images/offer_1.jpg' alt='Webmax' class='img-fluid'>
                  <div class='media-body p-md-5 p-4'>
                    <h5 class='text-primary'>$33.50</h5>
                    <h5 class='mt-0 h4'>Beef with Sauce</h5>
                    <p class='mb-4'>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>

                    <p class='mb-0'><a href='#' class='btn btn-primary btn-sm'>Order Now!</a></p>
                  </div>
                </div>
              </div>

              <div class='item'>
                <div class='media d-block mb-4 text-center site-media site-animate border-0'>
                  <img src='images/offer_2.jpg' alt='Webmax' class='img-fluid'>
                  <div class='media-body p-md-5 p-4'>
                    <h5 class='text-primary'>$12.50</h5>
                    <h5 class='mt-0 h4'>Fresh Salmon Fish</h5>
                    <p class='mb-4'>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>

                    <p class='mb-0'><a href='#' class='btn btn-primary btn-sm'>Order Now!</a></p>
                  </div>
                </div>
              </div>
              
              <div class='item'>
                <div class='media d-block mb-4 text-center site-media site-animate border-0'>
                  <img src='images/offer_3.jpg' alt='Webmax' class='img-fluid'>
                  <div class='media-body p-md-5 p-4'>
                    <h5 class='text-primary'>$53.50</h5>
                    <h5 class='mt-0 h4'>Beef Ribs</h5>
                    <p class='mb-4'>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>

                    <p class='mb-0'><a href='#' class='btn btn-primary btn-sm'>Order Now!</a></p>
                  </div>
                </div>
              </div>

              <div class='item'>
                <div class='media d-block mb-4 text-center site-media site-animate border-0'>
                  <img src='images/offer_1.jpg' alt='Webmax' class='img-fluid'>
                  <div class='media-body p-md-5 p-4'>
                    <h5 class='text-primary'>$22.50</h5>
                    <h5 class='mt-0 h4'>Beef with Sauce</h5>
                    <p class='mb-4'>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>

                    <p class='mb-0'><a href='#' class='btn btn-primary btn-sm'>Order Now!</a></p>
                  </div>
                </div>
              </div>

              <div class='item'>
                <div class='media d-block mb-4 text-center site-media site-animate border-0'>
                  <img src='images/offer_2.jpg' alt='Webmax' class='img-fluid'>
                  <div class='media-body p-md-5 p-4'>
                    <h5 class='text-primary'>$39.50</h5>
                    <h5 class='mt-0 h4'>Fresh Salmon Fish</h5>
                    <p class='mb-4'>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>

                    <p class='mb-0'><a href='#' class='btn btn-primary btn-sm'>Order Now!</a></p>
                  </div>
                </div>
              </div>
              
              <div class='item'>
                <div class='media d-block mb-4 text-center site-media site-animate border-0'>
                  <img src='images/offer_3.jpg' alt='Webmax' class='img-fluid'>
                  <div class='media-body p-md-5 p-4'>
                    <h5 class='text-primary'>$39.50</h5>
                    <h5 class='mt-0 h4'>Beef Ribs</h5>
                    <p class='mb-4'>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>

                    <p class='mb-0'><a href='#' class='btn btn-primary btn-sm'>Order Now!</a></p>
                  </div>
                </div>
              </div>

            </div>
          </div>
          
        </div>
      </div>
    </section>
    <!-- END section -->
<?php } ?>

<?php
function template_4() {
?>  
<section class='site-section bg-light' id='section-news'>
      <div class='container'>

        <div class='row'>
          <div class='col-md-12 text-center mb-5 site-animate'>
            <h2 class='display-4'>$titulo</h2> <div class='row justify-content-center'>
              <div class='col-md-7'>
                <p class='lead'>$info</p>
              </div>
            </div>
          </div>

          <div class='col-lg-4 col-md-6 col-sm-6'>
            <div class='media d-block mb-4 text-center site-media site-animate'>
              <img src='images/offer_1.jpg' alt='Webmax' class='img-fluid'>
              <div class='media-body p-md-5 p-4'>
                <h5 class='mt-0 h4'>We Have Dilecious Food</h5>
                <p class='mb-4'>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>

                <p class='mb-0'><a href='#' class='btn btn-primary btn-sm'>Read More</a></p>
              </div>
            </div>
          </div>
          <div class='col-lg-4 col-md-6 col-sm-6'>
            <div class='media d-block mb-4 text-center site-media site-animate'>
              <img src='images/offer_2.jpg' alt='Webmax' class='img-fluid'>
              <div class='media-body p-md-5 p-4'>
                <h5 class='mt-0 h4'>Chef Special Menu</h5>
                <p class='mb-4'>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>

                <p class='mb-0'><a href='#' class='btn btn-primary btn-sm'>Read More</a></p>
              </div>
            </div>
          </div>
          <div class='col-lg-4 col-md-6 col-sm-6'>
            <div class='media d-block mb-4 text-center site-media site-animate'>
              <img src='images/offer_3.jpg' alt='Webmax' class='img-fluid'>
              <div class='media-body p-md-5 p-4'>
                <h5 class='mt-0 h4'>Merriage Celebrations</h5>
                <p class='mb-4'>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>

                <p class='mb-0'><a href='#' class='btn btn-primary btn-sm'>Read More</a></p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!-- END section -->
<?php
}
?>

<?php
function template_5() {
?>  
<section class='site-section' id='section-gallery'>
      <div class='container'>
        <div class='row site-custom-gutters'>

          <div class='col-md-12 text-center mb-5 site-animate'>
            <h2 class='display-4'>$titulo</h2>
            <div class='row justify-content-center'>
              <div class='col-md-7'>
                <p class='lead'>$info</p>
              </div>
            </div>
          </div>

          <div class='col-md-4 site-animate'>
            <a href='images/menu_1.jpg' class='site-thumbnail image-popup'>
              <img src='images/menu_1.jpg' alt='Webmax' class='img-fluid'>
            </a>
          </div>
          <div class='col-md-4 site-animate'>
            <a href='images/menu_2.jpg' class='site-thumbnail image-popup'>
              <img src='images/menu_2.jpg' alt='Webmax' class='img-fluid'>
            </a>
          </div>
          <div class='col-md-4 site-animate'>
            <a href='images/menu_3.jpg' class='site-thumbnail image-popup'>
              <img src='images/menu_3.jpg' alt='Webmax' class='img-fluid'>
            </a>
          </div>

          <div class='col-md-4 site-animate'>
            <a href='images/menu_2.jpg' class='site-thumbnail image-popup'>
              <img src='images/menu_2.jpg' alt='Webmax' class='img-fluid'>
            </a>
          </div>
          <div class='col-md-4 site-animate'>
            <a href='images/menu_3.jpg' class='site-thumbnail image-popup'>
              <img src='images/menu_3.jpg' alt='Webmax' class='img-fluid'>
            </a>
          </div>
          <div class='col-md-4 site-animate'>
            <a href='images/menu_1.jpg' class='site-thumbnail image-popup'>
              <img src='images/menu_1.jpg' alt='Webmax' class='img-fluid'>
            </a>
          </div>

        </div>
      </div>
    </section>
<?php
}
?>


<?php
function template_6() {
?>  
<section class='site-section bg-light' id='section-contact'>
      <div class='container'>
        <div class='row'>

          <div class='col-md-12 text-center mb-5 site-animate'>
            <h2 class='display-4'>$titulo</h2>
            <div class='row justify-content-center'>
              <div class='col-md-7'>
                <p class='lead'>$info</p>
              </div>
            </div>
          </div>

          <div class='col-md-7 mb-5 site-animate'>
            <form action='' method='post'>
              <div class='form-group'>
                <label for='name' class='sr-only'>Name</label>
                <input type='text' class='form-control' id='name' placeholder='Name'>
              </div>
              <div class='form-group'>
                <label for='email' class='sr-only'>Email</label>
                <input type='text' class='form-control' id='email' placeholder='Email'>
              </div>
              <div class='form-group'>
                <label for='message' class='sr-only'>Message</label>
                <textarea name='message' id='message' cols='30' rows='10' class='form-control' placeholder='Write your message'></textarea>
              </div>
              <div class='form-group'>
                <input type='submit' class='btn btn-primary btn-lg' value='Send Message'>
              </div>
            </form>
          </div>
          <div class='col-md-1'></div>
          <div class='col-md-4 site-animate'>
            <p><img src='images/about_img_1.jpg' alt='' class='img-fluid'></p>
            <p class='text-black'>
              Address: <br> 121 Street, Melbourne Victoria <br> 3000 Australia <br> <br>
              Phone: <br> 90 987 65 44 <br> <br>
              Email: <br> <a href='mailto:info@yoursite.com'>info@yoursite.com</a>
            </p>

          </div>
          
        </div>
      </div>
    </section>
<?php
}
?>
<?php
function template_7() {
?>  
<div id='map'></div>
<?php
}
?>