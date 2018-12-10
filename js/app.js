// do not remove this line

// write your own JS here:

(() => {
  $(document).foundation();

  var 
    lightbox = document.querySelector(".lightbox"),
    sigils = document.querySelectorAll(".sigilContainer"),
    closeLBox = lightbox.querySelector(".close-lightbox"),
    vidPlayer = lightbox.querySelector("video"),
    offSet = 600,
    currentSource,
    houseName = "demoreel",
    theExt = ".mp4";

  

  function closeLightBox() {
    lightbox.classList.remove("show-lightbox");
  }


  function showHouseVideo() {
    currentSource = vidPlayer.currentSrc;
    console.log(currentSource);
    theExt = currentSource.substr(currentSource.lastIndexOf("."));
    vidPlayer.src = "video/house-" + houseName + theExt;
    lightbox.classList.add("show-lightbox");
    vidPlayer.load();
    vidPlayer.play();
  }

  closeLBox.addEventListener("click", closeLightBox);

  for (var i = 0; i < sigils.length; i++) {
    sigils[i].addEventListener("click", moveBanner, false);
  }

  vidPlayer.addEventListener("ended", closeLightBox);

  

  var xmlhttp;
  function loadXMLDoc(url) {
    xmlhttp = null;
    if (window.XMLHttpRequest) {
      // code for all new browsers
      xmlhttp = new XMLHttpRequest();
    } else if (window.ActiveXObject) {
      // code for IE5 and IE6
      xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
    }
    if (xmlhttp != null) {
      xmlhttp.onreadystatechange = state_Change;
      xmlhttp.open("GET", url, true);
      xmlhttp.send(null);
    } else {
    }
  }

  function state_Change() {
    if (xmlhttp.readyState == 4) {
      if (xmlhttp.status == 200) {
        console.log(xmlhttp);
      } else {
        console.log(xmlhttp);
      }
    }
  }

  loadXMLDoc("http://www.google.com");



  $(".mask-animation").on("click", function() {
    var img = $(this)
      .find("img")
      .attr("src");
    $("#lightboximg").attr("src", img);
    $("#lightbox").css({ display: "block" });
    setTimeout(() => {
      $("#lightbox")
        .removeClass("lightbox-show")
        .addClass("lightbox-show");
    });
  });

  $(".lightbox-close").on("click", function() {
    $("#lightbox").removeClass("lightbox-show");
    setTimeout(() => {
      $("#lightbox").css({ display: "none" });
    }, 300);
  });
})();
