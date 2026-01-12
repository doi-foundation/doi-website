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

(function($) { 
    if (!('XSLTProcessor' in window)) {
      console.log('XSLTProcessor does not appear to be available in this browser. Please try another.');
      return;
    }else{
      console.log('XSLTProcessor available.');
    }
    
    const xsltProcessor = new XSLTProcessor();
    //XSLT file
    $.ajax({
      type: "GET",
      url: "/data/handbook-html.xslt",
      dataType: "xml",
      success: function (xsl) {
        xsltProcessor.importStylesheet(xsl);
      }
    });

    //XML file
    $.ajax({
      type: "GET",
      url: "/data/DOIHandbook.xml",
      dataType: "xml",
      success: function (xml) {

        // transform the xml with the xslt
        const fragment = xsltProcessor.transformToFragment(xml, document);
        $("#handbook-holder").html(fragment);

        $('.tabs .content.visible').removeClass('visible');
        $('.tabs .content:nth-of-type(1)').addClass('visible');

        // Set the tab to selected
        $('.tabs-nav nav.top-nav a.selected').removeClass('selected');
        $('.tabs-nav nav.top-nav:nth-of-type(1) a').addClass('selected');
        
        donav();
      },
      error: function (xml) {
        console.log("An error occurred in translation");
      }
    });
    

  // separated out the clicks - this one for the left top level nav
  $('#handbook-holder').on('click', '.tabs-nav nav.top-nav > a, .prevnextnav .prev, .prevnextnav .next',function(e) {
      const nav_elements = $('.tabs-nav nav.top-nav > a');
      var id=$(this).closest('nav').attr('internal-destination');
      if (!id) {
        id = $(this).attr('internal-destination');
      }
      console.log("ID = " + id);
      
      $('.tabs-content .content.visible div.section-main > *:not(.chapters)').show();
       
      $('.tabs-content .content.visible div.section-main .chapters.visible > *:not(.sub-chapters)').show();

      $('.tabs > .content.visible').removeClass('visible');
      $('.tabs-content > .content[internal-destination="' + id + '"]').addClass('visible');

      $('.tabs-content .chapters.visible').removeClass('visible');

      // Set the tab to selected
      $('.tabs-nav nav.top-nav a.selected').removeClass('selected');
      
      $('.tabs-nav nav.top-nav').removeClass('selected');
      $('.tabs-nav nav.top-nav > a').removeClass('selected');
      $('.tabs-nav nav.sub-nav').removeClass('selected');
      $('.tabs-nav nav.sub-nav > a').removeClass('selected');
      $('.tabs-content .chapters.visible .sub-chapters').removeClass('visible');
      
      $('.tabs-nav nav.top-nav[internal-destination="' + id + '"]').addClass('selected');
      $('.tabs-nav nav.top-nav[internal-destination="' + id + '"] > a').addClass('selected');

      genPrevNextLevelN();
  });


  // and this one for the left sub navs.
  $('#handbook-holder').on('click', '.tabs-nav nav.sub-nav > a',function(e) {
    fixFootnotes();
    const nav_elements = $('.tabs-nav nav.sub-nav > a');
    var id=$(this).closest('nav').attr('internal-destination');
    console.log("sub nav ID = " + id);

    // hide everything else
    $('.tabs-content .content.visible div.section-main > *:not(.chapters)').hide();

    // reshow the chapter info if hidden by sub-sub-nav
    $('.tabs-content .content.visible div.section-main .chapters.visible > *:not(.sub-chapters)').show();

    $('.tabs-content .chapters.visible').removeClass('visible');
    $('.tabs-content .chapters[internal-destination="' + id + '"]').addClass('visible');

    $($('.tabs-content .chapters[internal-destination="' + id + '"].visible .footnote').get().reverse()).each(function(el) {
      $(this).appendTo('.tabs-content .chapters[internal-destination="' + id + '"].visible');
    });

    // Set the tab to selected
    $('.tabs-nav nav.top-nav a.selected').removeClass('selected');
    
    $('.tabs-nav nav.sub-nav').removeClass('selected');
    $('.tabs-nav nav.sub-nav > a').removeClass('selected');
    $('.tabs-content .chapters.visible .sub-chapters').removeClass('visible');

    
    $('.tabs-nav nav.sub-nav[internal-destination="' + id + '"]').addClass('selected');
    $('.tabs-nav nav.sub-nav[internal-destination="' + id + '"] > a').addClass('selected');
    
    var $parentDiv = $('.tabs-content');
    $parentDiv.animate({ scrollTop: 0 });
    genPrevNextLevelNN();
  });

  // and this one for the left sub sub navs.
  $('#handbook-holder').on('click', '.tabs-nav nav.sub-nav nav.sub-sub-nav > a',function(e) {
    fixFootnotes();
    const nav_elements = $('.tabs-nav nav.sub-nav nav.sub-sub-nav  > a');
    var id=$(this).closest('nav').attr('internal-destination');
    console.log("sub sub nav ID = " + id);

    // hide everything else
    $('.tabs-content .content.visible div.section-main > *:not(.chapters)').hide();

    // hide things in the sub nav when in this sub-sub-chapters
    //$('.tabs-content .content.visible div.section-main .chapters.visible > *:not(.sub-chapters, h3)').hide();

    $('.tabs-content .chapters.visible .sub-chapters').removeClass('visible');
    $('.tabs-content .sub-chapters[internal-destination="' + id + '"]').addClass('visible');

    $($('.tabs-content .chapters[internal-destination="' + id + '"].visible .footnote').get().reverse()).each(function(el) {
      $(this).appendTo('.tabs-content .chapters[internal-destination="' + id + '"].visible');
    });

    // Set the tab to selected
    $('.tabs-nav nav.top-nav a.selected').removeClass('selected');
    
    //$('.tabs-nav nav.sub-nav').removeClass('selected');
    $('.tabs-nav nav.sub-nav > a').removeClass('selected');

    
    $('.tabs-nav nav.sub-nav nav.sub-sub-nav[internal-destination="' + id + '"]').addClass('selected');
    $('.tabs-nav nav.sub-nav nav.sub-sub-nav[internal-destination="' + id + '"] > a').addClass('selected');
    
    // Scroll to the top
    var $parentDiv = $('.tabs-content');
    var $innerListItem = $('.tabs-content .content.visible div.section-main .chapters.visible .sub-chapters[internal-destination="' + id + '"]');
    $parentDiv.animate({ scrollTop: $innerListItem.position().top + 90 });
  });

  // some general nav stuff
  //footnotes
  $('#handbook-holder').on('click', '.footnote-link',function(e) {
    console.log($(this).attr('rid'));
    $('html body').scrollTop($('.footnote#' + $(this).attr('rid')).offset().top);
  });

  //--------------------------------------------------------------------------------------------------------
  function fixFootnotes() {
    $('.footnote sup').remove();
    $('.footnote-link').each(function(index) {
      $('.footnote#' + $(this).attr('rid')).find($('.fn-id')).html("<sup>" + $(this).text() + "</sup>");
    });
  }


  //--------------------------------------------------------------------------------------------------------
  function genPrevNextLevelN() {
    console.log('genprevnext level 1');
    var nextsection=$('.content.visible').next()
    var nextsectionid=nextsection.attr('internal-destination');
    var nextsectiontitle=nextsection.find('.section-title').text();
    if (!nextsectionid) {
      $('.content.visible .prevnextnav .next .nexttext').text('');
      $('.content.visible .prevnextnav .next').css('visibility','hidden');
    } else {
      $('.content.visible .prevnextnav .next .nexttext').text(nextsectiontitle);
      $('.content.visible .prevnextnav .next').attr('internal-destination',nextsectionid);
      $('.content.visible .prevnextnav .next').css('visibility','visible');
    }
    
    var prevsection=$('.content.visible').prev()
    var prevsectionid=prevsection.attr('internal-destination');
    var prevsectiontitle=prevsection.find('.section-title').text();
    if (!prevsectionid) {
      $('.content.visible .prevnextnav .prev .prevtext').text('');
      $('.content.visible .prevnextnav .prev').css('visibility','hidden');
    } else {
      $('.content.visible .prevnextnav .prev .prevtext').text(prevsectiontitle);
      $('.content.visible .prevnextnav .prev').attr('internal-destination',prevsectionid);
      $('.content.visible .prevnextnav .prev').css('visibility','visible');
    }
  }

  //--------------------------------------------------------------------------------------------------------
  function genPrevNextLevelNN() {
    console.log('genprevnext level 2');
    var nextchapter=$('.chapters.visible').next()
    var nextchapterid=nextchapter.attr('internal-destination');
    var nextchaptertitle=nextchapter.find('h3:first').text();
    if (!nextchapterid) {
      // check for next section since we are at last chapter
      var nextsection=$('.content.visible').next()
      var nextsectionid=nextsection.attr('internal-destination');
      var nextsectiontitle=nextsection.find('.section-title').text();
      $('.content.visible .prevnextnav .next .nexttext').text(nextsectiontitle);
    } else {
      $('.content.visible .prevnextnav .next .nexttext').text(nextchaptertitle);
    }
        
    var prevchapter=$('.chapters.visible').prev()
    var prevchapterid=prevchapter.attr('internal-destination');
    var prevchaptertitle=prevchapter.find('h3:first').text();
    if (!prevchapterid) {
      var prevsection=$('.content.visible').prev()
      var prevsectionid=prevsection.attr('internal-destination');
      var prevsectiontitle=prevsection.find('.section-title').text();
      $('.content.visible .prevnextnav .prev .prevtext').text(prevsectiontitle);
    } else {
      $('.content.visible .prevnextnav .prev .prevtext').text(prevchaptertitle);
    }
  }

  //--------------------------------------------------------------------------------------------------------
  function donav() {
    // search querystring for error param value
    var matches = window.location.search.match(/xref=([\w.]+)/);

    
    genPrevNextLevelN();

    if (matches) {
      // show the matching element
      
      console.log("matches = " + matches[1]);
      
      id =  'sec' + matches[1];

      parts = matches[1].split('.');
      levels = parts.length;

      // top level navigation eg "?xref=5"
      if (levels>=1) {
        id = 'sec' + parts[0];
        console.log("top nav ID = " + id);

        $('.tabs-content .content.visible div.section-main > *:not(.chapters)').show();

        $('.tabs > .content.visible').removeClass('visible');
        $('.tabs-content > .content[internal-destination="' + id + '"]').addClass('visible');

        $('.tabs-content .chapters.visible').removeClass('visible');

        // Set the tab to selected
        $('.tabs-nav nav.top-nav a.selected').removeClass('selected');
        
        $('.tabs-nav nav.top-nav').removeClass('selected');
        $('.tabs-nav nav.top-nav > a').removeClass('selected');
        
        $('.tabs-nav nav.top-nav[internal-destination="' + id + '"]').addClass('selected');
        $('.tabs-nav nav.top-nav[internal-destination="' + id + '"] > a').addClass('selected');
        genPrevNextLevelN();
      }
      if (levels>=2) {
        
        id = 'sec' + parts[0] + '.' + parts[1];
        fixFootnotes();
        const nav_elements = $('.tabs-nav nav.sub-nav > a');
        console.log("sub nav ID = " + id);

        // hide everything else
        $('.tabs-content .content.visible div.section-main > *:not(.chapters)').hide();

        $('.tabs-content .chapters.visible').removeClass('visible');
        $('.tabs-content .chapters[internal-destination="' + id + '"]').addClass('visible');

        $($('.tabs-content .chapters[internal-destination="' + id + '"].visible .footnote').get().reverse()).each(function(el) {
          $(this).appendTo('.tabs-content .chapters[internal-destination="' + id + '"].visible');
        });

        // Set the tab to selected
        $('.tabs-nav nav.top-nav a.selected').removeClass('selected');
        
        $('.tabs-nav nav.sub-nav').removeClass('selected');
        $('.tabs-nav nav.sub-nav > a').removeClass('selected');

        
        $('.tabs-nav nav.sub-nav[internal-destination="' + id + '"]').addClass('selected');
        $('.tabs-nav nav.sub-nav[internal-destination="' + id + '"] > a').addClass('selected');
        genPrevNextLevelNN();
      }
      if (levels>=3) {
        id = 'sec' + parts[0] + '.' + parts[1] + '.' + parts[2];
        console.log("sub sub nav ID = " + id);
        
        //$('.tabs-nav nav.sub-nav').removeClass('selected');
        $('.tabs-nav nav.sub-nav > a').removeClass('selected');
        
        //$('.tabs-content .content.visible div.section-main .chapters.visible > *:not(.sub-chapters, h3)').hide();        
        $('.tabs-content .sub-chapters[internal-destination="' + id + '"]').addClass('visible');
        $('.tabs-nav nav.sub-nav nav.sub-sub-nav[internal-destination="' + id + '"]').addClass('selected');
        $('.tabs-nav nav.sub-nav nav.sub-sub-nav[internal-destination="' + id + '"] > a').addClass('selected');

        
        // Scroll to the top
        var $parentDiv = $('.tabs-content');
        var $innerListItem = $('.tabs-content .content.visible div.section-main .chapters.visible .sub-chapters[internal-destination="' + id + '"]');
        $parentDiv.animate({ scrollTop: $innerListItem.position().top + 90});
      }
    }

    
   
  };

  
  
})( jQuery ); 







  
