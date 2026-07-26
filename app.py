from pathlib import Path

from bottle import route, run, template, TEMPLATE_PATH, static_file, request

from search import search_files
from indexer import build_index, get_index
from opener import open_file

TEMPLATE_PATH.clear()
TEMPLATE_PATH.append("/Users/diyasikka/DEVELOPMENT/local-file-search/templates")

@route("/")
def home():
    return template("index")

@route("/search")
def search():
    query = request.query.query
    files = get_index()
    results = search_files(files, query)
    return template(
        "search",
        query=query,
        results=results
    )

@route("/open")
def open_selected():
    path = request.query.path
    open_file(path)
    return """
    <script>
        history.back()
    </script>
    """

@route("/static/<filename:path>")
def serve_static(filename):
    return static_file(
        filename,
        root = "/Users/diyasikka/DEVELOPMENT/local-file-search/static"
    )

build_index()

run(
    host="localhost",
    port=8080,
    debug=True,
)