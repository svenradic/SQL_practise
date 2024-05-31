INSERT INTO "Hospital" ("Name", "Address", "PhoneNumber", "ZipCode")
VALUES 
	('KBC Osijek', 'Ul. Josipa Huttlera 4', '0957293701', 31000 ),
	('KBC Zagreb', 'Ulica Mije Kišpatića 12', '012388888', 10000 );

INSERT INTO "Department" ("Name", "HospitalId")
VALUES 
	( 'Trauma', 1 ),
	( 'Pedijatrija', 1),
	( 'Kirurgija', 1 ),
	( 'Ortopedija', 2 ),
	( 'Radiologija', 2 ),
	( 'Patologija', 2 );

INSERT INTO "Doctor" ("PIN", "FirstName", "LastName", "PhoneNumber", "DepartmentId")
VALUES 
	( '10384757378', 'Filip', 'Ovničević', '0957293716', 3 ),
	( '52314357078', 'Jakov', 'Kovačević', '0916372591', 2 ),
	( '72645391736', 'Paro', 'Perić', '0916372591', 3 ),
	( '17235396481', 'Matijas', 'Jurić', '0916372591', 2 ),
	( '73516294728', 'Iva', 'Jakić', '0916372591', 1 );

INSERT INTO "Doctor" ("PIN", "FirstName", "LastName", "PhoneNumber", "DepartmentId")
VALUES 
	('12369874589', 'Marko', 'Markić', '0916372591', 5);

INSERT INTO "Patient" ("PIN", "FirstName", "LastName", "Address", "PhoneNumber", "RoomId")
VALUES 
	( '12345567892', 'Sven', 'Radić', 'Vukovarska cesta 68, Osijek', '0957293716', 1 ),
	( '52314357078', 'Vedran', 'Marković', 'Cvjetkova 20, Osijek', '0916372591', 3 ),
	( '45678912345', 'Petar', 'Knežević', 'Buzetska ulica 9, Osijek', '0916372591', 1 ),
	( '85236974158', 'Ana', 'Jakić', 'Daruvarska 21, Osijek','0916372591', 1 ),
	( '8741236985', 'Filip', 'Lešković', 'Ribarska ulica 20, Osijek', '0916372591', 3 );

INSERT INTO "Appointment" ("Diagnose", "DateTime", "PatientPIN")
VALUES 
	( 'Slomio ruku', '2024-06-04 09:00:00', '12345567892' ),
	(  '', '2024-06-07 09:00:00', '52314357078' ),
	(  '','2024-06-07 10:00:00', '45678912345'),
	( 'Pukao joj nokat', '2024-06-07 11:00:00', '85236974158'),
	( '', '2024-06-08 11:00:00', '8741236985');

INSERT INTO "DoctorAppointment" ( "DoctorPIN", "AppointmentId")
VALUES 
	( '10384757378', 1 ),
	( '52314357078', 1 ),
	( '72645391736', 2 ),
	( '17235396481', 5),
	( '73516294728', 4);


INSERT INTO "Room" ("Number")
VALUES 
	( 10 ),
	( 11 ),
	( 12 ),
	( 13 ),
	( 14 );
	
	