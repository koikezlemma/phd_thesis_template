PhD thesis template for Sokendai students
===========================================

This is a PhD thesis template for pdflatex.
Use *pdflatex* to build latex files.
Don't use TeX+DVI (dvipdfm), or Microtype Package doesn't work.
If you write Japanese characters, use UTF-8 encoding.

This file specifies the following items:
* Font,
* Appearance of Text (Hyphenation and Letter-spacing),
* Page Layout,
* Theorem Environments,
* Header and Footer,
* Chapter Header,
* Table of Contents,
* Clickable PDF,
* Title Page and PDF-title.

The class file was made for Sokendai students.
If you are not a Sokendai student, rewrite the maketitle command in the class file.

We recommend to use *TeX Live* to manage LaTeX packages because this class file uses many packages.
Before loading the class file, update all packages to the latest version using Tex Live.


Managing todo items
---------------------

You can make todo notes using the following command:
```
\mytodo[inline]{This is a inline todo note}
\mytodo{This is a todo note at margin}.
```

In order to display the todo items, use *todo* option.
```
\documentclass[todo]{sokendai_thesis}
```

If you do not want to display the items,
use the following command.
```
\documentclass{sokendai_thesis}
```



