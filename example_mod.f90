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
