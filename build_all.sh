#!/usr/bin/env bash

# Check if the environment is Windows
if [[ "$OSTYPE" == "msys" ]] || [[ "$OSTYPE" == "win32" ]]; then
    echo "Windows environment detected. Executing PowerShell script."
    powershell -ExecutionPolicy Bypass -File ".\build_all.ps1"
    exit $?
fi

# For Unix-like environments (Linux and Mac)
for lang in po/*.po; do
    lang_code=$(basename $lang .po)
    MDBOOK_BOOK__LANGUAGE=$lang_code mdbook build -d book/$lang_code
done

echo "All language versions have been built successfully."