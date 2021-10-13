var skip = document.getElementById('skip');
var score = document.getElementById('score');
var totalScore = document.getElementById('totalScore');
var countdown = document.getElementById('countdown');
var count = 0;
var scoreCount = 0;
var duration = 0;
var qaSet = document.querySelectorAll('.qa_set');
var qaAnsRow = document.querySelectorAll('.qa_set .qa_ans_row input');

skip.addEventListener('click', function(){
    step();
    duration =20
})

qaAnsRow.forEach( function(qaAnsRowSingle) {
    qaAnsRowSingle.addEventListener('click', function(){
        setTimeout(function(){
            step();
            duration = 20
    }, 500)

    var valid = this.getAttribute("valid");
    if(valid == "valid"){
        scoreCount +=25;
        score.innerHTML = scoreCount;
        totalScore.innerHTML = scoreCount;
    }
    })
});

function step(){
    count +=1;
    for(var i = 0; i < qaSet.length; i++){
        qaSet[i].className='qa_set';
    }
    qaSet[count].className='qa_set active';
    if(count == 4){
       skip.style.display ='none'; 
       clearInterval(durationTime);
       countdown.innerHTML = 0;
    }
}

var durationTime = setInterval(function(){
   if(duration == 10){
       duration = 0;
   } 
   duration +=1;
   countdown.innerHTML=duration;
   if(countdown.innerHTML == "10"){
      step() 
   }

}, 1000)
