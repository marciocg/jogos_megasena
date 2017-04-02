#!/usr/bin/lua

--[[
 jogos_megasena.lua: Gera todas as combinações possíveis de jogos de seis dezenas da Mega Sena
 Autor:              Márcio Conceição Goulart
 Data:               25/10/2015
--]]


f = io.open("jogos_megasenalua.txt", "w")
io.output(f)
c = 0

for n1=1,55,1 do
    for n2=n1+1,56,1 do
        for n3=n2+1,57,1 do
            for n4=n3+1,58,1 do
                for n5=n4+1,59,1 do
                    for n6=n5+1,60,1 do
                        saida = string.format("%02d%02d%02d%02d%02d%02d\n", n1, n2, n3, n4, n5, n6)
                        io.write(saida)
                        c = c + 1
                    end
                end
            end
        end
    end
end

print(c)
io.close()
