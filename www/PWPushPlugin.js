
document.addEventListener("deviceready",RegisterPlugin,false);
function RegisterPlugin(){

    window.PWPhoneGapPlugin = function(str, callback) {
        cordova.exec(callback, function(err) {
                     console.log("echoo register");
                     callback('Nothing to echo.');
                     }, "PWPhoneGapPlugin", "SetupPushNotifications", [str]);
        
    };
    }
    //plugin registed.
    

    
    
