<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="core.KeyLock" %>
<%@page import="core.Main" %>
<%@page import="core.Lock1" %>
<%@page import="core.Lock1" %>
<html>
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
</head>
<body>



<!-- Stack the columns on mobile by making one full-width and the other half-width -->
<div class="But">
    <button type="button" class="btn btn-primary col-md-3 col-md-offset-3" onclick="initial()"> Initialise</button>
    <button type="button" class="btn btn-primary col-md-3 col-md-offset-1" onclick="AddComb()">Add a combination</button>
    <button type="button" class="btn btn-primary col-md-3 col-md-offset-3">Add a new Key</button>
    </br> </br></br> </br></br> </br>
    <button type="button" class="btn btn-primary col-md-3 col-md-offset-1">update your key</button>
    <button type="button" class="btn btn-primary col-md-3 col-md-offset-3">Delete a key</button>
</div>
<div id="Combarea">

</div>
<div id="Keyarea">


</div>
<script type="text/javascript">
    function initial() {
        $.ajax({
            url:"/InitialServlet",    //请求的url地址
            type: "POST",
            data: "",
            dataType: "text",
            success:function(msg){
                  var data=msg;
                //console.log("data 1 %s",);
               // console.log("data 2 %s",);
                var myobj=eval(data);
                for(var i=0;i<myobj.length;i++){
//                    alert(myobj[i].ID);
//                    alert(myobj[i].type);
                    console.log("data 1 %s",myobj[i].ID);
                     console.log("data 2 %s",myobj[i].type);
                    //document.getElementById("Keyarea").innerHTML="ID:"+myobj[i].ID+"type:"+myobj[i].type;
                    var a=document.getElementById("Keyarea");
                    var b=document.createElement("p");
                    var c=document.createElement("a");
                    b.innerText="ID:"+myobj[i].ID+"type:"+myobj[i].type;
                    c.innerText="update";
                    c.href="https://www.baidu.com/";
                    b.appendChild(c);
                    a.appendChild(b);



                }

            }
        });
    }
    function AddComb() {
        $.ajax({
            url:"/CombServlet",    //请求的url地址
            type: "POST",
            data: "",
            dataType: "text",
            success:function(msg){
                var arr=msg.split(",");
                console.log("数组长度"+arr.length);
                availableT=41-arr.length;
                document.getElementById("ticamount").innerHTML="Tickets Amount:"+availableT;
            }
        });
    }
    
</script>
<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
</body>
</html>
