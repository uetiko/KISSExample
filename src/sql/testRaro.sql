--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

SET search_path = public, pg_catalog;

ALTER TABLE ONLY public.tbl_orden DROP CONSTRAINT "FK_USUARIO";
ALTER TABLE ONLY public.tbl_producto DROP CONSTRAINT "FK_SUC";
ALTER TABLE ONLY public.tbl_orden DROP CONSTRAINT "FK_PRODUCTO";
ALTER TABLE ONLY public.tbl_producto DROP CONSTRAINT "FK_PRECIOPROD";
ALTER TABLE ONLY public.tbl_usr DROP CONSTRAINT "FK_PAIS";
ALTER TABLE ONLY public.tbl_usr DROP CONSTRAINT "FK_MEMB";
ALTER TABLE ONLY public.tbl_usr DROP CONSTRAINT "PK_USER";
ALTER TABLE ONLY public.tbl_sucursal DROP CONSTRAINT "PK_SUCURSAL";
ALTER TABLE ONLY public.tbl_producto DROP CONSTRAINT "PK_PRODUCTO";
ALTER TABLE ONLY public.tbl_precios DROP CONSTRAINT "PK_PRECIO";
ALTER TABLE ONLY public.tbl_pais DROP CONSTRAINT "PK_PAIS";
ALTER TABLE ONLY public.tbl_orden DROP CONSTRAINT "PK_ORDEN";
ALTER TABLE ONLY public.tbl_membrecia DROP CONSTRAINT "PK_MEMBRE";
ALTER TABLE public.tbl_usr ALTER COLUMN id_pais DROP DEFAULT;
ALTER TABLE public.tbl_usr ALTER COLUMN id_membrecia DROP DEFAULT;
ALTER TABLE public.tbl_usr ALTER COLUMN id_usr DROP DEFAULT;
ALTER TABLE public.tbl_sucursal ALTER COLUMN id_sucursarl DROP DEFAULT;
ALTER TABLE public.tbl_producto ALTER COLUMN id_sucursal DROP DEFAULT;
ALTER TABLE public.tbl_producto ALTER COLUMN id_precio DROP DEFAULT;
ALTER TABLE public.tbl_producto ALTER COLUMN id_producto DROP DEFAULT;
ALTER TABLE public.tbl_precios ALTER COLUMN id_precio DROP DEFAULT;
ALTER TABLE public.tbl_pais ALTER COLUMN id_pais DROP DEFAULT;
ALTER TABLE public.tbl_orden ALTER COLUMN id_producto DROP DEFAULT;
ALTER TABLE public.tbl_orden ALTER COLUMN id_usr DROP DEFAULT;
ALTER TABLE public.tbl_orden ALTER COLUMN id_orden DROP DEFAULT;
ALTER TABLE public.tbl_membrecia ALTER COLUMN id_membrecia DROP DEFAULT;
DROP SEQUENCE public.tbl_usr_id_usr_seq;
DROP SEQUENCE public.tbl_usr_id_pais_seq;
DROP SEQUENCE public.tbl_usr_id_membrecia_seq;
DROP TABLE public.tbl_usr;
DROP SEQUENCE public.tbl_sucursal_id_sucursarl_seq;
DROP TABLE public.tbl_sucursal;
DROP SEQUENCE public.tbl_producto_id_sucursal_seq;
DROP SEQUENCE public.tbl_producto_id_producto_seq;
DROP SEQUENCE public.tbl_producto_id_precio_seq;
DROP TABLE public.tbl_producto;
DROP SEQUENCE public.tbl_precios_id_precio_seq;
DROP TABLE public.tbl_precios;
DROP SEQUENCE public.tbl_pais_id_pais_seq;
DROP TABLE public.tbl_pais;
DROP SEQUENCE public.tbl_orden_id_usr_seq;
DROP SEQUENCE public.tbl_orden_id_producto_seq;
DROP SEQUENCE public.tbl_orden_id_orden_seq;
DROP TABLE public.tbl_orden;
DROP SEQUENCE public.tbl_membrecia_id_membrecia_seq;
DROP TABLE public.tbl_membrecia;
DROP EXTENSION plpgsql;
DROP SCHEMA public;
--
-- Name: public; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA public;


