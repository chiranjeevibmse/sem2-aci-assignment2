isParameter(Param) :-
    write('Sensor a5 reading false (true/false)? '),
    read(A5),
    (A5 = true ->
        write('Sensor a8 reading (true/false)? '),
        read(A8),
        (A8 = false ->
            write('Sensor a9 reading (true/false)? '),
            read(A9),
            (A9 = true -> Param = c1;
            write('Sensor a2 reading(true/false)? '),
            read(A2),
            (A2 = true ->
                write('Sensor a0 reading(true/false)? '),
                read(A0),
                (A0 = true -> Param = c1;
                   write('Sensor a4 reading (true/false)?'),
                   read(A4),
                  (A4 = true -> Param = c0; Param = c1)
                ;
                Param = c1)
            ;
            Param = c0)
            )
        ;
        write('Sensor a1 reading(true/false)? '),
        read(A1),
        (A1 = false ->
            write('Sensor a2 reading(true/false)? '),
            read(A2),
            (A2 = true ->
                write('Sensor a4 Reading(true/false)? '),
                read(A4),
                (A4 = true -> Param = c0; Param = c1)
            ;
            write('Sensor a0 reading(true/false)? '),
            read(A0),
            (A0 = true -> Param = c0; Param = c1);
            Param = c1)
        ;
        Param = c0)
        )
    ;
    Param = c0).




