/* Regina Rexx example. Terribly slow */
c = 0

do n1=1 to 55 by 1
	do n2=n1 to 56 by 1
		do n3=n2 to 57 by 1
			do n4=n3 to 58 by 1
				do n5=n4 to 59 by 1
					do n6=n5 to 60 by 1
                        saida = n1 n2 n3 n4 n5 n6
                        call lineout 'jogos_megasena-rexx.txt',saida
                        c = c + 1
                    end
                end
            end
        end
    end
end

say "Numero de jogos gerados: " c