ALTER SCHEMA public OWNER TO postgres;

--
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA public IS 'standard public schema';


--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: tbl_membrecia; Type: TABLE; Schema: public; Owner: geek; Tablespace: 
--

CREATE TABLE tbl_membrecia (
    id_membrecia integer NOT NULL,
    tipo_memebrecia character(1) NOT NULL,
    descripcion character varying(140) NOT NULL
);


ALTER TABLE public.tbl_membrecia OWNER TO geek;

--
-- Name: tbl_membrecia_id_membrecia_seq; Type: SEQUENCE; Schema: public; Owner: geek
--

CREATE SEQUENCE tbl_membrecia_id_membrecia_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tbl_membrecia_id_membrecia_seq OWNER TO geek;

--
-- Name: tbl_membrecia_id_membrecia_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: geek
--

ALTER SEQUENCE tbl_membrecia_id_membrecia_seq OWNED BY tbl_membrecia.id_membrecia;


--
-- Name: tbl_membrecia_id_membrecia_seq; Type: SEQUENCE SET; Schema: public; Owner: geek
--

SELECT pg_catalog.setval('tbl_membrecia_id_membrecia_seq', 2, true);


--
-- Name: tbl_orden; Type: TABLE; Schema: public; Owner: geek; Tablespace: 
--

CREATE TABLE tbl_orden (
    id_orden integer NOT NULL,
    id_usr integer NOT NULL,
    id_producto integer NOT NULL
);


ALTER TABLE public.tbl_orden OWNER TO geek;

--
-- Name: tbl_orden_id_orden_seq; Type: SEQUENCE; Schema: public; Owner: geek
--

CREATE SEQUENCE tbl_orden_id_orden_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tbl_orden_id_orden_seq OWNER TO geek;

--
-- Name: tbl_orden_id_orden_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: geek
--

ALTER SEQUENCE tbl_orden_id_orden_seq OWNED BY tbl_orden.id_orden;


--
-- Name: tbl_orden_id_orden_seq; Type: SEQUENCE SET; Schema: public; Owner: geek
--

SELECT pg_catalog.setval('tbl_orden_id_orden_seq', 7, true);


--
-- Name: tbl_orden_id_producto_seq; Type: SEQUENCE; Schema: public; Owner: geek
--

CREATE SEQUENCE tbl_orden_id_producto_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tbl_orden_id_producto_seq OWNER TO geek;

--
-- Name: tbl_orden_id_producto_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: geek
--

ALTER SEQUENCE tbl_orden_id_producto_seq OWNED BY tbl_orden.id_producto;


--
-- Name: tbl_orden_id_producto_seq; Type: SEQUENCE SET; Schema: public; Owner: geek
--

SELECT pg_catalog.setval('tbl_orden_id_producto_seq', 1, false);


--
-- Name: tbl_orden_id_usr_seq; Type: SEQUENCE; Schema: public; Owner: geek
--

CREATE SEQUENCE tbl_orden_id_usr_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tbl_orden_id_usr_seq OWNER TO geek;

--
-- Name: tbl_orden_id_usr_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: geek
--

ALTER SEQUENCE tbl_orden_id_usr_seq OWNED BY tbl_orden.id_usr;


--
-- Name: tbl_orden_id_usr_seq; Type: SEQUENCE SET; Schema: public; Owner: geek
--

SELECT pg_catalog.setval('tbl_orden_id_usr_seq', 1, false);


--
-- Name: tbl_pais; Type: TABLE; Schema: public; Owner: geek; Tablespace: 
--

CREATE TABLE tbl_pais (
    id_pais integer NOT NULL,
    descripcion character varying(15) NOT NULL
);


ALTER TABLE public.tbl_pais OWNER TO geek;

--
-- Name: tbl_pais_id_pais_seq; Type: SEQUENCE; Schema: public; Owner: geek
--

CREATE SEQUENCE tbl_pais_id_pais_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tbl_pais_id_pais_seq OWNER TO geek;

