--
-- PostgreSQL database dump
--

-- Dumped from database version 13.2
-- Dumped by pg_dump version 13.2

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
-- Name: employees; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.employees (
    employee_id integer NOT NULL,
    name text NOT NULL,
    email text,
    phone_number character(10),
    clock_in_number character(4) NOT NULL,
    paycheck_id integer NOT NULL,
    position_id integer NOT NULL
);


ALTER TABLE public.employees OWNER TO postgres;

--
-- Name: employees_employee_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.employees_employee_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.employees_employee_id_seq OWNER TO postgres;

--
-- Name: employees_employee_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.employees_employee_id_seq OWNED BY public.employees.employee_id;


--
-- Name: paychecks; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.paychecks (
    paycheck_id integer NOT NULL,
    hours_worked integer NOT NULL,
    hourly_wage integer NOT NULL,
    tip_earned integer
);


ALTER TABLE public.paychecks OWNER TO postgres;

--
-- Name: paychecks_paycheck_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.paychecks_paycheck_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.paychecks_paycheck_id_seq OWNER TO postgres;

--
-- Name: paychecks_paycheck_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.paychecks_paycheck_id_seq OWNED BY public.paychecks.paycheck_id;


--
-- Name: positions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.positions (
    position_id integer NOT NULL,
    name text NOT NULL
);


ALTER TABLE public.positions OWNER TO postgres;

--
-- Name: positions_position_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.positions_position_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.positions_position_id_seq OWNER TO postgres;

--
-- Name: positions_position_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.positions_position_id_seq OWNED BY public.positions.position_id;


--
-- Name: employees employee_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employees ALTER COLUMN employee_id SET DEFAULT nextval('public.employees_employee_id_seq'::regclass);


--
-- Name: paychecks paycheck_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.paychecks ALTER COLUMN paycheck_id SET DEFAULT nextval('public.paychecks_paycheck_id_seq'::regclass);


--
-- Name: positions position_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.positions ALTER COLUMN position_id SET DEFAULT nextval('public.positions_position_id_seq'::regclass);


--
-- Data for Name: employees; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.employees (employee_id, name, email, phone_number, clock_in_number, paycheck_id, position_id) FROM stdin;
3	Jack Jones	jjones@restaurant.com	4849573749	1234	1	1
4	Chris Manning	cmanning@restaurant.com	3489585908	1235	2	5
5	Tom Brady	tbrady@restaurant.com	7167830527	1236	3	2
6	Josh Allen	jallen@restaurant.com	8037273499	1237	4	6
7	Nick Lexington	nlexington@restaurant.com	8433350204	1238	5	8
\.


--
-- Data for Name: paychecks; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.paychecks (paycheck_id, hours_worked, hourly_wage, tip_earned) FROM stdin;
1	40	15	444
2	39	14	410
3	23	17	220
4	35	19	340
5	40	15	443
\.


--
-- Data for Name: positions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.positions (position_id, name) FROM stdin;
1	dishwasher
2	cook
3	prep cook
4	line cook
5	food truck cook
6	counter
7	bartender
8	expo
9	runner
10	busser
11	manager
12	chef
13	owner
14	sous chef
15	assistant manager
\.


--
-- Name: employees_employee_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.employees_employee_id_seq', 7, true);


--
-- Name: paychecks_paycheck_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.paychecks_paycheck_id_seq', 5, true);


--
-- Name: positions_position_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.positions_position_id_seq', 15, true);


--
-- Name: employees employees_clock_in_number_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employees
    ADD CONSTRAINT employees_clock_in_number_key UNIQUE (clock_in_number);


--
-- Name: employees employees_email_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employees
    ADD CONSTRAINT employees_email_key UNIQUE (email);


--
-- Name: employees employees_paycheck_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employees
    ADD CONSTRAINT employees_paycheck_id_key UNIQUE (paycheck_id);


--
-- Name: employees employees_phone_number_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employees
    ADD CONSTRAINT employees_phone_number_key UNIQUE (phone_number);


--
-- Name: employees employees_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employees
    ADD CONSTRAINT employees_pkey PRIMARY KEY (employee_id);


--
-- Name: employees employees_position_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employees
    ADD CONSTRAINT employees_position_id_key UNIQUE (position_id);


--
-- Name: paychecks paychecks_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.paychecks
    ADD CONSTRAINT paychecks_pkey PRIMARY KEY (paycheck_id);


--
-- Name: positions positions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.positions
    ADD CONSTRAINT positions_pkey PRIMARY KEY (position_id);


--
-- Name: my_restaurant_btree_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX my_restaurant_btree_index ON public.employees USING btree (name);


--
-- Name: employees fk_employees_paychecks; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employees
    ADD CONSTRAINT fk_employees_paychecks FOREIGN KEY (paycheck_id) REFERENCES public.paychecks(paycheck_id);


--
-- Name: employees fk_employees_positions; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employees
    ADD CONSTRAINT fk_employees_positions FOREIGN KEY (position_id) REFERENCES public.positions(position_id);


--
-- PostgreSQL database dump complete
--

