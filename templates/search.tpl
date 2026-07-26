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

<body class="results-page">

<div class="results-container">

    <header class="results-header">

        <a href="/" class="brand">

            Omnis

        </a>

        <form
            action="/search"
            class="results-search">

            <input
                type="text"
                name="query"
                value="{{query}}"
                placeholder="Search files..."
                autofocus>

            <button>

                Search

            </button>

        </form>

    </header>

    <div class="results-info">

        <h2>

            {{len(results)}} Results

        </h2>

        <p>

            Showing results for
            <strong>"{{query}}"</strong>

        </p>

    </div>

    % if results:

        % for file in results:

        <div class="result-card">

            <div>

                <h3>

                    {{file.name}}

                </h3>

                <p class="file-path">

                    {{file}}

                </p>

            </div>

            <a
                class="open-button"
                href="/open?path={{file}}">

                Open

            </a>

        </div>

        % end

    % else:

        <div class="empty">

            No files found.

        </div>

    % end

</div>

</body>

</html>