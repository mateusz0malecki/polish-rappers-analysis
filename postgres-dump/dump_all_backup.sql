--
-- PostgreSQL database cluster dump
--

SET default_transaction_read_only = off;

SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;

--
-- Drop databases (except postgres and template1)
--

DROP DATABASE rappers;




--
-- Drop roles
--

DROP ROLE postgres;


--
-- Roles
--

CREATE ROLE postgres;
ALTER ROLE postgres WITH SUPERUSER INHERIT CREATEROLE CREATEDB LOGIN REPLICATION BYPASSRLS PASSWORD 'SCRAM-SHA-256$4096:7jCE11gwKAWFGmdKLqx1Rw==$VSed0/4y0nRwBjfQLuytJSzqW5/9efygck3U9Drpl4g=:rAW4AJYbPk1AAJDi/zbp+OLgwQ82FM4MAV83ijOdQQY=';






--
-- Databases
--

--
-- Database "template1" dump
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 14.4 (Debian 14.4-1.pgdg110+1)
-- Dumped by pg_dump version 14.4 (Debian 14.4-1.pgdg110+1)

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

UPDATE pg_catalog.pg_database SET datistemplate = false WHERE datname = 'template1';
DROP DATABASE template1;
--
-- Name: template1; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE template1 WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'C';


ALTER DATABASE template1 OWNER TO postgres;

\connect template1

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
-- Name: DATABASE template1; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON DATABASE template1 IS 'default template for new databases';


--
-- Name: template1; Type: DATABASE PROPERTIES; Schema: -; Owner: postgres
--

ALTER DATABASE template1 IS_TEMPLATE = true;


\connect template1

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
-- Name: DATABASE template1; Type: ACL; Schema: -; Owner: postgres
--

REVOKE CONNECT,TEMPORARY ON DATABASE template1 FROM PUBLIC;
GRANT CONNECT ON DATABASE template1 TO PUBLIC;


--
-- PostgreSQL database dump complete
--

--
-- Database "postgres" dump
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 14.4 (Debian 14.4-1.pgdg110+1)
-- Dumped by pg_dump version 14.4 (Debian 14.4-1.pgdg110+1)

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

DROP DATABASE postgres;
--
-- Name: postgres; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'C';


ALTER DATABASE postgres OWNER TO postgres;

\connect postgres

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
-- Name: DATABASE postgres; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON DATABASE postgres IS 'default administrative connection database';


--
-- PostgreSQL database dump complete
--

--
-- Database "rappers" dump
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 14.4 (Debian 14.4-1.pgdg110+1)
-- Dumped by pg_dump version 14.4 (Debian 14.4-1.pgdg110+1)

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
-- Name: rappers; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE rappers WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'C';


ALTER DATABASE rappers OWNER TO postgres;

\connect rappers

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
-- Name: alembic_version; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.alembic_version (
    version_num character varying(32) NOT NULL
);


ALTER TABLE public.alembic_version OWNER TO postgres;

--
-- Name: musician; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.musician (
    id integer NOT NULL,
    name character varying(32),
    artist_name character varying(32),
    number_of_words_10000 integer,
    number_of_words_20000 integer,
    number_of_words_30000 integer,
    number_of_words_all integer,
    ranking_10000 integer,
    ranking_20000 integer,
    ranking_30000 integer,
    ranking_all integer,
    most_common_10000 character varying(256),
    most_common_20000 character varying(256),
    most_common_30000 character varying(256),
    most_common_all character varying(256),
    updated_at timestamp with time zone,
    created_at timestamp with time zone DEFAULT now()
);


ALTER TABLE public.musician OWNER TO postgres;

--
-- Name: musician_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.musician_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.musician_id_seq OWNER TO postgres;

--
-- Name: musician_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.musician_id_seq OWNED BY public.musician.id;


--
-- Name: musician id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.musician ALTER COLUMN id SET DEFAULT nextval('public.musician_id_seq'::regclass);


--
-- Data for Name: alembic_version; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.alembic_version (version_num) FROM stdin;
95fdbe5d74df
\.


