	var target;																	// 호출한 Object의 저장
	var stime;
    var selYear;
    var selMonth;
    var selDay;
    var bName = navigator.appName;
    var _option1;
    var _option2;

        document.write("<div id=minical oncontextmenu='return false' ondragstart='return false' onselectstart='return false' style=\"background-color:#F4F4F4; padding:3px;margin-top:2px;border:1px solid buttonshadow;width:170px;display:none;position: absolute; z-index: 99;\"></div>");

function Calendar(obj,event,type,option1,option2) {	
    if(option1 != undefined ){
        _option1 = option1;
    }
    if(option2 != undefined ){
        _option2 = option2;
    }
    //option1 값으로 date는 숫자만 or - 넣어서 입력 받기(num)
    //option1 의 defalut는 '-'를 넣어서(dash)
    //option2 오늘 이전 값은 선택 안되도록(today)
    //option2 의 defalut는 자유선택(free)
	var now = obj.value.split("-");
	var x, y;
    var minical = document.getElementById('minical');
    target = obj;																// Object 저장;
    if(minical.style.display == "block"){
         minical.style.display = "none";
    }
    divname = obj.name;

    var scrollT = Math.max( document.body.scrollTop , document.documentElement.scrollTop);
    var scrollL = Math.max( document.body.scrollLeft , document.documentElement.scrollLeft);

	x = (document.layers) ? loc.pageX : event.clientX + scrollL;
	y = (document.layers) ? loc.pageY : event.clientY + scrollT;
	//x =  event.pageX - 20 ;
	//y =  event.pageY + 5 ;
    

    if(type == 'left'){
        minical.style.top	= y + 'px';
        minical.style.left	= x - 170 + 'px';
    }else{
        minical.style.top	= y + 'px';
        minical.style.left	= x + 'px';
    }
	minical.style.display = (minical.style.display == "block") ? "none" : "block";

	if (now.length == 3) {														// 정확한지 검사
        selYear = now[0];
        selMonth = now[1];
        selDay = now[2];
        Show_cal(selYear, selMonth, selDay);
		//Show_cal(now[0],now[1],now[2]);											// 넘어온 값을 년월일로 분리
	} else {
		now = new Date();
        selYear = now.getFullYear();
        selMonth = now.getMonth()+1;
        selDay = now.getDate();
		Show_cal(now.getFullYear(), now.getMonth()+1, now.getDate());			// 현재 년/월/일을 설정하여 넘김.
	}
}

function closeCal(){
    var minical = document.getElementById('minical');
    minical.style.display = "none";
}
	
function doOver(event) {																// 마우스가 칼렌다위에 있으면
    if(bName == "Microsoft Internet Explorer")
        var el = window.event.srcElement;
    else
        var el = event.target;
    
	cal_Day = el.title;

	if (cal_Day.length > 7) {													// 날자 값이 있으면.
		el.style.borderColor = "#90AFFF";
	}
	window.clearTimeout(stime);													// Clear
}

function doClick(y,m,d) {															// 날자를 선택하였을 경우
    if( y == ''){
        return;
    }
    if(_option2 == 'today'){
        //오늘이전 날짜는 선택할수 없도록
		var now = new Date();
        var toYear = now.getFullYear();
        var toMonth = now.getMonth()+1;
        var toDay = now.getDate();
        //^[alert("now : "+toYear+toMonth+toDay+ "  in:"+y+m+d);
        var seldate = new Date(y,m-1,d);
        if(now >= seldate){
            alert("내일 이후 날짜를 선택하셔야합니다.");
            return;
        }
    }
    if(_option1 != 'num'){
    // 설정 값
        cal_Day = y+'-'+day2(m)+'-'+day2(d);//window.event.srcElement.title;
    }else{
        cal_Day = y+day2(m)+day2(d);//window.event.srcElement.title;
    }
//	cal_Day = y+'-'+day2(m)+'-'+day2(d);//window.event.srcElement.title;
	if (cal_Day.length > 7) {													// 날자 값이있으면
		target.value=cal_Day													// 값 설정
	}
    closeCal();
	//minical.style.display='none';												// 화면에서 지움
}

function doOut(event) {
    if(bName == "Microsoft Internet Explorer")
        var el = window.event.srcElement;
    else
        var el = event.target;
//	var el = window.event.fromElement;
	cal_Day = el.title;

	if (cal_Day.length > 7) {
		el.style.borderColor = "#FFFFFF";
	}
	//stime=window.setTimeout("minical.style.display='none';", 200);
}

function day2(d) {																// 2자리 숫자료 변경
	var str = new String();
	
	if (parseInt(d) < 10) {
		str = "0" + parseInt(d);
	} else {
		str = "" + parseInt(d);
	}
	return str;
}

