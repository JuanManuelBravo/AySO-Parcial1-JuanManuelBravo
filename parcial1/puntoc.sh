sudo groupadd grupoprogramadores
sudo groupadd grupotester
sudo groupadd grupoanalistas
sudo groupadd grupodisenadores

sudo useradd -m -G grupoprogramadores programadores
sudo useradd -m -G grupotester tester
sudo useradd -m -G grupoanalistas analistas
sudo useradd -m -G grupodisenadores disenadores

sudo mkdir -p /Examenes_UTN{alumno_1,alumno_2,alumno_3,profesores}

sudo chown programadores:grupoprogramadores /Examenes_UTN/alumno_1
sudo chown tester:grupotester /Examenes_UTN/alumno_2
sudo chown analistas:grupoanalistas /Examenes_UTN/alumno_3
sudo chown disenadores:grupodisenadores /Examenes_UTN/profesores

sudo chmod 750 /Examenes_UTN/alumno_1
sudo chmod 700 /Examenes_UTN/alumno_2
sudo chmod 770 /Examenes_UTN/alumno_3
sudo chmod 755 /Examenes_UTN/profesores

sudo -u programadores bash -c "whoami > /Examenes_UTN/alumno_1/validar.txt"
sudo -u tester  bash -c "whoami > /Examenes_UTN/alumno_2/validar.txt"
sudo -u analistas bash -c "whoami > /Examenes_UTN/alumno_3/validar.txt"
sudo -u disenadores bash -c "whoami > /Examenes_UTN/profesores/validar.txt"

