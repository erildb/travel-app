<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Regjistrohu.aspx.cs" Inherits="ITravel.Regjistrohu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
        <link rel="stylesheet" href="content/logohu.css" type="text/css" />
      <style>
      /* NOTE: The styles were added inline because Prefixfree needs access to your styles and they must be inlined if they are on local disk! */
      @import url(https://fonts.googleapis.com/css?family=Open+Sans+Condensed:700);

body {
  background-image: url("images/logim.jpg");
  padding: 40px;
  font-family: "Open Sans Condensed", sans-serif;
}

#bg {
  position: fixed;
  left: 0;
  top: 0;
  width: 100%;
  height: 100%;
  background: url(http://lorempixel.com/800/500/nature) no-repeat center center fixed;
  background-size: cover;
  -webkit-filter: blur(5px);    
}

form {
  position: relative;
  width: 250px;
  margin: 0 auto;
  background: rgba(130,130,130,.3);
  padding: 20px 22px;
  border: 1px solid;
  border-top-color: rgba(255,255,255,.4);
  border-left-color: rgba(255,255,255,.4);
  border-bottom-color: rgba(60,60,60,.4);
  border-right-color: rgba(60,60,60,.4);
}

form input, form button,input[type="password"] {
  width: 212px;
  border: 1px solid;
  border-bottom-color: rgba(255,255,255,.5);
  border-right-color: rgba(60,60,60,.35);
  border-top-color: rgba(60,60,60,.35);
  border-left-color: rgba(80,80,80,.45);
  background-color: rgba(0,0,0,.2);
  background-repeat: no-repeat;
  padding: 8px 24px 8px 10px;
  font: bold .875em/1.25em "Open Sans Condensed", sans-serif;
  letter-spacing: .075em;
  color: #fff;
  text-shadow: 0 1px 0 rgba(0,0,0,.1);
  margin-bottom: 19px;
}



form input:focus { background-color: rgba(0,0,0,.4); }

form input.email {
  background-image: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAA8AAAAMCAYAAAC9QufkAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAyJpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuMC1jMDYxIDY0LjE0MDk0OSwgMjAxMC8xMi8wNy0xMDo1NzowMSAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvIiB4bWxuczp4bXBNTT0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL21tLyIgeG1sbnM6c3RSZWY9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9zVHlwZS9SZXNvdXJjZVJlZiMiIHhtcDpDcmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENTNS4xIFdpbmRvd3MiIHhtcE1NOkluc3RhbmNlSUQ9InhtcC5paWQ6M0YwNDIzMTQ3QzIzMTFFMjg3Q0VFQzhDNTgxMTRCRTQiIHhtcE1NOkRvY3VtZW50SUQ9InhtcC5kaWQ6M0YwNDIzMTU3QzIzMTFFMjg3Q0VFQzhDNTgxMTRCRTQiPiA8eG1wTU06RGVyaXZlZEZyb20gc3RSZWY6aW5zdGFuY2VJRD0ieG1wLmlpZDozRjA0MjMxMjdDMjMxMUUyODdDRUVDOEM1ODExNEJFNCIgc3RSZWY6ZG9jdW1lbnRJRD0ieG1wLmRpZDozRjA0MjMxMzdDMjMxMUUyODdDRUVDOEM1ODExNEJFNCIvPiA8L3JkZjpEZXNjcmlwdGlvbj4gPC9yZGY6UkRGPiA8L3g6eG1wbWV0YT4gPD94cGFja2V0IGVuZD0iciI/PsOChsgAAADUSURBVHjaYvz///9JBgYGMwbSwSkGoOafQPwKiAOBmIEIHAXED0H6QJwPQGwAxE+AOJOAxnwgvgfEKiB9MM0gWg6IbwNxIw6NXUB8HogloHwUzSAsBAoDIJ4DxMxQMRA9H4gPADE/kloMzSCsBcR/gHgj1LAt0HBRR1P3gQktBA2AeBcQZwHxCyB+AsT3gTgFKq6FohrJZnssoW6AxPaDBqoZurP9oBrtCYS2ExA/h9JgzX+gAsZExrMZVP0fmGZ1IjWiBCoL0NsXgPgGGcnzLECAAQD5y8iZ2Z69IwAAAABJRU5ErkJggg==);
  background-position: 220px 10px;
}



::-webkit-input-placeholder { color: #ccc; text-transform: uppercase; }
::-moz-placeholder { color: #ccc; text-transform: uppercase; }
:-ms-input-placeholder { color: #ccc; text-transform: uppercase; }

form button[type=submit] {
  width: 248px;
  margin-bottom: 0;
  color: #3f898a;
  letter-spacing: .05em;
  text-shadow: 0 1px 0 #133d3e;
  text-transform: uppercase;
  background: #225556;
  border-top-color: #9fb5b5;
  border-left-color: #608586;
  border-bottom-color: #1b4849;
  border-right-color: #1e4d4e;
  cursor: pointer;
}
.login-help {
    width: 100%;
    text-align: center;
    font-size: 17px;
    position:relative;
    color:white;
}
    </style>
</head>
<body>
    <form runat="server">
    
          <h1>Regjistrohu</h1>

            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
            Text="*" ErrorMessage="Emri duhet te plotesohet" ControlToValidate="Emri"
            ForeColor="Red" ></asp:RequiredFieldValidator>
              Emri: <asp:TextBox ID="Emri" class="inpute" runat="server"></asp:TextBox>

                  <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
            Text="*" ErrorMessage="Mbiemri duhet te plotesohet" ControlToValidate="Emri"
            ForeColor="Red" ></asp:RequiredFieldValidator>
              Mbiemri: <asp:TextBox ID="Mbiemri" class="inpute" runat="server"></asp:TextBox>

      <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            Text="*" ErrorMessage="Username duhet te plotesohet" ControlToValidate="Username"
            ForeColor="Red" ></asp:RequiredFieldValidator>
              &nbsp;&nbsp;Username: <asp:TextBox ID="Username" class="inpute" runat="server"></asp:TextBox>
            
           <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ErrorMessage="Email duhet te plotesohet" ControlToValidate="Email" 
            ForeColor="Red" Text="*" ></asp:RequiredFieldValidator>
              <asp:RegularExpressionValidator ID="RegularExpressionValidator1"
                  runat="server" ControlToValidate="Email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                 ErrorMessage="Email nuk eshte valid" Text="*"></asp:RegularExpressionValidator>
              Email:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="Email" class="inpute" runat="server"></asp:TextBox>

           <asp:RequiredFieldValidator ID="RequiredFieldValidator3" 
                 runat="server" ControlToValidate="Password" ForeColor="Red"
                 Text="*" ErrorMessage="Password duhet te plotesohet"></asp:RequiredFieldValidator>
              Password:&nbsp;<asp:TextBox ID="Password" runat="server" class="inpute" TextMode="Password"></asp:TextBox>

           <asp:RequiredFieldValidator ID="RequiredFieldValidator8" 
                 runat="server" ControlToValidate="KonfPassword" ForeColor="Red"
                 Text="*" ErrorMessage="Konfirmo Password duhet te plotesohet"></asp:RequiredFieldValidator>
              <asp:CompareValidator ID="CompareValidator1"
                  Text="*" runat="server" Operator="Equal" ControlToCompare="Password" 
                  ErrorMessage="Passwordet duhet te perputhen" ControlToValidate="KonfPassword" ForeColor="Red"></asp:CompareValidator>
              
              KonfPas:<asp:TextBox ID="KonfPassword" runat="server" class="inpute" TextMode="Password"></asp:TextBox>
              
     &nbsp;&nbsp;  Datelindja:&nbsp;&nbsp; <asp:TextBox ID="Datelindje" TextMode="Date" runat="server"></asp:TextBox>
       <asp:CompareValidator ID="CompareValidator2" runat="server" Operator="LessThan" ValueToCompare="01/01/2005" ErrorMessage="Datelindja duhet me pak se 01/01/2005" ControlToValidate="Datelindje" Text="*" ForeColor="red" Type="Date"></asp:CompareValidator>
              
          Fusni Nje Foto:&nbsp; <asp:FileUpload ID="foto"  runat="server" ForeColor="white"/>       

        <asp:ValidationSummary ForeColor="Red" ID="ValidationSummary1" runat="server" />

      &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="Button1" runat="server" Text="Valido"  Width="86px"  OnClick="regjistrohu_Click"/>   
      <asp:Label ID="lblError" ForeColor="red" runat="server" style="top:20px"></asp:Label>
   
  <div class="login-help">
  <asp:HyperLink id="regj" NavigateUrl="logohu.aspx" Text="Login" runat="server" ForeColor="black" Font-Underline="false"/>
</div>

</form>
</body>
</html>
