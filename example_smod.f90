submodule (example_mod) example_smod

    ! This submodule implements the interface `g` definted in the
    ! example_mod module

contains
    module function g(x) result(y)
        integer :: x,y
        y = x * 2
    end function g
end submodule example_smod
