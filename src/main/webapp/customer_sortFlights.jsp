<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sort Flights</title>
</head>
<body>

<form>
		    <p>Sort By:</p>
		</form>
		<form name="sort_by" action="customer_querySortedFlights.jsp" method="post">

     	<input type="radio" name="myradio" value="tickets.price" checked="checked"/>Price
     	<br>
     	<input type="radio" name="myradio" value="flight.Dep_Time"/>Take Off Time
     	<br>
     	<input type="radio" name="myradio" value="flight.Arr_Time"/>Landing Time
     	<br>
     	<input type="radio" name="myradio" value="flight.duration"/>Duration 
     	<br>

    	<input name="goto" type="submit" value="View Flights"> 
		</form>
		


</body>
</html>