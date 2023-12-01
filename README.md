# Numerical simulation of generalised Maxwell-type viscous dampers with an efficient iterative algorithm

This repository contains the source code and example models of paper [10.1016/j.ymssp.2021.108795](https://doi.org/10.1016/j.ymssp.2021.108795).

To cite or reproduce figures in the paper, you can find the corresponding figure and copy the source code in your work.

The numerical examples used in the paper are developed in `suanPan`. To perform the numerical analysis, one can download and install [`suanPan`](https://github.com/TLCFEM/suanPan). Then run the model via, for example, the following command.

```sh
suanpan -f FRAME.supan
```

The Maxwell model is implemented as a damper element,
see [this](https://tlcfem.github.io/suanPan-manual/latest/Library/Element/Special/Damper02/) page.

The quadrant damper is implemented as a material model,
see [this](https://tlcfem.github.io/suanPan-manual/latest/Library/Material/Material1D/Viscosity/Viscosity02/) page.
