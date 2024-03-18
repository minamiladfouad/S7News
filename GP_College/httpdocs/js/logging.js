//LOGGING.JS
//Vars
var log_active = true; //Logging enabled true or false
var pathtoscript = "/logging/logging.php"; //Path to Logging script

// Flash Player Version Detection - Rev 1.5
// Detect Client Browser type
// Copyright(c) 2005-2006 Adobe Macromedia Software, LLC. All rights reserved.
var isIE  = (navigator.appVersion.indexOf("MSIE") != -1) ? true : false;
var isWin = (navigator.appVersion.toLowerCase().indexOf("win") != -1) ? true : false;
var isOpera = (navigator.userAgent.indexOf("Opera") != -1) ? true : false;

function ControlVersion()
{
	var version;
	var axo;
	var e;

	// NOTE : new ActiveXObject(strFoo) throws an exception if strFoo isn't in the registry

	try {
		// version will be set for 7.X or greater players
		axo = new ActiveXObject("ShockwaveFlash.ShockwaveFlash.7");
		version = axo.GetVariable("$version");
	} catch (e) {
	}

	if (!version)
	{
		try {
			// version will be set for 6.X players only
			axo = new ActiveXObject("ShockwaveFlash.ShockwaveFlash.6");
			
			// installed player is some revision of 6.0
			// GetVariable("$version") crashes for versions 6.0.22 through 6.0.29,
			// so we have to be careful. 
			
			// default to the first public version
			version = "WIN 6,0,21,0";

			// throws if AllowScripAccess does not exist (introduced in 6.0r47)		
			axo.AllowScriptAccess = "always";

			// safe to call for 6.0r47 or greater
			version = axo.GetVariable("$version");

		} catch (e) {
		}
	}

	if (!version)
	{
		try {
			// version will be set for 4.X or 5.X player
			axo = new ActiveXObject("ShockwaveFlash.ShockwaveFlash.3");
			version = axo.GetVariable("$version");
		} catch (e) {
		}
	}

	if (!version)
	{
		try {
			// version will be set for 3.X player
			axo = new ActiveXObject("ShockwaveFlash.ShockwaveFlash.3");
			version = "WIN 3,0,18,0";
		} catch (e) {
		}
	}

	if (!version)
	{
		try {
			// version will be set for 2.X player
			axo = new ActiveXObject("ShockwaveFlash.ShockwaveFlash");
			version = "WIN 2,0,0,11";
		} catch (e) {
			version = -1;
		}
	}
	
	return "Shockwave Flash " + version;
}

// JavaScript helper required to detect Flash Player PlugIn version information
function GetSwfVer(){
	// NS/Opera version >= 3 check for Flash plugin in plugin array
	var flashVer = "No Flash Player detected";
	
	if (navigator.plugins != null && navigator.plugins.length > 0) {
		if (navigator.plugins["Shockwave Flash 2.0"] || navigator.plugins["Shockwave Flash"]) {
			var swVer2 = navigator.plugins["Shockwave Flash 2.0"] ? " 2.0" : "";
			var flashDescription = navigator.plugins["Shockwave Flash" + swVer2].description;
			var flashVer = flashDescription;
		}
	}
	// MSN/WebTV 2.6 supports Flash 4
	else if (navigator.userAgent.toLowerCase().indexOf("webtv/2.6") != -1) flashVer = "Shockwave Flash 4";
	// WebTV 2.5 supports Flash 3
	else if (navigator.userAgent.toLowerCase().indexOf("webtv/2.5") != -1) flashVer = "Shockwave Flash 3";
	// older WebTV supports Flash 2
	else if (navigator.userAgent.toLowerCase().indexOf("webtv") != -1) flashVer = "Shockwave Flash 2";
	else if ( isIE && isWin && !isOpera ) {
		flashVer = ControlVersion();
	}	
	return flashVer;
}

function isJavaEnabled() {
  if(typeof navigator.javaEnabled!='undefined')
    return navigator.javaEnabled();
  return "unknown"; 
}

function setCookie(name, wert, expires) {
  if(expires == null)
   document.cookie = name + "=" + wert + ";";
  else
   document.cookie = name + "=" + wert + "; expires=" + expires + ";";
}

function eraseCookie(name) {
   document.cookie = name + "=; expires=Thu, 01-Jan-70 00:00:01 GMT";
}

function getCookie(name) {
   var suche = name+"=";
   var cookiestart = document.cookie.indexOf(suche);
   if(cookiestart == -1)
    return null;
   else {
    var substrstart = cookiestart+suche.length;
    var cookieend = document.cookie.indexOf(";", cookiestart);
      if(cookieend > substrstart) {
        return document.cookie.substring(substrstart, cookieend);
      }
   }
   return null;
}

function is_cookie_enabled() {
  if(typeof navigator.cookieEnabled!='undefined') {
    return navigator.cookieEnabled;
  }  
   setCookie("CookieTest", "OK", null);
   if (getCookie("CookieTest") == null)
      return false;
   else {
      eraseCookie("CookieTest");
      return true;
   }
}

function getResolution() {
  if(screen) {
    if(screen.width > 0 && screen.height > 0)
      return screen.width + " x " + screen.height;
    else
      return "unknown"; 
  }  
  return "unknown"; 
}

function getLoggingURL() {
  var cookie_enabled = is_cookie_enabled();
  var lastvisit = 0;
  var currentDate = new Date();
  
    if(cookie_enabled) {
      var cookievalue = parseInt(currentDate.getTime()/1000);
      var expires = new Date(currentDate.getTime() + 1000*3600*24*366).toGMTString();
      var cookie = getCookie("loglastvisit"); 
      if(cookie != null) {
        lastvisit = cookie;
      }
      setCookie("loglastvisit", cookievalue, expires);
    }
    
  var log_ref=(typeof document.referrer==null?"null":(document.referrer==""?"empty":document.referrer));
  var vars = "loc="+escape(window.location)+"&ref="+escape(log_ref)+"&title="+escape(document.title)+"&flash="+escape(GetSwfVer())+"&java="+escape(isJavaEnabled())+"&cookie="+escape(cookie_enabled)+"&res="+escape(getResolution())+"&lv="+escape(lastvisit)+"&cTime="+currentDate.getTime();
  
    if(vars != "")
      return pathtoscript + "?" + vars;
    else
      return pathtoscript;
}

var log_sent = false;
var log_done = false;

function callLoggingScript() {
		if (log_active && log_sent == false && log_done == false) {
			url=getLoggingURL();
			log_image=new Image();
			log_image.onload=function(){log_sent=true;}
			log_image.src=url;
			log_done = true;
		}
}

callLoggingScript();
