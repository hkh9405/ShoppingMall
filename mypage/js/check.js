// 사업자등록번호 체크
function check_busino(vencod) {
        var sum = 0;
        var getlist =new Array(10);
        var chkvalue =new Array("1","3","7","1","3","7","1","3","5");
        for(var i=0; i<10; i++) { getlist[i] = vencod.substring(i, i+1); }
        for(var i=0; i<9; i++) { sum += getlist[i]*chkvalue[i]; }
        sum = sum + parseInt((getlist[8]*5)/10);
        sidliy = sum % 10;
        sidchk = 0;
        if(sidliy != 0) { sidchk = 10 - sidliy; }
        else { sidchk = 0; }
        if(sidchk != getlist[9]) { return false; }
        return true;
}

function check_tel(tel1,tel2,tel3){
        if(isNumeric(tel1) && isNumeric(tel2) && isNumeric(tel3)){
           if(tel1=="010" || tel1=="011" || tel1=="016" || tel1=="017" || tel1=="018" || tel1=="019"){
              if(tel2.length>=3 && tel3.length>=4) return true;
              else return false;
           }else return false;
        }else return false;
}

// 주민번호 체크
function check_juminno(juminno) {
        if(juminno=="" || juminno==null || juminno.length!=13) {
                alert("주민등록번호를 적어주세요.");
                return false;
        }
        var jumin1 = juminno.substr(0,6);
        var jumin2 = juminno.substr(6,7);
        var yy           = jumin1.substr(0,2);        // 년도
        var mm     = jumin1.substr(2,2);        // 월
        var dd     = jumin1.substr(4,2);        // 일
        var genda  = jumin2.substr(0,1);        // 성별
        var msg, ss, cc;
      
        // 숫자가 아닌 것을 입력한 경우
        if (!isNumeric(jumin1)) {
                alert("주민등록번호 앞자리를 숫자로 입력하세요.");
                return false;
        }
        // 길이가 6이 아닌 경우
        if (jumin1.length != 6) {
                alert("주민등록번호 앞자리를 다시 입력하세요.");
                return false;
        }
        // 첫번째 자료에서 연월일(YYMMDD) 형식 중 기본 구성 검사
        if (yy < "00" || yy > "99" ||
                mm < "01" || mm > "12" ||
                dd < "01" || dd > "31") {
                alert("주민등록번호 앞자리를 다시 입력하세요.");
                return false;
        }
        // 숫자가 아닌 것을 입력한 경우
        if (!isNumeric(jumin2)) {
                alert("주민등록번호 뒷자리를 숫자로 입력하세요.");
                return false;
        }
        // 길이가 7이 아닌 경우
        if (jumin2.length != 7) {
                alert("주민등록번호 뒷자리를 다시 입력하세요.");
                return false;
        }
        // 성별부분이 1 ~ 4 가 아닌 경우
        if (genda < "1" || genda > "4") {
                alert("주민등록번호 뒷자리를 다시 입력하세요.");
                return false;
        }
        // 연도 계산 - 1 또는 2: 1900년대, 3 또는 4: 2000년대
        cc = (genda == "1" || genda == "2") ? "19" : "20";
        // 첫번째 자료에서 연월일(YYMMDD) 형식 중 날짜 형식 검사
        if (isYYYYMMDD(parseInt(cc+yy), parseInt(mm), parseInt(dd)) == false) {
                alert("주민등록번호 앞자리를 다시 입력하세요.");
                return false;
        }
        // Check Digit 검사
        if (!isSSN(jumin1, jumin2)) {
                alert("입력한 주민등록번호를 검토한 후, 다시 입력하세요.");
                return false;
        }
        return true;
}

function isYYYYMMDD(y, m, d) {
        switch (m) {
        case 2:        // 2월의 경우
                if (d > 29) return false;
                if (d == 29) {
                        // 2월 29의 경우 당해가 윤년인지를 확인
                        if ((y % 4 != 0) || (y % 100 == 0) && (y % 400 != 0))
                                return false;
                }
                break;
        case 4:        // 작은 달의 경우
        case 6:
        case 9:
        case 11:
                if (d == 31) return false;
        }
        // 큰 달의 경우
        return true;
}
function isNumeric(s) {
        for (i=0; i<s.length; i++) {
                c = s.substr(i, 1);
                if (c < "0" || c > "9") return false;
        }
        return true;
}
function isLeapYear(y) {
        if (y < 100)
        y = y + 1900;
        if ( (y % 4 == 0) && (y % 100 != 0) || (y % 400 == 0) ) {
                return true;
        } else {
                return false;
        }
}
function getNumberOfDate(yy, mm) {
        month = new Array(29,31,28,31,30,31,30,31,31,30,31,30,31);
        if (mm == 2 && isLeapYear(yy)) mm = 0;
        return month[mm];
}
function isSSN(s1, s2) {
        n = 2;
        sum = 0;
        for (i=0; i<s1.length; i++)
                sum += parseInt(s1.substr(i, 1)) * n++;
        for (i=0; i<s2.length-1; i++) {
                sum += parseInt(s2.substr(i, 1)) * n++;
                if (n == 10) n = 2;
        }
        c = 11 - sum % 11;
        if (c == 11) c = 1;
        if (c == 10) c = 0;
        if (c != parseInt(s2.substr(6, 1))) return false;
        else return true;
}