--
-- Name: tbl_pais_id_pais_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: geek
--

ALTER SEQUENCE tbl_pais_id_pais_seq OWNED BY tbl_pais.id_pais;


--
-- Name: tbl_pais_id_pais_seq; Type: SEQUENCE SET; Schema: public; Owner: geek
--

SELECT pg_catalog.setval('tbl_pais_id_pais_seq', 3, true);


--
-- Name: tbl_precios; Type: TABLE; Schema: public; Owner: geek; Tablespace: 
--

CREATE TABLE tbl_precios (
    id_precio integer NOT NULL,
    precio numeric(6,2) NOT NULL
);


ALTER TABLE public.tbl_precios OWNER TO geek;

--
-- Name: tbl_precios_id_precio_seq; Type: SEQUENCE; Schema: public; Owner: geek
--

CREATE SEQUENCE tbl_precios_id_precio_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tbl_precios_id_precio_seq OWNER TO geek;

--
-- Name: tbl_precios_id_precio_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: geek
--

ALTER SEQUENCE tbl_precios_id_precio_seq OWNED BY tbl_precios.id_precio;


--
-- Name: tbl_precios_id_precio_seq; Type: SEQUENCE SET; Schema: public; Owner: geek
--

SELECT pg_catalog.setval('tbl_precios_id_precio_seq', 6, true);


--
-- Name: tbl_producto; Type: TABLE; Schema: public; Owner: geek; Tablespace: 
--

CREATE TABLE tbl_producto (
    id_producto integer NOT NULL,
    id_precio integer NOT NULL,
    id_sucursal integer NOT NULL,
    descripcion character varying(200) NOT NULL
);


ALTER TABLE public.tbl_producto OWNER TO geek;

--
-- Name: tbl_producto_id_precio_seq; Type: SEQUENCE; Schema: public; Owner: geek
--

CREATE SEQUENCE tbl_producto_id_precio_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tbl_producto_id_precio_seq OWNER TO geek;

--
-- Name: tbl_producto_id_precio_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: geek
--

ALTER SEQUENCE tbl_producto_id_precio_seq OWNED BY tbl_producto.id_precio;


--
-- Name: tbl_producto_id_precio_seq; Type: SEQUENCE SET; Schema: public; Owner: geek
--

SELECT pg_catalog.setval('tbl_producto_id_precio_seq', 1, false);


--
-- Name: tbl_producto_id_producto_seq; Type: SEQUENCE; Schema: public; Owner: geek
--

CREATE SEQUENCE tbl_producto_id_producto_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tbl_producto_id_producto_seq OWNER TO geek;

--
-- Name: tbl_producto_id_producto_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: geek
--

ALTER SEQUENCE tbl_producto_id_producto_seq OWNED BY tbl_producto.id_producto;


--
-- Name: tbl_producto_id_producto_seq; Type: SEQUENCE SET; Schema: public; Owner: geek
--

SELECT pg_catalog.setval('tbl_producto_id_producto_seq', 7, true);


--
-- Name: tbl_producto_id_sucursal_seq; Type: SEQUENCE; Schema: public; Owner: geek
--

CREATE SEQUENCE tbl_producto_id_sucursal_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tbl_producto_id_sucursal_seq OWNER TO geek;

--
-- Name: tbl_producto_id_sucursal_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: geek
--

ALTER SEQUENCE tbl_producto_id_sucursal_seq OWNED BY tbl_producto.id_sucursal;


--
-- Name: tbl_producto_id_sucursal_seq; Type: SEQUENCE SET; Schema: public; Owner: geek
--

SELECT pg_catalog.setval('tbl_producto_id_sucursal_seq', 1, false);


--
-- Name: tbl_sucursal; Type: TABLE; Schema: public; Owner: geek; Tablespace: 
--

CREATE TABLE tbl_sucursal (
    id_sucursarl integer NOT NULL,
    nombre character varying(80) NOT NULL,
    direccion character varying(240) NOT NULL
);


ALTER TABLE public.tbl_sucursal OWNER TO geek;

