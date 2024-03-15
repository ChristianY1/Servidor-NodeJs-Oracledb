--Departamentos
INSERT INTO departamentos (departamento_id, nombre_departamento) VALUES (1, 'Ventas');
INSERT INTO departamentos (departamento_id, nombre_departamento) VALUES (2, 'Marketing');
INSERT INTO departamentos (departamento_id, nombre_departamento) VALUES (3, 'Recursos Humanos');

--Puestos
INSERT INTO puestos (puesto_id, nombre_puesto) VALUES (1, 'Gerente');
INSERT INTO puestos (puesto_id, nombre_puesto) VALUES (2, 'Asistente de ventas');
INSERT INTO puestos (puesto_id, nombre_puesto) VALUES (3, 'Especialista en marketing');


--Empleados
INSERT INTO empleados (empleado_id, nombre, apellido, fecha_nacimiento, salario, departamento_id) VALUES (1, 'Juan', 'González', TO_DATE('1990-05-15', 'YYYY-MM-DD'), 50000, 1);
INSERT INTO empleados (empleado_id, nombre, apellido, fecha_nacimiento, salario, departamento_id) VALUES (2, 'María', 'López', TO_DATE('1985-08-22', 'YYYY-MM-DD'), 45000, 2);
INSERT INTO empleados (empleado_id, nombre, apellido, fecha_nacimiento, salario, departamento_id) VALUES (3, 'Carlos', 'Martínez', TO_DATE('1993-02-10', 'YYYY-MM-DD'), 40000, 3);
INSERT INTO empleados (empleado_id, nombre, apellido, fecha_nacimiento, salario, departamento_id) VALUES (4, 'Luis', 'Hernández', TO_DATE('1992-09-18', 'YYYY-MM-DD'), 48000, 1);
INSERT INTO empleados (empleado_id, nombre, apellido, fecha_nacimiento, salario, departamento_id) VALUES (5, 'Ana', 'García', TO_DATE('1991-07-12', 'YYYY-MM-DD'), 42000, 2);
INSERT INTO empleados (empleado_id, nombre, apellido, fecha_nacimiento, salario, departamento_id) VALUES (6, 'Pedro', 'Díaz', TO_DATE('1994-03-25', 'YYYY-MM-DD'), 38000, 3);
INSERT INTO empleados (empleado_id, nombre, apellido, fecha_nacimiento, salario, departamento_id) VALUES (7, 'Elena', 'Martín', TO_DATE('1993-06-30', 'YYYY-MM-DD'), 45000, 1);
INSERT INTO empleados (empleado_id, nombre, apellido, fecha_nacimiento, salario, departamento_id) VALUES (8, 'Javier', 'López', TO_DATE('1990-12-05', 'YYYY-MM-DD'), 49000, 2);
INSERT INTO empleados (empleado_id, nombre, apellido, fecha_nacimiento, salario, departamento_id) VALUES (9, 'Marcela', 'Ramírez', TO_DATE('1995-02-17', 'YYYY-MM-DD'), 41000, 3);
INSERT INTO empleados (empleado_id, nombre, apellido, fecha_nacimiento, salario, departamento_id) VALUES (10, 'Diego', 'Pérez', TO_DATE('1989-04-20', 'YYYY-MM-DD'), 47000, 1);
INSERT INTO empleados (empleado_id, nombre, apellido, fecha_nacimiento, salario, departamento_id) VALUES (11, 'Lucía', 'Gómez', TO_DATE('1992-11-15', 'YYYY-MM-DD'), 43000, 2);
INSERT INTO empleados (empleado_id, nombre, apellido, fecha_nacimiento, salario, departamento_id) VALUES (12, 'Roberto', 'Sánchez', TO_DATE('1993-08-09', 'YYYY-MM-DD'), 40000, 3);
INSERT INTO empleados (empleado_id, nombre, apellido, fecha_nacimiento, salario, departamento_id) VALUES (13, 'Carolina', 'Fernández', TO_DATE('1994-05-22', 'YYYY-MM-DD'), 46000, 1);



