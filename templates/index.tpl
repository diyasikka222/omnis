<!DOCTYPE html>

<html>

<head>
    <title>{{title}}</title>

    <link rel="stylesheet" href="/static/style.css">
</head>

<body>

    <h1>{{title}}</h1>

    <p>{{message}}</p>

    <form action="/search" method="get">

        <input
            type="text"
            name="query"
            placeholder="Search files..."
        >

        <button type="submit">
            Search
        </button>

    </form>

</body>

</html>