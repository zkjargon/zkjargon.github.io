# ZK Jargon Decoder

The ZK Jargon Decoder is an informal glossary for common jargon found in the zero-knowledge literature.

An updated version of the book is available online at <https://zkjargon.github.io>.

You can also run the book locally by following the instructions below:

**Prerequisites**

```shell
cargo install mdbook mdbook-katex
```

**Run**

```shell
mdbook serve --open
```

## Contributing Translations

We welcome contributions for translations into different languages. Follow these steps to add a new translation:

1. Ensure you have the required tools installed:

   ```
   cargo install mdbook mdbook-i18n-helpers
   ```

2. Generate the POT file:

   ```
   MDBOOK_OUTPUT='{"xgettext": {}}' mdbook build -d po
   ```

3. Create a new PO file for your language (replace `xx` with your language code):

   ```
   msginit -i po/messages.pot -l xx -o po/xx.po
   ```

4. Translate the strings in the newly created `po/xx.po` file. You can use a PO editor like Poedit for this task.

5. To preview your translation, run:

   ```
   MDBOOK_BOOK__LANGUAGE=xx mdbook serve --open
   ```

6. Once you're satisfied with your translation, create a pull request with your changes.

### Translation Guidelines

For detailed translation guidelines, please refer to our [TRANSLATE.md](TRANSLATE.md) file. Some key points to remember:

- Use a PO editor (like Poedit) to edit `.po` files. Do not edit them by hand.
- Maintain consistency in terminology throughout the translation.
- Do not translate code blocks unless necessary.
- If you're unsure about a translation, leave it in English or add a translator's note.

## License

This work is shared under a Creative Commons Attribution-ShareAlike 4.0 International license. In brief, this allows others to use this work as long as they give attribution to this project, and share their own work under a similar license.

ZK Jargon Decoder © 2022 by ZK Jargon Decoder contributors is licensed under CC BY-SA 4.0. To view a copy of this license, visit https://creativecommons.org/licenses/by-sa/4.0/