--Empleados Puestos
INSERT INTO empleados_puestos (empleado_id, puesto_id, fecha_inicio, fecha_fin) VALUES (1, 1, TO_DATE('2020-01-01', 'YYYY-MM-DD'), NULL);
INSERT INTO empleados_puestos (empleado_id, puesto_id, fecha_inicio, fecha_fin) VALUES (2, 2, TO_DATE('2019-06-15', 'YYYY-MM-DD'), NULL);
INSERT INTO empleados_puestos (empleado_id, puesto_id, fecha_inicio, fecha_fin) VALUES (3, 3, TO_DATE('2021-03-01', 'YYYY-MM-DD'), NULL);
INSERT INTO empleados_puestos (empleado_id, puesto_id, fecha_inicio, fecha_fin) VALUES (4, 1, TO_DATE('2020-05-10', 'YYYY-MM-DD'), NULL);
INSERT INTO empleados_puestos (empleado_id, puesto_id, fecha_inicio, fecha_fin) VALUES (5, 2, TO_DATE('2021-01-15', 'YYYY-MM-DD'), NULL);
INSERT INTO empleados_puestos (empleado_id, puesto_id, fecha_inicio, fecha_fin) VALUES (6, 3, TO_DATE('2019-11-20', 'YYYY-MM-DD'), NULL);
INSERT INTO empleados_puestos (empleado_id, puesto_id, fecha_inicio, fecha_fin) VALUES (7, 1, TO_DATE('2018-07-03', 'YYYY-MM-DD'), NULL);
INSERT INTO empleados_puestos (empleado_id, puesto_id, fecha_inicio, fecha_fin) VALUES (8, 2, TO_DATE('2022-02-28', 'YYYY-MM-DD'), NULL);
INSERT INTO empleados_puestos (empleado_id, puesto_id, fecha_inicio, fecha_fin) VALUES (9, 3, TO_DATE('2020-10-12', 'YYYY-MM-DD'), NULL);
INSERT INTO empleados_puestos (empleado_id, puesto_id, fecha_inicio, fecha_fin) VALUES (10, 1, TO_DATE('2017-09-08', 'YYYY-MM-DD'), NULL);
INSERT INTO empleados_puestos (empleado_id, puesto_id, fecha_inicio, fecha_fin) VALUES (11, 2, TO_DATE('2019-04-02', 'YYYY-MM-DD'), NULL);
INSERT INTO empleados_puestos (empleado_id, puesto_id, fecha_inicio, fecha_fin) VALUES (12, 3, TO_DATE('2018-08-18', 'YYYY-MM-DD'), NULL);
INSERT INTO empleados_puestos (empleado_id, puesto_id, fecha_inicio, fecha_fin) VALUES (13, 1, TO_DATE('2021-03-20', 'YYYY-MM-DD'), NULL);


--Historial Laboral
INSERT INTO historial_laboral (historial_id, empleado_id, puesto_id, fecha_inicio, fecha_fin) VALUES (1, 1, 2, TO_DATE('2015-01-01', 'YYYY-MM-DD'), TO_DATE('2019-12-31', 'YYYY-MM-DD'));
INSERT INTO historial_laboral (historial_id, empleado_id, puesto_id, fecha_inicio, fecha_fin) VALUES (2, 2, 3, TO_DATE('2010-03-15', 'YYYY-MM-DD'), TO_DATE('2019-06-14', 'YYYY-MM-DD'));
INSERT INTO historial_laboral (historial_id, empleado_id, puesto_id, fecha_inicio, fecha_fin) VALUES (3, 3, 1, TO_DATE('2018-05-01', 'YYYY-MM-DD'), TO_DATE('2021-02-28', 'YYYY-MM-DD'));
INSERT INTO historial_laboral (historial_id, empleado_id, puesto_id, fecha_inicio, fecha_fin) VALUES (4, 4, 1, TO_DATE('2016-06-25', 'YYYY-MM-DD'), TO_DATE('2019-11-30', 'YYYY-MM-DD'));
INSERT INTO historial_laboral (historial_id, empleado_id, puesto_id, fecha_inicio, fecha_fin) VALUES (5, 5, 2, TO_DATE('2018-03-12', 'YYYY-MM-DD'), TO_DATE('2022-01-31', 'YYYY-MM-DD'));
INSERT INTO historial_laboral (historial_id, empleado_id, puesto_id, fecha_inicio, fecha_fin) VALUES (6, 6, 3, TO_DATE('2017-12-05', 'YYYY-MM-DD'), TO_DATE('2021-06-30', 'YYYY-MM-DD'));
INSERT INTO historial_laboral (historial_id, empleado_id, puesto_id, fecha_inicio, fecha_fin) VALUES (7, 7, 1, TO_DATE('2015-09-20', 'YYYY-MM-DD'), TO_DATE('2020-05-31', 'YYYY-MM-DD'));
INSERT INTO historial_laboral (historial_id, empleado_id, puesto_id, fecha_inicio, fecha_fin) VALUES (8, 8, 2, TO_DATE('2019-08-10', 'YYYY-MM-DD'), TO_DATE('2023-04-15', 'YYYY-MM-DD'));
INSERT INTO historial_laboral (historial_id, empleado_id, puesto_id, fecha_inicio, fecha_fin) VALUES (9, 9, 3, TO_DATE('2016-11-30', 'YYYY-MM-DD'), TO_DATE('2020-09-15', 'YYYY-MM-DD'));
INSERT INTO historial_laboral (historial_id, empleado_id, puesto_id, fecha_inicio, fecha_fin) VALUES (10, 10, 1, TO_DATE('2014-10-15', 'YYYY-MM-DD'), TO_DATE('2019-12-31', 'YYYY-MM-DD'));
INSERT INTO historial_laboral (historial_id, empleado_id, puesto_id, fecha_inicio, fecha_fin) VALUES (11, 11, 2, TO_DATE('2017-05-01', 'YYYY-MM-DD'), TO_DATE('2021-10-31', 'YYYY-MM-DD'));
INSERT INTO historial_laboral (historial_id, empleado_id, puesto_id, fecha_inicio, fecha_fin) VALUES (12, 12, 3, TO_DATE('2015-04-18', 'YYYY-MM-DD'), TO_DATE('2020-08-31', 'YYYY-MM-DD'));
INSERT INTO historial_laboral (historial_id, empleado_id, puesto_id, fecha_inicio, fecha_fin) VALUES (13, 13, 1, TO_DATE('2019-01-10', 'YYYY-MM-DD'), TO_DATE('2023-06-30', 'YYYY-MM-DD'));

