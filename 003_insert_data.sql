INSERT INTO employees (nombre, apellido, area, supervisor, fecha_ingreso)
VALUES
('Joel', 'Gonzalez', 'Sistemas', 'Marcos Lopez', '2022-03-10'),
('Maria', 'Cabrera', 'RRHH', 'Ana Duarte', '2020-05-02'),
('Pedro', 'Martinez', 'Marketing', 'Lucia Torres', '2021-11-15');

INSERT INTO permisos (employee_id, tipo, fecha_inicio, fecha_fin, dias, estado)
VALUES
(1, 'vacacion', '2024-01-10', '2024-01-15', 5, 'aprobado'),
(2, 'permiso', '2024-02-03', '2024-02-03', 1, 'pendiente'),
(3, 'vacacion', '2023-12-01', '2023-12-05', 4, 'rechazado');
