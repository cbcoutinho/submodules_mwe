program main
    use :: example_mod, only : f, f_interface, g

    ! The main program calls each function/interface with identical
    ! input

    print*, f(2)
    print*, f_interface(2)
    print*, g(2)

end program main
