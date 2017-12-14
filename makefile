#Makefile

.PHONY: all

all: example_mod.f90 example_smod.f90 main.f90
	gfortran -c example_mod.f90
	gfortran -c example_smod.f90
	gfortran main.f90 example_mod.o example_smod.o -o main


clean:
	rm -rf main *.mod *.smod *.o
