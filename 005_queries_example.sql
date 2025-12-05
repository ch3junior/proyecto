-- 1. Ver historial de permisos
SELECT 
    p.permiso_id,
    e.nombre,
    e.apellido,
    p.tipo,
    p.fecha_inicio,
    p.fecha_fin,
    p.dias,
    p.estado
FROM permisos p
INNER JOIN employees e ON p.employee_id = e.employee_id
ORDER BY p.creado_el DESC;

-- 2. Ver días de vacaciones restantes
SELECT 
    nombre,
    apellido,
    dias_vacaciones_totales - dias_vacaciones_usados AS dias_restantes
FROM employees;

-- 3. Permisos pendientes por aprobar
SELECT *
FROM permisos
WHERE estado = 'pendiente';
