-- Crear la base de datos
CREATE DATABASE proyecto_peti;
GO

USE proyecto_peti;
GO

-- Tabla de Usuarios
CREATE TABLE Users (
    Id INT PRIMARY KEY IDENTITY,
    Username NVARCHAR(50) NOT NULL,
    Password NVARCHAR(255) NOT NULL
);
GO

-- Plan Estrat�gico
CREATE TABLE PlanEstrategico (
    Id INT PRIMARY KEY IDENTITY,
    UserId INT NOT NULL,
    FechaCreacion DATETIME DEFAULT GETDATE(),
    FOREIGN KEY (UserId) REFERENCES Users(Id)
);
GO

-- Informaci�n de la Empresa
CREATE TABLE InformacionEmpresa (
    Id INT PRIMARY KEY IDENTITY,
    PlanId INT NOT NULL,
    NombreEmpresa NVARCHAR(255),
    Descripcion NVARCHAR(MAX),
    FOREIGN KEY (PlanId) REFERENCES PlanEstrategico(Id)
);
GO

-- Misi�n
CREATE TABLE Mision (
    Id INT PRIMARY KEY IDENTITY,
    PlanId INT NOT NULL,
    Contenido NVARCHAR(MAX),
    CreatedAt DATETIME DEFAULT GETDATE(),
    UpdatedAt DATETIME NULL,
    FOREIGN KEY (PlanId) REFERENCES PlanEstrategico(Id)
);
GO

-- Visi�n
CREATE TABLE Vision (
    Id INT PRIMARY KEY IDENTITY,
    PlanId INT NOT NULL,
    Contenido NVARCHAR(MAX),
    CreatedAt DATETIME DEFAULT GETDATE(),
    UpdatedAt DATETIME NULL,
    FOREIGN KEY (PlanId) REFERENCES PlanEstrategico(Id)
);
GO

-- Valores
CREATE TABLE Valores (
    Id INT PRIMARY KEY IDENTITY,
    PlanId INT NOT NULL,
    Valor NVARCHAR(200),
    CreatedAt DATETIME DEFAULT GETDATE(),
    UpdatedAt DATETIME NULL,
    FOREIGN KEY (PlanId) REFERENCES PlanEstrategico(Id)
);
GO

-- Objetivos Estrat�gicos
CREATE TABLE ObjetivosEstrategicos (
    Id INT PRIMARY KEY IDENTITY,
    PlanId INT NOT NULL,
    Objetivo NVARCHAR(MAX),
    CreatedAt DATETIME DEFAULT GETDATE(),
    UpdatedAt DATETIME NULL,
    FOREIGN KEY (PlanId) REFERENCES PlanEstrategico(Id)
);
GO

-- Objetivos Espec�ficos
CREATE TABLE ObjetivosEspecificos (
    Id INT PRIMARY KEY IDENTITY,
    ObjetivoId INT NOT NULL,
    Detalle NVARCHAR(MAX),
    CreatedAt DATETIME DEFAULT GETDATE(),
    UpdatedAt DATETIME NULL,
    FOREIGN KEY (ObjetivoId) REFERENCES ObjetivosEstrategicos(Id)
);
GO

-- An�lisis FODA
CREATE TABLE AnalisisFODA (
    Id INT PRIMARY KEY IDENTITY,
    PlanId INT NOT NULL,
    Fortalezas NVARCHAR(MAX),
    Debilidades NVARCHAR(MAX),
    Oportunidades NVARCHAR(MAX),
    Amenazas NVARCHAR(MAX),
    CreatedAt DATETIME DEFAULT GETDATE(),
    UpdatedAt DATETIME NULL,
    FOREIGN KEY (PlanId) REFERENCES PlanEstrategico(Id)
);
GO

