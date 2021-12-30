# Notes to Prodcution Team:

1. There are two main TeX files.
   1. PICCOLLECTION.tex contains all pictures used in the paper.
   2. DAMPER.tex is the main file of the paper.
2. Please build PICCOLLECTION.tex first and then build DAMPER.tex.
3. The environment used is MiKTeX. Thus commands of some latest packages (mainly siunitx) are used. A TeX Live environment may not have the latest packages. Try search and remove all occurrences of `[print-unity-mantissa=false]`. There is no other known issue for the moment.
4. The PICCOLLECTION.tex requires a significant amount of memory to build. Please change the font setting accordingly for consistency with the main body.
