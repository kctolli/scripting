// This file is to setup firebase system for the backend of kctolli.github.io

const config = {
    apiKey: "AIzaSyD_nYHkWxZnMqN65E7mW6R8iALstphLxeY",
    authDomain: "kctolli-github.firebaseapp.com",
    databaseURL: "https://kctolli-github-default-rtdb.firebaseio.com",
    projectId: "kctolli-github",
    storageBucket: "kctolli-github.appspot.com",
    messagingSenderId: "190805931323",
    appId: "1:190805931323:web:f4086f461fdea54da6331e"
  }; firebase.initializeApp(config);

  var database = firebase.database();

// Functions

function save(){
  var email = document.getElementById('email').value;
  var username = document.getElementById('username').value;
  database.ref('users/' + username).set({
      email : email,
      username : username
  });
  //alert('Saved');
}

function get(){
  var username = document.getElementById('username').value;
  var user_ref = database.ref('users/' + username);
  user_ref.on('value', function(snapshot){
      var data = snapshot.val();
      console.log(data.email);
  });
}

function update(){
  var username = document.getElementById('username').value;
  var email = document.getElementById('email').value;.
  var updates = {
      email : email
  };
  database.ref('users/' + username).update(updates);
  //alert('updated');
}

function remove(){
  var username = document.getElementById('username').value;
  database.ref('users/' + username).remove();
  //alert("user removed");
}

function view(){
  var theme = document.getElementById('mode').value;
  //var ip = 
  database.ref('themes/' + ip).set({
    mode : mode 
  });
}