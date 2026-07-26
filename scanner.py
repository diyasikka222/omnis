from pathlib import Path

SKIP_DIRS = {
    # Version Control
    ".git",
    ".github",

    # Python
    ".venv",
    "venv",
    "__pycache__",
    ".pytest_cache",
    ".mypy_cache",

    # JavaScript
    "node_modules",

    # Dart / Flutter
    ".pub-cache",
    ".dart_tool",

    # IDEs
    ".idea",
    ".vscode",

    # macOS
    "Library",
    ".Trash",

    # General
    ".cache",
}

def scan_folder(folder):

    files = []

    folder = Path(folder)

    def scan(current_folder):

        try:
            for item in current_folder.iterdir():

                # Skip unwanted directories
                if item.is_dir():

                    if item.name in SKIP_DIRS:
                        continue

                    scan(item)

                elif item.is_file():
                    files.append(item)

        except (PermissionError, FileNotFoundError):
            # Skip folders we cannot access
            pass

    scan(folder)

    return files