--
-- Data for Name: musician; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.musician (id, name, artist_name, number_of_words_10000, number_of_words_20000, number_of_words_30000, number_of_words_all, ranking_10000, ranking_20000, ranking_30000, ranking_all, most_common_10000, most_common_20000, most_common_30000, most_common_all, updated_at, created_at) FROM stdin;
117	kuban	Kuban	3210	3742	3742	3742	67	71	71	71	mieć x394 / chcieć x114 / siebie x97 / taki x89 / mówić x84 / 	mieć x478 / chcieć x123 / siebie x114 / taki x100 / wiedzieć x93 / 	mieć x478 / chcieć x123 / siebie x114 / taki x100 / wiedzieć x93 / 	mieć x478 / chcieć x123 / siebie x114 / taki x100 / wiedzieć x93 / 	2022-07-04 19:37:47.474922+00	2022-07-04 17:08:07.61168+00
8	ak_47	AK-47	3048	4035	4035	4035	90	64	64	64	mieć x180 / który x138 / lecz x109 / siebie x98 / chcieć x81 / 	mieć x220 / który x194 / lecz x146 / siebie x117 / chcieć x112 / 	mieć x220 / który x194 / lecz x146 / siebie x117 / chcieć x112 / 	mieć x220 / który x194 / lecz x146 / siebie x117 / chcieć x112 / 	2022-07-04 19:37:47.449567+00	2022-07-04 17:08:07.261751+00
70	green	Green	1898	1898	1898	1898	137	137	137	137	mieć x105 / który x62 / chcieć x48 / wiedzieć x42 / gdzie x40 / 	mieć x105 / który x62 / chcieć x48 / wiedzieć x42 / gdzie x40 / 	mieć x105 / który x62 / chcieć x48 / wiedzieć x42 / gdzie x40 / 	mieć x105 / który x62 / chcieć x48 / wiedzieć x42 / gdzie x40 / 	2022-07-04 19:37:47.717153+00	2022-07-04 17:08:07.463142+00
84	jarecki	Jarecki	1308	1308	1308	1308	160	160	160	160	mieć x133 / tylko x63 / chcieć x60 / więc x50 / dziś x44 / 	mieć x133 / tylko x63 / chcieć x60 / więc x50 / dziś x44 / 	mieć x133 / tylko x63 / chcieć x60 / więc x50 / dziś x44 / 	mieć x133 / tylko x63 / chcieć x60 / więc x50 / dziś x44 / 	2022-07-04 19:37:47.802584+00	2022-07-04 17:08:07.507905+00
94	kaczmi	Kaczmi	3118	3118	3118	3118	83	98	98	98	kupa x134 / mieć x111 / zrobić x91 / swój x73 / siebie x58 / 	kupa x134 / mieć x111 / zrobić x91 / swój x73 / siebie x58 / 	kupa x134 / mieć x111 / zrobić x91 / swój x73 / siebie x58 / 	kupa x134 / mieć x111 / zrobić x91 / swój x73 / siebie x58 / 	2022-07-04 19:37:47.574338+00	2022-07-04 17:08:07.541224+00
61	flint	Flint	2263	2263	2263	2263	122	123	123	123	mieć x135 / chcieć x61 / tylko x38 / który x36 / czas x35 / 	mieć x135 / chcieć x61 / tylko x38 / który x36 / czas x35 / 	mieć x135 / chcieć x61 / tylko x38 / który x36 / czas x35 / 	mieć x135 / chcieć x61 / tylko x38 / który x36 / czas x35 / 	2022-07-04 19:37:47.665425+00	2022-07-04 17:08:07.434114+00
56	ero	Ero	802	802	802	802	180	180	180	180	mieć x88 / tylko x32 / dobry x21 / puść x14 / wziąć x14 / 	mieć x88 / tylko x32 / dobry x21 / puść x14 / wziąć x14 / 	mieć x88 / tylko x32 / dobry x21 / puść x14 / wziąć x14 / 	mieć x88 / tylko x32 / dobry x21 / puść x14 / wziąć x14 / 	2022-07-04 19:37:47.876422+00	2022-07-04 17:08:07.419211+00
159	nemy	Ńemy	509	509	509	509	193	193	193	193	dont x14 / wanna x11 / live x11 / pain x11 / mieć x11 / 	dont x14 / wanna x11 / live x11 / pain x11 / mieć x11 / 	dont x14 / wanna x11 / live x11 / pain x11 / mieć x11 / 	dont x14 / wanna x11 / live x11 / pain x11 / mieć x11 / 	2022-07-04 19:37:47.923544+00	2022-07-04 17:08:07.736763+00
44	dohtor_miod	Dohtor Miód	445	445	445	445	196	196	196	196	jadym x49 / kurwa x46 / upierdliwa x27 / sonsiod x21 / musa x14 / 	jadym x49 / kurwa x46 / upierdliwa x27 / sonsiod x21 / musa x14 / 	jadym x49 / kurwa x46 / upierdliwa x27 / sonsiod x21 / musa x14 / 	jadym x49 / kurwa x46 / upierdliwa x27 / sonsiod x21 / musa x14 / 	2022-07-04 19:37:47.934373+00	2022-07-04 17:08:07.383933+00
19	bilon	Bilon	230	230	230	230	208	208	208	208	polski x7 / wolność x7 / mieć x7 / refy x5 / gdzie x5 / 	polski x7 / wolność x7 / mieć x7 / refy x5 / gdzie x5 / 	polski x7 / wolność x7 / mieć x7 / refy x5 / gdzie x5 / 	polski x7 / wolność x7 / mieć x7 / refy x5 / gdzie x5 / 	2022-07-04 19:37:47.98013+00	2022-07-04 17:08:07.300717+00
76	hans	Hans	221	221	221	221	209	209	209	209	zwrotek x11 / parodia x11 / utwór x11 / wiedzieć x7 / mieć x6 / 	zwrotek x11 / parodia x11 / utwór x11 / wiedzieć x7 / mieć x6 / 	zwrotek x11 / parodia x11 / utwór x11 / wiedzieć x7 / mieć x6 / 	zwrotek x11 / parodia x11 / utwór x11 / wiedzieć x7 / mieć x6 / 	2022-07-04 19:37:47.983872+00	2022-07-04 17:08:07.482243+00
103	karwel	Karwel	0	0	0	0	236	255	226	214					2022-07-04 19:37:48.002493+00	2022-07-04 17:08:07.569779+00
38	aleksander_czyz	Aleksander Czyż	0	0	0	0	253	238	214	277					2022-07-04 19:37:48.234931+00	2022-07-04 17:08:07.364811+00
24	bonson	Bonson	3075	4226	4226	4226	89	56	56	56	mieć x311 / wiedzieć x170 / chcieć x129 / mówić x122 / czas x104 / 	mieć x501 / wiedzieć x269 / chcieć x237 / mówić x185 / kurwa x147 / 	mieć x501 / wiedzieć x269 / chcieć x237 / mówić x185 / kurwa x147 / 	mieć x501 / wiedzieć x269 / chcieć x237 / mówić x185 / kurwa x147 / 	2022-07-04 19:37:47.419797+00	2022-07-04 17:08:07.317556+00
89	jotuze	Jotuze	0	0	0	0	237	254	233	276					2022-07-04 19:37:48.231169+00	2022-07-04 17:08:07.523639+00
13	bak	Bak	0	0	0	0	260	232	232	275					2022-07-04 19:37:48.227538+00	2022-07-04 17:08:07.279929+00
118	l_pro	L-Pro	0	0	0	0	231	260	231	274					2022-07-04 19:37:48.223712+00	2022-07-04 17:08:07.614478+00
116	ksiaze_kapota	Książę Kapota	0	0	0	0	232	259	230	273					2022-07-04 19:37:48.220189+00	2022-07-04 17:08:07.608913+00
7	afrojax	Afrojax	0	0	0	0	233	258	229	272					2022-07-04 19:37:48.21637+00	2022-07-04 17:08:07.258464+00
113	wojciech_kosun	Wojciech Kosuń	0	0	0	0	234	257	228	271					2022-07-04 19:37:48.2123+00	2022-07-04 17:08:07.599768+00
112	koras	Koras	0	0	0	0	235	256	227	270					2022-07-04 19:37:48.208899+00	2022-07-04 17:08:07.597008+00
17	bezczel	Bezczel	0	0	0	0	257	234	274	254					2022-07-04 19:37:48.149968+00	2022-07-04 17:08:07.293909+00
14	jakub_bartczak	Jakub Bartczak	0	0	0	0	259	233	273	269					2022-07-04 19:37:48.205068+00	2022-07-04 17:08:07.283703+00
86	joka	Joka	0	0	0	0	238	253	225	268					2022-07-04 19:37:48.201666+00	2022-07-04 17:08:07.514252+00
85	jedker	Jędker	0	0	0	0	240	252	224	267					2022-07-04 19:37:48.19783+00	2022-07-04 17:08:07.511006+00
81	iceman	Iceman	0	0	0	0	242	251	223	266					2022-07-04 19:37:48.194454+00	2022-07-04 17:08:07.498754+00
69	gorzki	Gorzki	0	0	0	0	243	250	222	265					2022-07-04 19:37:48.190593+00	2022-07-04 17:08:07.459981+00
66	gal	Gal	0	0	0	0	245	249	221	263					2022-07-04 19:37:48.183251+00	2022-07-04 17:08:07.450793+00
55	ignacy_erenski	Ignacy Ereński	0	0	0	0	247	243	219	262					2022-07-04 19:37:48.179766+00	2022-07-04 17:08:07.416599+00
54	emazet	Emazet	0	0	0	0	248	242	218	261					2022-07-04 19:37:48.17595+00	2022-07-04 17:08:07.413542+00
52	ekonom	Ekonom	0	0	0	0	249	241	217	260					2022-07-04 19:37:48.17243+00	2022-07-04 17:08:07.407831+00
49	duze_pe	Duże Pe	0	0	0	0	250	240	216	259					2022-07-04 19:37:48.168294+00	2022-07-04 17:08:07.398464+00
30	dj_brk	DJ BRK	0	0	0	0	256	235	275	255					2022-07-04 19:37:48.153835+00	2022-07-04 17:08:07.338618+00
42	dizkret	Dizkret	0	0	0	0	252	239	215	258					2022-07-04 19:37:48.164768+00	2022-07-04 17:08:07.377664+00
37	cne	CNE	0	0	0	0	254	237	277	257					2022-07-04 19:37:48.161206+00	2022-07-04 17:08:07.361749+00
35	chiwas	Chiwas	0	0	0	0	255	236	276	256					2022-07-04 19:37:48.157552+00	2022-07-04 17:08:07.354986+00
205	rover	Rover	3220	4614	4614	4614	65	48	49	49	mieć x214 / chcieć x112 / tylko x86 / życie x74 / wiedzieć x73 / 	mieć x331 / życie x153 / chcieć x149 / tylko x140 / który x116 / 	mieć x331 / życie x153 / chcieć x149 / tylko x140 / który x116 / 	mieć x331 / życie x153 / chcieć x149 / tylko x140 / który x116 / 	2022-07-04 19:37:47.394094+00	2022-07-04 17:08:07.871065+00
140	michal_zytniak	Michał Żytniak	0	0	0	0	269	244	272	253					2022-07-04 19:37:48.146428+00	2022-07-04 17:08:07.68043+00
156	kamil_nozynski	Kamil Nożyński	0	0	0	0	262	231	271	252					2022-07-04 19:37:48.1423+00	2022-07-04 17:08:07.727972+00
209	ryba	Ryba	0	0	0	0	277	267	243	223					2022-07-04 19:37:48.036346+00	2022-07-04 17:08:07.882722+00
162	olsen	Olsen	0	0	0	0	230	230	270	251					2022-07-04 19:37:48.138738+00	2022-07-04 17:08:07.74553+00
189	popek	Popek	3127	3127	3127	3127	82	96	97	97	mieć x181 / chcieć x119 / swój x95 / życie x79 / wszystko x56 / 	mieć x181 / chcieć x119 / swój x95 / życie x79 / wszystko x56 / 	mieć x181 / chcieć x119 / swój x95 / życie x79 / wszystko x56 / 	mieć x181 / chcieć x119 / swój x95 / życie x79 / wszystko x56 / 	2022-07-04 19:37:47.570853+00	2022-07-04 17:08:07.823946+00
207	rufin_mc	Rufin MC	0	0	0	0	215	223	269	250					2022-07-04 19:37:48.1348+00	2022-07-04 17:08:07.876886+00
199	radoskor	Radoskór	0	0	0	0	216	221	268	249					2022-07-04 19:37:48.131267+00	2022-07-04 17:08:07.853416+00
167	ostry	Ostry	0	0	0	0	227	220	267	248					2022-07-04 19:37:48.127282+00	2022-07-04 17:08:07.760307+00
171	daniel_oware	Daniel Oware	0	0	0	0	224	219	266	247					2022-07-04 19:37:48.123813+00	2022-07-04 17:08:07.771922+00
137	matheo	Matheo	646	646	646	646	185	185	185	185	mieć x48 / cały x32 / ciągle x31 / chcieć x27 / esta x19 / 	mieć x48 / cały x32 / ciągle x31 / chcieć x27 / esta x19 / 	mieć x48 / cały x32 / ciągle x31 / chcieć x27 / esta x19 / 	mieć x48 / cały x32 / ciągle x31 / chcieć x27 / esta x19 / 	2022-07-04 19:37:47.894447+00	2022-07-04 17:08:07.671162+00
181	kordian_piwowarski	Kordian Piwowarski	0	0	0	0	223	218	265	246					2022-07-04 19:37:48.119936+00	2022-07-04 17:08:07.800366+00
237	sliwka_tuitam	Śliwka Tuitam	303	303	303	303	204	204	204	204	mieć x14 / koniec x7 / cisza x7 / który x6 / wciąż x6 / 	mieć x14 / koniec x7 / cisza x7 / który x6 / wciąż x6 / 	mieć x14 / koniec x7 / cisza x7 / który x6 / wciąż x6 / 	mieć x14 / koniec x7 / cisza x7 / który x6 / wciąż x6 / 	2022-07-04 19:37:47.964813+00	2022-07-04 17:08:07.964078+00
146	mlody_m	Młody M	3279	3610	3610	3610	61	78	78	78	mieć x291 / wiedzieć x174 / czas x128 / życie x117 / chcieć x114 / 	mieć x329 / wiedzieć x188 / czas x137 / chcieć x130 / życie x126 / 	mieć x329 / wiedzieć x188 / czas x137 / chcieć x130 / życie x126 / 	mieć x329 / wiedzieć x188 / czas x137 / chcieć x130 / życie x126 / 	2022-07-04 19:37:47.500817+00	2022-07-04 17:08:07.69782+00
185	platoon	Platoon	0	0	0	0	222	217	264	245					2022-07-04 19:37:48.116477+00	2022-07-04 17:08:07.812326+00
170	owal	Owal	1514	1514	1514	1514	154	154	154	154	mieć x63 / wiedzieć x60 / chcieć x40 / rapa x34 / jeśli x30 / 	mieć x63 / wiedzieć x60 / chcieć x40 / rapa x34 / jeśli x30 / 	mieć x63 / wiedzieć x60 / chcieć x40 / rapa x34 / jeśli x30 / 	mieć x63 / wiedzieć x60 / chcieć x40 / rapa x34 / jeśli x30 / 	2022-07-04 19:37:47.779664+00	2022-07-04 17:08:07.768858+00
186	pogz	Pogz	0	0	0	0	221	216	263	244					2022-07-04 19:37:48.112919+00	2022-07-04 17:08:07.814903+00
187	pomidor	Pomidor	0	0	0	0	220	215	262	243					2022-07-04 19:37:48.109364+00	2022-07-04 17:08:07.818195+00
224	solar	Solar	3388	3388	3388	3388	51	87	88	88	mieć x205 / chcieć x128 / wiedzieć x70 / mówić x66 / tylko x59 / 	mieć x205 / chcieć x128 / wiedzieć x70 / mówić x66 / tylko x59 / 	mieć x205 / chcieć x128 / wiedzieć x70 / mówić x66 / tylko x59 / 	mieć x205 / chcieć x128 / wiedzieć x70 / mówić x66 / tylko x59 / 	2022-07-04 19:37:47.537625+00	2022-07-04 17:08:07.926376+00
157	nullo	Nullo	529	529	529	529	191	191	191	191	który x14 / gdzie x13 / mieć x13 / świat x12 / swój x10 / 	który x14 / gdzie x13 / mieć x13 / świat x12 / swój x10 / 	który x14 / gdzie x13 / mieć x13 / świat x12 / swój x10 / 	który x14 / gdzie x13 / mieć x13 / świat x12 / swój x10 / 	2022-07-04 19:37:47.916171+00	2022-07-04 17:08:07.73081+00
166	oreu	OREU	0	0	0	0	228	222	261	242					2022-07-04 19:37:48.105749+00	2022-07-04 17:08:07.757712+00
240	te_tris	Te-Tris	0	0	0	0	276	224	260	241					2022-07-04 19:37:48.102247+00	2022-07-04 17:08:07.972631+00
217	slon	Słoń	0	0	0	0	275	225	259	240					2022-07-04 19:37:48.09861+00	2022-07-04 17:08:07.906035+00
218	tymon_smektala	Tymon Smektała	0	0	0	0	274	226	258	239					2022-07-04 19:37:48.094608+00	2022-07-04 17:08:07.909251+00
125	lyonner	Lyonner	0	0	0	0	273	227	257	238					2022-07-04 19:37:48.091105+00	2022-07-04 17:08:07.635278+00
244	tigermaan	Tigermaan	0	0	0	0	218	276	242	237					2022-07-04 19:37:48.087189+00	2022-07-04 17:08:07.984079+00
231	slawomir_szczesniak	Sławomir Szczęśniak	0	0	0	0	270	228	256	236					2022-07-04 19:37:48.083765+00	2022-07-04 17:08:07.946505+00
198	radonis	Radonis	0	0	0	0	217	214	255	235					2022-07-04 19:37:48.079886+00	2022-07-04 17:08:07.850081+00
215	siwers	Siwers	2703	2703	2703	2703	108	113	113	113	mieć x114 / wiedzieć x50 / chcieć x47 / siebie x34 / dobry x31 / 	mieć x114 / wiedzieć x50 / chcieć x47 / siebie x34 / dobry x31 / 	mieć x114 / wiedzieć x50 / chcieć x47 / siebie x34 / dobry x31 / 	mieć x114 / wiedzieć x50 / chcieć x47 / siebie x34 / dobry x31 / 	2022-07-04 19:37:47.62948+00	2022-07-04 17:08:07.900752+00
165	onil	Onil	0	0	0	0	229	229	254	234					2022-07-04 19:37:48.076508+00	2022-07-04 17:08:07.754938+00
228	kazik_staszewski	Kazik Staszewski	0	0	0	0	267	245	253	233					2022-07-04 19:37:48.072698+00	2022-07-04 17:08:07.938081+00
149	mrokas	Mrokas	0	0	0	0	266	246	252	232					2022-07-04 19:37:48.069295+00	2022-07-04 17:08:07.706709+00
227	stasio	Stasio	0	0	0	0	264	247	251	231					2022-07-04 19:37:48.065468+00	2022-07-04 17:08:07.935313+00
152	niziol	Nizioł	0	0	0	0	263	248	250	230					2022-07-04 19:37:48.062003+00	2022-07-04 17:08:07.715972+00
196	quiz	Quiz	1564	1564	1564	1564	149	149	149	149	mieć x103 / wiedzieć x32 / chcieć x31 / swój x27 / tylko x25 / 	mieć x103 / wiedzieć x32 / chcieć x31 / swój x27 / tylko x25 / 	mieć x103 / wiedzieć x32 / chcieć x31 / swój x27 / tylko x25 / 	mieć x103 / wiedzieć x32 / chcieć x31 / swój x27 / tylko x25 / 	2022-07-04 19:37:47.761849+00	2022-07-04 17:08:07.844214+00
208	rufuz	Rufuz	0	0	0	0	214	261	249	229					2022-07-04 19:37:48.058027+00	2022-07-04 17:08:07.879995+00
151	iwo_naumowicz	Iwo Naumowicz	0	0	0	0	265	262	248	228					2022-07-04 19:37:48.054585+00	2022-07-04 17:08:07.712744+00
141	mikser	Mikser	0	0	0	0	268	263	247	227					2022-07-04 19:37:48.050841+00	2022-07-04 17:08:07.682985+00
235	szyha	Szyha	0	0	0	0	271	264	246	226					2022-07-04 19:37:48.047318+00	2022-07-04 17:08:07.958455+00
126	legu	Łęgu	0	0	0	0	272	265	245	225					2022-07-04 19:37:48.043478+00	2022-07-04 17:08:07.638332+00
190	pork	Pork	0	0	0	0	219	266	244	224					2022-07-04 19:37:48.039949+00	2022-07-04 17:08:07.826837+00
12	b_r_o	B.R.O	2936	4375	5718	7567	98	54	33	13	mieć x372 / wiedzieć x162 / rapa x130 / chcieć x101 / który x95 / 	mieć x615 / wiedzieć x422 / rapa x230 / który x197 / chcieć x194 / 	mieć x893 / wiedzieć x664 / chcieć x313 / rapa x293 / mówić x288 / 	mieć x1297 / wiedzieć x869 / chcieć x519 / mówić x434 / dziś x408 / 	2022-07-04 19:37:47.261735+00	2022-07-04 17:08:07.276508+00
21	emil_blef	Emil Blef	1757	1757	1757	1757	143	143	143	143	mieć x108 / wiedzieć x44 / który x43 / tylko x35 / mówić x34 / 	mieć x108 / wiedzieć x44 / który x43 / tylko x35 / mówić x34 / 	mieć x108 / wiedzieć x44 / który x43 / tylko x35 / mówić x34 / 	mieć x108 / wiedzieć x44 / który x43 / tylko x35 / mówić x34 / 	2022-07-04 19:37:47.739398+00	2022-07-04 17:08:07.307382+00
257	grzegorz_wasowski	Grzegorz Wasowski	0	0	0	0	239	270	241	222					2022-07-04 19:37:48.032635+00	2022-07-04 17:08:08.022183+00
259	wigor	Wigor	0	0	0	0	241	271	240	221					2022-07-04 19:37:48.028946+00	2022-07-04 17:08:08.028054+00
260	wilku	Wilku	0	0	0	0	244	272	239	220					2022-07-04 19:37:48.025097+00	2022-07-04 17:08:08.030564+00
6	abradab	Abradab	3758	5109	5109	5109	24	33	40	40	mieć x244 / swój x93 / wiedzieć x83 / chcieć x81 / rapa x75 / 	mieć x365 / chcieć x174 / swój x132 / wiedzieć x121 / kiedy x117 / 	mieć x365 / chcieć x174 / swój x132 / wiedzieć x121 / kiedy x117 / 	mieć x365 / chcieć x174 / swój x132 / wiedzieć x121 / kiedy x117 / 	2022-07-04 19:37:47.361537+00	2022-07-04 17:08:07.255056+00
11	ash	Ash	1898	3119	3402	3402	136	97	87	87	inny x371 / your x251 / alla x163 / yeah x145 / know x121 / 	inny x671 / your x518 / alla x309 / yeah x280 / know x210 / 	inny x712 / your x546 / alla x324 / yeah x282 / know x221 / 	inny x712 / your x546 / alla x324 / yeah x282 / know x221 / 	2022-07-04 19:37:47.534175+00	2022-07-04 17:08:07.272596+00
273	zocha	Zocha	0	0	0	0	246	273	238	219					2022-07-04 19:37:48.021345+00	2022-07-04 17:08:08.068961+00
276	zolf	Żółf	0	0	0	0	251	274	237	218					2022-07-04 19:37:48.017331+00	2022-07-04 17:08:08.077518+00
18	bialas	Białas	3366	5418	5808	5808	53	24	32	33	mieć x292 / wiedzieć x147 / chcieć x99 / tylko x97 / białas x89 / 	mieć x618 / chcieć x247 / wiedzieć x237 / tylko x173 / białas x163 / 	mieć x709 / chcieć x270 / wiedzieć x261 / tylko x192 / siebie x190 / 	mieć x709 / chcieć x270 / wiedzieć x261 / tylko x192 / siebie x190 / 	2022-07-04 19:37:47.335095+00	2022-07-04 17:08:07.297454+00
20	bisz	Bisz	3464	3464	3464	3464	44	84	84	84	mieć x164 / chcieć x105 / który x95 / wiedzieć x95 / czas x85 / 	mieć x164 / chcieć x105 / który x95 / wiedzieć x95 / czas x85 / 	mieć x164 / chcieć x105 / który x95 / wiedzieć x95 / czas x85 / 	mieć x164 / chcieć x105 / który x95 / wiedzieć x95 / czas x85 / 	2022-07-04 19:37:47.522794+00	2022-07-04 17:08:07.304512+00
262	wlodi	Włodi	3116	3116	3116	3116	84	99	99	99	mieć x188 / chcieć x90 / wiedzieć x77 / który x62 / włód x55 / 	mieć x188 / chcieć x90 / wiedzieć x77 / który x62 / włód x55 / 	mieć x188 / chcieć x90 / wiedzieć x77 / który x62 / włód x55 / 	mieć x188 / chcieć x90 / wiedzieć x77 / który x62 / włód x55 / 	2022-07-04 19:37:47.577814+00	2022-07-04 17:08:08.036696+00
15	bedoes	Bedoes	2854	3434	3434	3434	101	86	86	86	mieć x348 / chcieć x214 / wiedzieć x151 / robić x117 / kurwa x101 / 	mieć x410 / chcieć x259 / wiedzieć x162 / mówić x132 / robić x122 / 	mieć x410 / chcieć x259 / wiedzieć x162 / mówić x132 / robić x122 / 	mieć x410 / chcieć x259 / wiedzieć x162 / mówić x132 / robić x122 / 	2022-07-04 19:37:47.530274+00	2022-07-04 17:08:07.286828+00
250	vienio	Vienio	2821	2821	2821	2821	104	110	110	110	mieć x153 / wiedzieć x94 / człowiek x77 / siebie x48 / swój x45 / 	mieć x153 / wiedzieć x94 / człowiek x77 / siebie x48 / swój x45 / 	mieć x153 / wiedzieć x94 / człowiek x77 / siebie x48 / swój x45 / 	mieć x153 / wiedzieć x94 / człowiek x77 / siebie x48 / swój x45 / 	2022-07-04 19:37:47.618254+00	2022-07-04 17:08:08.001518+00
2	2sty	2sty	2151	2151	2151	2151	124	125	125	125	mieć x176 / wiedzieć x70 / chcieć x45 / siebie x45 / który x39 / 	mieć x176 / wiedzieć x70 / chcieć x45 / siebie x45 / który x39 / 	mieć x176 / wiedzieć x70 / chcieć x45 / siebie x45 / który x39 / 	mieć x176 / wiedzieć x70 / chcieć x45 / siebie x45 / który x39 / 	2022-07-04 19:37:47.673139+00	2022-07-04 17:08:07.239207+00
22	bob_one	Bob One	2643	2643	2643	2643	109	114	114	114	mieć x234 / czas x106 / wiedzieć x103 / chcieć x99 / swój x83 / 	mieć x234 / czas x106 / wiedzieć x103 / chcieć x99 / swój x83 / 	mieć x234 / czas x106 / wiedzieć x103 / chcieć x99 / swój x83 / 	mieć x234 / czas x106 / wiedzieć x103 / chcieć x99 / swój x83 / 	2022-07-04 19:37:47.633131+00	2022-07-04 17:08:07.310686+00
1	1z2	1z2	1938	1938	1938	1938	133	134	134	134	mieć x159 / rapa x129 / życie x103 / chcieć x93 / wiedzieć x90 / 	mieć x159 / rapa x129 / życie x103 / chcieć x93 / wiedzieć x90 / 	mieć x159 / rapa x129 / życie x103 / chcieć x93 / wiedzieć x90 / 	mieć x159 / rapa x129 / życie x103 / chcieć x93 / wiedzieć x90 / 	2022-07-04 19:37:47.706102+00	2022-07-04 17:08:07.232648+00
5	abel	Abel	1562	1562	1562	1562	150	150	150	150	mieć x91 / wiedzieć x49 / rapa x28 / chcieć x28 / robić x28 / 	mieć x91 / wiedzieć x49 / rapa x28 / chcieć x28 / robić x28 / 	mieć x91 / wiedzieć x49 / rapa x28 / chcieć x28 / robić x28 / 	mieć x91 / wiedzieć x49 / rapa x28 / chcieć x28 / robić x28 / 	2022-07-04 19:37:47.765364+00	2022-07-04 17:08:07.25147+00
16	belmondo	Belmondo	993	993	993	993	173	173	173	173	mieć x37 / młody x17 / gram x16 / squad x16 / chcieć x14 / 	mieć x37 / młody x17 / gram x16 / squad x16 / chcieć x14 / 	mieć x37 / młody x17 / gram x16 / squad x16 / chcieć x14 / 	mieć x37 / młody x17 / gram x16 / squad x16 / chcieć x14 / 	2022-07-04 19:37:47.850399+00	2022-07-04 17:08:07.290921+00
9	alberto	Alberto	897	897	897	897	177	177	177	177	mieć x75 / peng x32 / albo x27 / koka x24 / przewóz x24 / 	mieć x75 / peng x32 / albo x27 / koka x24 / przewóz x24 / 	mieć x75 / peng x32 / albo x27 / koka x24 / przewóz x24 / 	mieć x75 / peng x32 / albo x27 / koka x24 / przewóz x24 / 	2022-07-04 19:37:47.865083+00	2022-07-04 17:08:07.265426+00
3	4p	4P	442	442	442	442	197	197	197	197	kakao x25 / mieć x16 / jeden x8 / pierwszy x8 / swój x7 / 	kakao x25 / mieć x16 / jeden x8 / pierwszy x8 / swój x7 / 	kakao x25 / mieć x16 / jeden x8 / pierwszy x8 / swój x7 / 	kakao x25 / mieć x16 / jeden x8 / pierwszy x8 / swój x7 / 	2022-07-04 19:37:47.93853+00	2022-07-04 17:08:07.243935+00
245	zygmunt_tomala	Zygmunt Tomala	0	0	0	0	225	277	235	215					2022-07-04 19:37:48.006343+00	2022-07-04 17:08:07.987078+00
277	zurom	Żurom	0	0	0	0	261	275	236	217					2022-07-04 19:37:48.013915+00	2022-07-04 17:08:08.080508+00
256	ward	Ward	0	0	0	0	226	268	234	216					2022-07-04 19:37:48.009954+00	2022-07-04 17:08:08.019341+00
268	z_b_u_k_u	Z.B.U.K.U	2969	4972	5286	5286	95	39	36	36	mieć x297 / życie x160 / wiedzieć x100 / tylko x85 / chcieć x85 / 	mieć x564 / chcieć x269 / życie x262 / wiedzieć x196 / tylko x182 / 	mieć x611 / chcieć x306 / życie x269 / tylko x212 / wiedzieć x207 / 	mieć x611 / chcieć x306 / życie x269 / tylko x212 / wiedzieć x207 / 	2022-07-04 19:37:47.346456+00	2022-07-04 17:08:08.054298+00
29	brahu	Brahu	2080	2080	2080	2080	128	129	129	129	mieć x108 / życie x83 / chcieć x82 / wiedzieć x71 / który x70 / 	mieć x108 / życie x83 / chcieć x82 / wiedzieć x71 / który x70 / 	mieć x108 / życie x83 / chcieć x82 / wiedzieć x71 / który x70 / 	mieć x108 / życie x83 / chcieć x82 / wiedzieć x71 / który x70 / 	2022-07-04 19:37:47.687781+00	2022-07-04 17:08:07.335104+00
31	buczer	Buczer	3196	5040	5040	5040	68	35	42	42	mieć x289 / chcieć x170 / mówić x117 / wiedzieć x112 / który x100 / 	mieć x479 / chcieć x263 / wiedzieć x191 / który x176 / mówić x153 / 	mieć x479 / chcieć x263 / wiedzieć x191 / który x176 / mówić x153 / 	mieć x479 / chcieć x263 / wiedzieć x191 / który x176 / mówić x153 / 	2022-07-04 19:37:47.368878+00	2022-07-04 17:08:07.34147+00
43	dka	DKA	2754	4788	6266	6393	105	44	25	25	mieć x259 / chcieć x157 / wiedzieć x136 / życie x130 / człowiek x125 / 	mieć x575 / chcieć x397 / wiedzieć x270 / człowiek x232 / świat x217 / 	mieć x935 / chcieć x596 / wiedzieć x414 / człowiek x302 / świat x292 / 	mieć x993 / chcieć x661 / wiedzieć x442 / człowiek x311 / świat x308 / 	2022-07-04 19:37:47.305976+00	2022-07-04 17:08:07.38125+00
33	chada	Chada	3151	5230	6612	6617	78	27	19	22	mieć x250 / wiedzieć x124 / swój x106 / który x100 / chcieć x89 / 	mieć x514 / wiedzieć x221 / chcieć x180 / życie x180 / który x177 / 	mieć x727 / wiedzieć x316 / życie x303 / chcieć x295 / który x231 / 	mieć x727 / wiedzieć x316 / życie x303 / chcieć x295 / który x231 / 	2022-07-04 19:37:47.294442+00	2022-07-04 17:08:07.34828+00
25	bonus_rpk	Bonus RPK	3571	5859	5859	5859	31	16	31	32	mieć x177 / życie x144 / wiedzieć x84 / rapa x82 / swój x65 / 	mieć x339 / życie x256 / wiedzieć x137 / człowiek x131 / chcieć x124 / 	mieć x339 / życie x256 / wiedzieć x137 / człowiek x131 / chcieć x124 / 	mieć x339 / życie x256 / wiedzieć x137 / człowiek x131 / chcieć x124 / 	2022-07-04 19:37:47.331548+00	2022-07-04 17:08:07.321087+00
36	cira	Cira	4037	4037	4037	4037	11	63	63	63	mieć x100 / chcieć x69 / który x53 / człowiek x47 / czas x39 / 	mieć x100 / chcieć x69 / który x53 / człowiek x47 / czas x39 / 	mieć x100 / chcieć x69 / który x53 / człowiek x47 / czas x39 / 	mieć x100 / chcieć x69 / który x53 / człowiek x47 / czas x39 / 	2022-07-04 19:37:47.446041+00	2022-07-04 17:08:07.358049+00
46	doniu	Doniu	3001	3001	3001	3001	94	106	106	106	mieć x253 / wiedzieć x91 / chcieć x75 / tylko x67 / dziś x54 / 	mieć x253 / wiedzieć x91 / chcieć x75 / tylko x67 / dziś x54 / 	mieć x253 / wiedzieć x91 / chcieć x75 / tylko x67 / dziś x54 / 	mieć x253 / wiedzieć x91 / chcieć x75 / tylko x67 / dziś x54 / 	2022-07-04 19:37:47.603663+00	2022-07-04 17:08:07.389914+00
27	borixon	Borixon	3149	5217	5279	5279	79	28	37	37	mieć x348 / rapa x112 / wiedzieć x105 / który x97 / nasz x83 / 	mieć x686 / chcieć x227 / wiedzieć x195 / siebie x173 / który x171 / 	mieć x698 / chcieć x227 / wiedzieć x195 / siebie x177 / który x171 / 	mieć x698 / chcieć x227 / wiedzieć x195 / siebie x177 / który x171 / 	2022-07-04 19:37:47.350022+00	2022-07-04 17:08:07.32802+00
51	eis	Eis	1801	1801	1801	1801	140	140	140	140	mieć x136 / chcieć x59 / inny x53 / wiedzieć x47 / polski x33 / 	mieć x136 / chcieć x59 / inny x53 / wiedzieć x47 / polski x33 / 	mieć x136 / chcieć x59 / inny x53 / wiedzieć x47 / polski x33 / 	mieć x136 / chcieć x59 / inny x53 / wiedzieć x47 / polski x33 / 	2022-07-04 19:37:47.728774+00	2022-07-04 17:08:07.404706+00
41	diox	Diox	2521	2521	2521	2521	112	115	115	115	mieć x169 / chcieć x107 / wiedzieć x82 / czuć x52 / grać x46 / 	mieć x169 / chcieć x107 / wiedzieć x82 / czuć x52 / grać x46 / 	mieć x169 / chcieć x107 / wiedzieć x82 / czuć x52 / grać x46 / 	mieć x169 / chcieć x107 / wiedzieć x82 / czuć x52 / grać x46 / 	2022-07-04 19:37:47.63658+00	2022-07-04 17:08:07.374679+00
23	bober	Bober	1672	1672	1672	1672	145	145	145	145	mieć x99 / chcieć x63 / wiedzieć x35 / twój x32 / chodzić x29 / 	mieć x99 / chcieć x63 / wiedzieć x35 / twój x32 / chodzić x29 / 	mieć x99 / chcieć x63 / wiedzieć x35 / twój x32 / chodzić x29 / 	mieć x99 / chcieć x63 / wiedzieć x35 / twój x32 / chodzić x29 / 	2022-07-04 19:37:47.746747+00	2022-07-04 17:08:07.314107+00
34	chivas	Chivas	1207	1207	1207	1207	165	165	165	165	mieć x95 / chcieć x69 / wiedzieć x38 / piekło x36 / robić x35 / 	mieć x95 / chcieć x69 / wiedzieć x38 / piekło x36 / robić x35 / 	mieć x95 / chcieć x69 / wiedzieć x38 / piekło x36 / robić x35 / 	mieć x95 / chcieć x69 / wiedzieć x38 / piekło x36 / robić x35 / 	2022-07-04 19:37:47.821024+00	2022-07-04 17:08:07.351446+00
50	egon	Egon	1127	1127	1127	1127	167	167	167	167	mieć x49 / ulica x31 / late x24 / chcieć x22 / życie x20 / 	mieć x49 / ulica x31 / late x24 / chcieć x22 / życie x20 / 	mieć x49 / ulica x31 / late x24 / chcieć x22 / życie x20 / 	mieć x49 / ulica x31 / late x24 / chcieć x22 / życie x20 / 	2022-07-04 19:37:47.828307+00	2022-07-04 17:08:07.402008+00
57	sebastian_fabijanski	Sebastian Fabijański	1084	1084	1084	1084	169	169	169	169	mieć x51 / wiedzieć x21 / chcieć x19 / tylko x17 / wszystko x17 / 	mieć x51 / wiedzieć x21 / chcieć x19 / tylko x17 / wszystko x17 / 	mieć x51 / wiedzieć x21 / chcieć x19 / tylko x17 / wszystko x17 / 	mieć x51 / wiedzieć x21 / chcieć x19 / tylko x17 / wszystko x17 / 	2022-07-04 19:37:47.835888+00	2022-07-04 17:08:07.42252+00
39	deep	Deep	1070	1070	1070	1070	170	170	170	170	mieć x28 / dzień x14 / cest x13 / chcieć x11 / kiedy x11 / 	mieć x28 / dzień x14 / cest x13 / chcieć x11 / kiedy x11 / 	mieć x28 / dzień x14 / cest x13 / chcieć x11 / kiedy x11 / 	mieć x28 / dzień x14 / cest x13 / chcieć x11 / kiedy x11 / 	2022-07-04 19:37:47.839774+00	2022-07-04 17:08:07.368382+00
26	bolec	Bolec	475	475	475	475	194	194	194	194	czas x20 / buja x19 / czuć x17 / mieć x16 / nowy x13 / 	czas x20 / buja x19 / czuć x17 / mieć x16 / nowy x13 / 	czas x20 / buja x19 / czuć x17 / mieć x16 / nowy x13 / 	czas x20 / buja x19 / czuć x17 / mieć x16 / nowy x13 / 	2022-07-04 19:37:47.926944+00	2022-07-04 17:08:07.32464+00
47	dono	Dono	121	121	121	121	212	212	212	212	your x27 / wanna x15 / baba x11 / there x9 / wanted x8 / 	your x27 / wanna x15 / baba x11 / there x9 / wanted x8 / 	your x27 / wanna x15 / baba x11 / there x9 / wanted x8 / 	your x27 / wanna x15 / baba x11 / there x9 / wanted x8 / 	2022-07-04 19:37:47.995108+00	2022-07-04 17:08:07.392954+00
45	donguralesko	Donguralesko	3853	6368	8468	12937	16	5	4	4	mieć x262 / wiedzieć x88 / gural x79 / mówić x73 / robić x70 / 	mieć x508 / wiedzieć x178 / robić x165 / chcieć x145 / gural x144 / 	mieć x774 / wiedzieć x280 / robić x230 / mówić x210 / chcieć x199 / 	mieć x1355 / wiedzieć x423 / chcieć x384 / robić x335 / mówić x324 / 	2022-07-04 19:37:47.228987+00	2022-07-04 17:08:07.387059+00
53	eldo	Eldo	3503	5623	6995	6995	41	19	16	18	mieć x234 / chcieć x157 / wiedzieć x135 / który x95 / życie x93 / 	mieć x458 / chcieć x295 / wiedzieć x242 / który x190 / życie x190 / 	mieć x606 / chcieć x370 / wiedzieć x308 / świat x225 / który x219 / 	mieć x606 / chcieć x370 / wiedzieć x308 / świat x225 / który x219 / 	2022-07-04 19:37:47.279444+00	2022-07-04 17:08:07.410606+00
48	dudek_p56	Dudek P56	3047	4854	6459	6708	91	42	22	20	mieć x176 / człowiek x128 / chcieć x118 / wiedzieć x117 / każdy x99 / 	mieć x346 / człowiek x309 / wiedzieć x258 / chcieć x231 / życie x218 / 	mieć x719 / człowiek x446 / wiedzieć x362 / życie x339 / chcieć x325 / 	mieć x755 / człowiek x461 / wiedzieć x367 / życie x350 / chcieć x346 / 	2022-07-04 19:37:47.286923+00	2022-07-04 17:08:07.395914+00
68	gedz	Gedz	3263	3882	3882	3882	63	70	70	70	mieć x297 / chcieć x150 / życie x110 / wiedzieć x106 / mówić x94 / 	mieć x379 / chcieć x222 / mówić x139 / życie x132 / wiedzieć x130 / 	mieć x379 / chcieć x222 / mówić x139 / życie x132 / wiedzieć x130 / 	mieć x379 / chcieć x222 / mówić x139 / życie x132 / wiedzieć x130 / 	2022-07-04 19:37:47.471425+00	2022-07-04 17:08:07.457281+00
63	fu	Fu	3846	5045	5045	5045	18	34	41	41	mieć x163 / czas x84 / świat x83 / swój x83 / chcieć x80 / 	mieć x274 / życie x172 / czas x140 / chcieć x135 / swój x131 / 	mieć x274 / życie x172 / czas x140 / chcieć x135 / swój x131 / 	mieć x274 / życie x172 / czas x140 / chcieć x135 / swój x131 / 	2022-07-04 19:37:47.364979+00	2022-07-04 17:08:07.440455+00
79	huczuhucz	HuczuHucz	3311	4102	4102	4102	57	59	59	59	mieć x256 / jeden x154 / wiedzieć x124 / chcieć x94 / czas x88 / 	mieć x377 / wiedzieć x170 / jeden x168 / chcieć x144 / czas x115 / 	mieć x377 / wiedzieć x170 / jeden x168 / chcieć x144 / czas x115 / 	mieć x377 / wiedzieć x170 / jeden x168 / chcieć x144 / czas x115 / 	2022-07-04 19:37:47.431395+00	2022-07-04 17:08:07.492465+00
73	guzior	Guzior	3701	3900	3900	3900	26	68	68	68	mieć x253 / siebie x97 / tylko x89 / mówić x76 / wszystko x72 / 	mieć x268 / siebie x103 / tylko x103 / mówić x80 / wiedzieć x75 / 	mieć x268 / siebie x103 / tylko x103 / mówić x80 / wiedzieć x75 / 	mieć x268 / siebie x103 / tylko x103 / mówić x80 / wiedzieć x75 / 	2022-07-04 19:37:47.464165+00	2022-07-04 17:08:07.472892+00
59	filipek	Filipek	3840	6210	7783	8584	19	8	7	10	mieć x305 / kurwa x168 / chcieć x112 / wiedzieć x74 / twój x66 / 	mieć x569 / kurwa x260 / chcieć x205 / wiedzieć x135 / który x135 / 	mieć x882 / chcieć x349 / kurwa x297 / życie x218 / który x213 / 	mieć x1112 / chcieć x436 / kurwa x317 / życie x297 / który x269 / 	2022-07-04 19:37:47.251024+00	2022-07-04 17:08:07.428416+00
87	jongmen	Jongmen	3505	3505	3505	3505	40	83	83	83	mieć x184 / chcieć x103 / wiedzieć x75 / swój x74 / życie x74 / 	mieć x184 / chcieć x103 / wiedzieć x75 / swój x74 / życie x74 / 	mieć x184 / chcieć x103 / wiedzieć x75 / swój x74 / życie x74 / 	mieć x184 / chcieć x103 / wiedzieć x75 / swój x74 / życie x74 / 	2022-07-04 19:37:47.519292+00	2022-07-04 17:08:07.517339+00
60	fisz	Fisz	3180	3180	3180	3180	71	94	95	95	mieć x284 / mówić x115 / wiedzieć x93 / który x80 / siebie x79 / 	mieć x284 / mówić x115 / wiedzieć x93 / który x80 / siebie x79 / 	mieć x284 / mówić x115 / wiedzieć x93 / który x80 / siebie x79 / 	mieć x284 / mówić x115 / wiedzieć x93 / który x80 / siebie x79 / 	2022-07-04 19:37:47.56368+00	2022-07-04 17:08:07.431233+00
83	jan_rapowanie	Jan-Rapowanie	1905	1905	1905	1905	134	135	135	135	mieć x114 / chcieć x94 / kurwa x56 / wiedzieć x52 / czas x51 / 	mieć x114 / chcieć x94 / kurwa x56 / wiedzieć x52 / czas x51 / 	mieć x114 / chcieć x94 / kurwa x56 / wiedzieć x52 / czas x51 / 	mieć x114 / chcieć x94 / kurwa x56 / wiedzieć x52 / czas x51 / 	2022-07-04 19:37:47.709865+00	2022-07-04 17:08:07.504711+00
78	hst	HST	1522	1522	1522	1522	153	153	153	153	brat x77 / mieć x74 / wiedzieć x40 / chcieć x40 / życie x33 / 	brat x77 / mieć x74 / wiedzieć x40 / chcieć x40 / życie x33 / 	brat x77 / mieć x74 / wiedzieć x40 / chcieć x40 / życie x33 / 	brat x77 / mieć x74 / wiedzieć x40 / chcieć x40 / życie x33 / 	2022-07-04 19:37:47.776207+00	2022-07-04 17:08:07.488855+00
80	hukos	Hukos	3619	3619	3619	3619	30	77	77	77	mieć x149 / czas x84 / chcieć x82 / hukos x61 / tylko x60 / 	mieć x149 / czas x84 / chcieć x82 / hukos x61 / tylko x60 / 	mieć x149 / czas x84 / chcieć x82 / hukos x61 / tylko x60 / 	mieć x149 / czas x84 / chcieć x82 / hukos x61 / tylko x60 / 	2022-07-04 19:37:47.496695+00	2022-07-04 17:08:07.495316+00
72	gruby_mielzky	Gruby Mielzky	3378	3378	3378	3378	52	88	89	89	mieć x210 / który x129 / rapa x101 / chcieć x88 / człowiek x88 / 	mieć x210 / który x129 / rapa x101 / chcieć x88 / człowiek x88 / 	mieć x210 / który x129 / rapa x101 / chcieć x88 / człowiek x88 / 	mieć x210 / który x129 / rapa x101 / chcieć x88 / człowiek x88 / 	2022-07-04 19:37:47.541533+00	2022-07-04 17:08:07.469083+00
58	fazi	Fazi	4210	4210	4210	4210	2	58	58	58	mieć x169 / chcieć x132 / kurwa x105 / wiedzieć x83 / tylko x65 / 	mieć x169 / chcieć x132 / kurwa x105 / wiedzieć x83 / tylko x65 / 	mieć x169 / chcieć x132 / kurwa x105 / wiedzieć x83 / tylko x65 / 	mieć x169 / chcieć x132 / kurwa x105 / wiedzieć x83 / tylko x65 / 	2022-07-04 19:37:47.427277+00	2022-07-04 17:08:07.425203+00
82	inespe	Inespe	1253	1253	1253	1253	163	163	163	163	mieć x54 / człowiek x35 / chcieć x33 / siebie x29 / swój x28 / 	mieć x54 / człowiek x35 / chcieć x33 / siebie x29 / swój x28 / 	mieć x54 / człowiek x35 / chcieć x33 / siebie x29 / swój x28 / 	mieć x54 / człowiek x35 / chcieć x33 / siebie x29 / swój x28 / 	2022-07-04 19:37:47.813738+00	2022-07-04 17:08:07.50176+00
67	gano	Gano	764	764	764	764	181	181	181	181	mieć x17 / czas x12 / prosty x11 / mówić x10 / kiedy x9 / 	mieć x17 / czas x12 / prosty x11 / mówić x10 / kiedy x9 / 	mieć x17 / czas x12 / prosty x11 / mówić x10 / kiedy x9 / 	mieć x17 / czas x12 / prosty x11 / mówić x10 / kiedy x9 / 	2022-07-04 19:37:47.880057+00	2022-07-04 17:08:07.453481+00
64	fukaj	Fukaj	548	548	548	548	190	190	190	190	życie x29 / chcieć x27 / mieć x22 / nadal x18 / temu x16 / 	życie x29 / chcieć x27 / mieć x22 / nadal x18 / temu x16 / 	życie x29 / chcieć x27 / mieć x22 / nadal x18 / temu x16 / 	życie x29 / chcieć x27 / mieć x22 / nadal x18 / temu x16 / 	2022-07-04 19:37:47.912435+00	2022-07-04 17:08:07.444138+00
88	josef_bratan	Josef Bratan	272	272	272	272	205	205	205	205	tylko x12 / wszystko x11 / dawaj x11 / josef x10 / auto x10 / 	tylko x12 / wszystko x11 / dawaj x11 / josef x10 / auto x10 / 	tylko x12 / wszystko x11 / dawaj x11 / josef x10 / auto x10 / 	tylko x12 / wszystko x11 / dawaj x11 / josef x10 / auto x10 / 	2022-07-04 19:37:47.968362+00	2022-07-04 17:08:07.521059+00
65	funky_filon	Funky Filon	217	217	217	217	210	210	210	210	czik x21 / mały x9 / linka x9 / chinka x8 / mieć x7 / 	czik x21 / mały x9 / linka x9 / chinka x8 / mieć x7 / 	czik x21 / mały x9 / linka x9 / chinka x8 / mieć x7 / 	czik x21 / mały x9 / linka x9 / chinka x8 / mieć x7 / 	2022-07-04 19:37:47.98768+00	2022-07-04 17:08:07.447202+00
77	taco_hemingway	Taco Hemingway	4127	6077	7569	9010	5	13	10	8	mieć x159 / chcieć x103 / mówić x79 / your x71 / inny x61 / 	mieć x366 / chcieć x249 / mówić x197 / widzieć x112 / wiedzieć x109 / 	mieć x608 / chcieć x433 / mówić x265 / wiedzieć x172 / znowu x161 / 	mieć x883 / chcieć x545 / mówić x326 / wiedzieć x218 / robić x200 / 	2022-07-04 19:37:47.243701+00	2022-07-04 17:08:07.486215+00
62	fokus	Fokus	3951	5190	5190	5190	13	29	38	38	mieć x328 / wiedzieć x131 / czas x84 / chcieć x78 / mówić x75 / 	mieć x479 / wiedzieć x206 / chcieć x138 / czas x129 / mówić x112 / 	mieć x479 / wiedzieć x206 / chcieć x138 / czas x129 / mówić x112 / 	mieć x479 / wiedzieć x206 / chcieć x138 / czas x129 / mówić x112 / 	2022-07-04 19:37:47.353788+00	2022-07-04 17:08:07.437614+00
71	grubson	Grubson	3190	5438	7173	8705	69	23	15	9	mieć x287 / siebie x114 / cały x96 / człowiek x95 / więc x79 / 	mieć x557 / siebie x211 / człowiek x197 / wiedzieć x167 / cały x155 / 	mieć x876 / siebie x284 / człowiek x250 / cały x230 / wiedzieć x222 / 	mieć x1124 / siebie x375 / człowiek x292 / wiedzieć x289 / chcieć x284 / 	2022-07-04 19:37:47.247251+00	2022-07-04 17:08:07.465985+00
101	karramba	Karramba	3090	4403	4403	4403	87	53	54	54	mieć x121 / refy x108 / twój x105 / wiedzieć x68 / każdy x66 / 	mieć x199 / twój x180 / refy x160 / każdy x112 / wiedzieć x102 / 	mieć x199 / twój x180 / refy x160 / każdy x112 / wiedzieć x102 / 	mieć x199 / twój x180 / refy x160 / każdy x112 / wiedzieć x102 / 	2022-07-04 19:37:47.412571+00	2022-07-04 17:08:07.563041+00
104	waldemar_kasta	Waldemar Kasta	3179	3179	3179	3179	72	95	96	96	mieć x164 / kasta x118 / rapa x96 / musieć x83 / śląsk x82 / 	mieć x164 / kasta x118 / rapa x96 / musieć x83 / śląsk x82 / 	mieć x164 / kasta x118 / rapa x96 / musieć x83 / śląsk x82 / 	mieć x164 / kasta x118 / rapa x96 / musieć x83 / śląsk x82 / 	2022-07-04 19:37:47.567244+00	2022-07-04 17:08:07.572322+00
105	kaz_balagane	Kaz Bałagane	1991	1991	1991	1991	132	133	133	133	mieć x126 / wiedzieć x53 / kaza x50 / robić x47 / bałagane x46 / 	mieć x126 / wiedzieć x53 / kaza x50 / robić x47 / bałagane x46 / 	mieć x126 / wiedzieć x53 / kaza x50 / robić x47 / bałagane x46 / 	mieć x126 / wiedzieć x53 / kaza x50 / robić x47 / bałagane x46 / 	2022-07-04 19:37:47.70258+00	2022-07-04 17:08:07.575668+00
107	kizo	Kizo	3178	3622	3622	3622	73	76	76	76	mieć x226 / chcieć x111 / kizo x98 / życie x89 / tylko x64 / 	mieć x283 / kizo x169 / chcieć x148 / życie x98 / tylko x82 / 	mieć x283 / kizo x169 / chcieć x148 / życie x98 / tylko x82 / 	mieć x283 / kizo x169 / chcieć x148 / życie x98 / tylko x82 / 	2022-07-04 19:37:47.493249+00	2022-07-04 17:08:07.581886+00
109	kuba_knap	Kuba Knap	3640	3640	3640	3640	28	74	74	74	mieć x247 / wiedzieć x136 / knapa x108 / kuba x105 / chcieć x102 / 	mieć x247 / wiedzieć x136 / knapa x108 / kuba x105 / chcieć x102 / 	mieć x247 / wiedzieć x136 / knapa x108 / kuba x105 / chcieć x102 / 	mieć x247 / wiedzieć x136 / knapa x108 / kuba x105 / chcieć x102 / 	2022-07-04 19:37:47.485862+00	2022-07-04 17:08:07.587871+00
92	kabe	Kabe	1891	1891	1891	1891	139	139	139	139	mieć x201 / cały x80 / robić x74 / chcieć x70 / wiedzieć x65 / 	mieć x201 / cały x80 / robić x74 / chcieć x70 / wiedzieć x65 / 	mieć x201 / cały x80 / robić x74 / chcieć x70 / wiedzieć x65 / 	mieć x201 / cały x80 / robić x74 / chcieć x70 / wiedzieć x65 / 	2022-07-04 19:37:47.724725+00	2022-07-04 17:08:07.53432+00
95	kaczor	Kaczor	3092	3092	3092	3092	86	101	101	101	mieć x144 / dziś x75 / swój x75 / jeszcze x68 / który x65 / 	mieć x144 / dziś x75 / swój x75 / jeszcze x68 / który x65 / 	mieć x144 / dziś x75 / swój x75 / jeszcze x68 / który x65 / 	mieć x144 / dziś x75 / swój x75 / jeszcze x68 / który x65 / 	2022-07-04 19:37:47.585133+00	2022-07-04 17:08:07.543867+00
110	kobra	Kobra	3445	3593	3593	3593	46	79	79	79	mieć x277 / chcieć x130 / rapa x87 / wiedzieć x86 / miasto x75 / 	mieć x294 / chcieć x134 / wiedzieć x97 / rapa x91 / miasto x77 / 	mieć x294 / chcieć x134 / wiedzieć x97 / rapa x91 / miasto x77 / 	mieć x294 / chcieć x134 / wiedzieć x97 / rapa x91 / miasto x77 / 	2022-07-04 19:37:47.504581+00	2022-07-04 17:08:07.590878+00
115	kroolik_underwood	Kroolik Underwood	1627	1627	1627	1627	147	147	148	148	mieć x39 / twój x36 / chcieć x34 / czas x32 / wiedzieć x28 / 	mieć x39 / twój x36 / chcieć x34 / czas x32 / wiedzieć x28 / 	mieć x39 / twój x36 / chcieć x34 / czas x32 / wiedzieć x28 / 	mieć x39 / twój x36 / chcieć x34 / czas x32 / wiedzieć x28 / 	2022-07-04 19:37:47.758278+00	2022-07-04 17:08:07.605798+00
111	koni	Koni	1540	1540	1540	1540	152	152	152	152	mieć x103 / robić x47 / chcieć x30 / refy x29 / rapa x23 / 	mieć x103 / robić x47 / chcieć x30 / refy x29 / rapa x23 / 	mieć x103 / robić x47 / chcieć x30 / refy x29 / rapa x23 / 	mieć x103 / robić x47 / chcieć x30 / refy x29 / rapa x23 / 	2022-07-04 19:37:47.772459+00	2022-07-04 17:08:07.593626+00
108	kleszcz	Kleszcz	1494	1494	1494	1494	155	155	155	155	mieć x90 / czas x47 / twój x46 / wiedzieć x30 / głowa x28 / 	mieć x90 / czas x47 / twój x46 / wiedzieć x30 / głowa x28 / 	mieć x90 / czas x47 / twój x46 / wiedzieć x30 / głowa x28 / 	mieć x90 / czas x47 / twój x46 / wiedzieć x30 / głowa x28 / 	2022-07-04 19:37:47.783767+00	2022-07-04 17:08:07.58468+00
114	kris	Kris	1267	1267	1267	1267	162	162	162	162	mieć x41 / twój x30 / tylko x26 / życie x25 / który x25 / 	mieć x41 / twój x30 / tylko x26 / życie x25 / który x25 / 	mieć x41 / twój x30 / tylko x26 / życie x25 / który x25 / 	mieć x41 / twój x30 / tylko x26 / życie x25 / który x25 / 	2022-07-04 19:37:47.810004+00	2022-07-04 17:08:07.603147+00
120	leh	Leh	927	927	927	927	175	175	175	175	mieć x35 / czas x22 / mówić x19 / dorosłość x19 / dogonić x16 / 	mieć x35 / czas x22 / mówić x19 / dorosłość x19 / dogonić x16 / 	mieć x35 / czas x22 / mówić x19 / dorosłość x19 / dogonić x16 / 	mieć x35 / czas x22 / mówić x19 / dorosłość x19 / dogonić x16 / 	2022-07-04 19:37:47.857761+00	2022-07-04 17:08:07.62051+00
97	kafar	Kafar	577	577	577	577	187	187	187	187	freestyl x35 / football x29 / nasz x22 / mieć x22 / grać x15 / 	freestyl x35 / football x29 / nasz x22 / mieć x22 / grać x15 / 	freestyl x35 / football x29 / nasz x22 / mieć x22 / grać x15 / 	freestyl x35 / football x29 / nasz x22 / mieć x22 / grać x15 / 	2022-07-04 19:37:47.901814+00	2022-07-04 17:08:07.550331+00
90	juras	Juras	564	564	564	564	189	189	189	189	mieć x27 / swój x14 / robić x12 / dość x10 / patrzyć x9 / 	mieć x27 / swój x14 / robić x12 / dość x10 / patrzyć x9 / 	mieć x27 / swój x14 / robić x12 / dość x10 / patrzyć x9 / 	mieć x27 / swój x14 / robić x12 / dość x10 / patrzyć x9 / 	2022-07-04 19:37:47.909029+00	2022-07-04 17:08:07.526995+00
100	kamien	Kamień	231	231	231	231	207	207	207	207	często x7 / mordo x7 / dużo x6 / wszystko x5 / czas x5 / 	często x7 / mordo x7 / dużo x6 / wszystko x5 / czas x5 / 	często x7 / mordo x7 / dużo x6 / wszystko x5 / czas x5 / 	często x7 / mordo x7 / dużo x6 / wszystko x5 / czas x5 / 	2022-07-04 19:37:47.975881+00	2022-07-04 17:08:07.559811+00
119	l_u_c_	L.U.C.	75	75	75	75	213	213	213	213	dzieciak x2 / onkologia x1 / robić x1 / warsztaty x1 / grać x1 / 	dzieciak x2 / onkologia x1 / robić x1 / warsztaty x1 / grać x1 / 	dzieciak x2 / onkologia x1 / robić x1 / warsztaty x1 / grać x1 / 	dzieciak x2 / onkologia x1 / robić x1 / warsztaty x1 / grać x1 / 	2022-07-04 19:37:47.998699+00	2022-07-04 17:08:07.617857+00
96	kaen	Kaen	3772	5870	7592	7820	22	14	9	11	mieć x202 / chcieć x107 / życie x75 / który x63 / wiedzieć x62 / 	mieć x433 / chcieć x258 / wiele x175 / życie x144 / siebie x125 / 	mieć x674 / chcieć x352 / wiele x281 / siebie x239 / wiedzieć x235 / 	mieć x716 / chcieć x358 / wiele x296 / wiedzieć x249 / siebie x244 / 	2022-07-04 19:37:47.254609+00	2022-07-04 17:08:07.547177+00
93	kacper_hta	Kacper HTA	3321	4642	4642	4642	55	47	48	48	mieć x269 / chcieć x158 / dziś x102 / wiedzieć x92 / czas x92 / 	mieć x428 / chcieć x247 / tylko x179 / wiedzieć x146 / czas x143 / 	mieć x428 / chcieć x247 / tylko x179 / wiedzieć x146 / czas x143 / 	mieć x428 / chcieć x247 / tylko x179 / wiedzieć x146 / czas x143 / 	2022-07-04 19:37:47.390405+00	2022-07-04 17:08:07.537506+00
98	kajman	Kajman	3390	4434	4434	4434	50	52	53	53	mieć x313 / chcieć x156 / wiedzieć x141 / czas x77 / mówić x77 / 	mieć x419 / chcieć x199 / wiedzieć x192 / czas x105 / mówić x100 / 	mieć x419 / chcieć x199 / wiedzieć x192 / czas x105 / mówić x100 / 	mieć x419 / chcieć x199 / wiedzieć x192 / czas x105 / mówić x100 / 	2022-07-04 19:37:47.408752+00	2022-07-04 17:08:07.553755+00
138	meek__oh_why_	Meek, Oh Why?	2843	2843	2843	2843	102	108	108	108	mieć x165 / świat x144 / chcieć x121 / słowo x69 / siebie x67 / 	mieć x165 / świat x144 / chcieć x121 / słowo x69 / siebie x67 / 	mieć x165 / świat x144 / chcieć x121 / słowo x69 / siebie x67 / 	mieć x165 / świat x144 / chcieć x121 / słowo x69 / siebie x67 / 	2022-07-04 19:37:47.610842+00	2022-07-04 17:08:07.674311+00
122	liroy	Liroy	3127	3628	3628	3628	81	75	75	75	mieć x196 / chcieć x107 / taki x101 / twój x100 / powiedzieć x98 / 	mieć x228 / chcieć x134 / taki x115 / liro x111 / twój x111 / 	mieć x228 / chcieć x134 / taki x115 / liro x111 / twój x111 / 	mieć x228 / chcieć x134 / taki x115 / liro x111 / twój x111 / 	2022-07-04 19:37:47.489262+00	2022-07-04 17:08:07.626462+00
121	liber	Liber	3216	3216	3216	3216	66	92	93	93	mieć x139 / chcieć x100 / tylko x69 / grać x69 / wiedzieć x64 / 	mieć x139 / chcieć x100 / tylko x69 / grać x69 / wiedzieć x64 / 	mieć x139 / chcieć x100 / tylko x69 / grać x69 / wiedzieć x64 / 	mieć x139 / chcieć x100 / tylko x69 / grać x69 / wiedzieć x64 / 	2022-07-04 19:37:47.556205+00	2022-07-04 17:08:07.623806+00
133	malpa	Małpa	3639	4085	4085	4085	29	60	60	60	mieć x222 / który x135 / wiedzieć x116 / chcieć x99 / mówić x78 / 	mieć x282 / który x157 / chcieć x140 / wiedzieć x132 / mówić x88 / 	mieć x282 / który x157 / chcieć x140 / wiedzieć x132 / mówić x88 / 	mieć x282 / który x157 / chcieć x140 / wiedzieć x132 / mówić x88 / 	2022-07-04 19:37:47.435206+00	2022-07-04 17:08:07.659105+00
134	mam_na_imie_aleksander	Mam Na Imię Aleksander	2399	2399	2399	2399	117	119	119	119	mieć x154 / wiedzieć x87 / chcieć x81 / więcej x57 / musieć x47 / 	mieć x154 / wiedzieć x87 / chcieć x81 / więcej x57 / musieć x47 / 	mieć x154 / wiedzieć x87 / chcieć x81 / więcej x57 / musieć x47 / 	mieć x154 / wiedzieć x87 / chcieć x81 / więcej x57 / musieć x47 / 	2022-07-04 19:37:47.650615+00	2022-07-04 17:08:07.661804+00
127	lona	Łona	3838	4024	4024	4024	20	65	65	65	mieć x274 / wiedzieć x101 / chcieć x87 / tylko x81 / więc x78 / 	mieć x283 / wiedzieć x108 / chcieć x90 / tylko x83 / więc x80 / 	mieć x283 / wiedzieć x108 / chcieć x90 / tylko x83 / więc x80 / 	mieć x283 / wiedzieć x108 / chcieć x90 / tylko x83 / więc x80 / 	2022-07-04 19:37:47.453018+00	2022-07-04 17:08:07.640878+00
135	massey	Massey	2734	2734	2734	2734	106	111	111	111	mieć x116 / życie x87 / wiedzieć x63 / swój x53 / dobry x48 / 	mieć x116 / życie x87 / wiedzieć x63 / swój x53 / dobry x48 / 	mieć x116 / życie x87 / wiedzieć x63 / swój x53 / dobry x48 / 	mieć x116 / życie x87 / wiedzieć x63 / swój x53 / dobry x48 / 	2022-07-04 19:37:47.621822+00	2022-07-04 17:08:07.665156+00
128	lysonzi	Łysonżi	1901	1901	1901	1901	135	136	136	136	mieć x159 / kurwa x37 / czas x35 / wiedzieć x35 / życie x32 / 	mieć x159 / kurwa x37 / czas x35 / wiedzieć x35 / życie x32 / 	mieć x159 / kurwa x37 / czas x35 / wiedzieć x35 / życie x32 / 	mieć x159 / kurwa x37 / czas x35 / wiedzieć x35 / życie x32 / 	2022-07-04 19:37:47.713592+00	2022-07-04 17:08:07.64424+00
131	malach	Małach	1897	1897	1897	1897	138	138	138	138	mieć x144 / chcieć x62 / życie x57 / każdy x55 / ktoś x49 / 	mieć x144 / chcieć x62 / życie x57 / każdy x55 / ktoś x49 / 	mieć x144 / chcieć x62 / życie x57 / każdy x55 / ktoś x49 / 	mieć x144 / chcieć x62 / życie x57 / każdy x55 / ktoś x49 / 	2022-07-04 19:37:47.72125+00	2022-07-04 17:08:07.653239+00
124	lukatricks	Lukatricks	1296	1296	1296	1296	161	161	161	161	mieć x82 / chcieć x41 / mówić x28 / wiedzieć x27 / życie x25 / 	mieć x82 / chcieć x41 / mówić x28 / wiedzieć x27 / życie x25 / 	mieć x82 / chcieć x41 / mówić x28 / wiedzieć x27 / życie x25 / 	mieć x82 / chcieć x41 / mówić x28 / wiedzieć x27 / życie x25 / 	2022-07-04 19:37:47.806498+00	2022-07-04 17:08:07.632587+00
129	magik	Magik	899	899	899	899	176	176	176	176	mieć x29 / który x12 / oddać x10 / wiedzieć x10 / siebie x10 / 	mieć x29 / który x12 / oddać x10 / wiedzieć x10 / siebie x10 / 	mieć x29 / który x12 / oddać x10 / wiedzieć x10 / siebie x10 / 	mieć x29 / który x12 / oddać x10 / wiedzieć x10 / siebie x10 / 	2022-07-04 19:37:47.861752+00	2022-07-04 17:08:07.647277+00
145	mlodyskiny	Mlodyskiny	840	840	840	840	179	179	179	179	chcieć x145 / mieć x128 / wiedzieć x55 / siebie x48 / czuć x44 / 	chcieć x145 / mieć x128 / wiedzieć x55 / siebie x48 / czuć x44 / 	chcieć x145 / mieć x128 / wiedzieć x55 / siebie x48 / czuć x44 / 	chcieć x145 / mieć x128 / wiedzieć x55 / siebie x48 / czuć x44 / 	2022-07-04 19:37:47.872409+00	2022-07-04 17:08:07.695179+00
142	minix	Minix	753	753	753	753	182	182	182	182	mieć x38 / każdy x23 / usta x18 / gorąco x18 / siebie x14 / 	mieć x38 / każdy x23 / usta x18 / gorąco x18 / siebie x14 / 	mieć x38 / każdy x23 / usta x18 / gorąco x18 / siebie x14 / 	mieć x38 / każdy x23 / usta x18 / gorąco x18 / siebie x14 / 	2022-07-04 19:37:47.883602+00	2022-07-04 17:08:07.686203+00
144	mleko	Mleko	727	727	727	727	183	183	183	183	mieć x19 / który x18 / bardzo x17 / łapa x16 / lubić x11 / 	mieć x19 / który x18 / bardzo x17 / łapa x16 / lubić x11 / 	mieć x19 / który x18 / bardzo x17 / łapa x16 / lubić x11 / 	mieć x19 / który x18 / bardzo x17 / łapa x16 / lubić x11 / 	2022-07-04 19:37:47.887129+00	2022-07-04 17:08:07.692127+00
148	mr__polska	Mr. Polska	520	520	520	520	192	192	192	192	mieć x30 / daleko x27 / blaas x22 / bosfluit x22 / yeah x19 / 	mieć x30 / daleko x27 / blaas x22 / bosfluit x22 / yeah x19 / 	mieć x30 / daleko x27 / blaas x22 / bosfluit x22 / yeah x19 / 	mieć x30 / daleko x27 / blaas x22 / bosfluit x22 / yeah x19 / 	2022-07-04 19:37:47.919614+00	2022-07-04 17:08:07.703507+00
147	moral	Moral	399	399	399	399	198	198	198	198	chcieć x14 / mieć x13 / wiedzieć x11 / widzieć x10 / patrzysz x10 / 	chcieć x14 / mieć x13 / wiedzieć x11 / widzieć x10 / patrzysz x10 / 	chcieć x14 / mieć x13 / wiedzieć x11 / widzieć x10 / patrzysz x10 / 	chcieć x14 / mieć x13 / wiedzieć x11 / widzieć x10 / patrzysz x10 / 	2022-07-04 19:37:47.942073+00	2022-07-04 17:08:07.700909+00
150	muflon	Muflon	371	371	371	371	201	201	201	201	mieć x17 / chcieć x9 / każdy x5 / człowiek x5 / wiedzieć x5 / 	mieć x17 / chcieć x9 / każdy x5 / człowiek x5 / wiedzieć x5 / 	mieć x17 / chcieć x9 / każdy x5 / człowiek x5 / wiedzieć x5 / 	mieć x17 / chcieć x9 / każdy x5 / człowiek x5 / wiedzieć x5 / 	2022-07-04 19:37:47.953531+00	2022-07-04 17:08:07.709544+00
143	miuosh	Miuosh	3319	5032	5863	5863	56	36	30	31	mieć x227 / wiedzieć x150 / chcieć x114 / mówić x111 / każdy x105 / 	mieć x539 / wiedzieć x328 / chcieć x240 / mówić x189 / każdy x165 / 	mieć x734 / wiedzieć x409 / chcieć x311 / każdy x232 / mówić x230 / 	mieć x734 / wiedzieć x409 / chcieć x311 / każdy x232 / mówić x230 / 	2022-07-04 19:37:47.327938+00	2022-07-04 17:08:07.68888+00
123	lukasyno	Lukasyno	3174	5006	5006	5006	75	37	43	43	mieć x278 / życie x136 / swój x106 / chcieć x103 / wszystko x92 / 	mieć x406 / życie x215 / chcieć x213 / swój x212 / dziś x172 / 	mieć x406 / życie x215 / chcieć x213 / swój x212 / dziś x172 / 	mieć x406 / życie x215 / chcieć x213 / swój x212 / dziś x172 / 	2022-07-04 19:37:47.372496+00	2022-07-04 17:08:07.629744+00
136	mata	Mata	3685	4213	4213	4213	27	57	57	57	mieć x271 / chcieć x129 / montan x115 / cafe x79 / ojał x78 / 	mieć x347 / chcieć x182 / montan x115 / ojał x89 / wiedzieć x83 / 	mieć x347 / chcieć x182 / montan x115 / ojał x89 / wiedzieć x83 / 	mieć x347 / chcieć x182 / montan x115 / ojał x89 / wiedzieć x83 / 	2022-07-04 19:37:47.42381+00	2022-07-04 17:08:07.667806+00
164	onar	Onar	2939	4875	4875	4875	97	41	45	45	mieć x262 / chcieć x146 / wiedzieć x121 / który x100 / wszystko x98 / 	mieć x519 / chcieć x305 / który x203 / twój x187 / wiedzieć x179 / 	mieć x519 / chcieć x305 / który x203 / twój x187 / wiedzieć x179 / 	mieć x519 / chcieć x305 / który x203 / twój x187 / wiedzieć x179 / 	2022-07-04 19:37:47.379809+00	2022-07-04 17:08:07.751685+00
184	planet_anm	Planet ANM	3177	4655	4655	4655	74	46	47	47	mieć x359 / chcieć x134 / tylko x93 / wiedzieć x92 / mówić x90 / 	mieć x654 / chcieć x237 / wiedzieć x187 / tylko x161 / siebie x146 / 	mieć x654 / chcieć x237 / wiedzieć x187 / tylko x161 / siebie x146 / 	mieć x654 / chcieć x237 / wiedzieć x187 / tylko x161 / siebie x146 / 	2022-07-04 19:37:47.386906+00	2022-07-04 17:08:07.809064+00
183	planbe	PlanBe	3081	3889	3889	3889	88	69	69	69	mieć x284 / chcieć x245 / tylko x134 / wiedzieć x113 / siebie x107 / 	mieć x412 / chcieć x330 / tylko x183 / wiedzieć x161 / siebie x129 / 	mieć x412 / chcieć x330 / tylko x183 / wiedzieć x161 / siebie x129 / 	mieć x412 / chcieć x330 / tylko x183 / wiedzieć x161 / siebie x129 / 	2022-07-04 19:37:47.467558+00	2022-07-04 17:08:07.806381+00
169	otsochodzi	Otsochodzi	2429	2429	2429	2429	116	118	118	118	mieć x226 / mówić x109 / chcieć x103 / robić x89 / wiedzieć x77 / 	mieć x226 / mówić x109 / chcieć x103 / robić x89 / wiedzieć x77 / 	mieć x226 / mówić x109 / chcieć x103 / robić x89 / wiedzieć x77 / 	mieć x226 / mówić x109 / chcieć x103 / robić x89 / wiedzieć x77 / 	2022-07-04 19:37:47.647139+00	2022-07-04 17:08:07.76589+00
161	oki	Oki	2352	2352	2352	2352	119	120	120	120	mieć x212 / chcieć x117 / wiedzieć x97 / głowa x91 / życie x63 / 	mieć x212 / chcieć x117 / wiedzieć x97 / głowa x91 / życie x63 / 	mieć x212 / chcieć x117 / wiedzieć x97 / głowa x91 / życie x63 / 	mieć x212 / chcieć x117 / wiedzieć x97 / głowa x91 / życie x63 / 	2022-07-04 19:37:47.654407+00	2022-07-04 17:08:07.742917+00
188	pono	Pono	3184	3184	3184	3184	70	93	94	94	mieć x268 / wiedzieć x131 / chcieć x112 / wszystko x100 / człowiek x94 / 	mieć x268 / wiedzieć x131 / chcieć x112 / wszystko x100 / człowiek x94 / 	mieć x268 / wiedzieć x131 / chcieć x112 / wszystko x100 / człowiek x94 / 	mieć x268 / wiedzieć x131 / chcieć x112 / wszystko x100 / człowiek x94 / 	2022-07-04 19:37:47.559812+00	2022-07-04 17:08:07.820922+00
155	nowator	Nowator	2913	3016	3016	3016	99	105	105	105	mieć x233 / wiedzieć x196 / chcieć x155 / tylko x106 / teraz x99 / 	mieć x243 / wiedzieć x198 / chcieć x161 / tylko x107 / teraz x102 / 	mieć x243 / wiedzieć x198 / chcieć x161 / tylko x107 / teraz x102 / 	mieć x243 / wiedzieć x198 / chcieć x161 / tylko x107 / teraz x102 / 	2022-07-04 19:37:47.599886+00	2022-07-04 17:08:07.724438+00
154	adi_nowak	Adi Nowak	3443	3443	3443	3443	47	85	85	85	mieć x186 / chcieć x137 / wiedzieć x68 / mówić x43 / który x42 / 	mieć x186 / chcieć x137 / wiedzieć x68 / mówić x43 / który x42 / 	mieć x186 / chcieć x137 / wiedzieć x68 / mówić x43 / który x42 / 	mieć x186 / chcieć x137 / wiedzieć x68 / mówić x43 / który x42 / 	2022-07-04 19:37:47.526626+00	2022-07-04 17:08:07.721644+00
176	pelson	Pelson	2335	2335	2335	2335	120	121	121	121	mieć x139 / wiedzieć x82 / dziś x74 / chcieć x72 / czas x63 / 	mieć x139 / wiedzieć x82 / dziś x74 / chcieć x72 / czas x63 / 	mieć x139 / wiedzieć x82 / dziś x74 / chcieć x72 / czas x63 / 	mieć x139 / wiedzieć x82 / dziś x74 / chcieć x72 / czas x63 / 	2022-07-04 19:37:47.657951+00	2022-07-04 17:08:07.786295+00
178	peku	Pęku	1553	1553	1553	1553	151	151	151	151	mieć x104 / szary x53 / kolejny x46 / przerwa x46 / wiedzieć x44 / 	mieć x104 / szary x53 / kolejny x46 / przerwa x46 / wiedzieć x44 / 	mieć x104 / szary x53 / kolejny x46 / przerwa x46 / wiedzieć x44 / 	mieć x104 / szary x53 / kolejny x46 / przerwa x46 / wiedzieć x44 / 	2022-07-04 19:37:47.768928+00	2022-07-04 17:08:07.792097+00
158	numer_raz	Numer Raz	1386	1386	1386	1386	158	158	158	158	mieć x56 / chwila x39 / numer x38 / czas x27 / dobrze x27 / 	mieć x56 / chwila x39 / numer x38 / czas x27 / dobrze x27 / 	mieć x56 / chwila x39 / numer x38 / czas x27 / dobrze x27 / 	mieć x56 / chwila x39 / numer x38 / czas x27 / dobrze x27 / 	2022-07-04 19:37:47.794775+00	2022-07-04 17:08:07.733712+00
182	pjus	Pjus	1339	1339	1339	1339	159	159	159	159	mieć x97 / mówić x58 / życie x46 / zawsze x38 / słyszeć x37 / 	mieć x97 / mówić x58 / życie x46 / zawsze x38 / słyszeć x37 / 	mieć x97 / mówić x58 / życie x46 / zawsze x38 / słyszeć x37 / 	mieć x97 / mówić x58 / życie x46 / zawsze x38 / słyszeć x37 / 	2022-07-04 19:37:47.798879+00	2022-07-04 17:08:07.803666+00
163	olszakumpel	Olszakumpel	1065	1065	1065	1065	171	171	171	171	mieć x82 / chcieć x55 / kurwa x22 / ojał x20 / życie x19 / 	mieć x82 / chcieć x55 / kurwa x22 / ojał x20 / życie x19 / 	mieć x82 / chcieć x55 / kurwa x22 / ojał x20 / życie x19 / 	mieć x82 / chcieć x55 / kurwa x22 / ojał x20 / życie x19 / 	2022-07-04 19:37:47.843192+00	2022-07-04 17:08:07.749009+00
153	norbi	Norbi	852	852	852	852	178	178	178	178	mieć x90 / wszystko x28 / pamiętać x27 / jedyny x26 / kobieta x22 / 	mieć x90 / wszystko x28 / pamiętać x27 / jedyny x26 / kobieta x22 / 	mieć x90 / wszystko x28 / pamiętać x27 / jedyny x26 / kobieta x22 / 	mieć x90 / wszystko x28 / pamiętać x27 / jedyny x26 / kobieta x22 / 	2022-07-04 19:37:47.868963+00	2022-07-04 17:08:07.718553+00
173	parzel	Parzel	657	657	657	657	184	184	184	184	mieć x24 / wiedzieć x15 / który x13 / chcieć x12 / czas x11 / 	mieć x24 / wiedzieć x15 / który x13 / chcieć x12 / czas x11 / 	mieć x24 / wiedzieć x15 / który x13 / chcieć x12 / czas x11 / 	mieć x24 / wiedzieć x15 / który x13 / chcieć x12 / czas x11 / 	2022-07-04 19:37:47.890636+00	2022-07-04 17:08:07.777975+00
179	piernikowski	Piernikowski	346	346	346	346	202	202	202	202	trwam x58 / białas x23 / ojał x20 / głowa x11 / getto x11 / 	trwam x58 / białas x23 / ojał x20 / głowa x11 / getto x11 / 	trwam x58 / białas x23 / ojał x20 / głowa x11 / getto x11 / 	trwam x58 / białas x23 / ojał x20 / głowa x11 / getto x11 / 	2022-07-04 19:37:47.957443+00	2022-07-04 17:08:07.794576+00
168	oska	Ośka	167	167	167	167	211	211	211	211	wyja x26 / lala x18 / lalala x18 / eopseo x17 / nareul x13 / 	wyja x26 / lala x18 / lalala x18 / eopseo x17 / nareul x13 / 	wyja x26 / lala x18 / lalala x18 / eopseo x17 / nareul x13 / 	wyja x26 / lala x18 / lalala x18 / eopseo x17 / nareul x13 / 	2022-07-04 19:37:47.991253+00	2022-07-04 17:08:07.763337+00
175	peja	Peja	3767	6170	8246	17139	23	11	5	1	mieć x158 / życie x119 / chcieć x103 / czas x72 / wiedzieć x71 / 	mieć x350 / chcieć x235 / życie x208 / wiedzieć x182 / swój x151 / 	mieć x538 / chcieć x369 / wiedzieć x294 / życie x285 / który x230 / 	mieć x1649 / chcieć x1014 / wiedzieć x839 / życie x779 / swój x645 / 	2022-07-04 19:37:47.212152+00	2022-07-04 17:08:07.783643+00
172	paluch	Paluch	3451	5489	7218	9302	45	21	13	7	mieć x215 / życie x103 / wiedzieć x96 / swój x89 / rapa x84 / 	mieć x498 / życie x245 / chcieć x237 / swój x176 / wiedzieć x173 / 	mieć x750 / chcieć x356 / życie x343 / wiedzieć x245 / każdy x231 / 	mieć x1189 / życie x599 / chcieć x573 / każdy x379 / wiedzieć x371 / 	2022-07-04 19:37:47.239689+00	2022-07-04 17:08:07.775002+00
180	pih	Pih	4080	6597	8521	11580	8	2	3	5	mieć x211 / wiedzieć x113 / chcieć x111 / życie x110 / twój x88 / 	mieć x407 / wiedzieć x266 / życie x210 / chcieć x192 / twój x190 / 	mieć x616 / wiedzieć x408 / życie x305 / twój x268 / chcieć x261 / 	mieć x919 / wiedzieć x528 / życie x458 / twój x379 / chcieć x372 / 	2022-07-04 19:37:47.232393+00	2022-07-04 17:08:07.797715+00
213	shellerini	Shellerini	3537	3537	3537	3537	36	82	82	82	mieć x204 / który x79 / rapa x76 / swój x72 / robić x64 / 	mieć x204 / który x79 / rapa x76 / swój x72 / robić x64 / 	mieć x204 / który x79 / rapa x76 / swój x72 / robić x64 / 	mieć x204 / który x79 / rapa x76 / swój x72 / robić x64 / 	2022-07-04 19:37:47.515572+00	2022-07-04 17:08:07.894945+00
200	rafi	Rafi	3299	3299	3299	3299	58	90	91	91	mieć x186 / czas x127 / który x91 / człowiek x81 / więc x74 / 	mieć x186 / czas x127 / który x91 / człowiek x81 / więc x74 / 	mieć x186 / czas x127 / który x91 / człowiek x81 / więc x74 / 	mieć x186 / czas x127 / który x91 / człowiek x81 / więc x74 / 	2022-07-04 19:37:47.548733+00	2022-07-04 17:08:07.856075+00
192	pyskaty	Pyskaty	3044	3044	3044	3044	92	102	102	102	mieć x215 / wiedzieć x161 / chcieć x150 / dziś x99 / mówić x82 / 	mieć x215 / wiedzieć x161 / chcieć x150 / dziś x99 / mówić x82 / 	mieć x215 / wiedzieć x161 / chcieć x150 / dziś x99 / mówić x82 / 	mieć x215 / wiedzieć x161 / chcieć x150 / dziś x99 / mówić x82 / 	2022-07-04 19:37:47.588855+00	2022-07-04 17:08:07.832984+00
197	raca	Raca	3104	3643	3643	3643	85	72	72	72	mieć x242 / chcieć x133 / wiedzieć x119 / mówić x115 / życie x77 / 	mieć x295 / chcieć x162 / mówić x145 / wiedzieć x143 / czas x110 / 	mieć x295 / chcieć x162 / mówić x145 / wiedzieć x143 / czas x110 / 	mieć x295 / chcieć x162 / mówić x145 / wiedzieć x143 / czas x110 / 	2022-07-04 19:37:47.478656+00	2022-07-04 17:08:07.847388+00
201	rahim	Rahim	3557	3557	3557	3557	34	81	81	81	mieć x209 / czas x79 / chcieć x65 / swój x65 / siebie x58 / 	mieć x209 / czas x79 / chcieć x65 / swój x65 / siebie x58 / 	mieć x209 / czas x79 / chcieć x65 / swój x65 / siebie x58 / 	mieć x209 / czas x79 / chcieć x65 / swój x65 / siebie x58 / 	2022-07-04 19:37:47.512091+00	2022-07-04 17:08:07.85916+00
202	ramona_23	Ramona 23	2903	2903	2903	2903	100	107	107	107	mieć x201 / który x107 / każdy x105 / chcieć x89 / twój x80 / 	mieć x201 / który x107 / każdy x105 / chcieć x89 / twój x80 / 	mieć x201 / który x107 / każdy x105 / chcieć x89 / twój x80 / 	mieć x201 / który x107 / każdy x105 / chcieć x89 / twój x80 / 	2022-07-04 19:37:47.607085+00	2022-07-04 17:08:07.862212+00
193	qbik	Qbik	2554	3331	3331	3331	110	89	90	90	mieć x293 / chcieć x182 / tylko x130 / siebie x123 / wszystko x98 / 	mieć x373 / chcieć x270 / siebie x164 / tylko x142 / wiedzieć x133 / 	mieć x373 / chcieć x270 / siebie x164 / tylko x142 / wiedzieć x133 / 	mieć x373 / chcieć x270 / siebie x164 / tylko x142 / wiedzieć x133 / 	2022-07-04 19:37:47.54492+00	2022-07-04 17:08:07.83556+00
191	proceente	Proceente	3033	3033	3033	3033	93	103	103	103	mieć x142 / dzień x55 / siebie x48 / czas x48 / dobry x44 / 	mieć x142 / dzień x55 / siebie x48 / czas x48 / dobry x44 / 	mieć x142 / dzień x55 / siebie x48 / czas x48 / dobry x44 / 	mieć x142 / dzień x55 / siebie x48 / czas x48 / dobry x44 / 	2022-07-04 19:37:47.592401+00	2022-07-04 17:08:07.829402+00
219	smolasty	Smolasty	2139	2139	2139	2139	125	126	126	126	chcieć x342 / mieć x321 / wiedzieć x181 / tylko x118 / twój x89 / 	chcieć x342 / mieć x321 / wiedzieć x181 / tylko x118 / twój x89 / 	chcieć x342 / mieć x321 / wiedzieć x181 / tylko x118 / twój x89 / 	chcieć x342 / mieć x321 / wiedzieć x181 / tylko x118 / twój x89 / 	2022-07-04 19:37:47.676552+00	2022-07-04 17:08:07.911884+00
214	sitek	Sitek	2107	2107	2107	2107	127	128	128	128	mieć x277 / chcieć x149 / wiedzieć x119 / mówić x78 / kiedy x74 / 	mieć x277 / chcieć x149 / wiedzieć x119 / mówić x78 / kiedy x74 / 	mieć x277 / chcieć x149 / wiedzieć x119 / mówić x78 / kiedy x74 / 	mieć x277 / chcieć x149 / wiedzieć x119 / mówić x78 / kiedy x74 / 	2022-07-04 19:37:47.683916+00	2022-07-04 17:08:07.897578+00
212	sentino	Sentino	2055	2055	2055	2055	129	130	130	130	mieć x122 / chcieć x101 / żaden x79 / tylko x48 / mówić x45 / 	mieć x122 / chcieć x101 / żaden x79 / tylko x48 / mówić x45 / 	mieć x122 / chcieć x101 / żaden x79 / tylko x48 / mówić x45 / 	mieć x122 / chcieć x101 / żaden x79 / tylko x48 / mówić x45 / 	2022-07-04 19:37:47.691127+00	2022-07-04 17:08:07.891406+00
211	schafter	Schafter	1771	1771	1771	1771	142	142	142	142	mieć x76 / robić x53 / yeah x48 / wiedzieć x38 / drip x38 / 	mieć x76 / robić x53 / yeah x48 / wiedzieć x38 / drip x38 / 	mieć x76 / robić x53 / yeah x48 / wiedzieć x38 / drip x38 / 	mieć x76 / robić x53 / yeah x48 / wiedzieć x38 / drip x38 / 	2022-07-04 19:37:47.736003+00	2022-07-04 17:08:07.888742+00
220	sobel	Sobel	1627	1627	1627	1627	148	148	147	147	mieć x186 / chcieć x146 / wiedzieć x122 / czas x84 / tylko x72 / 	mieć x186 / chcieć x146 / wiedzieć x122 / czas x84 / tylko x72 / 	mieć x186 / chcieć x146 / wiedzieć x122 / czas x84 / tylko x72 / 	mieć x186 / chcieć x146 / wiedzieć x122 / czas x84 / tylko x72 / 	2022-07-04 19:37:47.754696+00	2022-07-04 17:08:07.915035+00
206	rudy_mrw	Rudy MRW	1483	1483	1483	1483	156	156	156	156	mieć x73 / wziąć x45 / zdejmij x41 / chcieć x35 / wiedzieć x27 / 	mieć x73 / wziąć x45 / zdejmij x41 / chcieć x35 / wiedzieć x27 / 	mieć x73 / wziąć x45 / zdejmij x41 / chcieć x35 / wiedzieć x27 / 	mieć x73 / wziąć x45 / zdejmij x41 / chcieć x35 / wiedzieć x27 / 	2022-07-04 19:37:47.78735+00	2022-07-04 17:08:07.874291+00
194	qry	Qry	940	940	940	940	174	174	174	174	mieć x95 / cały x74 / czas x62 / chcieć x46 / robić x32 / 	mieć x95 / cały x74 / czas x62 / chcieć x46 / robić x32 / 	mieć x95 / cały x74 / czas x62 / chcieć x46 / robić x32 / 	mieć x95 / cały x74 / czas x62 / chcieć x46 / robić x32 / 	2022-07-04 19:37:47.854366+00	2022-07-04 17:08:07.838687+00
203	rest	Rest	375	375	375	375	199	200	199	200	nivot x20 / boombap x15 / kterej x13 / miluja x12 / stále x10 / 	nivot x20 / boombap x15 / kterej x13 / miluja x12 / stále x10 / 	nivot x20 / boombap x15 / kterej x13 / miluja x12 / stále x10 / 	nivot x20 / boombap x15 / kterej x13 / miluja x12 / stále x10 / 	2022-07-04 19:37:47.949706+00	2022-07-04 17:08:07.865334+00
222	solei	Solei	246	246	246	246	206	206	206	206	śląsk x6 / więc x6 / blok x6 / mieć x5 / wiedzieć x5 / 	śląsk x6 / więc x6 / blok x6 / mieć x5 / wiedzieć x5 / 	śląsk x6 / więc x6 / blok x6 / mieć x5 / wiedzieć x5 / 	śląsk x6 / więc x6 / blok x6 / mieć x5 / wiedzieć x5 / 	2022-07-04 19:37:47.972358+00	2022-07-04 17:08:07.920858+00
221	sobota	Sobota	3398	5403	6018	6018	49	25	28	29	mieć x226 / chcieć x144 / jeden x121 / wiedzieć x93 / strzał x73 / 	mieć x503 / chcieć x323 / wiedzieć x235 / swój x156 / jeden x146 / 	mieć x606 / chcieć x411 / wiedzieć x296 / swój x188 / jeden x166 / 	mieć x606 / chcieć x411 / wiedzieć x296 / swój x188 / jeden x166 / 	2022-07-04 19:37:47.320642+00	2022-07-04 17:08:07.917864+00
210	sarius	Sarius	3338	4756	4756	4756	54	45	46	46	mieć x308 / chcieć x141 / wiedzieć x110 / mówić x84 / tylko x81 / 	mieć x598 / chcieć x291 / wiedzieć x268 / tylko x210 / mówić x157 / 	mieć x598 / chcieć x291 / wiedzieć x268 / tylko x210 / mówić x157 / 	mieć x598 / chcieć x291 / wiedzieć x268 / tylko x210 / mówić x157 / 	2022-07-04 19:37:47.383317+00	2022-07-04 17:08:07.885271+00
216	skorup	Skorup	4071	4071	4071	4071	9	61	61	61	mieć x171 / siebie x83 / swój x80 / taki x57 / człowiek x54 / 	mieć x171 / siebie x83 / swój x80 / taki x57 / człowiek x54 / 	mieć x171 / siebie x83 / swój x80 / taki x57 / człowiek x54 / 	mieć x171 / siebie x83 / swój x80 / taki x57 / człowiek x54 / 	2022-07-04 19:37:47.4389+00	2022-07-04 17:08:07.903476+00
229	sulin	Sulin	2952	4345	4345	4345	96	55	55	55	mieć x314 / chcieć x160 / wiedzieć x135 / mówić x122 / życie x96 / 	mieć x583 / chcieć x291 / wiedzieć x250 / mówić x239 / życie x206 / 	mieć x583 / chcieć x291 / wiedzieć x250 / mówić x239 / życie x206 / 	mieć x583 / chcieć x291 / wiedzieć x250 / mówić x239 / życie x206 / 	2022-07-04 19:37:47.416396+00	2022-07-04 17:08:07.940655+00
247	toony	Toony	2109	2109	2109	2109	126	127	127	127	mieć x65 / wiedzieć x61 / życie x39 / polak x37 / serce x36 / 	mieć x65 / wiedzieć x61 / życie x39 / polak x37 / serce x36 / 	mieć x65 / wiedzieć x61 / życie x39 / polak x37 / serce x36 / 	mieć x65 / wiedzieć x61 / życie x39 / polak x37 / serce x36 / 	2022-07-04 19:37:47.680534+00	2022-07-04 17:08:07.993128+00
248	tps	TPS	3405	4543	4543	4543	48	50	51	51	mieć x192 / chcieć x132 / czas x115 / wiedzieć x81 / życie x72 / 	mieć x303 / chcieć x187 / czas x170 / wiedzieć x120 / życie x113 / 	mieć x303 / chcieć x187 / czas x170 / wiedzieć x120 / życie x113 / 	mieć x303 / chcieć x187 / czas x170 / wiedzieć x120 / życie x113 / 	2022-07-04 19:37:47.401397+00	2022-07-04 17:08:07.995637+00
251	vixen	Vixen	3243	5166	6504	6504	64	31	21	24	mieć x421 / chcieć x193 / wiedzieć x118 / czas x76 / każdy x75 / 	mieć x736 / chcieć x338 / wiedzieć x209 / który x170 / swój x158 / 	mieć x995 / chcieć x445 / wiedzieć x275 / swój x220 / wszystko x217 / 	mieć x995 / chcieć x445 / wiedzieć x275 / swój x220 / wszystko x217 / 	2022-07-04 19:37:47.302175+00	2022-07-04 17:08:08.004635+00
223	sokol	Sokół	3568	3568	3568	3568	32	80	80	80	mieć x205 / chcieć x90 / wiedzieć x76 / mówić x68 / życie x66 / 	mieć x205 / chcieć x90 / wiedzieć x76 / mówić x68 / życie x66 / 	mieć x205 / chcieć x90 / wiedzieć x76 / mówić x68 / życie x66 / 	mieć x205 / chcieć x90 / wiedzieć x76 / mówić x68 / życie x66 / 	2022-07-04 19:37:47.508504+00	2022-07-04 17:08:07.923771+00
252	vnm	VNM	3515	5868	7217	7217	39	15	14	17	mieć x266 / chcieć x123 / rapa x102 / wiedzieć x100 / twój x94 / 	mieć x502 / chcieć x261 / wiedzieć x245 / twój x164 / kiedy x160 / 	mieć x667 / chcieć x333 / wiedzieć x330 / kiedy x220 / mówić x191 / 	mieć x667 / chcieć x333 / wiedzieć x330 / kiedy x220 / mówić x191 / 	2022-07-04 19:37:47.275967+00	2022-07-04 17:08:08.007509+00
234	szpaku	Szpaku	3299	3955	3955	3955	59	66	66	66	mieć x295 / chcieć x160 / ciągle x109 / robić x83 / człowiek x79 / 	mieć x375 / chcieć x207 / ciągle x127 / robić x99 / człowiek x99 / 	mieć x375 / chcieć x207 / ciągle x127 / robić x99 / człowiek x99 / 	mieć x375 / chcieć x207 / ciągle x127 / robić x99 / człowiek x99 / 	2022-07-04 19:37:47.456893+00	2022-07-04 17:08:07.955338+00
230	szad	Szad	2722	2722	2722	2722	107	112	112	112	mieć x137 / czas x56 / wiedzieć x42 / chcieć x34 / dziś x32 / 	mieć x137 / czas x56 / wiedzieć x42 / chcieć x34 / dziś x32 / 	mieć x137 / czas x56 / wiedzieć x42 / chcieć x34 / dziś x32 / 	mieć x137 / czas x56 / wiedzieć x42 / chcieć x34 / dziś x32 / 	2022-07-04 19:37:47.625915+00	2022-07-04 17:08:07.943932+00
253	w_e_n_a_	W.E.N.A.	3533	4050	4050	4050	38	62	62	62	mieć x206 / który x129 / chcieć x123 / wiedzieć x95 / mówić x91 / 	mieć x275 / chcieć x155 / który x154 / wiedzieć x121 / mówić x110 / 	mieć x275 / chcieć x155 / który x154 / wiedzieć x121 / mówić x110 / 	mieć x275 / chcieć x155 / który x154 / wiedzieć x121 / mówić x110 / 	2022-07-04 19:37:47.442593+00	2022-07-04 17:08:08.010078+00
249	tymek	Tymek	2546	3640	3640	3640	111	73	73	73	mieć x320 / chcieć x221 / ojał x158 / siebie x121 / wiedzieć x118 / 	mieć x574 / chcieć x312 / siebie x234 / ojał x185 / wiedzieć x175 / 	mieć x574 / chcieć x312 / siebie x234 / ojał x185 / wiedzieć x175 / 	mieć x574 / chcieć x312 / siebie x234 / ojał x185 / wiedzieć x175 / 	2022-07-04 19:37:47.482064+00	2022-07-04 17:08:07.998799+00
246	tony_jazzu	Tony Jazzu	2032	2032	2032	2032	130	131	131	131	mieć x101 / wiedzieć x83 / robić x43 / jazz x33 / chcieć x32 / 	mieć x101 / wiedzieć x83 / robić x43 / jazz x33 / chcieć x32 / 	mieć x101 / wiedzieć x83 / robić x43 / jazz x33 / chcieć x32 / 	mieć x101 / wiedzieć x83 / robić x43 / jazz x33 / chcieć x32 / 	2022-07-04 19:37:47.695309+00	2022-07-04 17:08:07.99002+00
233	szesnasty	Szesnasty	2210	2210	2210	2210	123	124	124	124	mieć x132 / mówić x72 / tylko x60 / chcieć x54 / wiedzieć x41 / 	mieć x132 / mówić x72 / tylko x60 / chcieć x54 / wiedzieć x41 / 	mieć x132 / mówić x72 / tylko x60 / chcieć x54 / wiedzieć x41 / 	mieć x132 / mówić x72 / tylko x60 / chcieć x54 / wiedzieć x41 / 	2022-07-04 19:37:47.668882+00	2022-07-04 17:08:07.952499+00
225	spinache	Spinache	1629	1629	1629	1629	146	146	146	146	mieć x83 / wiedzieć x39 / wszystko x34 / chcieć x26 / czuć x23 / 	mieć x83 / wiedzieć x39 / wszystko x34 / chcieć x26 / czuć x23 / 	mieć x83 / wiedzieć x39 / wszystko x34 / chcieć x26 / czuć x23 / 	mieć x83 / wiedzieć x39 / wszystko x34 / chcieć x26 / czuć x23 / 	2022-07-04 19:37:47.751044+00	2022-07-04 17:08:07.929675+00
232	szczyl	Szczyl	1428	1428	1428	1428	157	157	157	157	mieć x148 / świat x71 / tylko x68 / chcieć x67 / toast x64 / 	mieć x148 / świat x71 / tylko x68 / chcieć x67 / toast x64 / 	mieć x148 / świat x71 / tylko x68 / chcieć x67 / toast x64 / 	mieć x148 / świat x71 / tylko x68 / chcieć x67 / toast x64 / 	2022-07-04 19:37:47.791347+00	2022-07-04 17:08:07.949689+00
226	stasiak	Stasiak	1150	1150	1150	1150	166	166	166	166	mieć x81 / wiedzieć x51 / chcieć x34 / dzisiaj x24 / słowo x24 / 	mieć x81 / wiedzieć x51 / chcieć x34 / dzisiaj x24 / słowo x24 / 	mieć x81 / wiedzieć x51 / chcieć x34 / dzisiaj x24 / słowo x24 / 	mieć x81 / wiedzieć x51 / chcieć x34 / dzisiaj x24 / słowo x24 / 	2022-07-04 19:37:47.824701+00	2022-07-04 17:08:07.932331+00
242	teka	Teka	1120	1120	1120	1120	168	168	168	168	wiedzieć x63 / tańcz x56 / mieć x38 / wszystko x33 / wrócić x31 / 	wiedzieć x63 / tańcz x56 / mieć x38 / wszystko x33 / wrócić x31 / 	wiedzieć x63 / tańcz x56 / mieć x38 / wszystko x33 / wrócić x31 / 	wiedzieć x63 / tańcz x56 / mieć x38 / wszystko x33 / wrócić x31 / 	2022-07-04 19:37:47.832027+00	2022-07-04 17:08:07.978438+00
238	tadek	Tadek	332	332	332	332	203	203	203	203	polski x14 / wygrana x7 / niemiecki x7 / walczyć x6 / polak x6 / 	polski x14 / wygrana x7 / niemiecki x7 / walczyć x6 / polak x6 / 	polski x14 / wygrana x7 / niemiecki x7 / walczyć x6 / polak x6 / 	polski x14 / wygrana x7 / niemiecki x7 / walczyć x6 / polak x6 / 	2022-07-04 19:37:47.960909+00	2022-07-04 17:08:07.966662+00
241	tede	Tede	3533	5786	7836	13695	37	17	6	3	mieć x253 / wiedzieć x200 / robić x88 / ojał x88 / czas x82 / 	mieć x580 / wiedzieć x370 / czas x163 / chcieć x148 / ojał x144 / 	mieć x850 / wiedzieć x526 / chcieć x217 / robić x211 / czas x204 / 	mieć x2248 / wiedzieć x1032 / chcieć x591 / robić x527 / taki x449 / 	2022-07-04 19:37:47.225164+00	2022-07-04 17:08:07.975306+00
239	tau	Tau	3727	5645	7280	7280	25	18	12	16	mieć x283 / chcieć x109 / który x104 / wiedzieć x102 / życie x91 / 	mieć x536 / chcieć x226 / życie x205 / wiedzieć x185 / który x180 / 	mieć x763 / chcieć x320 / który x287 / życie x271 / wiedzieć x267 / 	mieć x763 / chcieć x320 / który x287 / życie x271 / wiedzieć x267 / 	2022-07-04 19:37:47.272405+00	2022-07-04 17:08:07.969599+00
236	sliwa	Śliwa	3559	5389	5389	5389	33	26	35	35	mieć x218 / wiedzieć x119 / chcieć x111 / życie x93 / czas x80 / 	mieć x443 / chcieć x227 / wiedzieć x214 / życie x123 / czas x115 / 	mieć x443 / chcieć x227 / wiedzieć x214 / życie x123 / czas x115 / 	mieć x443 / chcieć x227 / wiedzieć x214 / życie x123 / czas x115 / 	2022-07-04 19:37:47.342566+00	2022-07-04 17:08:07.961052+00
258	white_2115	White 2115	2497	3022	3022	3022	114	104	104	104	mieć x263 / chcieć x253 / wiedzieć x135 / tylko x111 / czas x102 / 	mieć x331 / chcieć x325 / wiedzieć x169 / yeah x154 / czas x131 / 	mieć x331 / chcieć x325 / wiedzieć x169 / yeah x154 / czas x131 / 	mieć x331 / chcieć x325 / wiedzieć x169 / yeah x154 / czas x131 / 	2022-07-04 19:37:47.596115+00	2022-07-04 17:08:08.025209+00
255	waco	Waco	1799	1799	1799	1799	141	141	141	141	mieć x72 / chcieć x51 / czas x44 / życie x41 / wiedzieć x40 / 	mieć x72 / chcieć x51 / czas x44 / życie x41 / wiedzieć x40 / 	mieć x72 / chcieć x51 / czas x44 / życie x41 / wiedzieć x40 / 	mieć x72 / chcieć x51 / czas x44 / życie x41 / wiedzieć x40 / 	2022-07-04 19:37:47.732183+00	2022-07-04 17:08:08.015969+00
265	yaro	Yaro	1680	1680	1680	1680	144	144	144	144	mieć x87 / wiedzieć x46 / chcieć x45 / dziś x40 / każdy x33 / 	mieć x87 / wiedzieć x46 / chcieć x45 / dziś x40 / każdy x33 / 	mieć x87 / wiedzieć x46 / chcieć x45 / dziś x40 / każdy x33 / 	mieć x87 / wiedzieć x46 / chcieć x45 / dziś x40 / każdy x33 / 	2022-07-04 19:37:47.743289+00	2022-07-04 17:08:08.045104+00
263	wojtas	Wojtas	1240	1240	1240	1240	164	164	164	164	mieć x42 / czas x26 / swój x20 / który x19 / rapa x18 / 	mieć x42 / czas x26 / swój x20 / który x19 / rapa x18 / 	mieć x42 / czas x26 / swój x20 / który x19 / rapa x18 / 	mieć x42 / czas x26 / swój x20 / który x19 / rapa x18 / 	2022-07-04 19:37:47.817239+00	2022-07-04 17:08:08.039775+00
266	young_igi	Young Igi	2314	2323	2323	2323	121	122	122	122	mieć x411 / chcieć x247 / wiedzieć x175 / mówić x121 / robić x93 / 	mieć x426 / chcieć x256 / wiedzieć x175 / mówić x123 / robić x94 / 	mieć x426 / chcieć x256 / wiedzieć x175 / mówić x123 / robić x94 / 	mieć x426 / chcieć x256 / wiedzieć x175 / mówić x123 / robić x94 / 	2022-07-04 19:37:47.661451+00	2022-07-04 17:08:08.048484+00
274	zorak	Zorak	1021	1021	1021	1021	172	172	172	172	mieć x52 / ełdezet x27 / krew x23 / chcieć x22 / poddaja x16 / 	mieć x52 / ełdezet x27 / krew x23 / chcieć x22 / poddaja x16 / 	mieć x52 / ełdezet x27 / krew x23 / chcieć x22 / poddaja x16 / 	mieć x52 / ełdezet x27 / krew x23 / chcieć x22 / poddaja x16 / 	2022-07-04 19:37:47.847024+00	2022-07-04 17:08:08.071644+00
270	zawodnik	Zawodnik	574	574	574	574	188	188	188	188	mieć x27 / tylko x22 / wiedzieć x20 / wszystko x14 / chcieć x13 / 	mieć x27 / tylko x22 / wiedzieć x20 / wszystko x14 / chcieć x13 / 	mieć x27 / tylko x22 / wiedzieć x20 / wszystko x14 / chcieć x13 / 	mieć x27 / tylko x22 / wiedzieć x20 / wszystko x14 / chcieć x13 / 	2022-07-04 19:37:47.905274+00	2022-07-04 17:08:08.060193+00
264	wsz	WSZ	453	453	453	453	195	195	195	195	który x9 / chcieć x9 / swój x9 / mieć x8 / człowiek x8 / 	który x9 / chcieć x9 / swój x9 / mieć x8 / człowiek x8 / 	który x9 / chcieć x9 / swój x9 / mieć x8 / człowiek x8 / 	który x9 / chcieć x9 / swój x9 / mieć x8 / człowiek x8 / 	2022-07-04 19:37:47.930837+00	2022-07-04 17:08:08.04248+00
261	wisnix	Wiśnix	375	375	375	375	200	199	200	199	mieć x49 / żeby x21 / chcieć x16 / wszystko x15 / nawet x13 / 	mieć x49 / żeby x21 / chcieć x16 / wszystko x15 / nawet x13 / 	mieć x49 / żeby x21 / chcieć x16 / wszystko x15 / nawet x13 / 	mieć x49 / żeby x21 / chcieć x16 / wszystko x15 / nawet x13 / 	2022-07-04 19:37:47.945609+00	2022-07-04 17:08:08.033892+00
269	zajka	Zajka	0	0	0	0	258	269	220	264					2022-07-04 19:37:48.18711+00	2022-07-04 17:08:08.056936+00
160	o_s_t_r_	O.S.T.R.	4043	6581	8633	15697	10	3	2	2	mieć x210 / który x85 / wiedzieć x76 / świat x76 / chcieć x72 / 	mieć x505 / chcieć x173 / wiedzieć x170 / świat x128 / który x121 / 	mieć x759 / wiedzieć x284 / chcieć x277 / życie x196 / świat x194 / 	mieć x2164 / chcieć x708 / wiedzieć x658 / życie x565 / świat x490 / 	2022-07-04 19:37:47.221564+00	2022-07-04 17:08:07.739543+00
195	quebonafide	Quebonafide	4095	6180	7501	7501	6	10	11	14	mieć x235 / chcieć x91 / życie x70 / wiedzieć x64 / tylko x64 / 	mieć x480 / chcieć x208 / tylko x166 / wiedzieć x123 / życie x118 / 	mieć x609 / chcieć x302 / tylko x212 / quebonafide x182 / wiedzieć x169 / 	mieć x609 / chcieć x302 / tylko x212 / quebonafide x182 / wiedzieć x169 / 	2022-07-04 19:37:47.265244+00	2022-07-04 17:08:07.84136+00
272	zeus	Zeus	3167	5178	6784	6784	76	30	17	19	mieć x344 / czas x121 / chcieć x113 / tylko x106 / wiedzieć x103 / 	mieć x629 / chcieć x263 / czas x206 / wiedzieć x196 / tylko x170 / 	mieć x807 / chcieć x358 / czas x305 / każdy x239 / wiedzieć x237 / 	mieć x807 / chcieć x358 / czas x305 / każdy x239 / wiedzieć x237 / 	2022-07-04 19:37:47.283305+00	2022-07-04 17:08:08.065851+00
40	deys	Deys	4175	6541	6541	6541	3	4	20	23	mieć x270 / chcieć x103 / wiedzieć x87 / tylko x85 / siebie x76 / 	mieć x498 / chcieć x167 / tylko x161 / wiedzieć x153 / mówić x125 / 	mieć x498 / chcieć x167 / tylko x161 / wiedzieć x153 / mówić x125 / 	mieć x498 / chcieć x167 / tylko x161 / wiedzieć x153 / mówić x125 / 	2022-07-04 19:37:47.29875+00	2022-07-04 17:08:07.371253+00
32	buka	Buka	4020	6195	6195	6195	12	9	26	27	mieć x328 / wiedzieć x99 / chcieć x77 / świat x61 / chyba x60 / 	mieć x567 / wiedzieć x159 / chcieć x129 / tylko x98 / robić x90 / 	mieć x567 / wiedzieć x159 / chcieć x129 / tylko x98 / robić x90 / 	mieć x567 / wiedzieć x159 / chcieć x129 / tylko x98 / robić x90 / 	2022-07-04 19:37:47.313404+00	2022-07-04 17:08:07.345117+00
174	peerzet	Peerzet	4083	6118	6118	6118	7	12	27	28	mieć x352 / wiedzieć x117 / chcieć x96 / siebie x74 / tylko x55 / 	mieć x596 / chcieć x198 / wiedzieć x188 / siebie x119 / tylko x105 / 	mieć x596 / chcieć x198 / wiedzieć x188 / siebie x119 / tylko x105 / 	mieć x596 / chcieć x198 / wiedzieć x188 / siebie x119 / tylko x105 / 	2022-07-04 19:37:47.316965+00	2022-07-04 17:08:07.780547+00
75	hades	Hades	4227	4613	4613	4613	1	49	50	50	mieć x216 / inny x87 / tylko x67 / chcieć x53 / your x52 / 	mieć x216 / inny x139 / your x68 / tylko x67 / chcieć x53 / 	mieć x216 / inny x139 / your x68 / tylko x67 / chcieć x53 / 	mieć x216 / inny x139 / your x68 / tylko x67 / chcieć x53 / 	2022-07-04 19:37:47.397748+00	2022-07-04 17:08:07.479019+00
139	mezo	Mezo	4171	6357	6357	6357	4	6	23	26	mieć x236 / chcieć x129 / świat x82 / siebie x73 / życie x73 / 	mieć x468 / chcieć x285 / wiedzieć x229 / tylko x150 / życie x145 / 	mieć x468 / chcieć x285 / wiedzieć x229 / tylko x150 / życie x145 / 	mieć x468 / chcieć x285 / wiedzieć x229 / tylko x150 / życie x145 / 	2022-07-04 19:37:47.309341+00	2022-07-04 17:08:07.677132+00
271	zeamsone	Zeamsone	2368	3114	3114	3114	118	100	100	100	mieć x337 / chcieć x248 / mówić x136 / robić x125 / dziś x112 / 	mieć x529 / chcieć x429 / mówić x167 / robić x158 / wiedzieć x143 / 	mieć x529 / chcieć x429 / mówić x167 / robić x158 / wiedzieć x143 / 	mieć x529 / chcieć x429 / mówić x167 / robić x158 / wiedzieć x143 / 	2022-07-04 19:37:47.581607+00	2022-07-04 17:08:08.063169+00
254	wac_toja	Wac Toja	2829	2829	2829	2829	103	109	109	109	mieć x292 / chcieć x177 / robić x83 / czuć x80 / tylko x76 / 	mieć x292 / chcieć x177 / robić x83 / czuć x80 / tylko x76 / 	mieć x292 / chcieć x177 / robić x83 / czuć x80 / tylko x76 / 	mieć x292 / chcieć x177 / robić x83 / czuć x80 / tylko x76 / 	2022-07-04 19:37:47.614326+00	2022-07-04 17:08:08.013426+00
243	ten_typ_mes	Ten Typ Mes	3931	6871	9578	10546	14	1	1	6	mieć x245 / wiedzieć x150 / który x121 / chcieć x94 / mówić x86 / 	mieć x484 / wiedzieć x228 / chcieć x208 / który x194 / tylko x127 / 	mieć x700 / wiedzieć x290 / chcieć x289 / który x237 / mówić x177 / 	mieć x770 / chcieć x342 / wiedzieć x339 / który x267 / tylko x207 / 	2022-07-04 19:37:47.236329+00	2022-07-04 17:08:07.981035+00
275	zabson	Żabson	3470	5450	5450	5450	43	22	34	34	mieć x283 / chcieć x209 / tylko x114 / wiedzieć x84 / thing x72 / 	mieć x565 / chcieć x360 / tylko x187 / robić x144 / wiedzieć x125 / 	mieć x565 / chcieć x360 / tylko x187 / robić x144 / wiedzieć x125 / 	mieć x565 / chcieć x360 / tylko x187 / robić x144 / wiedzieć x125 / 	2022-07-04 19:37:47.339042+00	2022-07-04 17:08:08.074811+00
204	reto	ReTo	3158	5127	5127	5127	77	32	39	39	mieć x347 / chcieć x215 / mówić x125 / wiedzieć x102 / hajs x97 / 	mieć x649 / chcieć x416 / mówić x213 / wiedzieć x194 / kurwa x148 / 	mieć x649 / chcieć x416 / mówić x213 / wiedzieć x194 / kurwa x148 / 	mieć x649 / chcieć x416 / mówić x213 / wiedzieć x194 / kurwa x148 / 	2022-07-04 19:37:47.357203+00	2022-07-04 17:08:07.868431+00
91	k2	K2	3849	4973	4973	4973	17	38	44	44	mieć x270 / wiedzieć x152 / świat x109 / chcieć x106 / człowiek x92 / 	mieć x394 / wiedzieć x188 / świat x155 / chcieć x150 / człowiek x137 / 	mieć x394 / wiedzieć x188 / świat x155 / chcieć x150 / człowiek x137 / 	mieć x394 / wiedzieć x188 / świat x155 / chcieć x150 / człowiek x137 / 	2022-07-04 19:37:47.376223+00	2022-07-04 17:08:07.530456+00
28	bosski_roman	Bosski Roman	3500	4502	4502	4502	42	51	52	52	mieć x195 / życie x114 / siebie x114 / człowiek x99 / twój x90 / 	mieć x297 / życie x152 / siebie x133 / człowiek x122 / swój x121 / 	mieć x297 / życie x152 / siebie x133 / człowiek x122 / swój x121 / 	mieć x297 / życie x152 / siebie x133 / człowiek x122 / swój x121 / 	2022-07-04 19:37:47.404821+00	2022-07-04 17:08:07.331453+00
10	aro	Aro	3931	3931	3931	3931	15	67	67	67	mieć x191 / chcieć x84 / który x76 / życie x68 / wiedzieć x67 / 	mieć x191 / chcieć x84 / który x76 / życie x68 / wiedzieć x67 / 	mieć x191 / chcieć x84 / który x76 / życie x68 / wiedzieć x67 / 	mieć x191 / chcieć x84 / który x76 / życie x68 / wiedzieć x67 / 	2022-07-04 19:37:47.460435+00	2022-07-04 17:08:07.269314+00
4	dj_600v	DJ 600V	3287	3287	3287	3287	60	91	92	92	mieć x198 / chcieć x113 / wiedzieć x87 / pamiętać x75 / koniec x67 / 	mieć x198 / chcieć x113 / wiedzieć x87 / pamiętać x75 / koniec x67 / 	mieć x198 / chcieć x113 / wiedzieć x87 / pamiętać x75 / koniec x67 / 	mieć x198 / chcieć x113 / wiedzieć x87 / pamiętać x75 / koniec x67 / 	2022-07-04 19:37:47.552173+00	2022-07-04 17:08:07.247509+00
130	malik_montana	Malik Montana	2510	2510	2510	2510	113	116	116	116	mieć x263 / malik x111 / chcieć x110 / montan x88 / robić x62 / 	mieć x263 / malik x111 / chcieć x110 / montan x88 / robić x62 / 	mieć x263 / malik x111 / chcieć x110 / montan x88 / robić x62 / 	mieć x263 / malik x111 / chcieć x110 / montan x88 / robić x62 / 	2022-07-04 19:37:47.640101+00	2022-07-04 17:08:07.650228+00
267	young_multi	Young Multi	2442	2442	2442	2442	115	117	117	117	chcieć x235 / mieć x235 / wiedzieć x191 / yeah x176 / robić x137 / 	chcieć x235 / mieć x235 / wiedzieć x191 / yeah x176 / robić x137 / 	chcieć x235 / mieć x235 / wiedzieć x191 / yeah x176 / robić x137 / 	chcieć x235 / mieć x235 / wiedzieć x191 / yeah x176 / robić x137 / 	2022-07-04 19:37:47.643562+00	2022-07-04 17:08:08.051147+00
132	malolat	Małolat	2030	2030	2030	2030	131	132	132	132	mieć x234 / chcieć x158 / zanim x66 / wiedzieć x65 / życie x51 / 	mieć x234 / chcieć x158 / zanim x66 / wiedzieć x65 / życie x51 / 	mieć x234 / chcieć x158 / zanim x66 / wiedzieć x65 / życie x51 / 	mieć x234 / chcieć x158 / zanim x66 / wiedzieć x65 / życie x51 / 	2022-07-04 19:37:47.698904+00	2022-07-04 17:08:07.655819+00
74	gverilla	Gverilla	625	625	625	625	186	186	186	186	chcieć x47 / wiedzieć x30 / przyznać x20 / przez x16 / wszystko x16 / 	chcieć x47 / wiedzieć x30 / przyznać x20 / przez x16 / wszystko x16 / 	chcieć x47 / wiedzieć x30 / przyznać x20 / przez x16 / wszystko x16 / 	chcieć x47 / wiedzieć x30 / przyznać x20 / przez x16 / wszystko x16 / 	2022-07-04 19:37:47.898089+00	2022-07-04 17:08:07.476088+00
99	kali	Kali	3545	6267	7691	7691	35	7	8	12	mieć x252 / chcieć x150 / gdzie x89 / życie x83 / kala x70 / 	mieć x401 / chcieć x266 / gdzie x152 / życie x136 / wiedzieć x128 / 	mieć x523 / chcieć x362 / gdzie x190 / życie x183 / wiedzieć x178 / 	mieć x523 / chcieć x362 / gdzie x190 / życie x183 / wiedzieć x178 / 	2022-07-04 19:37:47.25819+00	2022-07-04 17:08:07.55676+00
102	kartky	Kartky	3136	4853	6314	7435	80	43	24	15	mieć x268 / który x142 / wiedzieć x140 / chcieć x119 / tylko x79 / 	mieć x490 / chcieć x306 / wiedzieć x245 / który x236 / kiedy x188 / 	mieć x726 / chcieć x477 / wiedzieć x351 / który x320 / kiedy x294 / 	mieć x907 / chcieć x637 / wiedzieć x476 / kiedy x383 / który x377 / 	2022-07-04 19:37:47.268833+00	2022-07-04 17:08:07.566498+00
106	keke	KęKę	3804	5529	6625	6625	21	20	18	21	mieć x214 / tylko x91 / robić x89 / wiedzieć x89 / chcieć x80 / 	mieć x529 / chcieć x236 / wiedzieć x218 / tylko x181 / robić x169 / 	mieć x775 / chcieć x338 / wiedzieć x322 / życie x226 / tylko x222 / 	mieć x775 / chcieć x338 / wiedzieć x322 / życie x226 / tylko x222 / 	2022-07-04 19:37:47.290952+00	2022-07-04 17:08:07.578499+00
177	pezet	Pezet	3278	4963	5969	5969	62	40	29	30	mieć x257 / wiedzieć x183 / chcieć x158 / twój x89 / rapa x86 / 	mieć x531 / wiedzieć x413 / chcieć x359 / czas x173 / mówić x167 / 	mieć x742 / wiedzieć x473 / chcieć x458 / czas x247 / mówić x223 / 	mieć x742 / wiedzieć x473 / chcieć x458 / czas x247 / mówić x223 / 	2022-07-04 19:37:47.324217+00	2022-07-04 17:08:07.789319+00
\.


--
-- Name: musician_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.musician_id_seq', 277, true);


--
-- Name: alembic_version alembic_version_pkc; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alembic_version
    ADD CONSTRAINT alembic_version_pkc PRIMARY KEY (version_num);


--
-- Name: musician musician_artist_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.musician
    ADD CONSTRAINT musician_artist_name_key UNIQUE (artist_name);


--
-- Name: musician musician_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.musician
    ADD CONSTRAINT musician_name_key UNIQUE (name);


--
-- Name: musician musician_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.musician
    ADD CONSTRAINT musician_pkey PRIMARY KEY (id);


--
-- Name: ix_musician_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ix_musician_id ON public.musician USING btree (id);


--
-- PostgreSQL database dump complete
--

--
-- PostgreSQL database cluster dump complete
--

