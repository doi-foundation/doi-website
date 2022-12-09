$(function() {


  var triggerNumbers;
  var number_status = 0;
  
  if ($('#leftbignumber').length > 0) {
    triggerNumbers = $('#leftbignumber').offset().top - $(window).outerHeight();
  }
  
  $(window).scroll(function() {
      $('.fadein').each( function(i){
              
        var bottom_of_element = $(this).offset().top + $(this).outerHeight();
        var bottom_of_window = $(window).scrollTop() + $(window).height();
        
        if( bottom_of_window > bottom_of_element ){
            $(this).animate({'opacity':'1'},750);
        }
        
    }); 

    

      // #target not yet in view
      if (triggerNumbers > $(window).scrollTop() ) {
        return;
      } else {

      if(number_status == 0 ) {
        // run your task
        // Animate the element's value from x to y:
        $({someValue: 1}).animate({someValue: 1000000000}, {
          duration: 3000,
          easing:'swing', // can be anything
          step: function() { // called on every step
              // Update the element's text with rounded-up value:
              $('#leftbignumber').text(commaSeparateNumber(Math.round(this.someValue)));
              number_status = 1;
          },
          done: function() {
            $('#leftbignumber').text(commaSeparateNumber(1000000000) + "+");
            number_status = 2;
          }
        });

        $({someValue: 1}).animate({someValue: 292000000}, {
          duration: 3000,
          easing:'swing', // can be anything
          step: function() { // called on every step
              // Update the element's text with rounded-up value:
              $('#rightbignumber').text(commaSeparateNumber(Math.round(this.someValue)));
          },
          done: function() {
            $('#rightbignumber').text(commaSeparateNumber(292000000) + "+");
          }
        });
      }
    }



  }); 


  

  function commaSeparateNumber(val){
  while (/(\d+)(\d{3})/.test(val.toString())){
    val = val.toString().replace(/(\d)(?=(\d\d\d)+(?!\d))/g, "$1,");
  }
  return val;
  }
});




  
