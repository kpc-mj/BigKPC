var COOKIE_NAME_GTM = "gtmdlkr";
var DOMAIN_GTM = ".hankyung.com";
var DELIMITER_GTM = ">";

function setCookieGTM(cname, cvalue, exdays) {
/*
var d = new Date();
d.setTime(d.getTime() + (exdays * 24 * 60 * 60 * 1000));
var expires = "expires="+d.toUTCString();
document.cookie = cname + "=" + cvalue + ";" + expires + ";path=/;domain=" + DOMAIN_GTM;
*/
document.cookie = cname + "=" + cvalue + ";path=/;domain=" + DOMAIN_GTM;
}
function getCookieGTM(cname) {
var name = cname + "=";
var ca = document.cookie.split(';');
for(var i = 0; i < ca.length; i++) {
	var c = ca[i];
	while (c.charAt(0) == ' ') {
		c = c.substring(1);
	}
	if (c.indexOf(name) == 0) {
		return c.substring(name.length, c.length);
	}
}
return "";
}

if(typeof dataLayer == "undefined"){var dataLayer = [{}];}
if(typeof dataLayer[0]["dimension01"] == "undefined" || dataLayer[0]["dimension01"] == ""){match = document.cookie.match(new RegExp('UserNo' + '=([^;]+)'));if (match){dataLayer[0]["dimension01"] = "Y";}}
if(typeof dataLayer[0]["dimension02"] == "undefined" || dataLayer[0]["dimension02"] == ""){match = document.cookie.match(new RegExp('_ga' + '=([^;]+)'));if (match){var _cid = match[1].split('.');dataLayer[0]["dimension02"] = _cid[_cid.length - 2] + "." + _cid[_cid.length - 1];};}
if(typeof dataLayer[0]["dimension03"] == "undefined" || dataLayer[0]["dimension03"] == ""){dataLayer[0]["dimension03"] = "Web_한경닷컴";if(/iPhone|iPad|iPod|Android|mobile|phone|tablet/i.test(navigator.userAgent)){dataLayer[0]["dimension03"] = "Mobile_한경닷컴";}if(typeof appType != "undefined" && appType != ""){dataLayer[0]["dimension03"] = "App_한경닷컴";}}
if(typeof dataLayer[0]["dimension06"] == "undefined" || dataLayer[0]["dimension06"] == ""){
    if(location.host == "stock.hankyung.com" || location.host == "starwars.hankyung.com" || location.host == "hkconsensus.hankyung.com"){
        dataLayer[0]["dimension06"] = "stock";
    }else if(location.host == "land.hankyung.com" || location.host == "building.hankyung.com" || location.host == "office.hankyung.com" || location.host == "bizcenter.hankyung.com" || location.host == "maemul.hankyung.com"){
        dataLayer[0]["dimension06"] = "land";
    }else if(location.host == "hei.hankyung.com"){
        dataLayer[0]["dimension06"] = "hei";
    }
}

if(!document.referrer && (typeof dataLayer[0]["Referrer"] == "undefined" || dataLayer[0]["Referrer"] == "")){
var ua = navigator.userAgent.toUpperCase();	var referrer = '';
if (ua.indexOf("KAKAOTALK") > -1){referrer = "http://www.kakao.com";}else if(ua.indexOf("FBAN") > -1 || ua.indexOf("FBAV") > -1){referrer = "http://www.facebook.com";}else if(ua.indexOf("TWITTER") > -1){referrer = "http://www.twitter.com";}
if(referrer != ''){dataLayer[0]["Referrer"] = referrer;}
}

var COOKIE_VALUE_GTM = dataLayer[0].dimension10;

if(COOKIE_VALUE_GTM != undefined && COOKIE_VALUE_GTM != null && COOKIE_VALUE_GTM != ""){ // AID 있음
	if(document.referrer.indexOf(DOMAIN_GTM) != -1){ // referrer 한경닷컴 도메인
		var v = getCookieGTM(COOKIE_NAME_GTM).split(DELIMITER_GTM);
		if(v[0] == ""){ // 첫 기사 방문
			setCookieGTM(COOKIE_NAME_GTM, COOKIE_VALUE_GTM, 365);
		}else if(v[v.length - 1] != COOKIE_VALUE_GTM && (getCookieGTM(COOKIE_NAME_GTM) + DELIMITER_GTM + COOKIE_VALUE_GTM).length <= 150){ // 이전 기사와 같은 기사 아니면
			setCookieGTM(COOKIE_NAME_GTM, getCookieGTM(COOKIE_NAME_GTM) + DELIMITER_GTM + COOKIE_VALUE_GTM, 365);

			// 두번이상부터 방문심도 찍기
			dataLayer.push({
				dimension09: getCookieGTM(COOKIE_NAME_GTM)
			});
		}
	}else { // referrer 한경닷컴 도메인 아님
		setCookieGTM(COOKIE_NAME_GTM, COOKIE_VALUE_GTM, 365);
	}
}else {
	if(document.referrer.indexOf(DOMAIN_GTM) == -1){ // referrer 한경닷컴 도메인아님
		setCookieGTM(COOKIE_NAME_GTM, "", 365);
	}
}

(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
'https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
})(window,document,'script','dataLayer','GTM-T9TD5G7');
