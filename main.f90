program main
    use :: example_mod, only : f,f_interface,g

    print*, f(2)
    print*, f_interface(2)
    print*, g(2)

end program main
