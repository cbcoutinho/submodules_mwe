submodule (example_mod) example_smod

contains
    module function g(x) result(y)
        integer :: x,y
        y = x * 2
    end function g
end submodule example_smod
