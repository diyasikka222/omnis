from pathlib import Path


def scan_folder(folder):

    files = []

    folder = Path(folder)

    for item in folder.rglob("*"):

        if item.is_file():
            files.append(item)

    return files
