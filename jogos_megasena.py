#!/usr/bin/python
# -*- coding: iso-8859-15 -*-

# jogos_megasena.py: Gera todas as combinações possíveis de jogos de seis dezenas da Mega Sena
# Autor:             Márcio Conceição Goulart
# Data:              25/10/2015


f = open("jogos_megasena.txt", "wb")
n1 = 1
c = 0
for n1 in xrange(n1,56):
	n2 = n1 + 1
	for n2 in xrange(n2,57):
		n3 = n2 + 1
		for n3 in xrange(n3,58):
			n4 = n3 + 1
			for n4 in xrange(n4,59):
				n5 = n4 + 1
				for n5 in xrange(n5,60):
					n6 = n5 + 1
					for n6 in xrange (n6,61):
					        saida = "%02d%02d%02d%02d%02d%02d\n" % (n1, n2, n3, n4, n5, n6)
						f.write(saida)
						c += 1

f.close()
					
print "Total de registros gerados: %d" % (c)
