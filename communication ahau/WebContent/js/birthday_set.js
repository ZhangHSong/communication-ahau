function day31(){
return[1,2,3,4,5,6,7,8,9,10,11,
12,13,14,15,16,17,18,19,20,21,
22,23,24,25,26,27,28,29,30,31]
}
function day30(){
return[1,2,3,4,5,6,7,8,9,10,11,
12,13,14,15,16,17,18,19,20,21,
22,23,24,25,26,27,28,29,30]
}
function day29(){
return[1,2,3,4,5,6,7,8,9,10,11,
12,13,14,15,16,17,18,19,20,21,
22,23,24,25,26,27,28,29]
}
function day28(){
return[1,2,3,4,5,6,7,8,9,10,11,
12,13,14,15,16,17,18,19,20,21,
22,23,24,25,26,27,28]
}
var days31=day31();
var days30=day30();
var days29=day29();
var days28=day28();
//加载每个月的天数
function load_day(){
//1.获取年
var y=document.getElementById("year");
var m=document.getElementById("month");
var d=document.getElementById("day");
//刷新每月的天数
d.innerHTML = "<option>请选择</option>";

var y1=parseInt(y.value) ;
var m1=parseInt(m.value) ;
if (m1<8&&m1%2==1||m1>=8&&m1%2==0) {

for(var i =0;i<days31.length;i++){
var opt = document.createElement("option");
opt.innerHTML = days31[i];
d.appendChild(opt);
}
} else if((y1%400==0||y1%100!=0&&y1%4==0)&&m1==2){
for(var i =0;i<days29.length;i++){
var opt = document.createElement("option");
opt.innerHTML = days29[i];
d.appendChild(opt);
}
}else if(m1==2){
for(var i =0;i<days28.length;i++){
var opt = document.createElement("option");
opt.innerHTML = days28[i];
d.appendChild(opt);
}
}else {
for(var i =0;i<days30.length;i++){
var opt = document.createElement("option");
opt.innerHTML = days30[i];
d.appendChild(opt);
}
}
}