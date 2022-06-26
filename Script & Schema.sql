CREATE DATABASE django_mormazabal
    WITH
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'Spanish_Spain.1252'
    LC_CTYPE = 'Spanish_Spain.1252'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1;
	
CREATE TABLE IF NOT EXISTS public.contacto
(
    codigo bigint NOT NULL DEFAULT nextval('contacto_codigo_seq'::regclass),
    nombres character varying(80) COLLATE pg_catalog."default",
    apellidos character varying(100) COLLATE pg_catalog."default",
    email character varying(80) COLLATE pg_catalog."default",
    telefono character varying(16) COLLATE pg_catalog."default",
    asunto character varying(250) COLLATE pg_catalog."default",
    mensaje character varying(250) COLLATE pg_catalog."default",
    CONSTRAINT contacto_pkey PRIMARY KEY (codigo)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.contacto
    OWNER to postgres;
	

CREATE TABLE IF NOT EXISTS public.usuario
(
    codigo bigint NOT NULL DEFAULT nextval('usuario_codigo_seq'::regclass),
    run character varying(11) COLLATE pg_catalog."default",
    nombres character varying(80) COLLATE pg_catalog."default",
    apellidos character varying(100) COLLATE pg_catalog."default",
    email character varying(80) COLLATE pg_catalog."default",
    telefono character varying(16) COLLATE pg_catalog."default",
    membresia character varying(50) COLLATE pg_catalog."default",
    fecha_nac character varying(20) COLLATE pg_catalog."default",
    CONSTRAINT usuario_pkey PRIMARY KEY (codigo)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.usuario
    OWNER to postgres;