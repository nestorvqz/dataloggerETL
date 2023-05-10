--
-- PostgreSQL database dump
--

-- Dumped from database version 10.11
-- Dumped by pg_dump version 10.11

-- Started on 2023-04-28 12:46:42

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 6 (class 2615 OID 16481)
-- Name: datalogger; Type: SCHEMA; Schema: -; Owner: postgres
--


CREATE SCHEMA datalogger;


ALTER SCHEMA datalogger OWNER TO postgres;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 205 (class 1259 OID 16482)
-- Name: data; Type: TABLE; Schema: datalogger; Owner: postgres
--

CREATE TABLE datalogger.data (
    id integer,
    veribox_sn numeric(11,0),
    datetime timestamp without time zone,
    stationname text,
    pca numeric(15,0),
    dst integer,
    numero_de_cliente numeric(15,0),
    pdm_id integer,
    manual integer DEFAULT 0,
    vol_c numeric(15,0),
    vol_nc numeric(15,0),
    vol_c_an numeric(15,0),
    vol_nc_an numeric(15,0),
    presion numeric(15,4),
    presion2 numeric(15,4),
    temperatura numeric(15,2),
    switch numeric(15,0),
    gsmq numeric(15,2),
    batt_vb numeric(15,2),
    batt_vc numeric(15,2),
    alarma numeric(15,0),
    tipo text
);


ALTER TABLE datalogger.data OWNER TO postgres;


CREATE TABLE datalogger.logs (
    id integer NOT NULL,
    pca integer,
    novedad text,
    estado text,
    veribox_sn text,
    date timestamp without time zone
);


ALTER TABLE datalogger.logs OWNER TO postgres;

CREATE TABLE datalogger.unidades (
    id integer NOT NULL,
    veribox_sn numeric(11,0),
    linea numeric(11,0),
    pca numeric(11,0),
    ric numeric(11,0),
    tramo numeric(3,0),
    nombre text,
    direccion text,
    localidad text,
    provincia text,
    coordenadas text,
    fecha_de_alta timestamp without time zone,
    ultima_comunicacion timestamp without time zone,
    activo integer,
    rtu integer,
    cliente text
);


ALTER TABLE datalogger.unidades OWNER TO postgres;


-- Completed on 2023-04-28 12:46:43

--
-- PostgreSQL database dump complete
--

