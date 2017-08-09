<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<title>Ninja Gold</title>
	</head>
<body>
<h2>Your Gold: <input type="text" value="${score}"></h2>
<input type="hidden" name="activity" value="reset">
<input type="submit" class="butn" name="button" value="reset" />
<fieldset>
	<h2>Farm</h2>
	<p>Earns 10-20 golds</p>
	<form action="/process_money" method="post">
		<input type="hidden" name="activity" value="farm" />
		<input type="submit" value="Find Gold!"/>
	</form>
</fieldset>
<fieldset>
	<h2>Cave</h2>
	<p>Earns 5-10 golds</p>
	<form action="/process_money" method="post">
		<input type="hidden" name="activity" value="cave" />
		<input type="submit" value="Find Gold!"/>
	</form>
</fieldset>
<fieldset>
	<h2>House</h2>
	<p>Earns 2-5 golds</p>
	<form action="/process_money" method="post">
		<input type="hidden" name="activity" value="house" />
		<input type="submit" value="Find Gold!"/>
	</form>
</fieldset>
<fieldset>
	<h2>Casino</h2>
	<p>Earns -50-50 golds</p>
	<form action="/process_money" method="post">
		<input type="hidden" name="activity" value="casino" />
		<input type="submit" value="Find Gold!"/>
	</form>
</fieldset>
<div>
	<h2>Activity Log:</h2>
	 <div class="activities">
			<c:forEach var="row" items="${log}">
				<c:if test="${row.contains('lost')}">
				   <p style="color:red">${row}<p>
				</c:if>
				<c:if test="${!row.contains('lost')}">
				   <p style="color:green">${row}<p>
				</c:if>
			</c:forEach>
      </div>
</div>
</body>
</html>