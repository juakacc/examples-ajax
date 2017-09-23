CREATE SCHEMA IF NOT EXISTS testeAjax DEFAULT CHARACTER SET utf8;

use testeAjax;

CREATE TABLE IF NOT EXISTS cidade (
  estado CHAR(2) NOT NULL,
  cidade VARCHAR(50) NOT NULL,
  PRIMARY KEY (estado, cidade));

insert into cidade values ('PB','João Pessoa'), ('PB','Mamanguape'), ('PB','Assunção')
, ('PB','Taperoá'), ('PB','Solânea'), ('PB','Itatuba'), ('PB','Areia');

insert into cidade values ('PE','Recife'), ('PE','Jaboatão dos Guararapes'), ('PE','Olinda'), 
('PE','Caruaru'), ('PE','Petrolina'), ('PE','Paulista'), ('PE','Camaragibe'), ('PE','Garanhus');

insert into cidade values ('RN', 'Natal'), ('RN', 'Mossoró'), ('RN', 'Parnamirim'), 
('RN', 'São Gonçalo do Amarante'), ('RN', 'Macaíba');

insert into cidade values ('AC','Tio Branco'), ('AC', 'Cruzeiro do Sul'), 
('AC', 'Sena Madureira'), ('AC', 'Feijó'), ('AC', 'Brasileia');

insert into cidade values ('AL','Maceió'), ('AL', 'Arapiraca'), ('AL', 'Rio Largo'), 
('AL', 'Penedo'), ('AL', 'Coruripe');

insert into cidade values ('SE','Aracaju'), ('SE', 'Largato'), ('SE', 'Itabaiana'), 
('SE', 'Estância'), ('SE', 'Itabaianinha');

insert into cidade values ('BA','Salvador'), ('BA', 'Camaçari'), ('BA', 'Itabuna'), 
('BA', 'Juazeiro'), ('BA', 'Ilhéus');

insert into cidade values ('CE','Fortaleza'), ('CE', 'Caucaia'), ('CE', 'Juá do Norte'), 
('CE', 'Sobral'), ('CE', 'Crato');

insert into cidade values ('MA','São Luis'), ('MA', 'Imperatriz'), ('MA', 'Timon'), 
('MA', 'Codó'), ('MA', 'Caxias');

insert into cidade values ('PA','Belém'), ('PA', 'Ananindeua'), ('PA', 'Santarém'), 
('PA', 'Ḿarabá'), ('PA', 'Parauapebas');

insert into cidade values ('AM','Manaus'), ('AM', 'Parintins'), ('AM', 'Itacoatiara'), 
('AM', 'Coari'), ('AM', 'Manacapuru');

insert into cidade values ('RO','Porto Velho'), ('RO', 'Ji-Paraná'), ('RO', 'Ariquemes'), 
('RO', 'Cacoal'), ('RO', 'Vilhena');

insert into cidade values ('RR','Boa Vista'), ('RR', 'Rorainópolis'), ('RR', 'Caracaraí'), 
('RR', 'Cantá'), ('RR', 'Mucajaí');

insert into cidade values ('MT','Cuiabá'), ('MT', 'Várzea Grande'), ('MT', 'Rondonópolis'), 
('MT', 'Sinop'), ('MT', 'Tangará...');

insert into cidade values ('MS','Campo Grande'), ('MS', 'Dourados'), ('MS', '3 Lagoas'), 
('MS', 'Corumbá'), ('MS', 'Ponta Porã');

insert into cidade values ('TO','Palmas'), ('TO', 'Araguaína'), ('TO', 'Gurupi'), 
('TO', 'Araguatins'), ('TO', 'Guaraí');

insert into cidade values ('GO','Goiânia'), ('GO', 'Anápolis'), ('GO', 'Rio Verde'), 
('GO', 'Luziânia'), ('GO', 'Trindade');

insert into cidade values ('MG','B. Horizonte'), ('MG', 'Uberlândia'), ('MG', 'Contagem'), 
('MG', 'Juíz de Fora'), ('MG', 'Betim');

insert into cidade values ('ES','Vitória'), ('ES', 'Serra'), ('ES', 'Cariacica'), 
('ES', 'Vila Velha'), ('ES', 'Linhares');

insert into cidade values ('RJ','Rio de Janeiro'), ('RJ', 'S. Gonçalo'), ('RJ', 'Niterói'), 
('RJ', 'Nova Iguaçu'), ('RJ', 'Petrópolis');

insert into cidade values ('SP','São Paulo'), ('SP', 'Campinas'), ('SP', 'Guaralhus'), 
('SP', 'Osasco'), ('SP', 'Santo André');

insert into cidade values ('RS','Porto Alegre'), ('RS', 'Caxias do Sul'), ('RS', 'Pelotas'), 
('RS', 'Canoas'), ('RS', 'Santa Maria');

insert into cidade values ('SC','Florianópolis'), ('SC', 'Joinville'), ('SC', 'Blumenau'), 
('SC', 'Chapecó'), ('SC', 'Criciúma');

insert into cidade values ('PR','Curitiba'), ('PR', 'Londrina'), ('PR', 'Maringá'), 
('PR', 'Colombo'), ('PR', 'Cascavel');

insert into cidade values ('PI','Teresina'), ('PI', 'Parnaíba'), ('PI', 'Picos'), 
('PI', 'Piripiri'), ('PI', 'Barras');

insert into cidade values ('AP','Macapá'), ('AP', 'Santana'), ('AP', 'Oiapoque'), 
('AP', 'Calçoene'), ('AP', 'Cutias');

insert into cidade values ('DF','Brasília');


