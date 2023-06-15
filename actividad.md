
[_TOC_]

# Modelado de la actividad

## Tablas

### Mayoristas

- Id mayorista.
- Nombre.
- Teléfono.
- Dirección.
- contacto.

### Viajes

- Id viaje.
- Nombre.
- Duración.
- Precio.
- Id mayorista.

### Clientes

- Id cliente.
- Nombre.
- Población.
- Teléfono.

### Ventas

- Id venta.
- Id cliente.
- Fecha de salida.
- Id viaje.
- Seguro de cancelación.

## Relaciones

| Relación | Tipo de relación |
| --- | --- |
| Mayoristas y viajes | 1 a muchos |
| Viajes y ventas | 1 a muchos |
| Clientes y ventas | 1 a muchos |
