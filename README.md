# Omnis

A lightweight local file search application built with **Python** and **Bottle**.

Omnis scans your local files, builds an in-memory index, and lets you search for files by **filename** through a clean web interface.

> **This project was built for learning and practice purposes** to understand filesystem traversal, indexing, search algorithms, and backend web development using Python.

---

## Features

- Search local files by filename
- Case-insensitive search
- Open files directly from search results
- Recursive filesystem scanning
- In-memory indexing for faster searches
- Automatically skips common cache and system directories
- Clean, responsive dark-themed interface

---

## Tech Stack

- Python
- Bottle
- HTML
- CSS
- pathlib
- Git

---

# Project Structure

```text
omnis/
│
├── app.py                 # Entry point
├── scanner.py             # Recursively scans directories
├── search.py              # Search logic
├── indexer.py             # Builds and stores file index
├── opener.py              # Opens files from results
│
├── templates/
│   ├── index.tpl
│   └── search.tpl
│
├── static/
│   └── style.css
│
├── requirements.txt
├── README.md
└── .gitignore
```

---

# How It Works

1. The application scans the user's home directory.
2. Common system and cache folders are skipped.
3. Every discovered file is stored in memory.
4. Search queries are matched against filenames.
5. Matching files are displayed in the browser.
6. Clicking **Open** launches the selected file using the operating system's default application.

---

# Getting Started

## Prerequisites

- Python 3.10 or newer

---

## Clone the Repository

```bash
git clone https://github.com/diyasikka222/omnis.git

cd omnis
```

---

## Create a Virtual Environment

### macOS / Linux

```bash
python3 -m venv .venv

source .venv/bin/activate
```

### Windows

```bash
python -m venv .venv

.venv\Scripts\activate
```

---

## Install Dependencies

```bash
pip install -r requirements.txt
```

---

## Run the Application

```bash
python app.py
```

Open your browser and visit:

```
http://localhost:8080
```

The application will build the file index during startup.

Depending on the number of files on your system, this may take a few seconds.

---

# Example

Search for:

```
resume
```

Results:

```
resume.pdf
resume_old.pdf
resume.docx
```

Click **Open** to launch the file using your operating system's default application.
