$(document).ready(function(){
/////////////////////////////

$('.visible').hide()

$('.add-a-meme a').on('click', function(e){
  e.preventDefault()
  console.log("wtf")
    $('.visible').slideDown()
})

// containers for impact caption text
var actualPicWidth = $('img.meme_show').width()
var actualPicHeight = $('img.meme_show').height()

var picHeightBefore = $('div.height-fix').text()
var picHeight = picHeightBefore - 80
// $('div.image').css('height', picHeight)
$('div.image').css('height', actualPicHeight)

var picWidthBefore = $('div.width-fix').text()
var picWidth = picWidthBefore - 80
$('div.image').css('width', actualPicWidth)

console.log('wBB:', picWidthBefore, 'hBB:', picHeightBefore)
console.log('w:', picWidth,'h:', picHeight)
console.log('meme_show pic height', actualPicWidth, actualPicHeight)

/////////////////////////////
})

