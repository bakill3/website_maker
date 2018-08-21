<script src="jquery.min.js"></script>
<script>
  $('*').each(function(){ 
    var imgsrc;
    var teste;

    if ($(this).is('img')) {
        imgsrc = $(this).attr('src');
    } else {
      teste = $(this).css('background-image');
      if (teste && teste != 'none') {
        teste = teste.substring(4, teste.length-1);
        imgsrc=teste;
      } 
    }
    if (imgsrc && imgsrc != 'none') {
      $.ajax({
        type : "POST",
        url : "teste3.php",
        data : "src="+imgsrc,
        success : function(data) {
          console.log("Sucesso morcão");
        }
       });
    }
});
</script>