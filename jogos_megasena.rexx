/* Regina Rexx example. Terribly slow */
OPTIONS CACHEEXT UNIX

c = 0
arq = 'jogos_megasena-rexx.txt'
rc = stream(arq,'C','CREATE')
say 'Status open: ' rc
do n1=1 to 55 by 1
	do n2=(n1+1) to 56 by 1
		do n3=(n2+1) to 57 by 1
			do n4=(n3+1) to 58 by 1
				do n5=(n4+1) to 59 by 1
					do n6=(n5+1) to 60 by 1
                        if (length(n1)=1) then n1=0||n1
                        if (length(n2)=1) then n2=0||n2
                        if (length(n3)=1) then n3=0||n3
                        if (length(n4)=1) then n4=0||n4
                        if (length(n5)=1) then n5=0||n5
                        if (length(n6)=1) then n6=0||n6
                        saida = n1 || n2 || n3 || n4 || n5 || n6 
                        rc = lineout(arq, saida) 
                        c = c + 1
                    end
                end
            end
        end
    end
end
rc = stream(arq,'C','CLOSE')
say 'Status close: ' rc
say "Numero de jogos gerados: " c