function Show_cal(sYear, sMonth, sDay,setObj) {
	var Months_day = new Array(0,31,28,31,30,31,30,31,31,30,31,30,31)
	var Weekday_name = new Array("일", "월", "화", "수", "목", "금", "토");
	var intThisYear = new Number(), intThisMonth = new Number(), intThisDay = new Number();
    var minical = document.getElementById('minical');
	minical.innerHTML = "";
	datToday = new Date();													// 현재 날자 설정
	
	intThisYear = parseInt(sYear,10);
	intThisMonth = parseInt(sMonth,10);
	intThisDay = parseInt(sDay,10);
    //alert("="+intThisYear+','+intThisMonth+','+intThisDay+'|'+sYear+','+sMonth+','+sDay+',');
	
	if (intThisYear == 0) intThisYear = datToday.getFullYear();				// 값이 없을 경우
	if (intThisMonth == 0) intThisMonth = parseInt(datToday.getMonth())+1;	// 월 값은 실제값 보다 -1 한 값이 돼돌려 진다.
	if (intThisDay == 0) intThisDay = datToday.getDate();
	
	switch(intThisMonth) {
		case 1:
				intPrevYear = intThisYear -1;
				intPrevMonth = 12;
				intNextYear = intThisYear;
				intNextMonth = 2;
				break;
		case 12:
				intPrevYear = intThisYear;
				intPrevMonth = 11;
				intNextYear = intThisYear + 1;
				intNextMonth = 1;
				break;
		default:
				intPrevYear = intThisYear;
				intPrevMonth = parseInt(intThisMonth) - 1;
				intNextYear = intThisYear;
				intNextMonth = parseInt(intThisMonth) + 1;
				break;
	}

	NowThisYear = datToday.getFullYear();										// 현재 년
	NowThisMonth = datToday.getMonth()+1;										// 현재 월
	NowThisDay = datToday.getDate();											// 현재 일
	
	datFirstDay = new Date(intThisYear, intThisMonth-1, 1);						// 현재 달의 1일로 날자 객체 생성(월은 0부터 11까지의 정수(1월부터 12월))
	intFirstWeekday = datFirstDay.getDay();										// 현재 달 1일의 요일을 구함 (0:일요일, 1:월요일)
	
	intSecondWeekday = intFirstWeekday;
	intThirdWeekday = intFirstWeekday;
	
	datThisDay = new Date(intThisYear, intThisMonth, intThisDay);				// 넘어온 값의 날자 생성
	intThisWeekday = datThisDay.getDay();										// 넘어온 날자의 주 요일

	varThisWeekday = Weekday_name[intThisWeekday];								// 현재 요일 저장
	
	intPrintDay = 1																// 달의 시작 일자
	secondPrintDay = 1
	thirdPrintDay = 1
	
	Stop_Flag = 0
	
	if ((intThisYear % 4)==0) {													// 4년마다 1번이면 (사로나누어 떨어지면)
		if ((intThisYear % 100) == 0) {
			if ((intThisYear % 400) == 0) {
				Months_day[2] = 29;
			}
		} else {
			Months_day[2] = 29;
		}
	}
	intLastDay = Months_day[intThisMonth];										// 마지막 일자 구함
	Stop_flag = 0
	
    //alert("="+NowThisYear+','+NowThisMonth+','+thirdPrintDay+'|'+sYear+','+sMonth+','+sDay+',');

	Cal_HTML = "<div STYLE='border:1px solid #DEDEDE;padding:3px;background-color:#FFFFFF'><TABLE WIDTH=100% CELLPADDING=0 CELLSPACING=0  ONMOUSEOUT=doOut(event); STYLE='font-size:8pt;'>"
			+ "<TR ALIGN=CENTER><TD COLSPAN=7 nowrap=nowrap ALIGN=CENTER STYLE='background-color:#EFEFEF;height:24px;' ><img src='/makeshop/newmanager/images/calendar_pre.gif' style='cursor:hand;vertical-align:-1px;' alt='이전달' onClick='Show_cal("+intPrevYear+","+intPrevMonth+",1);'/>"
			+ "<strong style='color=#5A5A5A'> "+get_Yearinfo(intThisYear,intThisMonth,intThisDay)+"년 "+get_Monthinfo(intThisYear,intThisMonth,intThisDay)+"월 </strong>"
			+ "<img src='/makeshop/newmanager/images/calendar_next.gif' style='cursor:pointer;vertical-align:-1px;' alt='다음달' onClick='Show_cal("+intNextYear+","+intNextMonth+",1);' /></TD></TR>"
                        + "<TR><TD colspan=7 style='line-height:1px;height:5px;'>&nbsp;</TD></TR>"
			+ "<TR ALIGN=CENTER BGCOLOR=#FFFFFF STYLE='color:#555555;font-weight:bold;'><TD STYLE='color:#9B2324'>일</TD><TD>월</TD><TD>화</TD><TD>수</TD><TD>목</TD><TD>금</TD><TD STYLE='color:#29669C'>토</TD></TR>";
			
	for (intLoopWeek=1; intLoopWeek < 7; intLoopWeek++) {						// 주단위 루프 시작, 최대 6주
		Cal_HTML += "<TR ALIGN=RIGHT BGCOLOR=WHITE>"
		for (intLoopDay=1; intLoopDay <= 7; intLoopDay++) {						// 요일단위 루프 시작, 일요일 부터
			if (intThirdWeekday > 0) {											// 첫주 시작일이 1보다 크면
				Cal_HTML += "<TD onClick=doClick("+intThisYear+','+intThisMonth+','+thirdPrintDay+");>";
				intThirdWeekday--;
			} else {
				if (thirdPrintDay > intLastDay) {								// 입력 날짝 월말보다 크다면
					Cal_HTML += "<TD onClick=doClick('');>";//"+intThisYear+','+intThisMonth+','+thirdPrintDay+");>";
				} else {														// 입력날짜가 현재월에 해당 되면
					Cal_HTML += "<TD onClick=doClick("+intThisYear+','+intThisMonth+','+thirdPrintDay+"); ONMOUSEOVER=doOver(event); title="+intThisYear+"-"+day2(intThisMonth).toString()+"-"+day2(thirdPrintDay).toString()+" STYLE=\"cursor:pointer;border:1px solid white;text-align:center;";
					//if (intThisYear == NowThisYear && intThisMonth==NowThisMonth && thirdPrintDay==intThisDay) {
					if (selYear == intThisYear && selMonth==intThisMonth && thirdPrintDay== selDay) { //입력되어있던 날짜와 동일한 경우
    //alert("="+NowThisYear+','+NowThisMonth+','+thirdPrintDay+'|'+sYear+','+sMonth+','+sDay+',');
						Cal_HTML += "background-color:#e3e9ee;";
					}
					
					switch(intLoopDay) {
						case 1:													// 일요일이면 빨간 색으로
							Cal_HTML += "color:#D44740;"
							break;
						case 7:
							Cal_HTML += "color:#29669C;"
							break;
						default:
							Cal_HTML += "color:black;"
							break;
					}
					
					Cal_HTML += "\">"+thirdPrintDay;
					
				}
				thirdPrintDay++;
				
				if (thirdPrintDay > intLastDay) {								// 만약 날짜 값이 월말 값보다 크면 루프문 탈출
					Stop_Flag = 1;
				}
			}
			Cal_HTML += "</TD>";
		}
		Cal_HTML += "</TR>";
		if (Stop_Flag==1) break;
	}
        Cal_HTML += "<TR><TD colspan=7 bgcolor=#FFFFFF align=right height=10 ><a href='javascript:void(0);' onclick='closeCal()'><img src='/images/common/calclose.gif' align=absmiddle border=0></a></TD></TR>";
	Cal_HTML += "</TABLE></div>";

	minical.innerHTML = Cal_HTML;
}

