 
 function Reg() {
    var fname = document.getElementById('firstname').value;
    var lname = document.getElementById('lastname').value;
    var email = document.getElementById('email').value;
    var com = document.getElementById('company').value;
     
     

    if (fname == "") {
        document.getElementById('firstnamemsg').innerHTML = "Please Enter a First Name";
        returnValue = false;
    }
    if (lname == "") {
        document.getElementById('lastnamemsg').innerHTML = "Please Enter a Last Name";
        returnValue = false;
    }
    if (email == "") {
        document.getElementById('emailmsg').innerHTML = "Please Enter Email Id ";
        returnValue = false;
    }
    if (com == "") {
        document.getElementById('companymasg').innerHTML = "Please Enter Company Name ";
        returnValue = false;
    }
     
  
}

 