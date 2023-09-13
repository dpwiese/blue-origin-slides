# Slides

To print: open your presentation with `print-pdf` included in the query string and print as PDF

The above is not working very well, nor with other approaches to generate a PDF from HTML.
**The current best option is to generate PDF using [decktape](https://github.com/astefanutti/decktape) via the `make` command below.**

```sh
make pdf
```

Currently `decktape version` returns `3.10.0`.

Previously generating a PDF using decktape wasn't even working correctly -- there was content in the generated PDF that were partially off the page, but the screenshot files decktape generated looked correct.
It might have been related to [decktape#151](https://github.com/astefanutti/decktape/issues/151).
So the previous solution was to take the decktape generated screenshots and combine them with the included Python script `img2pdf.py`.
The tooling to do this is still left in the form of `make pdf-screenshots` and `make pdf-from-img` for posterity's sake.
