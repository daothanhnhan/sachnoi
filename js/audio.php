<?php 
	session_start();
	// session_destroy();
	if (!isset($_SESSION['audio'])) {
		$_SESSION['audio'] = 1;
	} else {
		if (empty($_SESSION['audio'])) {

		} else {

		}

		var_dump($_SESSION);
	}
?>
<!DOCTYPE html> 
<html> 
<body> 

<button onclick="getCurTime()" type="button">Get current time position</button>
<button onclick="setCurTime()" type="button">Set time position to 5 seconds</button><br> 

<audio id="myVideo" controls>
  <source src="horse.ogg" type="audio/ogg">
  <source src="nguoi_giau_co_nhat_thanh_babylon.mp3" type="audio/mpeg">
  Your browser does not support the audio tag.
</audio>

<script>
var vid = document.getElementById("myVideo");

function getCurTime() { 
  alert(vid.currentTime);
  // localStorage.setItem('audio', vid.currentTime);
  // sessionStorage['audio'] = vid.currentTime;
  sessionStorage.setItem('audio', vid.currentTime);
} 

function setCurTime() { 
  // vid.currentTime=5;
  vid.currentTime = sessionStorage.getItem('audio');
} 

function displayHello () {
	// alert('helol');
}

setInterval(displayHello, 1000);
</script> 



</body> 
</html>
