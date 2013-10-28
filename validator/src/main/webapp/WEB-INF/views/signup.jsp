<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<script language = "javascript">
 
      function checkIt()
      {
            var userinput = eval("document.userinput");
  
            if(!userinput.id.value)
            {
                  alert("아이디를 입력하세요");
                  return false;
            }
  
            if(!userinput.passwd.value)
            {
                  alert("비밀번호를 입력하세요");
                  return false;
            }
  
            if(userinput.passwd.value != userinput.passwd2.value)
            {
                  alert("주민등록번호를 입력하세요");
                  return false;
            }
      }
 
      // 아이디 중복 여부를 판단
      function openConfirmid(userinput)
      {
            // 아이디를 입력했는지 검사
            if(userinput.id.value == "")
            {
                  alert("아이디를 입력하세요");
                  return;
            }
   
            // url과 사용자 입력 아이디를 조합합니다.
            url = "confirmId.jsp?id=" + userinput.id.value;
  
            // 새로운 윈도우를 엽니다.
            open(url, "confirm", 
                  "toolbar = no, location = no, status = no," + 
                  "menubar = no, scrollbars = no, resizable = no," +
                  "width = 300, height = 200");
      }
 
      function zipCheck()
      {
            url = "ZipCheck.jsp?check=y";

            open(url, "post",
                  "toolbar = no, status = yes, menubar = no," + 
                  "scrollbars = yes, directories = no," +
                  "width = 500, height = 300");
      }
</script>
<body>
sign up
<form method="post" action="signupProcess" name="signupProcess">
	<table width = "600" border = "1" cellspacing = "0" cellpadding = "3" align = "center">
	<tr>
	      <td colspan = "2" height = "39" align = "center" bgcolor = "green">
	      <font size = "+1"><b>회원가입</b></font></td>
	</tr>
	<tr>
	      <td width = "200" bgcolor = "green"><b>아이디 입력</b></td>
	      <td width = "400" bgcolor = "green"></td>
	</tr>
	<tr>
	      <td width = "200">사용자 ID</td>
	      <td width = "400">
	            <input type = "text" name = "id" size = "10" maxlength = "12">
	            <input type = "button" name = "confirm_id" value = "ID중복확인"
	                  onclick = "openConfirmid(this.form)">
	      </td>
	</tr>
	<tr>
	      <td width = "200">비밀번호</td>
	      <td width = "400">
	            <input type = "password" name = "passwd" size = "15" maxlength = "12">
	      </td>
	</tr>
	<tr>
	      <td width = "200">비밀번호 확인</td>
	      <td width = "400">
	            <input type = "password" name = "passwd2" size = "15" maxlength = "12">
	      </td>
	</tr>
	<tr>
	      <td width = "200" bgcolor = "green"><b>개인정보 입력</b></td>
	      <td width = "400" bgcolor = "green"></td>
	</tr>
	<tr>
	      <td width = "200">사용자 이름</td>
	      <td width = "400">
	            <input type = "text" name = "name" size = "15" maxlength = "10">
	      </td>
	</tr>
	<tr>
	      <td width = "200">주민등록번호</td>
	      <td width = "400">
	            <input type = "text" name = "jumin1" size = "7" maxlength = "6"> - 
	            <input type = "text" name = "jumin2" size = "7" maxlength = "7">
	      </td>
	</tr>
	<tr>
	      <td width = "200">E-Mail</td>
	      <td width = "400">
	            <input type = "text" name = "email" size = "40" maxlength = "30">
	      </td>
	</tr>
	<tr>
	      <td width = "200">Blog</td>
	      <td width = "400">
	            <input type = "text" name = "blog" size = "60" maxlength = "50">
	      </td>
	</tr>
	<tr>
	      <td width = "200">우편번호</td>
	      <td width = "400">
	            <input type = "text" name = "zipcode" size = "7">
	            <input type = "button" value = "우편번호찾기" onClick = "zipCheck()">
	            우편번호를 검색 하세요.</td>
	</tr>
	<tr>
	      <td width = "200">주소</td>
	      <td width = "400">
	            <input type = "text" name = "address" size = "70">
	            주소를 적어 주세요.
	      </td>
	</tr>
	<tr>
	      <td colspan = "2" align = "center" bgcolor = "green">
	            <input type = "submit" name = "confirm" value = "등  록">
	            <input type = "reset" name = "reset" value = "다시입력">
	            <input type = "button" value = "가입안함"
	                  onclick = "javascript:window.location='main.jsp'">
	      </td>
	</tr>
	</table>
</form>

</body>
</html>