$(document).ready(function(){

  var orig_text = $(".image p").text()

  $(".caption_form form").on('submit',function(e){
    e.preventDefault()
    var form = $(this);
    var title = form.find("textarea, input[type=text]").val()

    $.ajax({
      url: '/captions',
      type: 'POST',
      data: $(this).serialize()
    }).done(function(data){
      $(".caption_table table").append(data)
      form.find("textarea, input[type=text]").val("");
      if ($(".image p").text() == "") {
        $(".image p").text(title)
        orig_text = title
      }
    })
  })




  $(".caption_table table").on('mouseover', 'tr', function(e){
    e.preventDefault
    var meme_text = $(this).children().eq(1).text()
    $(".image p").text(meme_text)
  })

  $(".caption_table table").on('mouseout','tr', function(e){
    e.preventDefault
    $(".image p").text(orig_text)
  })


})