function get_Yearinfo(year,month,day) {											// 년 정보를 콤보 박스로 표시
	var min = parseInt(year) - 100;
	var max = parseInt(year) + 10;
	var i = new Number();
	var str = new String();
	
	str = "<SELECT id='date_year' onChange='Show_cal(this.value,"+month+","+day+");' ONMOUSEOVER=doOver(event); style='width:50px;font-size:8pt'>";
	for (i=min; i<=max; i++) {
		if (i == parseInt(year)) {
			str += "<OPTION VALUE="+i+" selected ONMOUSEOVER=doOver(event);>"+i+"</OPTION>";
		} else {
			str += "<OPTION VALUE="+i+" ONMOUSEOVER=doOver(event);>"+i+"</OPTION>";
		}
	}
	str += "</SELECT>";
	return str;
}


function get_Monthinfo(year,month,day) {										// 월 정보를 콤보 박스로 표시
	var i = new Number();
	var str = new String();
	
	str = "<SELECT onChange='Show_cal("+year+",this.value,"+day+");' ONMOUSEOVER=doOver(event); style='font-size:8pt;width:37px;'>";
	for (i=1; i<=12; i++) {
		if (i == parseInt(month,10)) {
			str += "<OPTION VALUE="+i+" selected ONMOUSEOVER=doOver(event);>"+i+"</OPTION>";
		} else {
			str += "<OPTION VALUE="+i+" ONMOUSEOVER=doOver(event);>"+i+"</OPTION>";
		}
	}
	str += "</SELECT>";
	return str;
}