--
-- Name: tbl_sucursal_id_sucursarl_seq; Type: SEQUENCE; Schema: public; Owner: geek
--

CREATE SEQUENCE tbl_sucursal_id_sucursarl_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tbl_sucursal_id_sucursarl_seq OWNER TO geek;

--
-- Name: tbl_sucursal_id_sucursarl_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: geek
--

ALTER SEQUENCE tbl_sucursal_id_sucursarl_seq OWNED BY tbl_sucursal.id_sucursarl;


--
-- Name: tbl_sucursal_id_sucursarl_seq; Type: SEQUENCE SET; Schema: public; Owner: geek
--

SELECT pg_catalog.setval('tbl_sucursal_id_sucursarl_seq', 4, true);


--
-- Name: tbl_usr; Type: TABLE; Schema: public; Owner: geek; Tablespace: 
--

CREATE TABLE tbl_usr (
    id_usr integer NOT NULL,
    id_membrecia integer NOT NULL,
    id_pais integer NOT NULL,
    user_name character varying(15),
    nombre character varying(140) NOT NULL
);


ALTER TABLE public.tbl_usr OWNER TO geek;

--
-- Name: tbl_usr_id_membrecia_seq; Type: SEQUENCE; Schema: public; Owner: geek
--

CREATE SEQUENCE tbl_usr_id_membrecia_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tbl_usr_id_membrecia_seq OWNER TO geek;

--
-- Name: tbl_usr_id_membrecia_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: geek
--

ALTER SEQUENCE tbl_usr_id_membrecia_seq OWNED BY tbl_usr.id_membrecia;


--
-- Name: tbl_usr_id_membrecia_seq; Type: SEQUENCE SET; Schema: public; Owner: geek
--

SELECT pg_catalog.setval('tbl_usr_id_membrecia_seq', 1, false);


--
-- Name: tbl_usr_id_pais_seq; Type: SEQUENCE; Schema: public; Owner: geek
--

CREATE SEQUENCE tbl_usr_id_pais_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tbl_usr_id_pais_seq OWNER TO geek;

--
-- Name: tbl_usr_id_pais_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: geek
--

ALTER SEQUENCE tbl_usr_id_pais_seq OWNED BY tbl_usr.id_pais;


--
-- Name: tbl_usr_id_pais_seq; Type: SEQUENCE SET; Schema: public; Owner: geek
--

SELECT pg_catalog.setval('tbl_usr_id_pais_seq', 1, false);


--
-- Name: tbl_usr_id_usr_seq; Type: SEQUENCE; Schema: public; Owner: geek
--

CREATE SEQUENCE tbl_usr_id_usr_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tbl_usr_id_usr_seq OWNER TO geek;

--
-- Name: tbl_usr_id_usr_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: geek
--

ALTER SEQUENCE tbl_usr_id_usr_seq OWNED BY tbl_usr.id_usr;


--
-- Name: tbl_usr_id_usr_seq; Type: SEQUENCE SET; Schema: public; Owner: geek
--

SELECT pg_catalog.setval('tbl_usr_id_usr_seq', 1, true);


--
-- Name: id_membrecia; Type: DEFAULT; Schema: public; Owner: geek
--

ALTER TABLE ONLY tbl_membrecia ALTER COLUMN id_membrecia SET DEFAULT nextval('tbl_membrecia_id_membrecia_seq'::regclass);


--
-- Name: id_orden; Type: DEFAULT; Schema: public; Owner: geek
--

ALTER TABLE ONLY tbl_orden ALTER COLUMN id_orden SET DEFAULT nextval('tbl_orden_id_orden_seq'::regclass);


--
-- Name: id_usr; Type: DEFAULT; Schema: public; Owner: geek
--

ALTER TABLE ONLY tbl_orden ALTER COLUMN id_usr SET DEFAULT nextval('tbl_orden_id_usr_seq'::regclass);


--
-- Name: id_producto; Type: DEFAULT; Schema: public; Owner: geek
--

ALTER TABLE ONLY tbl_orden ALTER COLUMN id_producto SET DEFAULT nextval('tbl_orden_id_producto_seq'::regclass);


