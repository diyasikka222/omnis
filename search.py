def search_files(files, query):

    results = []

    query = query.lower()

    for file in files:

        if query in file.name.lower():
            results.append(file)

    return results