$(document).ready(function () {
    $('img.logotest').hide();
    $('.buttontest').click(function () {
        $(this).parent().find('img.logotest').toggle('slow');
    });
});