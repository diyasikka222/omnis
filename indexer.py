from pathlib import Path

from scanner import scan_folder

file_index = []

def build_index():
    global file_index
    home = Path.home()
    file_index = scan_folder(home)
    print(f"Indexed {len(file_index)} files.")

def get_index():
    return file_index