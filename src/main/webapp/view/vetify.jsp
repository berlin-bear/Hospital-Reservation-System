<%-- 
    Document   : vetify
    Created on : Sep 1, 2018, 1:44:02 AM
    Author     : Jesse
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Hospital Reservation System</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        
        <link type="text/css" rel="stylesheet" href="https://cdn.firebase.com/libs/firebaseui/3.1.1/firebaseui.css" />
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        
        


<script src="https://www.gstatic.com/firebasejs/5.5.2/firebase.js"></script>
<!-- Firebase App is always required and must be first -->
<script src="https://www.gstatic.com/firebasejs/5.4.1/firebase-app.js"></script>

<!-- Add additional services that you want to use -->
<script src="https://www.gstatic.com/firebasejs/5.4.1/firebase-auth.js"></script>
<script src="https://www.gstatic.com/firebasejs/5.4.1/firebase-database.js"></script>
<script src="https://www.gstatic.com/firebasejs/5.4.1/firebase-firestore.js"></script>
<script src="https://www.gstatic.com/firebasejs/5.4.1/firebase-messaging.js"></script>
<script src="https://www.gstatic.com/firebasejs/5.4.1/firebase-functions.js"></script>

<script>
  // Initialize Firebase
  var config = {
    apiKey: "AIzaSyB3tgflnOWGhR0EVvjW6ldubM6vSdNqBFE",
    authDomain: "premium-origin-217008.firebaseapp.com",
    databaseURL: "https://premium-origin-217008.firebaseio.com",
    projectId: "premium-origin-217008",
    storageBucket: "premium-origin-217008.appspot.com",
    messagingSenderId: "1538681596"
  };
  firebase.initializeApp(config);
</script>




        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Hospital Reservation System</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <link rel="stylesheet" href="style.css" type="text/css">
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body background="./images/1.jpeg">
            <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<script>
    function vetify(){
    var user = firebase.auth().currentUser; 
    var email= user.email;
    $("#p").html("Please check your email ("+email +") for verification");
user.sendEmailVerification().then(function() {
     window.alert("sent verification to your email");
}).catch(function(error) {
});   
firebase.auth().signOut().then(function() {
  // Sign-out successful.
}).catch(function(error) {
  // An error happened.
});
    
    }
</script>
 <a href="../index.jsp">
       <img src="../images/logo.png" width="10%" height="92px">
       </a>

<p onload="check()"><h2 id="p" style="text-align: center;">Please check your email for verification</h2></p>
<button id="lgbtn" onclick="vetify()" style="margin-left: 50%;" class="btn btn-lg btn-warning">Vetify</button>
        
</body>
    <script>
        function check(){
        var user = firebase.auth().currentUser; 
        var email_vetified= user.emailVertified;
        if (email_vetified)
            window.location.href='Homepage.jsp';
    }
    
    </script>
</html>
