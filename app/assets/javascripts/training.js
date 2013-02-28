window.onload = function() {
  var count = 0;
  var stimuli = document.getElementsByClassName("training_stimulus");
  var interval_1 = setInterval("cycleThroughStimuli()", 2000);

  cycleThroughStimuli = function() {
    for (var i=0; i < stimuli.length; i++) {
      stimuli[i].className = stimuli[i].className.replace(/show/, "");
    }
    if (count < stimuli.length) {
      stimuli[count].className += " show";
      stimuli[count].getElementsByTagName("audio")[0].play();
      count++;
    } else {
      interval_1 = window.clearInterval(interval_1);
      
    }
  }  
}
