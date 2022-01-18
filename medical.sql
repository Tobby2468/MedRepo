--
-- PostgreSQL database dump
--

-- Dumped from database version 14.1
-- Dumped by pg_dump version 14.1

-- Started on 2022-01-18 16:37:39

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 211 (class 1259 OID 16404)
-- Name: SequelizeMeta; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."SequelizeMeta" (
    name character varying(255) NOT NULL
);


ALTER TABLE public."SequelizeMeta" OWNER TO postgres;

--
-- TOC entry 210 (class 1259 OID 16396)
-- Name: meds; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.meds (
    mid integer NOT NULL,
    name text,
    count integer,
    brand text
);


ALTER TABLE public.meds OWNER TO postgres;

--
-- TOC entry 209 (class 1259 OID 16395)
-- Name: meds_mid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.meds_mid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.meds_mid_seq OWNER TO postgres;

--
-- TOC entry 3320 (class 0 OID 0)
-- Dependencies: 209
-- Name: meds_mid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.meds_mid_seq OWNED BY public.meds.mid;


--
-- TOC entry 3168 (class 2604 OID 16399)
-- Name: meds mid; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.meds ALTER COLUMN mid SET DEFAULT nextval('public.meds_mid_seq'::regclass);


--
-- TOC entry 3314 (class 0 OID 16404)
-- Dependencies: 211
-- Data for Name: SequelizeMeta; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."SequelizeMeta" (name) FROM stdin;
\.


--
-- TOC entry 3313 (class 0 OID 16396)
-- Dependencies: 210
-- Data for Name: meds; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.meds (mid, name, count, brand) FROM stdin;
4	Chloroquine	850	ABG
3	Paracetamol	1200	AG
5	Ferrous	750	ZG
9	Becombion	20	AZG
7	Mist Mag	85	Moko
10	Wellman	24	QQ
6	Cyprotab	650	MG
\.


--
-- TOC entry 3321 (class 0 OID 0)
-- Dependencies: 209
-- Name: meds_mid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.meds_mid_seq', 10, true);


--
-- TOC entry 3172 (class 2606 OID 16408)
-- Name: SequelizeMeta SequelizeMeta_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."SequelizeMeta"
    ADD CONSTRAINT "SequelizeMeta_pkey" PRIMARY KEY (name);


--
-- TOC entry 3170 (class 2606 OID 16403)
-- Name: meds meds_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.meds
    ADD CONSTRAINT meds_pkey PRIMARY KEY (mid);


-- Completed on 2022-01-18 16:37:40

--
-- PostgreSQL database dump complete
--

