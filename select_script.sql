SELECT * FROM "Patient";
SELECT * FROM "Hospital";
SELECT * FROM "Doctor";
SELECT * FROM "Appointment";
SELECT * FROM "DoctorAppointment";
SELECT * FROM "Department";
SELECT * FROM "Room";



SELECT 
 	d."FirstName" AS "FirstName",
	d."LastName" AS "LastName",
    dep."Name" AS "Department",
	h."Name" AS "Hospital"
FROM 
    "Doctor" d
INNER JOIN 
    "Department" dep
ON 
    d."DepartmentId" = dep."Id"
INNER JOIN
	"Hospital" h
ON
	dep."HospitalId" = h."Id";





SELECT 
 	p."FirstName" AS "PatientFirstName",
	p."LastName" AS "PatientLastName",
	a."DateTime" AS "AppointmentTime",
	d."FirstName" AS "DoctorFirstName",
	d."LastName" AS "DoctorLastName",
	dep."Name" AS "Department"
FROM 
    "Patient" p
INNER JOIN 
    "Appointment" a 
ON 
    a."PatientPIN" = p."PIN"
INNER JOIN
	"DoctorAppointment" da
ON
	a."Id" = da."AppointmentId"
INNER JOIN 
	"Doctor" d
ON
	da."DoctorPIN" = d."PIN"
INNER JOIN
	"Department" dep
ON
	dep."Id" = d."DepartmentId";