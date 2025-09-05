        program uva_productor
        implicit none
             real :: precio_inicial, precio_final, kilos, total
         character(len=1) :: tipo
                     integer :: tamano

      print *, "Ingrese el precio inicial por kilo: "
          read *, precio_inicial
         print *, "Ingrese el tipo de uva (A o B): "
          read *, tipo
         print *, "Ingrese el tamaño de la uva (1 o 2): "
           read *, tamano
         print *, "Ingrese los kilos del embarque: "
          read *, kilos

      select case (tipo)
             case ('A','a')
                  if (tamano == 1) then
            precio_final = precio_inicial + 0.20
                         else if (tamano == 2) then
            precio_final = precio_inicial + 0.30
                          else
            print *, "Tamaño inválido"
            stop
        end if
        case ('B','b')
             if (tamano == 1) then
                precio_final = precio_inicial - 0.30
                else if (tamano == 2) then
                     precio_final = precio_inicial - 0.50
                else
            print *, "Tamaño inválido"
            stop
        end if
        case default
             print *, "Tipo inválido"
        stop
        end select

      total = precio_final * kilos

      print *, "El precio final por kilo es: ", precio_final
      print *, "El productor recibira: ", total
      pause

      end program uva_productor
