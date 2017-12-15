# Minimum working example of Fortran submodules

This repository contains a MWE of Fortran submodules as an example for
[universal-ctags/ctags#1616](https://github.com/universal-ctags/ctags/issues/1616).
The Fortran source files contain a main program file, a module file, and
submodule file.

---

Repository contents:

Main program file, main.f90
```fortran
program main
    use :: example_mod, only : f, f_interface, g

    ! The main program calls each function/interface with identical
    ! input

    print*, f(2)
    print*, f_interface(2)
    print*, g(2)

end program main
```

Module file, example_mod.f90
```fortran
module example_mod

    ! This module contains two interfaces:
    !   1. f_interface, which is an interface to the local f function
    !   2. g, which is implemented in the example_smod submodule

    interface f_interface
        ! The function `f` is defined below, within the `contains` statement
        module function f(x) result(y)
            integer :: x, y
        end function f
    end interface f_interface

    interface
        ! The function `g` is implemented in example_smod.f90
        module function g(x) result(y)
            integer :: x,y
        end function g
    end interface

contains
    function f(x) result(y)
        integer :: x, y

        y = x * 2
    end function f

end module example_mod
```

Submodule file, example_smod.f90
```fortran
submodule (example_mod) example_smod

    ! This submodule implements the interface `g` definted in the
    ! example_mod module

contains
    module function g(x) result(y)
        integer :: x,y
        y = x * 2
    end function g
end submodule example_smod
```