--
-- Name: id_pais; Type: DEFAULT; Schema: public; Owner: geek
--

ALTER TABLE ONLY tbl_pais ALTER COLUMN id_pais SET DEFAULT nextval('tbl_pais_id_pais_seq'::regclass);


--
-- Name: id_precio; Type: DEFAULT; Schema: public; Owner: geek
--

ALTER TABLE ONLY tbl_precios ALTER COLUMN id_precio SET DEFAULT nextval('tbl_precios_id_precio_seq'::regclass);


--
-- Name: id_producto; Type: DEFAULT; Schema: public; Owner: geek
--

ALTER TABLE ONLY tbl_producto ALTER COLUMN id_producto SET DEFAULT nextval('tbl_producto_id_producto_seq'::regclass);


--
-- Name: id_precio; Type: DEFAULT; Schema: public; Owner: geek
--

ALTER TABLE ONLY tbl_producto ALTER COLUMN id_precio SET DEFAULT nextval('tbl_producto_id_precio_seq'::regclass);


--
-- Name: id_sucursal; Type: DEFAULT; Schema: public; Owner: geek
--

ALTER TABLE ONLY tbl_producto ALTER COLUMN id_sucursal SET DEFAULT nextval('tbl_producto_id_sucursal_seq'::regclass);


--
-- Name: id_sucursarl; Type: DEFAULT; Schema: public; Owner: geek
--

ALTER TABLE ONLY tbl_sucursal ALTER COLUMN id_sucursarl SET DEFAULT nextval('tbl_sucursal_id_sucursarl_seq'::regclass);


--
-- Name: id_usr; Type: DEFAULT; Schema: public; Owner: geek
--

ALTER TABLE ONLY tbl_usr ALTER COLUMN id_usr SET DEFAULT nextval('tbl_usr_id_usr_seq'::regclass);


--
-- Name: id_membrecia; Type: DEFAULT; Schema: public; Owner: geek
--

ALTER TABLE ONLY tbl_usr ALTER COLUMN id_membrecia SET DEFAULT nextval('tbl_usr_id_membrecia_seq'::regclass);


--
-- Name: id_pais; Type: DEFAULT; Schema: public; Owner: geek
--

ALTER TABLE ONLY tbl_usr ALTER COLUMN id_pais SET DEFAULT nextval('tbl_usr_id_pais_seq'::regclass);


--
-- Data for Name: tbl_membrecia; Type: TABLE DATA; Schema: public; Owner: geek
--

COPY tbl_membrecia (id_membrecia, tipo_memebrecia, descripcion) FROM stdin;
1	N	Normal
2	P	Premium
\.


--
-- Data for Name: tbl_orden; Type: TABLE DATA; Schema: public; Owner: geek
--

COPY tbl_orden (id_orden, id_usr, id_producto) FROM stdin;
2	1	1
6	1	6
7	1	7
\.


--
-- Data for Name: tbl_pais; Type: TABLE DATA; Schema: public; Owner: geek
--

COPY tbl_pais (id_pais, descripcion) FROM stdin;
1	México
2	Estados Unidos
3	Canada
\.


--
-- Data for Name: tbl_precios; Type: TABLE DATA; Schema: public; Owner: geek
--

COPY tbl_precios (id_precio, precio) FROM stdin;
1	12.00
2	45.50
3	32.90
4	97.00
5	256.00
6	2.56
\.


--
-- Data for Name: tbl_producto; Type: TABLE DATA; Schema: public; Owner: geek
--

COPY tbl_producto (id_producto, id_precio, id_sucursal, descripcion) FROM stdin;
1	1	1	mp3
6	1	2	poster
7	5	4	algo muy geek
\.


--
-- Data for Name: tbl_sucursal; Type: TABLE DATA; Schema: public; Owner: geek
--

COPY tbl_sucursal (id_sucursarl, nombre, direccion) FROM stdin;
1	sucursal 1	perdida en la ciudad
2	sucursal 2	ni idea de donde este
4	sucursal 3	neverland
\.


