<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="UTF-8">

    <meta name="viewport"
          content="width=device-width, initial-scale=1.0">

    <title>Omnis</title>

    <link rel="preconnect"
          href="https://fonts.googleapis.com">

    <link rel="preconnect"
          href="https://fonts.gstatic.com"
          crossorigin>

    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800&display=swap"
          rel="stylesheet">

    <link rel="stylesheet"
          href="/static/style.css">

</head>

<body class="landing-page">

<div class="hero">

    <h1 class="logo">

        Omnis

    </h1>

    <p class="subtitle">

        Locate files in seconds !

    </p>

    <form
        action="/search"
        class="search-form">

        <input
            type="text"
            name="query"
            placeholder="Search files..."
            autocomplete="off"
            autofocus
            required>

        <button type="submit">

            Search

        </button>

    </form>

</div>

</body>

</html>