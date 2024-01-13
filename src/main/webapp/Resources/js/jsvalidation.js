

function validation() {
   
     var emails = document.getElementById('lemail').value;
    var pwd = document.getElementById('lpwd').value;

    if(emails==null || emails == "") {
       alert("please enter your email");
        return  false;
    }
    else if(emails.indexOf('@') <= 0){
        alert("email invailed");
        return  false;
    }
    else if(pwd==null || pwd == ""){
    	alert("password can't be blank");
        return  false;
        }
    else if((pwd.lenght <=4 ) || (pwd.lenght > 20)){
        alert("password invailed");
            return  false;
    } 
   return true;
}
    
function sighupvalidation()
    {
        var fname = document.getElementById('fname').value;
        var lname = document.getElementById('lname').value;
        var semail = document.getElementById('semail').value;
        var mno = document.getElementById('mno').value;
        var add = document.getElementById('add').value;
        var state = document.getElementById('state').value;
        var spwd = document.getElementById('spwd').value;
    
    if(fname==null || fname == "") {
        alert("firstname can't be blank");
         return false;
     }
     else if(lname==null || lname == "") {
        alert("lastname can't be blank");
         return false;
     }
     else if(semail==null || semail == "") {
        alert("email can't be blank");
         return false;
     }
     else if(semail.indexOf('@') <= 0){
        alert("email invailed");
        return false;
     }
     else if(mno==null || mno == "") {
        alert("mobile can't be blank");
         return false;
     }
     else if(isNaN(mno)) {
        alert(" User must write digits only");
         return false;
     }
     else if(add==null || add == "") {
        alert("address can't be blank");
         return false;
     }
     else if(state==null || state == "") {
        alert("state can't be blank");
         return false;
     }
     else if(spwd==null || spwd == "") {
        alert("password can't be blank");
         return false;
     }else if((spwd.lenght <=4 ) || (spwd.lenght > 20)){
        alert("password invailed");
        return false;
        }
        
}



