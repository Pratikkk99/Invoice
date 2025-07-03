--
-- PostgreSQL database dump
--

-- Dumped from database version 13.21
-- Dumped by pg_dump version 17.5

-- Started on 2025-07-03 13:46:46

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
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
-- TOC entry 202 (class 1259 OID 16399)
-- Name: customer; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.customer (
    first_name character varying(40) NOT NULL,
    last_name character varying(100) NOT NULL,
    email character varying(100) NOT NULL,
    company character varying(100) NOT NULL,
    street character varying(100) NOT NULL,
    city character varying(100) NOT NULL,
    zip integer NOT NULL,
    phone character varying(20) NOT NULL,
    birth_date date NOT NULL,
    sex public.sex_type NOT NULL,
    date_entered timestamp without time zone,
    id integer NOT NULL,
    state character varying(100)
);


ALTER TABLE public.customer OWNER TO postgres;

--
-- TOC entry 201 (class 1259 OID 16397)
-- Name: customer_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.customer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.customer_id_seq OWNER TO postgres;

--
-- TOC entry 3026 (class 0 OID 0)
-- Dependencies: 201
-- Name: customer_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.customer_id_seq OWNED BY public.customer.id;


--
-- TOC entry 2886 (class 2604 OID 16402)
-- Name: customer id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customer ALTER COLUMN id SET DEFAULT nextval('public.customer_id_seq'::regclass);


--
-- TOC entry 3020 (class 0 OID 16399)
-- Dependencies: 202
-- Data for Name: customer; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.customer (first_name, last_name, email, company, street, city, zip, phone, birth_date, sex, date_entered, id, state) FROM stdin;
Christopher	Jones	christopherjones@bp.com	BP	347 Cedar St	Lawrenceville	30044	348-848-8291	1938-09-11	M	1938-09-10 00:00:00	2	\N
Matthew	Martinez	matthewmartinez@ge.com	GE	602 Main Place	Fontana	92336	117-997-7764	1931-09-04	M	2015-01-01 22:39:28	3	CA
Melissa	Moore	melissamoore@aramark.com	Aramark	463 Park Rd	Lakewood	8701	269-720-7259	1967-08-27	M	2017-10-20 21:59:29	4	NJ
Melissa	Brown	melissabrown@verizon.com	Verizon	712 View Ave	Houston	77084	280-570-5166	1948-06-14	F	2016-07-16 12:26:45	5	TX
Jennifer	Thomas	jenniferthomas@aramark.com	Aramark	231 Elm St	Mission	78572	976-147-9254	1998-03-14	F	2018-01-08 09:27:55	6	TX
Stephanie	Martinez	stephaniemartinez@albertsons.com	Albertsons	386 Second St	Lakewood	8701	820-131-6053	1998-01-24	M	2016-06-18 13:27:34	7	NJ
Daniel	Williams	danielwilliams@tjx.com	TJX	107 Pine St	Katy	77449	744-906-9837	1985-07-20	F	2015-07-03 10:40:18	8	TX
Lauren	Anderson	laurenanderson@pepsi.com	Pepsi	13 Maple Ave	Riverside	92503	747-993-2446	1973-09-09	F	2018-02-01 16:43:51	9	CA
Michael	Jackson	michaeljackson@disney.com	Disney	818 Pine Ave	Mission	78572	126-423-3144	1951-03-03	F	2017-04-02 21:57:36	10	TX
Ashley	Johnson	ashleyjohnson@boeing.com	Boeing	874 Oak Ave	Pacoima	91331	127-475-1658	1937-05-10	F	2015-01-04 08:58:56	11	CA
Brittany	Thomas	brittanythomas@walmart.com	Walmart	187 Maple Ave	Brownsville	78521	447-788-4913	1986-10-22	F	2018-05-23 08:04:32	12	TX
Matthew	Smith	matthewsmith@ups.com	UPS	123 Lake St	Brownsville	78521	961-108-3758	1950-06-16	F	2018-03-15 10:08:54	13	TX
Lauren	Wilson	laurenwilson@target.com	Target	942 Fifth Ave	Mission	78572	475-578-8519	1965-12-26	M	2017-07-16 11:01:01	14	TX
Justin	Smith	justinsmith@boeing.com	Boeing	844 Lake Ave	Lawrenceville	30044	671-957-1492	1956-03-16	F	2017-10-07 10:50:08	15	GA
Jessica	Garcia	jessicagarcia@toyota.com	Toyota	123 Pine Place	Fontana	92336	744-647-2359	1996-08-05	F	2016-09-14 12:33:05	16	CA
Matthew	Jackson	matthewjackson@bp.com	BP	538 Cedar Ave	Katy	77449	363-430-1813	1966-02-26	F	2016-05-01 19:25:17	17	TX
Stephanie	Thomas	stephaniethomas@apple.com	Apple	804 Fourth Place	Brownsville	78521	869-582-9955	1988-08-26	F	2018-10-21 22:01:57	18	TX
Jessica	Jackson	jessicajackson@aramark.com	Aramark	235 Pine Place	Chicago	60629	587-334-1054	1991-07-22	F	2015-08-28 03:11:35	19	IL
James	Martinez	jamesmartinez@kroger.com	Kroger	831 Oak St	Brownsville	78521	381-428-3119	1927-12-22	F	2018-01-27 07:41:48	20	TX
Christopher	Robinson	christopherrobinson@ibm.com	IBM	754 Cedar St	Pharr	78577	488-694-7677	1932-06-25	F	2016-08-19 16:11:31	21	TX
Ananya	Deshmukh	ananya.deshmukh@example.com	Reliance	22 Tech Park	Pune	411001	9876501234	1991-07-15	F	2023-01-01 10:00:00	1	MH
\.


--
-- TOC entry 3027 (class 0 OID 0)
-- Dependencies: 201
-- Name: customer_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.customer_id_seq', 21, true);


--
-- TOC entry 2888 (class 2606 OID 16404)
-- Name: customer customer_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customer
    ADD CONSTRAINT customer_pkey PRIMARY KEY (id);


-- Completed on 2025-07-03 13:46:46

--
-- PostgreSQL database dump complete
--

