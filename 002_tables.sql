-- ================================
-- TABLA: employees
-- ================================
CREATE TABLE employees (
    employee_id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    apellido VARCHAR(100) NOT NULL,
    area VARCHAR(100),
    supervisor VARCHAR(100),
    fecha_ingreso DATE NOT NULL,
    dias_vacaciones_totales INT DEFAULT 12,
    dias_vacaciones_usados INT DEFAULT 0
);

-- ================================
-- TABLA: permisos
-- ================================
CREATE TABLE permisos (
    permiso_id INT AUTO_INCREMENT PRIMARY KEY,
    employee_id INT NOT NULL,
    tipo ENUM('vacacion','permiso') NOT NULL,
    fecha_inicio DATE NOT NULL,
    fecha_fin DATE NOT NULL,
    dias INT NOT NULL,
    estado ENUM('pendiente','aprobado','rechazado') DEFAULT 'pendiente',
    creado_el TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT fk_employee
        FOREIGN KEY (employee_id) REFERENCES employees(employee_id)
        ON DELETE CASCADE
);
