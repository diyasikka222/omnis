<!DOCTYPE html>

<html>

<head>

<title>Results</title>

<link rel="stylesheet" href="/static/style.css">

</head>

<body>

<h1>Local File Search</h1>

<h2>Search Results</h2>

<p>You searched for:</p>

<h3>{{query}}</h3>

% if results:

<ul>

% for file in results:

<li>

{{file.name}}

<a href="/open?path={{file}}">

Open

</a>

<br>

<small>{{file}}</small>

</li>

% end

</ul>

% else:

<p>No files found.</p>

% end

<br>

<a href="/">Back</a>

</body>

</html>