function time(){
    var clock= new Date();
    var hour= clock.getHours();
    var min = clock.getMinutes();
    var second = clock.getSeconds();
   // var session= document.getElementById('');
      var timeText = "Loggin Time";
    var sessionAM = "AM";
    var sessionPM= "PM";
    
    var fullTime = hour + ":" +min + ":" + second ;
    if(hour<12){
        fullTime =  timeText+ " : " +hour + ":" +min + ":" + second+ " " +sessionAM; 
    }
    else{
        fullTime =timeText+ ":" + hour + ":" +min + ":" + second+ " " +sessionPM;     
    }
    document.getElementById('time').innerHTML = fullTime;
}
setInterval(time, 1000);