module example_mod

interface
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
