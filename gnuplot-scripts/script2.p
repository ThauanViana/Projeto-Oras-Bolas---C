#seta como unknown para editar os limites depois
set terminal unknown
#plota as colunas 2 a 5 no eixo X, utilizando a posicao da coluna 1 do tempo como Y
plot "./graficos-arquivos-txt/grafico_deslocamento_tempo.txt" using 2:1 title 'BolaX' with lines,\
'' using 3:1  title 'BolaY' with lines,\
'' using 4:1 title 'RoboX' with lines,\
'' using 5:1 title 'RoboY' with lines

#seta o tamanho da imagem
set terminal png size 1000,700

#legenda fora e superior direito
set key outside
set key right top

# nome do arquivo saida
set output './graficos/deslocamento.png'
# titulo do grafico
set title 'Grafico do deslocamento do robo e da bola em funcao do tempo até o interceptacao'

#nome do eixo x
set xlabel "Deslocamento (m)"
#nome do eixo y
set ylabel "Tempo (s)"


#seta os novos limites do grafico para o replot
set xrange [GPVAL_DATA_X_MIN-0.01:GPVAL_DATA_X_MAX+0.01]
set yrange [GPVAL_DATA_Y_MIN:GPVAL_DATA_Y_MAX+0.1]
replot 