-- Cadena de Valor
CREATE TABLE CadenaValor (
    Id INT PRIMARY KEY IDENTITY,
    PlanId INT NOT NULL,
    ActividadPrimaria NVARCHAR(MAX),
    ActividadSecundaria NVARCHAR(MAX),
    CreatedAt DATETIME DEFAULT GETDATE(),
    UpdatedAt DATETIME NULL,
    FOREIGN KEY (PlanId) REFERENCES PlanEstrategico(Id)
);
GO

-- Iniciativas Estrat�gicas
CREATE TABLE IniciativasEstrategicas (
    Id INT PRIMARY KEY IDENTITY,
    PlanId INT NOT NULL,
    Perspectiva NVARCHAR(100),
    Descripcion NVARCHAR(MAX),
    FOREIGN KEY (PlanId) REFERENCES PlanEstrategico(Id)
);
GO

-- Matriz RACI
CREATE TABLE MatrizRACI (
    Id INT PRIMARY KEY IDENTITY,
    PlanId INT NOT NULL,
    Actividad NVARCHAR(255),
    Responsable NVARCHAR(100),
    Aprobador NVARCHAR(100),
    Consultado NVARCHAR(100),
    Informado NVARCHAR(100),
    FOREIGN KEY (PlanId) REFERENCES PlanEstrategico(Id)
);
GO

-- Fuerzas de Porter
CREATE TABLE FuerzasPorter (
    Id INT PRIMARY KEY IDENTITY,
    PlanId INT NOT NULL,
    AmenazaNuevos NVARCHAR(MAX),
    RivalidadCompetidores NVARCHAR(MAX),
    PoderProveedores NVARCHAR(MAX),
    PoderClientes NVARCHAR(MAX),
    AmenazaSustitutos NVARCHAR(MAX),
    FOREIGN KEY (PlanId) REFERENCES PlanEstrategico(Id)
);
GO

-- An�lisis PEST
CREATE TABLE AnalisisPEST (
    Id INT PRIMARY KEY IDENTITY,
    PlanId INT NOT NULL,
    Politico NVARCHAR(MAX),
    Economico NVARCHAR(MAX),
    Social NVARCHAR(MAX),
    Tecnologico NVARCHAR(MAX),
    FOREIGN KEY (PlanId) REFERENCES PlanEstrategico(Id)
);
GO

-- Matriz CAME
CREATE TABLE MatrizCAME (
    Id INT PRIMARY KEY IDENTITY,
    PlanId INT NOT NULL,
    Corregir NVARCHAR(MAX),
    Afrontar NVARCHAR(MAX),
    Mantener NVARCHAR(MAX),
    Explotar NVARCHAR(MAX),
    FOREIGN KEY (PlanId) REFERENCES PlanEstrategico(Id)
);
GO

-- Resumen Ejecutivo
CREATE TABLE ResumenEjecutivo (
    Id INT PRIMARY KEY IDENTITY,
    PlanId INT NOT NULL,
    Introduccion NVARCHAR(MAX),
    Alcance NVARCHAR(MAX),
    ResultadosEsperados NVARCHAR(MAX),
    Conclusiones NVARCHAR(MAX),
    FOREIGN KEY (PlanId) REFERENCES PlanEstrategico(Id)
);
GO
CREATE TABLE ObservacionesCadenaValor (
    Id INT PRIMARY KEY IDENTITY,
    PlanId INT NOT NULL,
    Fortalezas1 NVARCHAR(MAX),
    Fortalezas2 NVARCHAR(MAX),
    Fortalezas3 NVARCHAR(MAX),
    Fortalezas4 NVARCHAR(MAX),
    Debilidades1 NVARCHAR(MAX),
    Debilidades2 NVARCHAR(MAX),
    Debilidades3 NVARCHAR(MAX),
    Debilidades4 NVARCHAR(MAX),
    CreatedAt DATETIME DEFAULT GETDATE(),
    UpdatedAt DATETIME NULL,
    FOREIGN KEY (PlanId) REFERENCES PlanEstrategico(Id)
);