# Examen Práctica Unidad II - PETI

**Alumno:** Juan Jose Perez Vizcarra  
**Fecha:**  28 de mayo de 2025 

**Repositorio en GitHub:**  
https://github.com/juanjosee15/-PE_II_EXAMEN_PRACTICO.git

---

## Descripción del Proyecto

Este repositorio corresponde al examen práctico de la Unidad II del curso Planeación Estratégica de Tecnologías de Información (PETI).  
La mejora realizada consiste en la **implementación de la vista  incluyendo su modelo y su controlador de Cadena de Valor** dentro del sistema PETI, que permite visualizar, evaluar y registrar fortalezas y debilidades en las actividades clave de la organización.

---

## Mejora Realizada: Vista, controlador y modelo Cadena de Valor

### Características:
- Se creó una vista `Index.cshtml` que muestra las 25 preguntas del diagnóstico de la Cadena de Valor.
- Cada pregunta puede ser valorada seleccionando del  1 a 5.
- Se agregaron campos para registrar **fortalezas** y **debilidades**.
---
## Modelo
![image](https://github.com/user-attachments/assets/e93a2bdd-6619-456c-82b7-76de77265e31)

##Controlador
![image](https://github.com/user-attachments/assets/689b1840-9c95-4227-83d1-dc345581d1b6)



## Capturas de Pantalla
![image](https://github.com/user-attachments/assets/63ff18fd-5dd2-4d3e-a86e-c2d97c7ae279)
![image](https://github.com/user-attachments/assets/f4761104-455d-414b-af8d-8c445a555dd9)

### Ejemplo de Registro de Fortalezas y Debilidades
![image](https://github.com/user-attachments/assets/abfd3e81-7cd4-4d60-91b6-14a8c735016a)

---
##  Mejora 2

## 🚀 Solución Interactiva Adicional

Se desarrolló un **panel de análisis interactivo** que incluye:

### 1. Gráfico de Barras en Tiempo Real
- Visualiza todas las valoraciones ingresadas.
- Identifica patrones (ej. preguntas con calificaciones bajas).

### 2. Métricas Claras con Animaciones
- Promedio actual y potencial de mejora.
- Barra de progreso animada (comparación visual con el máximo de 5 puntos).

### 3. Recomendaciones Accionables
- Resalta preguntas con valoración ≤ 2.
- Sugiere priorizar esas áreas para maximizar el impacto.
---

## 📈 Beneficios Clave
- Gráficos interactivos + explicación visual detallada 
- Actualización en tiempo real                         
- Señala focos críticos con recomendaciones claras     
---

## 💻 Cómo Probarlo

1. Ejecuta el sistema.
2. Ingresa valoraciones en las preguntas de la Cadena de Valor.
3. Observa el gráfico y métricas actualizarse automáticamente.
4. Revisa las preguntas marcadas en rojo (valoración ≤ 2) para identificar áreas críticas.


## Captura de Pantalla
![image](https://github.com/user-attachments/assets/7a24c4a3-014f-4401-ad0f-49bf55d068b8)

![image](https://github.com/user-attachments/assets/10cc74f6-da38-4f09-a7f8-1f5c24eef571)

---
## Tecnologías Usadas

- ASP.NET MVC con C#
- SQL Server
- Entity Framework
- HTML, Bootstrap

---

## Cómo Ejecutar

1. Clona el repositorio:  
   `git clone https://github.com/juanjosee15/-PE_II_EXAMEN_PRACTICO.git`
2. Abre el proyecto en Visual Studio.
3. Configura la cadena de conexión a en la base de datos sql
4. Ejecuta el proyecto.
