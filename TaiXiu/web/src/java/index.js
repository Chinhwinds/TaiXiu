const gieo = new Audio("./src/misc/play.mp3");
const audio = new Audio("./src/misc/xoso.mp4");
const muteButton = document.getElementById("muteButton");

muteButton.addEventListener("click", function() {
  if (audio.paused) {
    audio.play();
  } else {
    audio.pause();
  }
});


function playBackgroundMusic() {
  gieo.play();
  audio.volume = 0.3;
  audio.loop = true;
  audio.play();
}

playBackgroundMusic();
