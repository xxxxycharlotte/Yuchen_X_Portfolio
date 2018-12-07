


// do not remove this line

// write your own JS here:

(() => {
  $(document).foundation()

var imageBanner = document.querySelector("#houseImages"),
  sigils = document.querySelectorAll(".sigilContainer"),
  lightbox = document.querySelector('.lightbox'),
  closeLBox = lightbox.querySelector('.close-lightbox'),
  vidPlayer = lightbox.querySelector('video'),
  offSet = 600,
  currentSource,
  houseName = 'demoreel',
  theExt = '.mp4';

  //(1) add array for taglines, replace text with each animation

imageBanner.style.right = "0px";


//functions

function closeLightBox() {
//(2) complete this function
lightbox.classList.remove('show-lightbox');
//vidPlayer.currentTime = 0; //rewinds video to start

}


function moveBanner() {
  imageBanner.style.right = (offSet * this.dataset.offset) + 'px';
  //set houseName to the name of the second class on this item
  houseName = this.className.split(' ')[1];

  //(3) add listener for end of css transition, use 'transitionend' event
  //    to open the lightbox and start playing the selected video
  setTimeout("showHouseVideo()",600);
  //showHouseVideo();
}


function showHouseVideo() {
  currentSource = vidPlayer.currentSrc;
  console.log(currentSource);
  theExt = currentSource.substr(currentSource.lastIndexOf("."));
  vidPlayer.src = 'video/house-'+houseName+theExt;
  lightbox.classList.add('show-lightbox');
  vidPlayer.load();
  vidPlayer.play();
}


//events and listeners

closeLBox.addEventListener('click', closeLightBox);

for(var i =0; i < sigils.length; i++) {
  sigils[i].addEventListener('click', moveBanner, false);
}

//(4) when video finishes playing, also close the lightbox
vidPlayer.addEventListener('ended',closeLightBox);
  
  
  


  


})();