--
-- Data for Name: tbl_usr; Type: TABLE DATA; Schema: public; Owner: geek
--

COPY tbl_usr (id_usr, id_membrecia, id_pais, user_name, nombre) FROM stdin;
1	2	1	uetiko	Mr.Silent
\.


--
-- Name: PK_MEMBRE; Type: CONSTRAINT; Schema: public; Owner: geek; Tablespace: 
--

ALTER TABLE ONLY tbl_membrecia
    ADD CONSTRAINT "PK_MEMBRE" PRIMARY KEY (id_membrecia);


--
-- Name: PK_ORDEN; Type: CONSTRAINT; Schema: public; Owner: geek; Tablespace: 
--

ALTER TABLE ONLY tbl_orden
    ADD CONSTRAINT "PK_ORDEN" PRIMARY KEY (id_orden);


--
-- Name: PK_PAIS; Type: CONSTRAINT; Schema: public; Owner: geek; Tablespace: 
--

ALTER TABLE ONLY tbl_pais
    ADD CONSTRAINT "PK_PAIS" PRIMARY KEY (id_pais);


--
-- Name: PK_PRECIO; Type: CONSTRAINT; Schema: public; Owner: geek; Tablespace: 
--

ALTER TABLE ONLY tbl_precios
    ADD CONSTRAINT "PK_PRECIO" PRIMARY KEY (id_precio);


--
-- Name: PK_PRODUCTO; Type: CONSTRAINT; Schema: public; Owner: geek; Tablespace: 
--

ALTER TABLE ONLY tbl_producto
    ADD CONSTRAINT "PK_PRODUCTO" PRIMARY KEY (id_producto);


--
-- Name: PK_SUCURSAL; Type: CONSTRAINT; Schema: public; Owner: geek; Tablespace: 
--

ALTER TABLE ONLY tbl_sucursal
    ADD CONSTRAINT "PK_SUCURSAL" PRIMARY KEY (id_sucursarl);


--
-- Name: PK_USER; Type: CONSTRAINT; Schema: public; Owner: geek; Tablespace: 
--

ALTER TABLE ONLY tbl_usr
    ADD CONSTRAINT "PK_USER" PRIMARY KEY (id_usr);


--
-- Name: FK_MEMB; Type: FK CONSTRAINT; Schema: public; Owner: geek
--

ALTER TABLE ONLY tbl_usr
    ADD CONSTRAINT "FK_MEMB" FOREIGN KEY (id_membrecia) REFERENCES tbl_membrecia(id_membrecia);


--
-- Name: FK_PAIS; Type: FK CONSTRAINT; Schema: public; Owner: geek
--

ALTER TABLE ONLY tbl_usr
    ADD CONSTRAINT "FK_PAIS" FOREIGN KEY (id_pais) REFERENCES tbl_pais(id_pais);


--
-- Name: FK_PRECIOPROD; Type: FK CONSTRAINT; Schema: public; Owner: geek
--

ALTER TABLE ONLY tbl_producto
    ADD CONSTRAINT "FK_PRECIOPROD" FOREIGN KEY (id_precio) REFERENCES tbl_precios(id_precio);


--
-- Name: FK_PRODUCTO; Type: FK CONSTRAINT; Schema: public; Owner: geek
--

ALTER TABLE ONLY tbl_orden
    ADD CONSTRAINT "FK_PRODUCTO" FOREIGN KEY (id_producto) REFERENCES tbl_producto(id_producto);


--
-- Name: FK_SUC; Type: FK CONSTRAINT; Schema: public; Owner: geek
--

ALTER TABLE ONLY tbl_producto
    ADD CONSTRAINT "FK_SUC" FOREIGN KEY (id_sucursal) REFERENCES tbl_sucursal(id_sucursarl);


--
-- Name: FK_USUARIO; Type: FK CONSTRAINT; Schema: public; Owner: geek
--

ALTER TABLE ONLY tbl_orden
    ADD CONSTRAINT "FK_USUARIO" FOREIGN KEY (id_usr) REFERENCES tbl_usr(id_usr);


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

