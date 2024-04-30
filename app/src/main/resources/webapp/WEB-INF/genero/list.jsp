<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib url="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8" />
    <title>Gêneros</title>
</head>

<body>

    <h1>Gêneros</h1>
    <a href="/genero/insert" class="btn btn-primary"> Novo Gênero</a>
    <table>
        <th> Id </th>
        <th> Nome </th>
        <th> &nbsp; </th>

        <c:forEach var="item" items="${generos}"> 
        <tr>
            <td>${item.id}</td>
            <td>${item.nome}</td>
            <td>
                <a href="/genero/update?id=${item.id}"> Editar</a>
                <a href="/genero/delete?id=${item.id}"> Excluir</a>
            </td>
        </tr>
        </c:forEach>
    </table>


</body>

</html>