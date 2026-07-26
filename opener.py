import subprocess


def open_file(path):
    subprocess.run(["open", str(path)])