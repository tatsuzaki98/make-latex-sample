program main
  integer i
  integer, parameter :: partition = 200
  real(8) x, y
  real(8), parameter :: x_min = -1.0
  real(8), parameter :: x_max = 1.0

  do i=0, partition
    x = x_min + (x_max - x_min) * real(i) / real(partition)
    y = x**2
    write(*, *) x, y
  end do
end program

