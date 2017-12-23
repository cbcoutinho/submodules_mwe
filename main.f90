program main
    use :: example_mod, only : f, f_interface, g, g_interface

    ! The main program calls each function/interface with identical
    ! input

    print*, f(2)
    print*, f_interface(2)
    print*, g(2)
    print*, g_interface(2)

end program main
