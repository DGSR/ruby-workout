function evaluation(value){
    var val=parseInt(value);
    var theme=$(".up-theme")[0];
    if(val===50){
        if(theme.innerText.charCodeAt(0)<255) {
            return "No idea"
        }else {
            return "Без понятия"
        }
    }
    else if(val<50){
        return theme.innerText.split(" ")[0]+" "+((-val+50)*2).toString()+"%";
    }
    else if(val>50){
        return theme.innerText.split(" ")[2].slice(0,-1)+" "+((val-50)*2).toString()+"%";
    }
    return 0
}

$(document).ready(function (){
    var avg=$(".avg");
    for (let i=0;i<avg.length;i++){
        avg[i].innerText=evaluation(avg[i].innerText)
    }
})