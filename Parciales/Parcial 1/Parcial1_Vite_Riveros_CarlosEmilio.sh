
# Examen Parcial 1 .
# Introducción a las herramientas de cómputo científico. 
# Vite Riveros Carlos Emilio

mkdir -p ./respaldo_sistema/configuracion/X11/gnome ./respaldo_sistema/programas ./respaldo_sistema/reinstalacion/usuarios/python/scripts; # Número 1
cd ./respaldo_sistema/reinstalacion && touch guia notas secuencia.data paquetes.pkg imagen.iso; # Número 2
cd ../programas && cp -r /bin .; # Número 3
cd ../configuracion/X11/ && cp -r /etc/X11 .; # Número 3
cd ../..;
echo "Hola" > hola.txt; # Número 5 a)
echo "de nuevo" > temp.txt && cat hola.txt temp.txt > hola2.txt && rm temp.txt; # Número 5 b)
head -37 ~/.bashrc > PEGADO.txt && tail -23 ~/.bash_history >> PEGADO.txt; # Número 6
grep -ilrc "daemon" /etc > linux.etc; # Número 7 a)
find /etc -name "*.conf" -exec grep -li "linux" {} \; ;>> linux.etc; # Número 7 b). Faltó el ";" en el examen.
grep "est3" /etc/passwd > MiUsuario.usr; # Número 7 c)
find /usr -perm 777 > todos.prm; # Número 8 a) 
find /var -name "*.tar" > all.compress; # Número 8 b)
ps -U est3 -u est3 > MisProcesos.prs; # Número 9
chmod 755 hola.txt; # Número 10 a)
chmod 444 PEGADO.txt; # Número 10 b)
chmod 711 linux.etc; # Número 10 c)
chmod 740 MisProcesos.prs; # Número 10 d)
cd .. && tar -cvf Parcial_ViteRiverosCarlosEmilio.tar ./respaldo_sistema/; # Compresión
gzip -9 Parcial_ViteRiverosCarlosEmilio.tar;
