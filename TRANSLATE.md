# Translation Guidelines for ZK Jargon Decoder

Thank you for contributing to the translation of ZK Jargon Decoder. Please follow these guidelines to ensure consistency and quality in translations.

## General Guidelines

1. **Use a PO Editor**: Always use a PO editor like [Poedit](https://poedit.net/) to edit `.po` files. Do not edit them by hand. This ensures correct encoding and formatting.

2. **Consistency**: Maintain consistent terminology throughout the translation. If you're unsure about a term, check how it's been translated in other parts of the document.

3. **Code Blocks**: Do not translate content within code blocks unless absolutely necessary.

4. **Uncertain Translations**: If you're unsure about how to translate something, it's better to leave it in English and add a translator's note explaining the difficulty.

5. **Cultural Context**: Be mindful of cultural differences and adapt examples or explanations when necessary, while maintaining the original meaning.

6. **Formatting**: After editing, run `dprint fmt po/xx.po` to ensure consistent formatting.

## Specific Instructions

1. **Technical Terms**: For technical terms specific to zero-knowledge proofs, consider whether to translate them or keep them in English. If you translate, provide the English term in parentheses on first use.

2. **Acronyms**: Generally, keep acronyms in their original form. Explain them if they're not common in your language.

3. **Links**: Do not translate URLs, but do translate link text if it's meaningful.

4. **Images**: If the project includes images with text, discuss with the maintainers about possibly creating translated versions.

## Building All Translations

To build all language versions of the book at once:

1. Ensure you have completed translations for one or more languages.
2. Run the `build_all.sh` script from the project root:

```sh
./build_all.sh
```

This script will automatically detect all available .po files and build a version of the book for each language. The output will be placed in book/xx/ directories, where xx is the language code.
Notes:

Make sure the script has executable permissions (chmod +x build_all.sh on Unix-like systems).
On Windows, this script will automatically detect the environment and execute the appropriate PowerShell script.

## Review Process

1. Self-review your translations before submitting.
2. Be open to feedback from reviewers and be prepared to make revisions.
3. If you disagree with a review comment, explain your reasoning clearly and politely.

## Getting Help

If you have any questions or need clarification on any aspect of the translation process, please don't hesitate to ask in the project's issues or discussions area.

Thank you for your contribution to making ZK Jargon Decoder accessible to a wider audience!
