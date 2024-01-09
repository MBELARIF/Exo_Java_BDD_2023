<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
    <title>Carré d'étoiles</title>
</head>
<body bgcolor="white">
    <h1>Production d'un carré d'étoiles</h1>

    <form action="#" method="post">
        <label for="inputNombreEtoiles">Saisir le nombre d'étoiles : </label>
        <input type="text" id="inputNombreEtoiles" name="nombreEtoiles">
        <input type="submit" value="Afficher">
    </form>

    <%-- Récupération de la valeur saisie par l'utilisateur --%>
    <% String nombreEtoiles = request.getParameter("nombreEtoiles"); %>
    
    <%-- Vérification de l'existence de la valeur --%>
    <% if (nombreEtoiles != null && !nombreEtoiles.isEmpty()) { %>

        <h2>Carré d'étoiles :</h2>

        <%-- Boucle for pour afficher le carré d'étoiles --%>
        <% int nbEtoiles = Integer.parseInt(nombreEtoiles); %>
        <%
            for (int i = 0; i < nbEtoiles; i++) {
                for (int j = 0; j < nbEtoiles; j++) {
        %>
                    <%= "*" %>
        <%
                }
        %>
                <br/> <%-- Nouvelle ligne après chaque ligne d'étoiles --%>
        <%
            }
        %>

    <% } %>

    <p><a href="index.html">Retour au sommaire</a></p>
</body>
</html>
