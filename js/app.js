// do not remove this line

// write your own JS here:

(() => {
	$(document).foundation()

  console.log('video stuff fired!');

  const vidPlayer = document.querySelector('video'),
        playPause = document.querySelector('.playpause'),
        rewindButton = document.querySelector('.reload'),
		 forwardButton = document.querySelector('.fastForward'),
		  backwardButton = document.querySelector('.fastBackward');
		

  function volOn() {
    vidPlayer.muted = false;
  }
  function volOff() {
    vidPlayer.muted = true;
  }
  function rewindVid() {
    vidPlayer.currentTime = 0;
  }
  
  
  
  function playVideo() {
	var theIcon = this.firstElementChild;
	 if(vidPlayer.paused) {
		 vidPlayer.play();
		 theIcon.dataset.icon = "pause-circle";
	 }else {
      vidPlayer.pause();
      theIcon.dataset.icon = "play-circle";
    }
    
  }

	
	// rewind and forwind
	
	function ffWdVid() {
    vidPlayer.currentTime += 3;
  }
  function rWindVid() {
    vidPlayer.currentTime -= 3;
  }


  vidPlayer.addEventListener('mouseover', volOn);
  vidPlayer.addEventListener('mouseout', volOff);

  playPause.addEventListener('click', playVideo);
  rewindButton.addEventListener('click', rewindVid);
   forwardButton.addEventListener('click', ffWdVid);
    backwardButton.addEventListener('click', rWindVid);

})();