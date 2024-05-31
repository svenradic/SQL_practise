CREATE TABLE "Hospital"(
	"Id" SERIAL PRIMARY KEY,
	"Name" VARCHAR(50) NOT NULL,
	"Address" VARCHAR(50) NOT NULL,
	"PhoneNumber" VARCHAR(50) NOT NULL,
	"ZipCode" INT NOT NULL
)

CREATE TABLE "Department"(
	"Id" SERIAL PRIMARY KEY,
	"Name" VARCHAR(50) NOT NULL,
	"HospitalId" INT NOT NULL,
	CONSTRAINT "FK_Department_Hospital_HospitalId"
		FOREIGN KEY ("HospitalId")
		REFERENCES "Hospital"("Id")
		ON DELETE CASCADE
)

CREATE TABLE "Doctor"(
	"PIN" CHAR(11) PRIMARY KEY,
	"FirstName" VARCHAR(50) NOT NULL,
	"LastName" VARCHAR(50) NOT NULL,
	"PhoneNumber" VARCHAR(12) NOT NULL,
	"DepartmentId" INT NOT NULL,
	CONSTRAINT "FK_Doctor_Department_DepartmentId"
		FOREIGN KEY ("DepartmentId")
		REFERENCES "Department"("Id")
		ON DELETE CASCADE
)

CREATE TABLE "Patient"(
	"PIN" CHAR(11) PRIMARY KEY,
	"FirstName" VARCHAR(50) NOT NULL,
	"LastName" VARCHAR(50) NOT NULL,
	"Address" VARCHAR(50) NOT NULL,
	"PhoneNumber" VARCHAR(12) NOT NULL,
	"RoomId" INT NOT NULL,
	CONSTRAINT "FK_Patient_Room_RoomId"
		FOREIGN KEY ("RoomId")
		REFERENCES "Room"("Id")
		ON DELETE CASCADE
)

CREATE TABLE "Appointment"(
	"Id" SERIAL PRIMARY KEY,
	"Diagnose" 	VARCHAR(100),
	"DateTime"	TIMESTAMP NOT NULL,
	"PatientPIN" CHAR(11) NOT NULL,
	CONSTRAINT "FK_Appointment_Patient_PatientPIN"
		FOREIGN KEY("PatientPIN")
		REFERENCES "Patient"("PIN")
		ON DELETE CASCADE
)

CREATE TABLE "DoctorAppointment"(
	"Id" SERIAL PRIMARY KEY,
	"DoctorPIN" CHAR(11) NOT NULL,
	CONSTRAINT "FK_DoctorAppointment_Doctor_DoctorPIN"
		FOREIGN KEY ("DoctorPIN")
		REFERENCES "Doctor"("PIN")
		ON DELETE CASCADE,
	"AppointmentId" INT NOT NULL,
	CONSTRAINT "FK_DoctorAppointment_Appointment_AppointmentId"
		FOREIGN KEY ("AppointmentId")
		REFERENCES "Appointment"("Id")
		ON DELETE CASCADE
)

CREATE TABLE "Room"(
	"Id" SERIAL PRIMARY KEY,
	"Number" INT NOT NULL
)


