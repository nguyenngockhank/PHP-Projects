var aslider = {

    timeoutHandle:null,
    currentSlide: null,

    initAsliders: function() {

        // Get each slider element and apply our styles to it
        var sliders = $('.aslider');
        $(sliders).each(function() {
            $(this).css({'position': 'relative'});                
            var slides = $(this).find('.aslide');

            $(slides).each(function() {
                var slide = $(this);

                slide.attr('style', aslider.slideFade+";"+aslider.slideFadeOut);
              
            });
            if (slides.length > 0) { // Don't crap out if no slides specified
                var duration = $(slides[0]).attr('data-duration') || $(this).attr('data-duration');
                if (!duration) throw ("Could not find duration on slide or on slider.");

                $(slides[0]).attr('style', aslider.slideFade + ";" + aslider.slideFadeIn);
                aslider.timeoutHandle = setTimeout(function () {
                    aslider.advanceSlide(slides[0]);
                }, parseInt(duration) * 1000);
                aslider.currentSlide = slides[0];
                $(this).height($(slides[0]).height());

                var audio = $(slides[0]).find('audio');
                if (audio.length > 0) {
                    audio[0].play();
                }

            }
        });

        $('.audio-toggle').click(aslider.toggleAudio);
        $('.play-pause-toggle').click(aslider.toggleState);
    },
    
    advanceSlide: function(currentSlide) {
        var nextSlide = $(currentSlide).next('.aslide');
        if (nextSlide.length == 0) { // Loop to the first slide if we are on the last slide now
            nextSlide = $(currentSlide).parent().children('.aslide:first-child');
        }

        $(currentSlide).attr('style', aslider.slideFade+";"+aslider.slideFadeOut);
        $(nextSlide).attr('style', aslider.slideFade+";"+aslider.slideFadeIn);

        $(nextSlide).parents('.aslider').height($(nextSlide).height());

        var duration = $(nextSlide).attr('data-duration') || $(nextSlide).parents('.aslider').attr('data-duration');
        if (!duration) throw ("Could not find duration on slide or on slider.");
        
        aslider.timeoutHandle = setTimeout(function() {aslider.advanceSlide(nextSlide);}, parseInt(duration) * 1000);
        aslider.currentSlide = nextSlide;
    },
    
    toggleAudio: function() {
        if ($(this).attr('data-state') == "100") {
            
            $(this).find('img').attr('src', aslider.audioMuteIcon);
            $(this).attr('data-state', '0');
          
        } else {
        
            $(this).find('img').attr('src', aslider.audioLoudIcon);
            $(this).attr('data-state', '100');
         
        }    
    },
    
    

    onResize: function() {
        // Change the height of the slider elements
        var sliders = $('.aslider');
        $(sliders).each(function() {
            var h = $(this).find('.aslide').height();
            $(this).height(h);
        });
    },
    

    init: function() {
        if (window.addEventListener) { // Mozilla, Netscape, Firefox
            window.addEventListener('load', this.initAsliders, false);
            window.addEventListener('resize', this.onResize, false);
        } else if (window.attachEvent) { // IE
            window.attachEvent('onload', this.initAsliders);
            window.attachEvent('resize', this.onResize);
        }
    }, 
    
    /* Configuration */
    slideFade: "display: block; opacity: 1; top: 0; position: absolute; left: 0; overflow: hidden; transition: opacity 1s ease-in-out; -moz-transition: opacity 1s ease-in-out; -webkit-transition: opacity 1s ease-in-out;",
    slideFadeOut: "opacity: 0",
    slideFadeIn: "opacity: 1",
    slideSlide: "",
    slideSlideOut: "",
    slideSlideIn: "", 

};

aslider.init();
