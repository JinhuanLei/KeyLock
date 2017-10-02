<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="core.KeyLock" %>
<%@page import="core.Main" %>
<%@page import="core.Lock1" %>
<%@page import="core.Lock1" %>
<html>
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
</head>
<body>



<!-- Stack the columns on mobile by making one full-width and the other half-width -->
<div class="But">

    <button type="button" class="btn btn-primary col-md-3 col-md-offset-1" onclick="AddComb()">Add a combination</button>
    <button type="button" class="btn btn-primary col-md-3 col-md-offset-3">Add a new Key</button>
    </br> </br></br> </br></br> </br>
    <button type="button" class="btn btn-primary col-md-3 col-md-offset-1">update your key</button>
    <button type="button" class="btn btn-primary col-md-3 col-md-offset-3">Delete a key</button>
</div>
<div id="Combarea">

</div>
<script type="text/javascript">
    function AddComb() {
        
    }
    
</script>
<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
</body>
</html>
