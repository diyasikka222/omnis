from bottle import route, run, template, TEMPLATE_PATH, static_file, request

TEMPLATE_PATH.clear()
TEMPLATE_PATH.append("/Users/diyasikka/DEVELOPMENT/local-file-search/templates")

@route("/")
def home():
    return template(
        "index",
        title="Local File Search",
        message="Welcome to my search engine!"
    )

@route("/search")
def search():
    query = request.query.query
    return f"You searched for: {query}"

@route("/static/<filename:path>")
def serve_static(filename):
    return static_file(
        filename,
        root = "/Users/diyasikka/DEVELOPMENT/local-file-search/static"
    )

run(host="localhost", port=8080, debug=True, reloader=True)