<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Test</title>
    <link rel="stylesheet" type="text/css" media="screen" href="../../static/css/test.css">
</head>
<body>

<h1>Chi Tiết Size</h1>
<form action="/addchitietsize" method="post">
    Ma Giay <input type="text" name="magiay" />
    Ma Giay <input type="text" name="sizegiay" />
    <input type="submit" value="Add" />
</form>

<h1>Giá Giày</h1>
<form action="/addgiagiay" method="post">
    Ma Giay <input type="text" name="magiay" />
    Ma Giay <input type="text" name="giagiay" />
    <input type="submit" value="Add" />
</form>

<h1>Màu Giày</h1>
<form action="/addmaugiay" method="post">
    <select name="magiay">
        <c:forEach items="${shoesList}" var="item">
            <option value="<c:out value="${item.getMagiay()}"/>"><c:out value="${item.getTengiay()}"/></option>
        </c:forEach>
    </select>
    Mau Giay <input type="text" name="maugiay" />
    <input type="submit" value="Add" />
</form>
</body>
</html>