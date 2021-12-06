Create database Sensor;
use Sensor;

create table medidas(
idMedidas int primary key auto_increment,
umidade double,
temperatura_lm35 double);

select * from medidas;

truncate table medidas;
