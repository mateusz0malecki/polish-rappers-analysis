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
117	kuban	Kuban	3210	3742	3742	3742	67	71	71	71	mie?? x394 / chcie?? x114 / siebie x97 / taki x89 / m??wi?? x84 / 	mie?? x478 / chcie?? x123 / siebie x114 / taki x100 / wiedzie?? x93 / 	mie?? x478 / chcie?? x123 / siebie x114 / taki x100 / wiedzie?? x93 / 	mie?? x478 / chcie?? x123 / siebie x114 / taki x100 / wiedzie?? x93 / 	2022-07-04 19:37:47.474922+00	2022-07-04 17:08:07.61168+00
8	ak_47	AK-47	3048	4035	4035	4035	90	64	64	64	mie?? x180 / kt??ry x138 / lecz x109 / siebie x98 / chcie?? x81 / 	mie?? x220 / kt??ry x194 / lecz x146 / siebie x117 / chcie?? x112 / 	mie?? x220 / kt??ry x194 / lecz x146 / siebie x117 / chcie?? x112 / 	mie?? x220 / kt??ry x194 / lecz x146 / siebie x117 / chcie?? x112 / 	2022-07-04 19:37:47.449567+00	2022-07-04 17:08:07.261751+00
70	green	Green	1898	1898	1898	1898	137	137	137	137	mie?? x105 / kt??ry x62 / chcie?? x48 / wiedzie?? x42 / gdzie x40 / 	mie?? x105 / kt??ry x62 / chcie?? x48 / wiedzie?? x42 / gdzie x40 / 	mie?? x105 / kt??ry x62 / chcie?? x48 / wiedzie?? x42 / gdzie x40 / 	mie?? x105 / kt??ry x62 / chcie?? x48 / wiedzie?? x42 / gdzie x40 / 	2022-07-04 19:37:47.717153+00	2022-07-04 17:08:07.463142+00
84	jarecki	Jarecki	1308	1308	1308	1308	160	160	160	160	mie?? x133 / tylko x63 / chcie?? x60 / wi??c x50 / dzi?? x44 / 	mie?? x133 / tylko x63 / chcie?? x60 / wi??c x50 / dzi?? x44 / 	mie?? x133 / tylko x63 / chcie?? x60 / wi??c x50 / dzi?? x44 / 	mie?? x133 / tylko x63 / chcie?? x60 / wi??c x50 / dzi?? x44 / 	2022-07-04 19:37:47.802584+00	2022-07-04 17:08:07.507905+00
94	kaczmi	Kaczmi	3118	3118	3118	3118	83	98	98	98	kupa x134 / mie?? x111 / zrobi?? x91 / sw??j x73 / siebie x58 / 	kupa x134 / mie?? x111 / zrobi?? x91 / sw??j x73 / siebie x58 / 	kupa x134 / mie?? x111 / zrobi?? x91 / sw??j x73 / siebie x58 / 	kupa x134 / mie?? x111 / zrobi?? x91 / sw??j x73 / siebie x58 / 	2022-07-04 19:37:47.574338+00	2022-07-04 17:08:07.541224+00
61	flint	Flint	2263	2263	2263	2263	122	123	123	123	mie?? x135 / chcie?? x61 / tylko x38 / kt??ry x36 / czas x35 / 	mie?? x135 / chcie?? x61 / tylko x38 / kt??ry x36 / czas x35 / 	mie?? x135 / chcie?? x61 / tylko x38 / kt??ry x36 / czas x35 / 	mie?? x135 / chcie?? x61 / tylko x38 / kt??ry x36 / czas x35 / 	2022-07-04 19:37:47.665425+00	2022-07-04 17:08:07.434114+00
56	ero	Ero	802	802	802	802	180	180	180	180	mie?? x88 / tylko x32 / dobry x21 / pu???? x14 / wzi???? x14 / 	mie?? x88 / tylko x32 / dobry x21 / pu???? x14 / wzi???? x14 / 	mie?? x88 / tylko x32 / dobry x21 / pu???? x14 / wzi???? x14 / 	mie?? x88 / tylko x32 / dobry x21 / pu???? x14 / wzi???? x14 / 	2022-07-04 19:37:47.876422+00	2022-07-04 17:08:07.419211+00
159	nemy	??emy	509	509	509	509	193	193	193	193	dont x14 / wanna x11 / live x11 / pain x11 / mie?? x11 / 	dont x14 / wanna x11 / live x11 / pain x11 / mie?? x11 / 	dont x14 / wanna x11 / live x11 / pain x11 / mie?? x11 / 	dont x14 / wanna x11 / live x11 / pain x11 / mie?? x11 / 	2022-07-04 19:37:47.923544+00	2022-07-04 17:08:07.736763+00
44	dohtor_miod	Dohtor Mi??d	445	445	445	445	196	196	196	196	jadym x49 / kurwa x46 / upierdliwa x27 / sonsiod x21 / musa x14 / 	jadym x49 / kurwa x46 / upierdliwa x27 / sonsiod x21 / musa x14 / 	jadym x49 / kurwa x46 / upierdliwa x27 / sonsiod x21 / musa x14 / 	jadym x49 / kurwa x46 / upierdliwa x27 / sonsiod x21 / musa x14 / 	2022-07-04 19:37:47.934373+00	2022-07-04 17:08:07.383933+00
19	bilon	Bilon	230	230	230	230	208	208	208	208	polski x7 / wolno???? x7 / mie?? x7 / refy x5 / gdzie x5 / 	polski x7 / wolno???? x7 / mie?? x7 / refy x5 / gdzie x5 / 	polski x7 / wolno???? x7 / mie?? x7 / refy x5 / gdzie x5 / 	polski x7 / wolno???? x7 / mie?? x7 / refy x5 / gdzie x5 / 	2022-07-04 19:37:47.98013+00	2022-07-04 17:08:07.300717+00
76	hans	Hans	221	221	221	221	209	209	209	209	zwrotek x11 / parodia x11 / utw??r x11 / wiedzie?? x7 / mie?? x6 / 	zwrotek x11 / parodia x11 / utw??r x11 / wiedzie?? x7 / mie?? x6 / 	zwrotek x11 / parodia x11 / utw??r x11 / wiedzie?? x7 / mie?? x6 / 	zwrotek x11 / parodia x11 / utw??r x11 / wiedzie?? x7 / mie?? x6 / 	2022-07-04 19:37:47.983872+00	2022-07-04 17:08:07.482243+00
103	karwel	Karwel	0	0	0	0	236	255	226	214					2022-07-04 19:37:48.002493+00	2022-07-04 17:08:07.569779+00
38	aleksander_czyz	Aleksander Czy??	0	0	0	0	253	238	214	277					2022-07-04 19:37:48.234931+00	2022-07-04 17:08:07.364811+00
24	bonson	Bonson	3075	4226	4226	4226	89	56	56	56	mie?? x311 / wiedzie?? x170 / chcie?? x129 / m??wi?? x122 / czas x104 / 	mie?? x501 / wiedzie?? x269 / chcie?? x237 / m??wi?? x185 / kurwa x147 / 	mie?? x501 / wiedzie?? x269 / chcie?? x237 / m??wi?? x185 / kurwa x147 / 	mie?? x501 / wiedzie?? x269 / chcie?? x237 / m??wi?? x185 / kurwa x147 / 	2022-07-04 19:37:47.419797+00	2022-07-04 17:08:07.317556+00
89	jotuze	Jotuze	0	0	0	0	237	254	233	276					2022-07-04 19:37:48.231169+00	2022-07-04 17:08:07.523639+00
13	bak	Bak	0	0	0	0	260	232	232	275					2022-07-04 19:37:48.227538+00	2022-07-04 17:08:07.279929+00
118	l_pro	L-Pro	0	0	0	0	231	260	231	274					2022-07-04 19:37:48.223712+00	2022-07-04 17:08:07.614478+00
116	ksiaze_kapota	Ksi?????? Kapota	0	0	0	0	232	259	230	273					2022-07-04 19:37:48.220189+00	2022-07-04 17:08:07.608913+00
7	afrojax	Afrojax	0	0	0	0	233	258	229	272					2022-07-04 19:37:48.21637+00	2022-07-04 17:08:07.258464+00
113	wojciech_kosun	Wojciech Kosu??	0	0	0	0	234	257	228	271					2022-07-04 19:37:48.2123+00	2022-07-04 17:08:07.599768+00
112	koras	Koras	0	0	0	0	235	256	227	270					2022-07-04 19:37:48.208899+00	2022-07-04 17:08:07.597008+00
17	bezczel	Bezczel	0	0	0	0	257	234	274	254					2022-07-04 19:37:48.149968+00	2022-07-04 17:08:07.293909+00
14	jakub_bartczak	Jakub Bartczak	0	0	0	0	259	233	273	269					2022-07-04 19:37:48.205068+00	2022-07-04 17:08:07.283703+00
86	joka	Joka	0	0	0	0	238	253	225	268					2022-07-04 19:37:48.201666+00	2022-07-04 17:08:07.514252+00
85	jedker	J??dker	0	0	0	0	240	252	224	267					2022-07-04 19:37:48.19783+00	2022-07-04 17:08:07.511006+00
81	iceman	Iceman	0	0	0	0	242	251	223	266					2022-07-04 19:37:48.194454+00	2022-07-04 17:08:07.498754+00
69	gorzki	Gorzki	0	0	0	0	243	250	222	265					2022-07-04 19:37:48.190593+00	2022-07-04 17:08:07.459981+00
66	gal	Gal	0	0	0	0	245	249	221	263					2022-07-04 19:37:48.183251+00	2022-07-04 17:08:07.450793+00
55	ignacy_erenski	Ignacy Ere??ski	0	0	0	0	247	243	219	262					2022-07-04 19:37:48.179766+00	2022-07-04 17:08:07.416599+00
54	emazet	Emazet	0	0	0	0	248	242	218	261					2022-07-04 19:37:48.17595+00	2022-07-04 17:08:07.413542+00
52	ekonom	Ekonom	0	0	0	0	249	241	217	260					2022-07-04 19:37:48.17243+00	2022-07-04 17:08:07.407831+00
49	duze_pe	Du??e Pe	0	0	0	0	250	240	216	259					2022-07-04 19:37:48.168294+00	2022-07-04 17:08:07.398464+00
30	dj_brk	DJ BRK	0	0	0	0	256	235	275	255					2022-07-04 19:37:48.153835+00	2022-07-04 17:08:07.338618+00
42	dizkret	Dizkret	0	0	0	0	252	239	215	258					2022-07-04 19:37:48.164768+00	2022-07-04 17:08:07.377664+00
37	cne	CNE	0	0	0	0	254	237	277	257					2022-07-04 19:37:48.161206+00	2022-07-04 17:08:07.361749+00
35	chiwas	Chiwas	0	0	0	0	255	236	276	256					2022-07-04 19:37:48.157552+00	2022-07-04 17:08:07.354986+00
205	rover	Rover	3220	4614	4614	4614	65	48	49	49	mie?? x214 / chcie?? x112 / tylko x86 / ??ycie x74 / wiedzie?? x73 / 	mie?? x331 / ??ycie x153 / chcie?? x149 / tylko x140 / kt??ry x116 / 	mie?? x331 / ??ycie x153 / chcie?? x149 / tylko x140 / kt??ry x116 / 	mie?? x331 / ??ycie x153 / chcie?? x149 / tylko x140 / kt??ry x116 / 	2022-07-04 19:37:47.394094+00	2022-07-04 17:08:07.871065+00
140	michal_zytniak	Micha?? ??ytniak	0	0	0	0	269	244	272	253					2022-07-04 19:37:48.146428+00	2022-07-04 17:08:07.68043+00
156	kamil_nozynski	Kamil No??y??ski	0	0	0	0	262	231	271	252					2022-07-04 19:37:48.1423+00	2022-07-04 17:08:07.727972+00
209	ryba	Ryba	0	0	0	0	277	267	243	223					2022-07-04 19:37:48.036346+00	2022-07-04 17:08:07.882722+00
162	olsen	Olsen	0	0	0	0	230	230	270	251					2022-07-04 19:37:48.138738+00	2022-07-04 17:08:07.74553+00
189	popek	Popek	3127	3127	3127	3127	82	96	97	97	mie?? x181 / chcie?? x119 / sw??j x95 / ??ycie x79 / wszystko x56 / 	mie?? x181 / chcie?? x119 / sw??j x95 / ??ycie x79 / wszystko x56 / 	mie?? x181 / chcie?? x119 / sw??j x95 / ??ycie x79 / wszystko x56 / 	mie?? x181 / chcie?? x119 / sw??j x95 / ??ycie x79 / wszystko x56 / 	2022-07-04 19:37:47.570853+00	2022-07-04 17:08:07.823946+00
207	rufin_mc	Rufin MC	0	0	0	0	215	223	269	250					2022-07-04 19:37:48.1348+00	2022-07-04 17:08:07.876886+00
199	radoskor	Radosk??r	0	0	0	0	216	221	268	249					2022-07-04 19:37:48.131267+00	2022-07-04 17:08:07.853416+00
167	ostry	Ostry	0	0	0	0	227	220	267	248					2022-07-04 19:37:48.127282+00	2022-07-04 17:08:07.760307+00
171	daniel_oware	Daniel Oware	0	0	0	0	224	219	266	247					2022-07-04 19:37:48.123813+00	2022-07-04 17:08:07.771922+00
137	matheo	Matheo	646	646	646	646	185	185	185	185	mie?? x48 / ca??y x32 / ci??gle x31 / chcie?? x27 / esta x19 / 	mie?? x48 / ca??y x32 / ci??gle x31 / chcie?? x27 / esta x19 / 	mie?? x48 / ca??y x32 / ci??gle x31 / chcie?? x27 / esta x19 / 	mie?? x48 / ca??y x32 / ci??gle x31 / chcie?? x27 / esta x19 / 	2022-07-04 19:37:47.894447+00	2022-07-04 17:08:07.671162+00
181	kordian_piwowarski	Kordian Piwowarski	0	0	0	0	223	218	265	246					2022-07-04 19:37:48.119936+00	2022-07-04 17:08:07.800366+00
237	sliwka_tuitam	??liwka Tuitam	303	303	303	303	204	204	204	204	mie?? x14 / koniec x7 / cisza x7 / kt??ry x6 / wci???? x6 / 	mie?? x14 / koniec x7 / cisza x7 / kt??ry x6 / wci???? x6 / 	mie?? x14 / koniec x7 / cisza x7 / kt??ry x6 / wci???? x6 / 	mie?? x14 / koniec x7 / cisza x7 / kt??ry x6 / wci???? x6 / 	2022-07-04 19:37:47.964813+00	2022-07-04 17:08:07.964078+00
146	mlody_m	M??ody M	3279	3610	3610	3610	61	78	78	78	mie?? x291 / wiedzie?? x174 / czas x128 / ??ycie x117 / chcie?? x114 / 	mie?? x329 / wiedzie?? x188 / czas x137 / chcie?? x130 / ??ycie x126 / 	mie?? x329 / wiedzie?? x188 / czas x137 / chcie?? x130 / ??ycie x126 / 	mie?? x329 / wiedzie?? x188 / czas x137 / chcie?? x130 / ??ycie x126 / 	2022-07-04 19:37:47.500817+00	2022-07-04 17:08:07.69782+00
185	platoon	Platoon	0	0	0	0	222	217	264	245					2022-07-04 19:37:48.116477+00	2022-07-04 17:08:07.812326+00
170	owal	Owal	1514	1514	1514	1514	154	154	154	154	mie?? x63 / wiedzie?? x60 / chcie?? x40 / rapa x34 / je??li x30 / 	mie?? x63 / wiedzie?? x60 / chcie?? x40 / rapa x34 / je??li x30 / 	mie?? x63 / wiedzie?? x60 / chcie?? x40 / rapa x34 / je??li x30 / 	mie?? x63 / wiedzie?? x60 / chcie?? x40 / rapa x34 / je??li x30 / 	2022-07-04 19:37:47.779664+00	2022-07-04 17:08:07.768858+00
186	pogz	Pogz	0	0	0	0	221	216	263	244					2022-07-04 19:37:48.112919+00	2022-07-04 17:08:07.814903+00
187	pomidor	Pomidor	0	0	0	0	220	215	262	243					2022-07-04 19:37:48.109364+00	2022-07-04 17:08:07.818195+00
224	solar	Solar	3388	3388	3388	3388	51	87	88	88	mie?? x205 / chcie?? x128 / wiedzie?? x70 / m??wi?? x66 / tylko x59 / 	mie?? x205 / chcie?? x128 / wiedzie?? x70 / m??wi?? x66 / tylko x59 / 	mie?? x205 / chcie?? x128 / wiedzie?? x70 / m??wi?? x66 / tylko x59 / 	mie?? x205 / chcie?? x128 / wiedzie?? x70 / m??wi?? x66 / tylko x59 / 	2022-07-04 19:37:47.537625+00	2022-07-04 17:08:07.926376+00
157	nullo	Nullo	529	529	529	529	191	191	191	191	kt??ry x14 / gdzie x13 / mie?? x13 / ??wiat x12 / sw??j x10 / 	kt??ry x14 / gdzie x13 / mie?? x13 / ??wiat x12 / sw??j x10 / 	kt??ry x14 / gdzie x13 / mie?? x13 / ??wiat x12 / sw??j x10 / 	kt??ry x14 / gdzie x13 / mie?? x13 / ??wiat x12 / sw??j x10 / 	2022-07-04 19:37:47.916171+00	2022-07-04 17:08:07.73081+00
166	oreu	OREU	0	0	0	0	228	222	261	242					2022-07-04 19:37:48.105749+00	2022-07-04 17:08:07.757712+00
240	te_tris	Te-Tris	0	0	0	0	276	224	260	241					2022-07-04 19:37:48.102247+00	2022-07-04 17:08:07.972631+00
217	slon	S??o??	0	0	0	0	275	225	259	240					2022-07-04 19:37:48.09861+00	2022-07-04 17:08:07.906035+00
218	tymon_smektala	Tymon Smekta??a	0	0	0	0	274	226	258	239					2022-07-04 19:37:48.094608+00	2022-07-04 17:08:07.909251+00
125	lyonner	Lyonner	0	0	0	0	273	227	257	238					2022-07-04 19:37:48.091105+00	2022-07-04 17:08:07.635278+00
244	tigermaan	Tigermaan	0	0	0	0	218	276	242	237					2022-07-04 19:37:48.087189+00	2022-07-04 17:08:07.984079+00
231	slawomir_szczesniak	S??awomir Szcz????niak	0	0	0	0	270	228	256	236					2022-07-04 19:37:48.083765+00	2022-07-04 17:08:07.946505+00
198	radonis	Radonis	0	0	0	0	217	214	255	235					2022-07-04 19:37:48.079886+00	2022-07-04 17:08:07.850081+00
215	siwers	Siwers	2703	2703	2703	2703	108	113	113	113	mie?? x114 / wiedzie?? x50 / chcie?? x47 / siebie x34 / dobry x31 / 	mie?? x114 / wiedzie?? x50 / chcie?? x47 / siebie x34 / dobry x31 / 	mie?? x114 / wiedzie?? x50 / chcie?? x47 / siebie x34 / dobry x31 / 	mie?? x114 / wiedzie?? x50 / chcie?? x47 / siebie x34 / dobry x31 / 	2022-07-04 19:37:47.62948+00	2022-07-04 17:08:07.900752+00
165	onil	Onil	0	0	0	0	229	229	254	234					2022-07-04 19:37:48.076508+00	2022-07-04 17:08:07.754938+00
228	kazik_staszewski	Kazik Staszewski	0	0	0	0	267	245	253	233					2022-07-04 19:37:48.072698+00	2022-07-04 17:08:07.938081+00
149	mrokas	Mrokas	0	0	0	0	266	246	252	232					2022-07-04 19:37:48.069295+00	2022-07-04 17:08:07.706709+00
227	stasio	Stasio	0	0	0	0	264	247	251	231					2022-07-04 19:37:48.065468+00	2022-07-04 17:08:07.935313+00
152	niziol	Nizio??	0	0	0	0	263	248	250	230					2022-07-04 19:37:48.062003+00	2022-07-04 17:08:07.715972+00
196	quiz	Quiz	1564	1564	1564	1564	149	149	149	149	mie?? x103 / wiedzie?? x32 / chcie?? x31 / sw??j x27 / tylko x25 / 	mie?? x103 / wiedzie?? x32 / chcie?? x31 / sw??j x27 / tylko x25 / 	mie?? x103 / wiedzie?? x32 / chcie?? x31 / sw??j x27 / tylko x25 / 	mie?? x103 / wiedzie?? x32 / chcie?? x31 / sw??j x27 / tylko x25 / 	2022-07-04 19:37:47.761849+00	2022-07-04 17:08:07.844214+00
208	rufuz	Rufuz	0	0	0	0	214	261	249	229					2022-07-04 19:37:48.058027+00	2022-07-04 17:08:07.879995+00
151	iwo_naumowicz	Iwo Naumowicz	0	0	0	0	265	262	248	228					2022-07-04 19:37:48.054585+00	2022-07-04 17:08:07.712744+00
141	mikser	Mikser	0	0	0	0	268	263	247	227					2022-07-04 19:37:48.050841+00	2022-07-04 17:08:07.682985+00
235	szyha	Szyha	0	0	0	0	271	264	246	226					2022-07-04 19:37:48.047318+00	2022-07-04 17:08:07.958455+00
126	legu	????gu	0	0	0	0	272	265	245	225					2022-07-04 19:37:48.043478+00	2022-07-04 17:08:07.638332+00
190	pork	Pork	0	0	0	0	219	266	244	224					2022-07-04 19:37:48.039949+00	2022-07-04 17:08:07.826837+00
12	b_r_o	B.R.O	2936	4375	5718	7567	98	54	33	13	mie?? x372 / wiedzie?? x162 / rapa x130 / chcie?? x101 / kt??ry x95 / 	mie?? x615 / wiedzie?? x422 / rapa x230 / kt??ry x197 / chcie?? x194 / 	mie?? x893 / wiedzie?? x664 / chcie?? x313 / rapa x293 / m??wi?? x288 / 	mie?? x1297 / wiedzie?? x869 / chcie?? x519 / m??wi?? x434 / dzi?? x408 / 	2022-07-04 19:37:47.261735+00	2022-07-04 17:08:07.276508+00
21	emil_blef	Emil Blef	1757	1757	1757	1757	143	143	143	143	mie?? x108 / wiedzie?? x44 / kt??ry x43 / tylko x35 / m??wi?? x34 / 	mie?? x108 / wiedzie?? x44 / kt??ry x43 / tylko x35 / m??wi?? x34 / 	mie?? x108 / wiedzie?? x44 / kt??ry x43 / tylko x35 / m??wi?? x34 / 	mie?? x108 / wiedzie?? x44 / kt??ry x43 / tylko x35 / m??wi?? x34 / 	2022-07-04 19:37:47.739398+00	2022-07-04 17:08:07.307382+00
257	grzegorz_wasowski	Grzegorz Wasowski	0	0	0	0	239	270	241	222					2022-07-04 19:37:48.032635+00	2022-07-04 17:08:08.022183+00
259	wigor	Wigor	0	0	0	0	241	271	240	221					2022-07-04 19:37:48.028946+00	2022-07-04 17:08:08.028054+00
260	wilku	Wilku	0	0	0	0	244	272	239	220					2022-07-04 19:37:48.025097+00	2022-07-04 17:08:08.030564+00
6	abradab	Abradab	3758	5109	5109	5109	24	33	40	40	mie?? x244 / sw??j x93 / wiedzie?? x83 / chcie?? x81 / rapa x75 / 	mie?? x365 / chcie?? x174 / sw??j x132 / wiedzie?? x121 / kiedy x117 / 	mie?? x365 / chcie?? x174 / sw??j x132 / wiedzie?? x121 / kiedy x117 / 	mie?? x365 / chcie?? x174 / sw??j x132 / wiedzie?? x121 / kiedy x117 / 	2022-07-04 19:37:47.361537+00	2022-07-04 17:08:07.255056+00
11	ash	Ash	1898	3119	3402	3402	136	97	87	87	inny x371 / your x251 / alla x163 / yeah x145 / know x121 / 	inny x671 / your x518 / alla x309 / yeah x280 / know x210 / 	inny x712 / your x546 / alla x324 / yeah x282 / know x221 / 	inny x712 / your x546 / alla x324 / yeah x282 / know x221 / 	2022-07-04 19:37:47.534175+00	2022-07-04 17:08:07.272596+00
273	zocha	Zocha	0	0	0	0	246	273	238	219					2022-07-04 19:37:48.021345+00	2022-07-04 17:08:08.068961+00
276	zolf	??????f	0	0	0	0	251	274	237	218					2022-07-04 19:37:48.017331+00	2022-07-04 17:08:08.077518+00
18	bialas	Bia??as	3366	5418	5808	5808	53	24	32	33	mie?? x292 / wiedzie?? x147 / chcie?? x99 / tylko x97 / bia??as x89 / 	mie?? x618 / chcie?? x247 / wiedzie?? x237 / tylko x173 / bia??as x163 / 	mie?? x709 / chcie?? x270 / wiedzie?? x261 / tylko x192 / siebie x190 / 	mie?? x709 / chcie?? x270 / wiedzie?? x261 / tylko x192 / siebie x190 / 	2022-07-04 19:37:47.335095+00	2022-07-04 17:08:07.297454+00
20	bisz	Bisz	3464	3464	3464	3464	44	84	84	84	mie?? x164 / chcie?? x105 / kt??ry x95 / wiedzie?? x95 / czas x85 / 	mie?? x164 / chcie?? x105 / kt??ry x95 / wiedzie?? x95 / czas x85 / 	mie?? x164 / chcie?? x105 / kt??ry x95 / wiedzie?? x95 / czas x85 / 	mie?? x164 / chcie?? x105 / kt??ry x95 / wiedzie?? x95 / czas x85 / 	2022-07-04 19:37:47.522794+00	2022-07-04 17:08:07.304512+00
262	wlodi	W??odi	3116	3116	3116	3116	84	99	99	99	mie?? x188 / chcie?? x90 / wiedzie?? x77 / kt??ry x62 / w????d x55 / 	mie?? x188 / chcie?? x90 / wiedzie?? x77 / kt??ry x62 / w????d x55 / 	mie?? x188 / chcie?? x90 / wiedzie?? x77 / kt??ry x62 / w????d x55 / 	mie?? x188 / chcie?? x90 / wiedzie?? x77 / kt??ry x62 / w????d x55 / 	2022-07-04 19:37:47.577814+00	2022-07-04 17:08:08.036696+00
15	bedoes	Bedoes	2854	3434	3434	3434	101	86	86	86	mie?? x348 / chcie?? x214 / wiedzie?? x151 / robi?? x117 / kurwa x101 / 	mie?? x410 / chcie?? x259 / wiedzie?? x162 / m??wi?? x132 / robi?? x122 / 	mie?? x410 / chcie?? x259 / wiedzie?? x162 / m??wi?? x132 / robi?? x122 / 	mie?? x410 / chcie?? x259 / wiedzie?? x162 / m??wi?? x132 / robi?? x122 / 	2022-07-04 19:37:47.530274+00	2022-07-04 17:08:07.286828+00
250	vienio	Vienio	2821	2821	2821	2821	104	110	110	110	mie?? x153 / wiedzie?? x94 / cz??owiek x77 / siebie x48 / sw??j x45 / 	mie?? x153 / wiedzie?? x94 / cz??owiek x77 / siebie x48 / sw??j x45 / 	mie?? x153 / wiedzie?? x94 / cz??owiek x77 / siebie x48 / sw??j x45 / 	mie?? x153 / wiedzie?? x94 / cz??owiek x77 / siebie x48 / sw??j x45 / 	2022-07-04 19:37:47.618254+00	2022-07-04 17:08:08.001518+00
2	2sty	2sty	2151	2151	2151	2151	124	125	125	125	mie?? x176 / wiedzie?? x70 / chcie?? x45 / siebie x45 / kt??ry x39 / 	mie?? x176 / wiedzie?? x70 / chcie?? x45 / siebie x45 / kt??ry x39 / 	mie?? x176 / wiedzie?? x70 / chcie?? x45 / siebie x45 / kt??ry x39 / 	mie?? x176 / wiedzie?? x70 / chcie?? x45 / siebie x45 / kt??ry x39 / 	2022-07-04 19:37:47.673139+00	2022-07-04 17:08:07.239207+00
22	bob_one	Bob One	2643	2643	2643	2643	109	114	114	114	mie?? x234 / czas x106 / wiedzie?? x103 / chcie?? x99 / sw??j x83 / 	mie?? x234 / czas x106 / wiedzie?? x103 / chcie?? x99 / sw??j x83 / 	mie?? x234 / czas x106 / wiedzie?? x103 / chcie?? x99 / sw??j x83 / 	mie?? x234 / czas x106 / wiedzie?? x103 / chcie?? x99 / sw??j x83 / 	2022-07-04 19:37:47.633131+00	2022-07-04 17:08:07.310686+00
1	1z2	1z2	1938	1938	1938	1938	133	134	134	134	mie?? x159 / rapa x129 / ??ycie x103 / chcie?? x93 / wiedzie?? x90 / 	mie?? x159 / rapa x129 / ??ycie x103 / chcie?? x93 / wiedzie?? x90 / 	mie?? x159 / rapa x129 / ??ycie x103 / chcie?? x93 / wiedzie?? x90 / 	mie?? x159 / rapa x129 / ??ycie x103 / chcie?? x93 / wiedzie?? x90 / 	2022-07-04 19:37:47.706102+00	2022-07-04 17:08:07.232648+00
5	abel	Abel	1562	1562	1562	1562	150	150	150	150	mie?? x91 / wiedzie?? x49 / rapa x28 / chcie?? x28 / robi?? x28 / 	mie?? x91 / wiedzie?? x49 / rapa x28 / chcie?? x28 / robi?? x28 / 	mie?? x91 / wiedzie?? x49 / rapa x28 / chcie?? x28 / robi?? x28 / 	mie?? x91 / wiedzie?? x49 / rapa x28 / chcie?? x28 / robi?? x28 / 	2022-07-04 19:37:47.765364+00	2022-07-04 17:08:07.25147+00
16	belmondo	Belmondo	993	993	993	993	173	173	173	173	mie?? x37 / m??ody x17 / gram x16 / squad x16 / chcie?? x14 / 	mie?? x37 / m??ody x17 / gram x16 / squad x16 / chcie?? x14 / 	mie?? x37 / m??ody x17 / gram x16 / squad x16 / chcie?? x14 / 	mie?? x37 / m??ody x17 / gram x16 / squad x16 / chcie?? x14 / 	2022-07-04 19:37:47.850399+00	2022-07-04 17:08:07.290921+00
9	alberto	Alberto	897	897	897	897	177	177	177	177	mie?? x75 / peng x32 / albo x27 / koka x24 / przew??z x24 / 	mie?? x75 / peng x32 / albo x27 / koka x24 / przew??z x24 / 	mie?? x75 / peng x32 / albo x27 / koka x24 / przew??z x24 / 	mie?? x75 / peng x32 / albo x27 / koka x24 / przew??z x24 / 	2022-07-04 19:37:47.865083+00	2022-07-04 17:08:07.265426+00
3	4p	4P	442	442	442	442	197	197	197	197	kakao x25 / mie?? x16 / jeden x8 / pierwszy x8 / sw??j x7 / 	kakao x25 / mie?? x16 / jeden x8 / pierwszy x8 / sw??j x7 / 	kakao x25 / mie?? x16 / jeden x8 / pierwszy x8 / sw??j x7 / 	kakao x25 / mie?? x16 / jeden x8 / pierwszy x8 / sw??j x7 / 	2022-07-04 19:37:47.93853+00	2022-07-04 17:08:07.243935+00
245	zygmunt_tomala	Zygmunt Tomala	0	0	0	0	225	277	235	215					2022-07-04 19:37:48.006343+00	2022-07-04 17:08:07.987078+00
277	zurom	??urom	0	0	0	0	261	275	236	217					2022-07-04 19:37:48.013915+00	2022-07-04 17:08:08.080508+00
256	ward	Ward	0	0	0	0	226	268	234	216					2022-07-04 19:37:48.009954+00	2022-07-04 17:08:08.019341+00
268	z_b_u_k_u	Z.B.U.K.U	2969	4972	5286	5286	95	39	36	36	mie?? x297 / ??ycie x160 / wiedzie?? x100 / tylko x85 / chcie?? x85 / 	mie?? x564 / chcie?? x269 / ??ycie x262 / wiedzie?? x196 / tylko x182 / 	mie?? x611 / chcie?? x306 / ??ycie x269 / tylko x212 / wiedzie?? x207 / 	mie?? x611 / chcie?? x306 / ??ycie x269 / tylko x212 / wiedzie?? x207 / 	2022-07-04 19:37:47.346456+00	2022-07-04 17:08:08.054298+00
29	brahu	Brahu	2080	2080	2080	2080	128	129	129	129	mie?? x108 / ??ycie x83 / chcie?? x82 / wiedzie?? x71 / kt??ry x70 / 	mie?? x108 / ??ycie x83 / chcie?? x82 / wiedzie?? x71 / kt??ry x70 / 	mie?? x108 / ??ycie x83 / chcie?? x82 / wiedzie?? x71 / kt??ry x70 / 	mie?? x108 / ??ycie x83 / chcie?? x82 / wiedzie?? x71 / kt??ry x70 / 	2022-07-04 19:37:47.687781+00	2022-07-04 17:08:07.335104+00
31	buczer	Buczer	3196	5040	5040	5040	68	35	42	42	mie?? x289 / chcie?? x170 / m??wi?? x117 / wiedzie?? x112 / kt??ry x100 / 	mie?? x479 / chcie?? x263 / wiedzie?? x191 / kt??ry x176 / m??wi?? x153 / 	mie?? x479 / chcie?? x263 / wiedzie?? x191 / kt??ry x176 / m??wi?? x153 / 	mie?? x479 / chcie?? x263 / wiedzie?? x191 / kt??ry x176 / m??wi?? x153 / 	2022-07-04 19:37:47.368878+00	2022-07-04 17:08:07.34147+00
43	dka	DKA	2754	4788	6266	6393	105	44	25	25	mie?? x259 / chcie?? x157 / wiedzie?? x136 / ??ycie x130 / cz??owiek x125 / 	mie?? x575 / chcie?? x397 / wiedzie?? x270 / cz??owiek x232 / ??wiat x217 / 	mie?? x935 / chcie?? x596 / wiedzie?? x414 / cz??owiek x302 / ??wiat x292 / 	mie?? x993 / chcie?? x661 / wiedzie?? x442 / cz??owiek x311 / ??wiat x308 / 	2022-07-04 19:37:47.305976+00	2022-07-04 17:08:07.38125+00
33	chada	Chada	3151	5230	6612	6617	78	27	19	22	mie?? x250 / wiedzie?? x124 / sw??j x106 / kt??ry x100 / chcie?? x89 / 	mie?? x514 / wiedzie?? x221 / chcie?? x180 / ??ycie x180 / kt??ry x177 / 	mie?? x727 / wiedzie?? x316 / ??ycie x303 / chcie?? x295 / kt??ry x231 / 	mie?? x727 / wiedzie?? x316 / ??ycie x303 / chcie?? x295 / kt??ry x231 / 	2022-07-04 19:37:47.294442+00	2022-07-04 17:08:07.34828+00
25	bonus_rpk	Bonus RPK	3571	5859	5859	5859	31	16	31	32	mie?? x177 / ??ycie x144 / wiedzie?? x84 / rapa x82 / sw??j x65 / 	mie?? x339 / ??ycie x256 / wiedzie?? x137 / cz??owiek x131 / chcie?? x124 / 	mie?? x339 / ??ycie x256 / wiedzie?? x137 / cz??owiek x131 / chcie?? x124 / 	mie?? x339 / ??ycie x256 / wiedzie?? x137 / cz??owiek x131 / chcie?? x124 / 	2022-07-04 19:37:47.331548+00	2022-07-04 17:08:07.321087+00
36	cira	Cira	4037	4037	4037	4037	11	63	63	63	mie?? x100 / chcie?? x69 / kt??ry x53 / cz??owiek x47 / czas x39 / 	mie?? x100 / chcie?? x69 / kt??ry x53 / cz??owiek x47 / czas x39 / 	mie?? x100 / chcie?? x69 / kt??ry x53 / cz??owiek x47 / czas x39 / 	mie?? x100 / chcie?? x69 / kt??ry x53 / cz??owiek x47 / czas x39 / 	2022-07-04 19:37:47.446041+00	2022-07-04 17:08:07.358049+00
46	doniu	Doniu	3001	3001	3001	3001	94	106	106	106	mie?? x253 / wiedzie?? x91 / chcie?? x75 / tylko x67 / dzi?? x54 / 	mie?? x253 / wiedzie?? x91 / chcie?? x75 / tylko x67 / dzi?? x54 / 	mie?? x253 / wiedzie?? x91 / chcie?? x75 / tylko x67 / dzi?? x54 / 	mie?? x253 / wiedzie?? x91 / chcie?? x75 / tylko x67 / dzi?? x54 / 	2022-07-04 19:37:47.603663+00	2022-07-04 17:08:07.389914+00
27	borixon	Borixon	3149	5217	5279	5279	79	28	37	37	mie?? x348 / rapa x112 / wiedzie?? x105 / kt??ry x97 / nasz x83 / 	mie?? x686 / chcie?? x227 / wiedzie?? x195 / siebie x173 / kt??ry x171 / 	mie?? x698 / chcie?? x227 / wiedzie?? x195 / siebie x177 / kt??ry x171 / 	mie?? x698 / chcie?? x227 / wiedzie?? x195 / siebie x177 / kt??ry x171 / 	2022-07-04 19:37:47.350022+00	2022-07-04 17:08:07.32802+00
51	eis	Eis	1801	1801	1801	1801	140	140	140	140	mie?? x136 / chcie?? x59 / inny x53 / wiedzie?? x47 / polski x33 / 	mie?? x136 / chcie?? x59 / inny x53 / wiedzie?? x47 / polski x33 / 	mie?? x136 / chcie?? x59 / inny x53 / wiedzie?? x47 / polski x33 / 	mie?? x136 / chcie?? x59 / inny x53 / wiedzie?? x47 / polski x33 / 	2022-07-04 19:37:47.728774+00	2022-07-04 17:08:07.404706+00
41	diox	Diox	2521	2521	2521	2521	112	115	115	115	mie?? x169 / chcie?? x107 / wiedzie?? x82 / czu?? x52 / gra?? x46 / 	mie?? x169 / chcie?? x107 / wiedzie?? x82 / czu?? x52 / gra?? x46 / 	mie?? x169 / chcie?? x107 / wiedzie?? x82 / czu?? x52 / gra?? x46 / 	mie?? x169 / chcie?? x107 / wiedzie?? x82 / czu?? x52 / gra?? x46 / 	2022-07-04 19:37:47.63658+00	2022-07-04 17:08:07.374679+00
23	bober	Bober	1672	1672	1672	1672	145	145	145	145	mie?? x99 / chcie?? x63 / wiedzie?? x35 / tw??j x32 / chodzi?? x29 / 	mie?? x99 / chcie?? x63 / wiedzie?? x35 / tw??j x32 / chodzi?? x29 / 	mie?? x99 / chcie?? x63 / wiedzie?? x35 / tw??j x32 / chodzi?? x29 / 	mie?? x99 / chcie?? x63 / wiedzie?? x35 / tw??j x32 / chodzi?? x29 / 	2022-07-04 19:37:47.746747+00	2022-07-04 17:08:07.314107+00
34	chivas	Chivas	1207	1207	1207	1207	165	165	165	165	mie?? x95 / chcie?? x69 / wiedzie?? x38 / piek??o x36 / robi?? x35 / 	mie?? x95 / chcie?? x69 / wiedzie?? x38 / piek??o x36 / robi?? x35 / 	mie?? x95 / chcie?? x69 / wiedzie?? x38 / piek??o x36 / robi?? x35 / 	mie?? x95 / chcie?? x69 / wiedzie?? x38 / piek??o x36 / robi?? x35 / 	2022-07-04 19:37:47.821024+00	2022-07-04 17:08:07.351446+00
50	egon	Egon	1127	1127	1127	1127	167	167	167	167	mie?? x49 / ulica x31 / late x24 / chcie?? x22 / ??ycie x20 / 	mie?? x49 / ulica x31 / late x24 / chcie?? x22 / ??ycie x20 / 	mie?? x49 / ulica x31 / late x24 / chcie?? x22 / ??ycie x20 / 	mie?? x49 / ulica x31 / late x24 / chcie?? x22 / ??ycie x20 / 	2022-07-04 19:37:47.828307+00	2022-07-04 17:08:07.402008+00
57	sebastian_fabijanski	Sebastian Fabija??ski	1084	1084	1084	1084	169	169	169	169	mie?? x51 / wiedzie?? x21 / chcie?? x19 / tylko x17 / wszystko x17 / 	mie?? x51 / wiedzie?? x21 / chcie?? x19 / tylko x17 / wszystko x17 / 	mie?? x51 / wiedzie?? x21 / chcie?? x19 / tylko x17 / wszystko x17 / 	mie?? x51 / wiedzie?? x21 / chcie?? x19 / tylko x17 / wszystko x17 / 	2022-07-04 19:37:47.835888+00	2022-07-04 17:08:07.42252+00
39	deep	Deep	1070	1070	1070	1070	170	170	170	170	mie?? x28 / dzie?? x14 / cest x13 / chcie?? x11 / kiedy x11 / 	mie?? x28 / dzie?? x14 / cest x13 / chcie?? x11 / kiedy x11 / 	mie?? x28 / dzie?? x14 / cest x13 / chcie?? x11 / kiedy x11 / 	mie?? x28 / dzie?? x14 / cest x13 / chcie?? x11 / kiedy x11 / 	2022-07-04 19:37:47.839774+00	2022-07-04 17:08:07.368382+00
26	bolec	Bolec	475	475	475	475	194	194	194	194	czas x20 / buja x19 / czu?? x17 / mie?? x16 / nowy x13 / 	czas x20 / buja x19 / czu?? x17 / mie?? x16 / nowy x13 / 	czas x20 / buja x19 / czu?? x17 / mie?? x16 / nowy x13 / 	czas x20 / buja x19 / czu?? x17 / mie?? x16 / nowy x13 / 	2022-07-04 19:37:47.926944+00	2022-07-04 17:08:07.32464+00
47	dono	Dono	121	121	121	121	212	212	212	212	your x27 / wanna x15 / baba x11 / there x9 / wanted x8 / 	your x27 / wanna x15 / baba x11 / there x9 / wanted x8 / 	your x27 / wanna x15 / baba x11 / there x9 / wanted x8 / 	your x27 / wanna x15 / baba x11 / there x9 / wanted x8 / 	2022-07-04 19:37:47.995108+00	2022-07-04 17:08:07.392954+00
45	donguralesko	Donguralesko	3853	6368	8468	12937	16	5	4	4	mie?? x262 / wiedzie?? x88 / gural x79 / m??wi?? x73 / robi?? x70 / 	mie?? x508 / wiedzie?? x178 / robi?? x165 / chcie?? x145 / gural x144 / 	mie?? x774 / wiedzie?? x280 / robi?? x230 / m??wi?? x210 / chcie?? x199 / 	mie?? x1355 / wiedzie?? x423 / chcie?? x384 / robi?? x335 / m??wi?? x324 / 	2022-07-04 19:37:47.228987+00	2022-07-04 17:08:07.387059+00
53	eldo	Eldo	3503	5623	6995	6995	41	19	16	18	mie?? x234 / chcie?? x157 / wiedzie?? x135 / kt??ry x95 / ??ycie x93 / 	mie?? x458 / chcie?? x295 / wiedzie?? x242 / kt??ry x190 / ??ycie x190 / 	mie?? x606 / chcie?? x370 / wiedzie?? x308 / ??wiat x225 / kt??ry x219 / 	mie?? x606 / chcie?? x370 / wiedzie?? x308 / ??wiat x225 / kt??ry x219 / 	2022-07-04 19:37:47.279444+00	2022-07-04 17:08:07.410606+00
48	dudek_p56	Dudek P56	3047	4854	6459	6708	91	42	22	20	mie?? x176 / cz??owiek x128 / chcie?? x118 / wiedzie?? x117 / ka??dy x99 / 	mie?? x346 / cz??owiek x309 / wiedzie?? x258 / chcie?? x231 / ??ycie x218 / 	mie?? x719 / cz??owiek x446 / wiedzie?? x362 / ??ycie x339 / chcie?? x325 / 	mie?? x755 / cz??owiek x461 / wiedzie?? x367 / ??ycie x350 / chcie?? x346 / 	2022-07-04 19:37:47.286923+00	2022-07-04 17:08:07.395914+00
68	gedz	Gedz	3263	3882	3882	3882	63	70	70	70	mie?? x297 / chcie?? x150 / ??ycie x110 / wiedzie?? x106 / m??wi?? x94 / 	mie?? x379 / chcie?? x222 / m??wi?? x139 / ??ycie x132 / wiedzie?? x130 / 	mie?? x379 / chcie?? x222 / m??wi?? x139 / ??ycie x132 / wiedzie?? x130 / 	mie?? x379 / chcie?? x222 / m??wi?? x139 / ??ycie x132 / wiedzie?? x130 / 	2022-07-04 19:37:47.471425+00	2022-07-04 17:08:07.457281+00
63	fu	Fu	3846	5045	5045	5045	18	34	41	41	mie?? x163 / czas x84 / ??wiat x83 / sw??j x83 / chcie?? x80 / 	mie?? x274 / ??ycie x172 / czas x140 / chcie?? x135 / sw??j x131 / 	mie?? x274 / ??ycie x172 / czas x140 / chcie?? x135 / sw??j x131 / 	mie?? x274 / ??ycie x172 / czas x140 / chcie?? x135 / sw??j x131 / 	2022-07-04 19:37:47.364979+00	2022-07-04 17:08:07.440455+00
79	huczuhucz	HuczuHucz	3311	4102	4102	4102	57	59	59	59	mie?? x256 / jeden x154 / wiedzie?? x124 / chcie?? x94 / czas x88 / 	mie?? x377 / wiedzie?? x170 / jeden x168 / chcie?? x144 / czas x115 / 	mie?? x377 / wiedzie?? x170 / jeden x168 / chcie?? x144 / czas x115 / 	mie?? x377 / wiedzie?? x170 / jeden x168 / chcie?? x144 / czas x115 / 	2022-07-04 19:37:47.431395+00	2022-07-04 17:08:07.492465+00
73	guzior	Guzior	3701	3900	3900	3900	26	68	68	68	mie?? x253 / siebie x97 / tylko x89 / m??wi?? x76 / wszystko x72 / 	mie?? x268 / siebie x103 / tylko x103 / m??wi?? x80 / wiedzie?? x75 / 	mie?? x268 / siebie x103 / tylko x103 / m??wi?? x80 / wiedzie?? x75 / 	mie?? x268 / siebie x103 / tylko x103 / m??wi?? x80 / wiedzie?? x75 / 	2022-07-04 19:37:47.464165+00	2022-07-04 17:08:07.472892+00
59	filipek	Filipek	3840	6210	7783	8584	19	8	7	10	mie?? x305 / kurwa x168 / chcie?? x112 / wiedzie?? x74 / tw??j x66 / 	mie?? x569 / kurwa x260 / chcie?? x205 / wiedzie?? x135 / kt??ry x135 / 	mie?? x882 / chcie?? x349 / kurwa x297 / ??ycie x218 / kt??ry x213 / 	mie?? x1112 / chcie?? x436 / kurwa x317 / ??ycie x297 / kt??ry x269 / 	2022-07-04 19:37:47.251024+00	2022-07-04 17:08:07.428416+00
87	jongmen	Jongmen	3505	3505	3505	3505	40	83	83	83	mie?? x184 / chcie?? x103 / wiedzie?? x75 / sw??j x74 / ??ycie x74 / 	mie?? x184 / chcie?? x103 / wiedzie?? x75 / sw??j x74 / ??ycie x74 / 	mie?? x184 / chcie?? x103 / wiedzie?? x75 / sw??j x74 / ??ycie x74 / 	mie?? x184 / chcie?? x103 / wiedzie?? x75 / sw??j x74 / ??ycie x74 / 	2022-07-04 19:37:47.519292+00	2022-07-04 17:08:07.517339+00
60	fisz	Fisz	3180	3180	3180	3180	71	94	95	95	mie?? x284 / m??wi?? x115 / wiedzie?? x93 / kt??ry x80 / siebie x79 / 	mie?? x284 / m??wi?? x115 / wiedzie?? x93 / kt??ry x80 / siebie x79 / 	mie?? x284 / m??wi?? x115 / wiedzie?? x93 / kt??ry x80 / siebie x79 / 	mie?? x284 / m??wi?? x115 / wiedzie?? x93 / kt??ry x80 / siebie x79 / 	2022-07-04 19:37:47.56368+00	2022-07-04 17:08:07.431233+00
83	jan_rapowanie	Jan-Rapowanie	1905	1905	1905	1905	134	135	135	135	mie?? x114 / chcie?? x94 / kurwa x56 / wiedzie?? x52 / czas x51 / 	mie?? x114 / chcie?? x94 / kurwa x56 / wiedzie?? x52 / czas x51 / 	mie?? x114 / chcie?? x94 / kurwa x56 / wiedzie?? x52 / czas x51 / 	mie?? x114 / chcie?? x94 / kurwa x56 / wiedzie?? x52 / czas x51 / 	2022-07-04 19:37:47.709865+00	2022-07-04 17:08:07.504711+00
78	hst	HST	1522	1522	1522	1522	153	153	153	153	brat x77 / mie?? x74 / wiedzie?? x40 / chcie?? x40 / ??ycie x33 / 	brat x77 / mie?? x74 / wiedzie?? x40 / chcie?? x40 / ??ycie x33 / 	brat x77 / mie?? x74 / wiedzie?? x40 / chcie?? x40 / ??ycie x33 / 	brat x77 / mie?? x74 / wiedzie?? x40 / chcie?? x40 / ??ycie x33 / 	2022-07-04 19:37:47.776207+00	2022-07-04 17:08:07.488855+00
80	hukos	Hukos	3619	3619	3619	3619	30	77	77	77	mie?? x149 / czas x84 / chcie?? x82 / hukos x61 / tylko x60 / 	mie?? x149 / czas x84 / chcie?? x82 / hukos x61 / tylko x60 / 	mie?? x149 / czas x84 / chcie?? x82 / hukos x61 / tylko x60 / 	mie?? x149 / czas x84 / chcie?? x82 / hukos x61 / tylko x60 / 	2022-07-04 19:37:47.496695+00	2022-07-04 17:08:07.495316+00
72	gruby_mielzky	Gruby Mielzky	3378	3378	3378	3378	52	88	89	89	mie?? x210 / kt??ry x129 / rapa x101 / chcie?? x88 / cz??owiek x88 / 	mie?? x210 / kt??ry x129 / rapa x101 / chcie?? x88 / cz??owiek x88 / 	mie?? x210 / kt??ry x129 / rapa x101 / chcie?? x88 / cz??owiek x88 / 	mie?? x210 / kt??ry x129 / rapa x101 / chcie?? x88 / cz??owiek x88 / 	2022-07-04 19:37:47.541533+00	2022-07-04 17:08:07.469083+00
58	fazi	Fazi	4210	4210	4210	4210	2	58	58	58	mie?? x169 / chcie?? x132 / kurwa x105 / wiedzie?? x83 / tylko x65 / 	mie?? x169 / chcie?? x132 / kurwa x105 / wiedzie?? x83 / tylko x65 / 	mie?? x169 / chcie?? x132 / kurwa x105 / wiedzie?? x83 / tylko x65 / 	mie?? x169 / chcie?? x132 / kurwa x105 / wiedzie?? x83 / tylko x65 / 	2022-07-04 19:37:47.427277+00	2022-07-04 17:08:07.425203+00
82	inespe	Inespe	1253	1253	1253	1253	163	163	163	163	mie?? x54 / cz??owiek x35 / chcie?? x33 / siebie x29 / sw??j x28 / 	mie?? x54 / cz??owiek x35 / chcie?? x33 / siebie x29 / sw??j x28 / 	mie?? x54 / cz??owiek x35 / chcie?? x33 / siebie x29 / sw??j x28 / 	mie?? x54 / cz??owiek x35 / chcie?? x33 / siebie x29 / sw??j x28 / 	2022-07-04 19:37:47.813738+00	2022-07-04 17:08:07.50176+00
67	gano	Gano	764	764	764	764	181	181	181	181	mie?? x17 / czas x12 / prosty x11 / m??wi?? x10 / kiedy x9 / 	mie?? x17 / czas x12 / prosty x11 / m??wi?? x10 / kiedy x9 / 	mie?? x17 / czas x12 / prosty x11 / m??wi?? x10 / kiedy x9 / 	mie?? x17 / czas x12 / prosty x11 / m??wi?? x10 / kiedy x9 / 	2022-07-04 19:37:47.880057+00	2022-07-04 17:08:07.453481+00
64	fukaj	Fukaj	548	548	548	548	190	190	190	190	??ycie x29 / chcie?? x27 / mie?? x22 / nadal x18 / temu x16 / 	??ycie x29 / chcie?? x27 / mie?? x22 / nadal x18 / temu x16 / 	??ycie x29 / chcie?? x27 / mie?? x22 / nadal x18 / temu x16 / 	??ycie x29 / chcie?? x27 / mie?? x22 / nadal x18 / temu x16 / 	2022-07-04 19:37:47.912435+00	2022-07-04 17:08:07.444138+00
88	josef_bratan	Josef Bratan	272	272	272	272	205	205	205	205	tylko x12 / wszystko x11 / dawaj x11 / josef x10 / auto x10 / 	tylko x12 / wszystko x11 / dawaj x11 / josef x10 / auto x10 / 	tylko x12 / wszystko x11 / dawaj x11 / josef x10 / auto x10 / 	tylko x12 / wszystko x11 / dawaj x11 / josef x10 / auto x10 / 	2022-07-04 19:37:47.968362+00	2022-07-04 17:08:07.521059+00
65	funky_filon	Funky Filon	217	217	217	217	210	210	210	210	czik x21 / ma??y x9 / linka x9 / chinka x8 / mie?? x7 / 	czik x21 / ma??y x9 / linka x9 / chinka x8 / mie?? x7 / 	czik x21 / ma??y x9 / linka x9 / chinka x8 / mie?? x7 / 	czik x21 / ma??y x9 / linka x9 / chinka x8 / mie?? x7 / 	2022-07-04 19:37:47.98768+00	2022-07-04 17:08:07.447202+00
77	taco_hemingway	Taco Hemingway	4127	6077	7569	9010	5	13	10	8	mie?? x159 / chcie?? x103 / m??wi?? x79 / your x71 / inny x61 / 	mie?? x366 / chcie?? x249 / m??wi?? x197 / widzie?? x112 / wiedzie?? x109 / 	mie?? x608 / chcie?? x433 / m??wi?? x265 / wiedzie?? x172 / znowu x161 / 	mie?? x883 / chcie?? x545 / m??wi?? x326 / wiedzie?? x218 / robi?? x200 / 	2022-07-04 19:37:47.243701+00	2022-07-04 17:08:07.486215+00
62	fokus	Fokus	3951	5190	5190	5190	13	29	38	38	mie?? x328 / wiedzie?? x131 / czas x84 / chcie?? x78 / m??wi?? x75 / 	mie?? x479 / wiedzie?? x206 / chcie?? x138 / czas x129 / m??wi?? x112 / 	mie?? x479 / wiedzie?? x206 / chcie?? x138 / czas x129 / m??wi?? x112 / 	mie?? x479 / wiedzie?? x206 / chcie?? x138 / czas x129 / m??wi?? x112 / 	2022-07-04 19:37:47.353788+00	2022-07-04 17:08:07.437614+00
71	grubson	Grubson	3190	5438	7173	8705	69	23	15	9	mie?? x287 / siebie x114 / ca??y x96 / cz??owiek x95 / wi??c x79 / 	mie?? x557 / siebie x211 / cz??owiek x197 / wiedzie?? x167 / ca??y x155 / 	mie?? x876 / siebie x284 / cz??owiek x250 / ca??y x230 / wiedzie?? x222 / 	mie?? x1124 / siebie x375 / cz??owiek x292 / wiedzie?? x289 / chcie?? x284 / 	2022-07-04 19:37:47.247251+00	2022-07-04 17:08:07.465985+00
101	karramba	Karramba	3090	4403	4403	4403	87	53	54	54	mie?? x121 / refy x108 / tw??j x105 / wiedzie?? x68 / ka??dy x66 / 	mie?? x199 / tw??j x180 / refy x160 / ka??dy x112 / wiedzie?? x102 / 	mie?? x199 / tw??j x180 / refy x160 / ka??dy x112 / wiedzie?? x102 / 	mie?? x199 / tw??j x180 / refy x160 / ka??dy x112 / wiedzie?? x102 / 	2022-07-04 19:37:47.412571+00	2022-07-04 17:08:07.563041+00
104	waldemar_kasta	Waldemar Kasta	3179	3179	3179	3179	72	95	96	96	mie?? x164 / kasta x118 / rapa x96 / musie?? x83 / ??l??sk x82 / 	mie?? x164 / kasta x118 / rapa x96 / musie?? x83 / ??l??sk x82 / 	mie?? x164 / kasta x118 / rapa x96 / musie?? x83 / ??l??sk x82 / 	mie?? x164 / kasta x118 / rapa x96 / musie?? x83 / ??l??sk x82 / 	2022-07-04 19:37:47.567244+00	2022-07-04 17:08:07.572322+00
105	kaz_balagane	Kaz Ba??agane	1991	1991	1991	1991	132	133	133	133	mie?? x126 / wiedzie?? x53 / kaza x50 / robi?? x47 / ba??agane x46 / 	mie?? x126 / wiedzie?? x53 / kaza x50 / robi?? x47 / ba??agane x46 / 	mie?? x126 / wiedzie?? x53 / kaza x50 / robi?? x47 / ba??agane x46 / 	mie?? x126 / wiedzie?? x53 / kaza x50 / robi?? x47 / ba??agane x46 / 	2022-07-04 19:37:47.70258+00	2022-07-04 17:08:07.575668+00
107	kizo	Kizo	3178	3622	3622	3622	73	76	76	76	mie?? x226 / chcie?? x111 / kizo x98 / ??ycie x89 / tylko x64 / 	mie?? x283 / kizo x169 / chcie?? x148 / ??ycie x98 / tylko x82 / 	mie?? x283 / kizo x169 / chcie?? x148 / ??ycie x98 / tylko x82 / 	mie?? x283 / kizo x169 / chcie?? x148 / ??ycie x98 / tylko x82 / 	2022-07-04 19:37:47.493249+00	2022-07-04 17:08:07.581886+00
109	kuba_knap	Kuba Knap	3640	3640	3640	3640	28	74	74	74	mie?? x247 / wiedzie?? x136 / knapa x108 / kuba x105 / chcie?? x102 / 	mie?? x247 / wiedzie?? x136 / knapa x108 / kuba x105 / chcie?? x102 / 	mie?? x247 / wiedzie?? x136 / knapa x108 / kuba x105 / chcie?? x102 / 	mie?? x247 / wiedzie?? x136 / knapa x108 / kuba x105 / chcie?? x102 / 	2022-07-04 19:37:47.485862+00	2022-07-04 17:08:07.587871+00
92	kabe	Kabe	1891	1891	1891	1891	139	139	139	139	mie?? x201 / ca??y x80 / robi?? x74 / chcie?? x70 / wiedzie?? x65 / 	mie?? x201 / ca??y x80 / robi?? x74 / chcie?? x70 / wiedzie?? x65 / 	mie?? x201 / ca??y x80 / robi?? x74 / chcie?? x70 / wiedzie?? x65 / 	mie?? x201 / ca??y x80 / robi?? x74 / chcie?? x70 / wiedzie?? x65 / 	2022-07-04 19:37:47.724725+00	2022-07-04 17:08:07.53432+00
95	kaczor	Kaczor	3092	3092	3092	3092	86	101	101	101	mie?? x144 / dzi?? x75 / sw??j x75 / jeszcze x68 / kt??ry x65 / 	mie?? x144 / dzi?? x75 / sw??j x75 / jeszcze x68 / kt??ry x65 / 	mie?? x144 / dzi?? x75 / sw??j x75 / jeszcze x68 / kt??ry x65 / 	mie?? x144 / dzi?? x75 / sw??j x75 / jeszcze x68 / kt??ry x65 / 	2022-07-04 19:37:47.585133+00	2022-07-04 17:08:07.543867+00
110	kobra	Kobra	3445	3593	3593	3593	46	79	79	79	mie?? x277 / chcie?? x130 / rapa x87 / wiedzie?? x86 / miasto x75 / 	mie?? x294 / chcie?? x134 / wiedzie?? x97 / rapa x91 / miasto x77 / 	mie?? x294 / chcie?? x134 / wiedzie?? x97 / rapa x91 / miasto x77 / 	mie?? x294 / chcie?? x134 / wiedzie?? x97 / rapa x91 / miasto x77 / 	2022-07-04 19:37:47.504581+00	2022-07-04 17:08:07.590878+00
115	kroolik_underwood	Kroolik Underwood	1627	1627	1627	1627	147	147	148	148	mie?? x39 / tw??j x36 / chcie?? x34 / czas x32 / wiedzie?? x28 / 	mie?? x39 / tw??j x36 / chcie?? x34 / czas x32 / wiedzie?? x28 / 	mie?? x39 / tw??j x36 / chcie?? x34 / czas x32 / wiedzie?? x28 / 	mie?? x39 / tw??j x36 / chcie?? x34 / czas x32 / wiedzie?? x28 / 	2022-07-04 19:37:47.758278+00	2022-07-04 17:08:07.605798+00
111	koni	Koni	1540	1540	1540	1540	152	152	152	152	mie?? x103 / robi?? x47 / chcie?? x30 / refy x29 / rapa x23 / 	mie?? x103 / robi?? x47 / chcie?? x30 / refy x29 / rapa x23 / 	mie?? x103 / robi?? x47 / chcie?? x30 / refy x29 / rapa x23 / 	mie?? x103 / robi?? x47 / chcie?? x30 / refy x29 / rapa x23 / 	2022-07-04 19:37:47.772459+00	2022-07-04 17:08:07.593626+00
108	kleszcz	Kleszcz	1494	1494	1494	1494	155	155	155	155	mie?? x90 / czas x47 / tw??j x46 / wiedzie?? x30 / g??owa x28 / 	mie?? x90 / czas x47 / tw??j x46 / wiedzie?? x30 / g??owa x28 / 	mie?? x90 / czas x47 / tw??j x46 / wiedzie?? x30 / g??owa x28 / 	mie?? x90 / czas x47 / tw??j x46 / wiedzie?? x30 / g??owa x28 / 	2022-07-04 19:37:47.783767+00	2022-07-04 17:08:07.58468+00
114	kris	Kris	1267	1267	1267	1267	162	162	162	162	mie?? x41 / tw??j x30 / tylko x26 / ??ycie x25 / kt??ry x25 / 	mie?? x41 / tw??j x30 / tylko x26 / ??ycie x25 / kt??ry x25 / 	mie?? x41 / tw??j x30 / tylko x26 / ??ycie x25 / kt??ry x25 / 	mie?? x41 / tw??j x30 / tylko x26 / ??ycie x25 / kt??ry x25 / 	2022-07-04 19:37:47.810004+00	2022-07-04 17:08:07.603147+00
120	leh	Leh	927	927	927	927	175	175	175	175	mie?? x35 / czas x22 / m??wi?? x19 / doros??o???? x19 / dogoni?? x16 / 	mie?? x35 / czas x22 / m??wi?? x19 / doros??o???? x19 / dogoni?? x16 / 	mie?? x35 / czas x22 / m??wi?? x19 / doros??o???? x19 / dogoni?? x16 / 	mie?? x35 / czas x22 / m??wi?? x19 / doros??o???? x19 / dogoni?? x16 / 	2022-07-04 19:37:47.857761+00	2022-07-04 17:08:07.62051+00
97	kafar	Kafar	577	577	577	577	187	187	187	187	freestyl x35 / football x29 / nasz x22 / mie?? x22 / gra?? x15 / 	freestyl x35 / football x29 / nasz x22 / mie?? x22 / gra?? x15 / 	freestyl x35 / football x29 / nasz x22 / mie?? x22 / gra?? x15 / 	freestyl x35 / football x29 / nasz x22 / mie?? x22 / gra?? x15 / 	2022-07-04 19:37:47.901814+00	2022-07-04 17:08:07.550331+00
90	juras	Juras	564	564	564	564	189	189	189	189	mie?? x27 / sw??j x14 / robi?? x12 / do???? x10 / patrzy?? x9 / 	mie?? x27 / sw??j x14 / robi?? x12 / do???? x10 / patrzy?? x9 / 	mie?? x27 / sw??j x14 / robi?? x12 / do???? x10 / patrzy?? x9 / 	mie?? x27 / sw??j x14 / robi?? x12 / do???? x10 / patrzy?? x9 / 	2022-07-04 19:37:47.909029+00	2022-07-04 17:08:07.526995+00
100	kamien	Kamie??	231	231	231	231	207	207	207	207	cz??sto x7 / mordo x7 / du??o x6 / wszystko x5 / czas x5 / 	cz??sto x7 / mordo x7 / du??o x6 / wszystko x5 / czas x5 / 	cz??sto x7 / mordo x7 / du??o x6 / wszystko x5 / czas x5 / 	cz??sto x7 / mordo x7 / du??o x6 / wszystko x5 / czas x5 / 	2022-07-04 19:37:47.975881+00	2022-07-04 17:08:07.559811+00
119	l_u_c_	L.U.C.	75	75	75	75	213	213	213	213	dzieciak x2 / onkologia x1 / robi?? x1 / warsztaty x1 / gra?? x1 / 	dzieciak x2 / onkologia x1 / robi?? x1 / warsztaty x1 / gra?? x1 / 	dzieciak x2 / onkologia x1 / robi?? x1 / warsztaty x1 / gra?? x1 / 	dzieciak x2 / onkologia x1 / robi?? x1 / warsztaty x1 / gra?? x1 / 	2022-07-04 19:37:47.998699+00	2022-07-04 17:08:07.617857+00
96	kaen	Kaen	3772	5870	7592	7820	22	14	9	11	mie?? x202 / chcie?? x107 / ??ycie x75 / kt??ry x63 / wiedzie?? x62 / 	mie?? x433 / chcie?? x258 / wiele x175 / ??ycie x144 / siebie x125 / 	mie?? x674 / chcie?? x352 / wiele x281 / siebie x239 / wiedzie?? x235 / 	mie?? x716 / chcie?? x358 / wiele x296 / wiedzie?? x249 / siebie x244 / 	2022-07-04 19:37:47.254609+00	2022-07-04 17:08:07.547177+00
93	kacper_hta	Kacper HTA	3321	4642	4642	4642	55	47	48	48	mie?? x269 / chcie?? x158 / dzi?? x102 / wiedzie?? x92 / czas x92 / 	mie?? x428 / chcie?? x247 / tylko x179 / wiedzie?? x146 / czas x143 / 	mie?? x428 / chcie?? x247 / tylko x179 / wiedzie?? x146 / czas x143 / 	mie?? x428 / chcie?? x247 / tylko x179 / wiedzie?? x146 / czas x143 / 	2022-07-04 19:37:47.390405+00	2022-07-04 17:08:07.537506+00
98	kajman	Kajman	3390	4434	4434	4434	50	52	53	53	mie?? x313 / chcie?? x156 / wiedzie?? x141 / czas x77 / m??wi?? x77 / 	mie?? x419 / chcie?? x199 / wiedzie?? x192 / czas x105 / m??wi?? x100 / 	mie?? x419 / chcie?? x199 / wiedzie?? x192 / czas x105 / m??wi?? x100 / 	mie?? x419 / chcie?? x199 / wiedzie?? x192 / czas x105 / m??wi?? x100 / 	2022-07-04 19:37:47.408752+00	2022-07-04 17:08:07.553755+00
138	meek__oh_why_	Meek, Oh Why?	2843	2843	2843	2843	102	108	108	108	mie?? x165 / ??wiat x144 / chcie?? x121 / s??owo x69 / siebie x67 / 	mie?? x165 / ??wiat x144 / chcie?? x121 / s??owo x69 / siebie x67 / 	mie?? x165 / ??wiat x144 / chcie?? x121 / s??owo x69 / siebie x67 / 	mie?? x165 / ??wiat x144 / chcie?? x121 / s??owo x69 / siebie x67 / 	2022-07-04 19:37:47.610842+00	2022-07-04 17:08:07.674311+00
122	liroy	Liroy	3127	3628	3628	3628	81	75	75	75	mie?? x196 / chcie?? x107 / taki x101 / tw??j x100 / powiedzie?? x98 / 	mie?? x228 / chcie?? x134 / taki x115 / liro x111 / tw??j x111 / 	mie?? x228 / chcie?? x134 / taki x115 / liro x111 / tw??j x111 / 	mie?? x228 / chcie?? x134 / taki x115 / liro x111 / tw??j x111 / 	2022-07-04 19:37:47.489262+00	2022-07-04 17:08:07.626462+00
121	liber	Liber	3216	3216	3216	3216	66	92	93	93	mie?? x139 / chcie?? x100 / tylko x69 / gra?? x69 / wiedzie?? x64 / 	mie?? x139 / chcie?? x100 / tylko x69 / gra?? x69 / wiedzie?? x64 / 	mie?? x139 / chcie?? x100 / tylko x69 / gra?? x69 / wiedzie?? x64 / 	mie?? x139 / chcie?? x100 / tylko x69 / gra?? x69 / wiedzie?? x64 / 	2022-07-04 19:37:47.556205+00	2022-07-04 17:08:07.623806+00
133	malpa	Ma??pa	3639	4085	4085	4085	29	60	60	60	mie?? x222 / kt??ry x135 / wiedzie?? x116 / chcie?? x99 / m??wi?? x78 / 	mie?? x282 / kt??ry x157 / chcie?? x140 / wiedzie?? x132 / m??wi?? x88 / 	mie?? x282 / kt??ry x157 / chcie?? x140 / wiedzie?? x132 / m??wi?? x88 / 	mie?? x282 / kt??ry x157 / chcie?? x140 / wiedzie?? x132 / m??wi?? x88 / 	2022-07-04 19:37:47.435206+00	2022-07-04 17:08:07.659105+00
134	mam_na_imie_aleksander	Mam Na Imi?? Aleksander	2399	2399	2399	2399	117	119	119	119	mie?? x154 / wiedzie?? x87 / chcie?? x81 / wi??cej x57 / musie?? x47 / 	mie?? x154 / wiedzie?? x87 / chcie?? x81 / wi??cej x57 / musie?? x47 / 	mie?? x154 / wiedzie?? x87 / chcie?? x81 / wi??cej x57 / musie?? x47 / 	mie?? x154 / wiedzie?? x87 / chcie?? x81 / wi??cej x57 / musie?? x47 / 	2022-07-04 19:37:47.650615+00	2022-07-04 17:08:07.661804+00
127	lona	??ona	3838	4024	4024	4024	20	65	65	65	mie?? x274 / wiedzie?? x101 / chcie?? x87 / tylko x81 / wi??c x78 / 	mie?? x283 / wiedzie?? x108 / chcie?? x90 / tylko x83 / wi??c x80 / 	mie?? x283 / wiedzie?? x108 / chcie?? x90 / tylko x83 / wi??c x80 / 	mie?? x283 / wiedzie?? x108 / chcie?? x90 / tylko x83 / wi??c x80 / 	2022-07-04 19:37:47.453018+00	2022-07-04 17:08:07.640878+00
135	massey	Massey	2734	2734	2734	2734	106	111	111	111	mie?? x116 / ??ycie x87 / wiedzie?? x63 / sw??j x53 / dobry x48 / 	mie?? x116 / ??ycie x87 / wiedzie?? x63 / sw??j x53 / dobry x48 / 	mie?? x116 / ??ycie x87 / wiedzie?? x63 / sw??j x53 / dobry x48 / 	mie?? x116 / ??ycie x87 / wiedzie?? x63 / sw??j x53 / dobry x48 / 	2022-07-04 19:37:47.621822+00	2022-07-04 17:08:07.665156+00
128	lysonzi	??yson??i	1901	1901	1901	1901	135	136	136	136	mie?? x159 / kurwa x37 / czas x35 / wiedzie?? x35 / ??ycie x32 / 	mie?? x159 / kurwa x37 / czas x35 / wiedzie?? x35 / ??ycie x32 / 	mie?? x159 / kurwa x37 / czas x35 / wiedzie?? x35 / ??ycie x32 / 	mie?? x159 / kurwa x37 / czas x35 / wiedzie?? x35 / ??ycie x32 / 	2022-07-04 19:37:47.713592+00	2022-07-04 17:08:07.64424+00
131	malach	Ma??ach	1897	1897	1897	1897	138	138	138	138	mie?? x144 / chcie?? x62 / ??ycie x57 / ka??dy x55 / kto?? x49 / 	mie?? x144 / chcie?? x62 / ??ycie x57 / ka??dy x55 / kto?? x49 / 	mie?? x144 / chcie?? x62 / ??ycie x57 / ka??dy x55 / kto?? x49 / 	mie?? x144 / chcie?? x62 / ??ycie x57 / ka??dy x55 / kto?? x49 / 	2022-07-04 19:37:47.72125+00	2022-07-04 17:08:07.653239+00
124	lukatricks	Lukatricks	1296	1296	1296	1296	161	161	161	161	mie?? x82 / chcie?? x41 / m??wi?? x28 / wiedzie?? x27 / ??ycie x25 / 	mie?? x82 / chcie?? x41 / m??wi?? x28 / wiedzie?? x27 / ??ycie x25 / 	mie?? x82 / chcie?? x41 / m??wi?? x28 / wiedzie?? x27 / ??ycie x25 / 	mie?? x82 / chcie?? x41 / m??wi?? x28 / wiedzie?? x27 / ??ycie x25 / 	2022-07-04 19:37:47.806498+00	2022-07-04 17:08:07.632587+00
129	magik	Magik	899	899	899	899	176	176	176	176	mie?? x29 / kt??ry x12 / odda?? x10 / wiedzie?? x10 / siebie x10 / 	mie?? x29 / kt??ry x12 / odda?? x10 / wiedzie?? x10 / siebie x10 / 	mie?? x29 / kt??ry x12 / odda?? x10 / wiedzie?? x10 / siebie x10 / 	mie?? x29 / kt??ry x12 / odda?? x10 / wiedzie?? x10 / siebie x10 / 	2022-07-04 19:37:47.861752+00	2022-07-04 17:08:07.647277+00
145	mlodyskiny	Mlodyskiny	840	840	840	840	179	179	179	179	chcie?? x145 / mie?? x128 / wiedzie?? x55 / siebie x48 / czu?? x44 / 	chcie?? x145 / mie?? x128 / wiedzie?? x55 / siebie x48 / czu?? x44 / 	chcie?? x145 / mie?? x128 / wiedzie?? x55 / siebie x48 / czu?? x44 / 	chcie?? x145 / mie?? x128 / wiedzie?? x55 / siebie x48 / czu?? x44 / 	2022-07-04 19:37:47.872409+00	2022-07-04 17:08:07.695179+00
142	minix	Minix	753	753	753	753	182	182	182	182	mie?? x38 / ka??dy x23 / usta x18 / gor??co x18 / siebie x14 / 	mie?? x38 / ka??dy x23 / usta x18 / gor??co x18 / siebie x14 / 	mie?? x38 / ka??dy x23 / usta x18 / gor??co x18 / siebie x14 / 	mie?? x38 / ka??dy x23 / usta x18 / gor??co x18 / siebie x14 / 	2022-07-04 19:37:47.883602+00	2022-07-04 17:08:07.686203+00
144	mleko	Mleko	727	727	727	727	183	183	183	183	mie?? x19 / kt??ry x18 / bardzo x17 / ??apa x16 / lubi?? x11 / 	mie?? x19 / kt??ry x18 / bardzo x17 / ??apa x16 / lubi?? x11 / 	mie?? x19 / kt??ry x18 / bardzo x17 / ??apa x16 / lubi?? x11 / 	mie?? x19 / kt??ry x18 / bardzo x17 / ??apa x16 / lubi?? x11 / 	2022-07-04 19:37:47.887129+00	2022-07-04 17:08:07.692127+00
148	mr__polska	Mr. Polska	520	520	520	520	192	192	192	192	mie?? x30 / daleko x27 / blaas x22 / bosfluit x22 / yeah x19 / 	mie?? x30 / daleko x27 / blaas x22 / bosfluit x22 / yeah x19 / 	mie?? x30 / daleko x27 / blaas x22 / bosfluit x22 / yeah x19 / 	mie?? x30 / daleko x27 / blaas x22 / bosfluit x22 / yeah x19 / 	2022-07-04 19:37:47.919614+00	2022-07-04 17:08:07.703507+00
147	moral	Moral	399	399	399	399	198	198	198	198	chcie?? x14 / mie?? x13 / wiedzie?? x11 / widzie?? x10 / patrzysz x10 / 	chcie?? x14 / mie?? x13 / wiedzie?? x11 / widzie?? x10 / patrzysz x10 / 	chcie?? x14 / mie?? x13 / wiedzie?? x11 / widzie?? x10 / patrzysz x10 / 	chcie?? x14 / mie?? x13 / wiedzie?? x11 / widzie?? x10 / patrzysz x10 / 	2022-07-04 19:37:47.942073+00	2022-07-04 17:08:07.700909+00
150	muflon	Muflon	371	371	371	371	201	201	201	201	mie?? x17 / chcie?? x9 / ka??dy x5 / cz??owiek x5 / wiedzie?? x5 / 	mie?? x17 / chcie?? x9 / ka??dy x5 / cz??owiek x5 / wiedzie?? x5 / 	mie?? x17 / chcie?? x9 / ka??dy x5 / cz??owiek x5 / wiedzie?? x5 / 	mie?? x17 / chcie?? x9 / ka??dy x5 / cz??owiek x5 / wiedzie?? x5 / 	2022-07-04 19:37:47.953531+00	2022-07-04 17:08:07.709544+00
143	miuosh	Miuosh	3319	5032	5863	5863	56	36	30	31	mie?? x227 / wiedzie?? x150 / chcie?? x114 / m??wi?? x111 / ka??dy x105 / 	mie?? x539 / wiedzie?? x328 / chcie?? x240 / m??wi?? x189 / ka??dy x165 / 	mie?? x734 / wiedzie?? x409 / chcie?? x311 / ka??dy x232 / m??wi?? x230 / 	mie?? x734 / wiedzie?? x409 / chcie?? x311 / ka??dy x232 / m??wi?? x230 / 	2022-07-04 19:37:47.327938+00	2022-07-04 17:08:07.68888+00
123	lukasyno	Lukasyno	3174	5006	5006	5006	75	37	43	43	mie?? x278 / ??ycie x136 / sw??j x106 / chcie?? x103 / wszystko x92 / 	mie?? x406 / ??ycie x215 / chcie?? x213 / sw??j x212 / dzi?? x172 / 	mie?? x406 / ??ycie x215 / chcie?? x213 / sw??j x212 / dzi?? x172 / 	mie?? x406 / ??ycie x215 / chcie?? x213 / sw??j x212 / dzi?? x172 / 	2022-07-04 19:37:47.372496+00	2022-07-04 17:08:07.629744+00
136	mata	Mata	3685	4213	4213	4213	27	57	57	57	mie?? x271 / chcie?? x129 / montan x115 / cafe x79 / oja?? x78 / 	mie?? x347 / chcie?? x182 / montan x115 / oja?? x89 / wiedzie?? x83 / 	mie?? x347 / chcie?? x182 / montan x115 / oja?? x89 / wiedzie?? x83 / 	mie?? x347 / chcie?? x182 / montan x115 / oja?? x89 / wiedzie?? x83 / 	2022-07-04 19:37:47.42381+00	2022-07-04 17:08:07.667806+00
164	onar	Onar	2939	4875	4875	4875	97	41	45	45	mie?? x262 / chcie?? x146 / wiedzie?? x121 / kt??ry x100 / wszystko x98 / 	mie?? x519 / chcie?? x305 / kt??ry x203 / tw??j x187 / wiedzie?? x179 / 	mie?? x519 / chcie?? x305 / kt??ry x203 / tw??j x187 / wiedzie?? x179 / 	mie?? x519 / chcie?? x305 / kt??ry x203 / tw??j x187 / wiedzie?? x179 / 	2022-07-04 19:37:47.379809+00	2022-07-04 17:08:07.751685+00
184	planet_anm	Planet ANM	3177	4655	4655	4655	74	46	47	47	mie?? x359 / chcie?? x134 / tylko x93 / wiedzie?? x92 / m??wi?? x90 / 	mie?? x654 / chcie?? x237 / wiedzie?? x187 / tylko x161 / siebie x146 / 	mie?? x654 / chcie?? x237 / wiedzie?? x187 / tylko x161 / siebie x146 / 	mie?? x654 / chcie?? x237 / wiedzie?? x187 / tylko x161 / siebie x146 / 	2022-07-04 19:37:47.386906+00	2022-07-04 17:08:07.809064+00
183	planbe	PlanBe	3081	3889	3889	3889	88	69	69	69	mie?? x284 / chcie?? x245 / tylko x134 / wiedzie?? x113 / siebie x107 / 	mie?? x412 / chcie?? x330 / tylko x183 / wiedzie?? x161 / siebie x129 / 	mie?? x412 / chcie?? x330 / tylko x183 / wiedzie?? x161 / siebie x129 / 	mie?? x412 / chcie?? x330 / tylko x183 / wiedzie?? x161 / siebie x129 / 	2022-07-04 19:37:47.467558+00	2022-07-04 17:08:07.806381+00
169	otsochodzi	Otsochodzi	2429	2429	2429	2429	116	118	118	118	mie?? x226 / m??wi?? x109 / chcie?? x103 / robi?? x89 / wiedzie?? x77 / 	mie?? x226 / m??wi?? x109 / chcie?? x103 / robi?? x89 / wiedzie?? x77 / 	mie?? x226 / m??wi?? x109 / chcie?? x103 / robi?? x89 / wiedzie?? x77 / 	mie?? x226 / m??wi?? x109 / chcie?? x103 / robi?? x89 / wiedzie?? x77 / 	2022-07-04 19:37:47.647139+00	2022-07-04 17:08:07.76589+00
161	oki	Oki	2352	2352	2352	2352	119	120	120	120	mie?? x212 / chcie?? x117 / wiedzie?? x97 / g??owa x91 / ??ycie x63 / 	mie?? x212 / chcie?? x117 / wiedzie?? x97 / g??owa x91 / ??ycie x63 / 	mie?? x212 / chcie?? x117 / wiedzie?? x97 / g??owa x91 / ??ycie x63 / 	mie?? x212 / chcie?? x117 / wiedzie?? x97 / g??owa x91 / ??ycie x63 / 	2022-07-04 19:37:47.654407+00	2022-07-04 17:08:07.742917+00
188	pono	Pono	3184	3184	3184	3184	70	93	94	94	mie?? x268 / wiedzie?? x131 / chcie?? x112 / wszystko x100 / cz??owiek x94 / 	mie?? x268 / wiedzie?? x131 / chcie?? x112 / wszystko x100 / cz??owiek x94 / 	mie?? x268 / wiedzie?? x131 / chcie?? x112 / wszystko x100 / cz??owiek x94 / 	mie?? x268 / wiedzie?? x131 / chcie?? x112 / wszystko x100 / cz??owiek x94 / 	2022-07-04 19:37:47.559812+00	2022-07-04 17:08:07.820922+00
155	nowator	Nowator	2913	3016	3016	3016	99	105	105	105	mie?? x233 / wiedzie?? x196 / chcie?? x155 / tylko x106 / teraz x99 / 	mie?? x243 / wiedzie?? x198 / chcie?? x161 / tylko x107 / teraz x102 / 	mie?? x243 / wiedzie?? x198 / chcie?? x161 / tylko x107 / teraz x102 / 	mie?? x243 / wiedzie?? x198 / chcie?? x161 / tylko x107 / teraz x102 / 	2022-07-04 19:37:47.599886+00	2022-07-04 17:08:07.724438+00
154	adi_nowak	Adi Nowak	3443	3443	3443	3443	47	85	85	85	mie?? x186 / chcie?? x137 / wiedzie?? x68 / m??wi?? x43 / kt??ry x42 / 	mie?? x186 / chcie?? x137 / wiedzie?? x68 / m??wi?? x43 / kt??ry x42 / 	mie?? x186 / chcie?? x137 / wiedzie?? x68 / m??wi?? x43 / kt??ry x42 / 	mie?? x186 / chcie?? x137 / wiedzie?? x68 / m??wi?? x43 / kt??ry x42 / 	2022-07-04 19:37:47.526626+00	2022-07-04 17:08:07.721644+00
176	pelson	Pelson	2335	2335	2335	2335	120	121	121	121	mie?? x139 / wiedzie?? x82 / dzi?? x74 / chcie?? x72 / czas x63 / 	mie?? x139 / wiedzie?? x82 / dzi?? x74 / chcie?? x72 / czas x63 / 	mie?? x139 / wiedzie?? x82 / dzi?? x74 / chcie?? x72 / czas x63 / 	mie?? x139 / wiedzie?? x82 / dzi?? x74 / chcie?? x72 / czas x63 / 	2022-07-04 19:37:47.657951+00	2022-07-04 17:08:07.786295+00
178	peku	P??ku	1553	1553	1553	1553	151	151	151	151	mie?? x104 / szary x53 / kolejny x46 / przerwa x46 / wiedzie?? x44 / 	mie?? x104 / szary x53 / kolejny x46 / przerwa x46 / wiedzie?? x44 / 	mie?? x104 / szary x53 / kolejny x46 / przerwa x46 / wiedzie?? x44 / 	mie?? x104 / szary x53 / kolejny x46 / przerwa x46 / wiedzie?? x44 / 	2022-07-04 19:37:47.768928+00	2022-07-04 17:08:07.792097+00
158	numer_raz	Numer Raz	1386	1386	1386	1386	158	158	158	158	mie?? x56 / chwila x39 / numer x38 / czas x27 / dobrze x27 / 	mie?? x56 / chwila x39 / numer x38 / czas x27 / dobrze x27 / 	mie?? x56 / chwila x39 / numer x38 / czas x27 / dobrze x27 / 	mie?? x56 / chwila x39 / numer x38 / czas x27 / dobrze x27 / 	2022-07-04 19:37:47.794775+00	2022-07-04 17:08:07.733712+00
182	pjus	Pjus	1339	1339	1339	1339	159	159	159	159	mie?? x97 / m??wi?? x58 / ??ycie x46 / zawsze x38 / s??ysze?? x37 / 	mie?? x97 / m??wi?? x58 / ??ycie x46 / zawsze x38 / s??ysze?? x37 / 	mie?? x97 / m??wi?? x58 / ??ycie x46 / zawsze x38 / s??ysze?? x37 / 	mie?? x97 / m??wi?? x58 / ??ycie x46 / zawsze x38 / s??ysze?? x37 / 	2022-07-04 19:37:47.798879+00	2022-07-04 17:08:07.803666+00
163	olszakumpel	Olszakumpel	1065	1065	1065	1065	171	171	171	171	mie?? x82 / chcie?? x55 / kurwa x22 / oja?? x20 / ??ycie x19 / 	mie?? x82 / chcie?? x55 / kurwa x22 / oja?? x20 / ??ycie x19 / 	mie?? x82 / chcie?? x55 / kurwa x22 / oja?? x20 / ??ycie x19 / 	mie?? x82 / chcie?? x55 / kurwa x22 / oja?? x20 / ??ycie x19 / 	2022-07-04 19:37:47.843192+00	2022-07-04 17:08:07.749009+00
153	norbi	Norbi	852	852	852	852	178	178	178	178	mie?? x90 / wszystko x28 / pami??ta?? x27 / jedyny x26 / kobieta x22 / 	mie?? x90 / wszystko x28 / pami??ta?? x27 / jedyny x26 / kobieta x22 / 	mie?? x90 / wszystko x28 / pami??ta?? x27 / jedyny x26 / kobieta x22 / 	mie?? x90 / wszystko x28 / pami??ta?? x27 / jedyny x26 / kobieta x22 / 	2022-07-04 19:37:47.868963+00	2022-07-04 17:08:07.718553+00
173	parzel	Parzel	657	657	657	657	184	184	184	184	mie?? x24 / wiedzie?? x15 / kt??ry x13 / chcie?? x12 / czas x11 / 	mie?? x24 / wiedzie?? x15 / kt??ry x13 / chcie?? x12 / czas x11 / 	mie?? x24 / wiedzie?? x15 / kt??ry x13 / chcie?? x12 / czas x11 / 	mie?? x24 / wiedzie?? x15 / kt??ry x13 / chcie?? x12 / czas x11 / 	2022-07-04 19:37:47.890636+00	2022-07-04 17:08:07.777975+00
179	piernikowski	Piernikowski	346	346	346	346	202	202	202	202	trwam x58 / bia??as x23 / oja?? x20 / g??owa x11 / getto x11 / 	trwam x58 / bia??as x23 / oja?? x20 / g??owa x11 / getto x11 / 	trwam x58 / bia??as x23 / oja?? x20 / g??owa x11 / getto x11 / 	trwam x58 / bia??as x23 / oja?? x20 / g??owa x11 / getto x11 / 	2022-07-04 19:37:47.957443+00	2022-07-04 17:08:07.794576+00
168	oska	O??ka	167	167	167	167	211	211	211	211	wyja x26 / lala x18 / lalala x18 / eopseo x17 / nareul x13 / 	wyja x26 / lala x18 / lalala x18 / eopseo x17 / nareul x13 / 	wyja x26 / lala x18 / lalala x18 / eopseo x17 / nareul x13 / 	wyja x26 / lala x18 / lalala x18 / eopseo x17 / nareul x13 / 	2022-07-04 19:37:47.991253+00	2022-07-04 17:08:07.763337+00
175	peja	Peja	3767	6170	8246	17139	23	11	5	1	mie?? x158 / ??ycie x119 / chcie?? x103 / czas x72 / wiedzie?? x71 / 	mie?? x350 / chcie?? x235 / ??ycie x208 / wiedzie?? x182 / sw??j x151 / 	mie?? x538 / chcie?? x369 / wiedzie?? x294 / ??ycie x285 / kt??ry x230 / 	mie?? x1649 / chcie?? x1014 / wiedzie?? x839 / ??ycie x779 / sw??j x645 / 	2022-07-04 19:37:47.212152+00	2022-07-04 17:08:07.783643+00
172	paluch	Paluch	3451	5489	7218	9302	45	21	13	7	mie?? x215 / ??ycie x103 / wiedzie?? x96 / sw??j x89 / rapa x84 / 	mie?? x498 / ??ycie x245 / chcie?? x237 / sw??j x176 / wiedzie?? x173 / 	mie?? x750 / chcie?? x356 / ??ycie x343 / wiedzie?? x245 / ka??dy x231 / 	mie?? x1189 / ??ycie x599 / chcie?? x573 / ka??dy x379 / wiedzie?? x371 / 	2022-07-04 19:37:47.239689+00	2022-07-04 17:08:07.775002+00
180	pih	Pih	4080	6597	8521	11580	8	2	3	5	mie?? x211 / wiedzie?? x113 / chcie?? x111 / ??ycie x110 / tw??j x88 / 	mie?? x407 / wiedzie?? x266 / ??ycie x210 / chcie?? x192 / tw??j x190 / 	mie?? x616 / wiedzie?? x408 / ??ycie x305 / tw??j x268 / chcie?? x261 / 	mie?? x919 / wiedzie?? x528 / ??ycie x458 / tw??j x379 / chcie?? x372 / 	2022-07-04 19:37:47.232393+00	2022-07-04 17:08:07.797715+00
213	shellerini	Shellerini	3537	3537	3537	3537	36	82	82	82	mie?? x204 / kt??ry x79 / rapa x76 / sw??j x72 / robi?? x64 / 	mie?? x204 / kt??ry x79 / rapa x76 / sw??j x72 / robi?? x64 / 	mie?? x204 / kt??ry x79 / rapa x76 / sw??j x72 / robi?? x64 / 	mie?? x204 / kt??ry x79 / rapa x76 / sw??j x72 / robi?? x64 / 	2022-07-04 19:37:47.515572+00	2022-07-04 17:08:07.894945+00
200	rafi	Rafi	3299	3299	3299	3299	58	90	91	91	mie?? x186 / czas x127 / kt??ry x91 / cz??owiek x81 / wi??c x74 / 	mie?? x186 / czas x127 / kt??ry x91 / cz??owiek x81 / wi??c x74 / 	mie?? x186 / czas x127 / kt??ry x91 / cz??owiek x81 / wi??c x74 / 	mie?? x186 / czas x127 / kt??ry x91 / cz??owiek x81 / wi??c x74 / 	2022-07-04 19:37:47.548733+00	2022-07-04 17:08:07.856075+00
192	pyskaty	Pyskaty	3044	3044	3044	3044	92	102	102	102	mie?? x215 / wiedzie?? x161 / chcie?? x150 / dzi?? x99 / m??wi?? x82 / 	mie?? x215 / wiedzie?? x161 / chcie?? x150 / dzi?? x99 / m??wi?? x82 / 	mie?? x215 / wiedzie?? x161 / chcie?? x150 / dzi?? x99 / m??wi?? x82 / 	mie?? x215 / wiedzie?? x161 / chcie?? x150 / dzi?? x99 / m??wi?? x82 / 	2022-07-04 19:37:47.588855+00	2022-07-04 17:08:07.832984+00
197	raca	Raca	3104	3643	3643	3643	85	72	72	72	mie?? x242 / chcie?? x133 / wiedzie?? x119 / m??wi?? x115 / ??ycie x77 / 	mie?? x295 / chcie?? x162 / m??wi?? x145 / wiedzie?? x143 / czas x110 / 	mie?? x295 / chcie?? x162 / m??wi?? x145 / wiedzie?? x143 / czas x110 / 	mie?? x295 / chcie?? x162 / m??wi?? x145 / wiedzie?? x143 / czas x110 / 	2022-07-04 19:37:47.478656+00	2022-07-04 17:08:07.847388+00
201	rahim	Rahim	3557	3557	3557	3557	34	81	81	81	mie?? x209 / czas x79 / chcie?? x65 / sw??j x65 / siebie x58 / 	mie?? x209 / czas x79 / chcie?? x65 / sw??j x65 / siebie x58 / 	mie?? x209 / czas x79 / chcie?? x65 / sw??j x65 / siebie x58 / 	mie?? x209 / czas x79 / chcie?? x65 / sw??j x65 / siebie x58 / 	2022-07-04 19:37:47.512091+00	2022-07-04 17:08:07.85916+00
202	ramona_23	Ramona 23	2903	2903	2903	2903	100	107	107	107	mie?? x201 / kt??ry x107 / ka??dy x105 / chcie?? x89 / tw??j x80 / 	mie?? x201 / kt??ry x107 / ka??dy x105 / chcie?? x89 / tw??j x80 / 	mie?? x201 / kt??ry x107 / ka??dy x105 / chcie?? x89 / tw??j x80 / 	mie?? x201 / kt??ry x107 / ka??dy x105 / chcie?? x89 / tw??j x80 / 	2022-07-04 19:37:47.607085+00	2022-07-04 17:08:07.862212+00
193	qbik	Qbik	2554	3331	3331	3331	110	89	90	90	mie?? x293 / chcie?? x182 / tylko x130 / siebie x123 / wszystko x98 / 	mie?? x373 / chcie?? x270 / siebie x164 / tylko x142 / wiedzie?? x133 / 	mie?? x373 / chcie?? x270 / siebie x164 / tylko x142 / wiedzie?? x133 / 	mie?? x373 / chcie?? x270 / siebie x164 / tylko x142 / wiedzie?? x133 / 	2022-07-04 19:37:47.54492+00	2022-07-04 17:08:07.83556+00
191	proceente	Proceente	3033	3033	3033	3033	93	103	103	103	mie?? x142 / dzie?? x55 / siebie x48 / czas x48 / dobry x44 / 	mie?? x142 / dzie?? x55 / siebie x48 / czas x48 / dobry x44 / 	mie?? x142 / dzie?? x55 / siebie x48 / czas x48 / dobry x44 / 	mie?? x142 / dzie?? x55 / siebie x48 / czas x48 / dobry x44 / 	2022-07-04 19:37:47.592401+00	2022-07-04 17:08:07.829402+00
219	smolasty	Smolasty	2139	2139	2139	2139	125	126	126	126	chcie?? x342 / mie?? x321 / wiedzie?? x181 / tylko x118 / tw??j x89 / 	chcie?? x342 / mie?? x321 / wiedzie?? x181 / tylko x118 / tw??j x89 / 	chcie?? x342 / mie?? x321 / wiedzie?? x181 / tylko x118 / tw??j x89 / 	chcie?? x342 / mie?? x321 / wiedzie?? x181 / tylko x118 / tw??j x89 / 	2022-07-04 19:37:47.676552+00	2022-07-04 17:08:07.911884+00
214	sitek	Sitek	2107	2107	2107	2107	127	128	128	128	mie?? x277 / chcie?? x149 / wiedzie?? x119 / m??wi?? x78 / kiedy x74 / 	mie?? x277 / chcie?? x149 / wiedzie?? x119 / m??wi?? x78 / kiedy x74 / 	mie?? x277 / chcie?? x149 / wiedzie?? x119 / m??wi?? x78 / kiedy x74 / 	mie?? x277 / chcie?? x149 / wiedzie?? x119 / m??wi?? x78 / kiedy x74 / 	2022-07-04 19:37:47.683916+00	2022-07-04 17:08:07.897578+00
212	sentino	Sentino	2055	2055	2055	2055	129	130	130	130	mie?? x122 / chcie?? x101 / ??aden x79 / tylko x48 / m??wi?? x45 / 	mie?? x122 / chcie?? x101 / ??aden x79 / tylko x48 / m??wi?? x45 / 	mie?? x122 / chcie?? x101 / ??aden x79 / tylko x48 / m??wi?? x45 / 	mie?? x122 / chcie?? x101 / ??aden x79 / tylko x48 / m??wi?? x45 / 	2022-07-04 19:37:47.691127+00	2022-07-04 17:08:07.891406+00
211	schafter	Schafter	1771	1771	1771	1771	142	142	142	142	mie?? x76 / robi?? x53 / yeah x48 / wiedzie?? x38 / drip x38 / 	mie?? x76 / robi?? x53 / yeah x48 / wiedzie?? x38 / drip x38 / 	mie?? x76 / robi?? x53 / yeah x48 / wiedzie?? x38 / drip x38 / 	mie?? x76 / robi?? x53 / yeah x48 / wiedzie?? x38 / drip x38 / 	2022-07-04 19:37:47.736003+00	2022-07-04 17:08:07.888742+00
220	sobel	Sobel	1627	1627	1627	1627	148	148	147	147	mie?? x186 / chcie?? x146 / wiedzie?? x122 / czas x84 / tylko x72 / 	mie?? x186 / chcie?? x146 / wiedzie?? x122 / czas x84 / tylko x72 / 	mie?? x186 / chcie?? x146 / wiedzie?? x122 / czas x84 / tylko x72 / 	mie?? x186 / chcie?? x146 / wiedzie?? x122 / czas x84 / tylko x72 / 	2022-07-04 19:37:47.754696+00	2022-07-04 17:08:07.915035+00
206	rudy_mrw	Rudy MRW	1483	1483	1483	1483	156	156	156	156	mie?? x73 / wzi???? x45 / zdejmij x41 / chcie?? x35 / wiedzie?? x27 / 	mie?? x73 / wzi???? x45 / zdejmij x41 / chcie?? x35 / wiedzie?? x27 / 	mie?? x73 / wzi???? x45 / zdejmij x41 / chcie?? x35 / wiedzie?? x27 / 	mie?? x73 / wzi???? x45 / zdejmij x41 / chcie?? x35 / wiedzie?? x27 / 	2022-07-04 19:37:47.78735+00	2022-07-04 17:08:07.874291+00
194	qry	Qry	940	940	940	940	174	174	174	174	mie?? x95 / ca??y x74 / czas x62 / chcie?? x46 / robi?? x32 / 	mie?? x95 / ca??y x74 / czas x62 / chcie?? x46 / robi?? x32 / 	mie?? x95 / ca??y x74 / czas x62 / chcie?? x46 / robi?? x32 / 	mie?? x95 / ca??y x74 / czas x62 / chcie?? x46 / robi?? x32 / 	2022-07-04 19:37:47.854366+00	2022-07-04 17:08:07.838687+00
203	rest	Rest	375	375	375	375	199	200	199	200	nivot x20 / boombap x15 / kterej x13 / miluja x12 / st??le x10 / 	nivot x20 / boombap x15 / kterej x13 / miluja x12 / st??le x10 / 	nivot x20 / boombap x15 / kterej x13 / miluja x12 / st??le x10 / 	nivot x20 / boombap x15 / kterej x13 / miluja x12 / st??le x10 / 	2022-07-04 19:37:47.949706+00	2022-07-04 17:08:07.865334+00
222	solei	Solei	246	246	246	246	206	206	206	206	??l??sk x6 / wi??c x6 / blok x6 / mie?? x5 / wiedzie?? x5 / 	??l??sk x6 / wi??c x6 / blok x6 / mie?? x5 / wiedzie?? x5 / 	??l??sk x6 / wi??c x6 / blok x6 / mie?? x5 / wiedzie?? x5 / 	??l??sk x6 / wi??c x6 / blok x6 / mie?? x5 / wiedzie?? x5 / 	2022-07-04 19:37:47.972358+00	2022-07-04 17:08:07.920858+00
221	sobota	Sobota	3398	5403	6018	6018	49	25	28	29	mie?? x226 / chcie?? x144 / jeden x121 / wiedzie?? x93 / strza?? x73 / 	mie?? x503 / chcie?? x323 / wiedzie?? x235 / sw??j x156 / jeden x146 / 	mie?? x606 / chcie?? x411 / wiedzie?? x296 / sw??j x188 / jeden x166 / 	mie?? x606 / chcie?? x411 / wiedzie?? x296 / sw??j x188 / jeden x166 / 	2022-07-04 19:37:47.320642+00	2022-07-04 17:08:07.917864+00
210	sarius	Sarius	3338	4756	4756	4756	54	45	46	46	mie?? x308 / chcie?? x141 / wiedzie?? x110 / m??wi?? x84 / tylko x81 / 	mie?? x598 / chcie?? x291 / wiedzie?? x268 / tylko x210 / m??wi?? x157 / 	mie?? x598 / chcie?? x291 / wiedzie?? x268 / tylko x210 / m??wi?? x157 / 	mie?? x598 / chcie?? x291 / wiedzie?? x268 / tylko x210 / m??wi?? x157 / 	2022-07-04 19:37:47.383317+00	2022-07-04 17:08:07.885271+00
216	skorup	Skorup	4071	4071	4071	4071	9	61	61	61	mie?? x171 / siebie x83 / sw??j x80 / taki x57 / cz??owiek x54 / 	mie?? x171 / siebie x83 / sw??j x80 / taki x57 / cz??owiek x54 / 	mie?? x171 / siebie x83 / sw??j x80 / taki x57 / cz??owiek x54 / 	mie?? x171 / siebie x83 / sw??j x80 / taki x57 / cz??owiek x54 / 	2022-07-04 19:37:47.4389+00	2022-07-04 17:08:07.903476+00
229	sulin	Sulin	2952	4345	4345	4345	96	55	55	55	mie?? x314 / chcie?? x160 / wiedzie?? x135 / m??wi?? x122 / ??ycie x96 / 	mie?? x583 / chcie?? x291 / wiedzie?? x250 / m??wi?? x239 / ??ycie x206 / 	mie?? x583 / chcie?? x291 / wiedzie?? x250 / m??wi?? x239 / ??ycie x206 / 	mie?? x583 / chcie?? x291 / wiedzie?? x250 / m??wi?? x239 / ??ycie x206 / 	2022-07-04 19:37:47.416396+00	2022-07-04 17:08:07.940655+00
247	toony	Toony	2109	2109	2109	2109	126	127	127	127	mie?? x65 / wiedzie?? x61 / ??ycie x39 / polak x37 / serce x36 / 	mie?? x65 / wiedzie?? x61 / ??ycie x39 / polak x37 / serce x36 / 	mie?? x65 / wiedzie?? x61 / ??ycie x39 / polak x37 / serce x36 / 	mie?? x65 / wiedzie?? x61 / ??ycie x39 / polak x37 / serce x36 / 	2022-07-04 19:37:47.680534+00	2022-07-04 17:08:07.993128+00
248	tps	TPS	3405	4543	4543	4543	48	50	51	51	mie?? x192 / chcie?? x132 / czas x115 / wiedzie?? x81 / ??ycie x72 / 	mie?? x303 / chcie?? x187 / czas x170 / wiedzie?? x120 / ??ycie x113 / 	mie?? x303 / chcie?? x187 / czas x170 / wiedzie?? x120 / ??ycie x113 / 	mie?? x303 / chcie?? x187 / czas x170 / wiedzie?? x120 / ??ycie x113 / 	2022-07-04 19:37:47.401397+00	2022-07-04 17:08:07.995637+00
251	vixen	Vixen	3243	5166	6504	6504	64	31	21	24	mie?? x421 / chcie?? x193 / wiedzie?? x118 / czas x76 / ka??dy x75 / 	mie?? x736 / chcie?? x338 / wiedzie?? x209 / kt??ry x170 / sw??j x158 / 	mie?? x995 / chcie?? x445 / wiedzie?? x275 / sw??j x220 / wszystko x217 / 	mie?? x995 / chcie?? x445 / wiedzie?? x275 / sw??j x220 / wszystko x217 / 	2022-07-04 19:37:47.302175+00	2022-07-04 17:08:08.004635+00
223	sokol	Sok????	3568	3568	3568	3568	32	80	80	80	mie?? x205 / chcie?? x90 / wiedzie?? x76 / m??wi?? x68 / ??ycie x66 / 	mie?? x205 / chcie?? x90 / wiedzie?? x76 / m??wi?? x68 / ??ycie x66 / 	mie?? x205 / chcie?? x90 / wiedzie?? x76 / m??wi?? x68 / ??ycie x66 / 	mie?? x205 / chcie?? x90 / wiedzie?? x76 / m??wi?? x68 / ??ycie x66 / 	2022-07-04 19:37:47.508504+00	2022-07-04 17:08:07.923771+00
252	vnm	VNM	3515	5868	7217	7217	39	15	14	17	mie?? x266 / chcie?? x123 / rapa x102 / wiedzie?? x100 / tw??j x94 / 	mie?? x502 / chcie?? x261 / wiedzie?? x245 / tw??j x164 / kiedy x160 / 	mie?? x667 / chcie?? x333 / wiedzie?? x330 / kiedy x220 / m??wi?? x191 / 	mie?? x667 / chcie?? x333 / wiedzie?? x330 / kiedy x220 / m??wi?? x191 / 	2022-07-04 19:37:47.275967+00	2022-07-04 17:08:08.007509+00
234	szpaku	Szpaku	3299	3955	3955	3955	59	66	66	66	mie?? x295 / chcie?? x160 / ci??gle x109 / robi?? x83 / cz??owiek x79 / 	mie?? x375 / chcie?? x207 / ci??gle x127 / robi?? x99 / cz??owiek x99 / 	mie?? x375 / chcie?? x207 / ci??gle x127 / robi?? x99 / cz??owiek x99 / 	mie?? x375 / chcie?? x207 / ci??gle x127 / robi?? x99 / cz??owiek x99 / 	2022-07-04 19:37:47.456893+00	2022-07-04 17:08:07.955338+00
230	szad	Szad	2722	2722	2722	2722	107	112	112	112	mie?? x137 / czas x56 / wiedzie?? x42 / chcie?? x34 / dzi?? x32 / 	mie?? x137 / czas x56 / wiedzie?? x42 / chcie?? x34 / dzi?? x32 / 	mie?? x137 / czas x56 / wiedzie?? x42 / chcie?? x34 / dzi?? x32 / 	mie?? x137 / czas x56 / wiedzie?? x42 / chcie?? x34 / dzi?? x32 / 	2022-07-04 19:37:47.625915+00	2022-07-04 17:08:07.943932+00
253	w_e_n_a_	W.E.N.A.	3533	4050	4050	4050	38	62	62	62	mie?? x206 / kt??ry x129 / chcie?? x123 / wiedzie?? x95 / m??wi?? x91 / 	mie?? x275 / chcie?? x155 / kt??ry x154 / wiedzie?? x121 / m??wi?? x110 / 	mie?? x275 / chcie?? x155 / kt??ry x154 / wiedzie?? x121 / m??wi?? x110 / 	mie?? x275 / chcie?? x155 / kt??ry x154 / wiedzie?? x121 / m??wi?? x110 / 	2022-07-04 19:37:47.442593+00	2022-07-04 17:08:08.010078+00
249	tymek	Tymek	2546	3640	3640	3640	111	73	73	73	mie?? x320 / chcie?? x221 / oja?? x158 / siebie x121 / wiedzie?? x118 / 	mie?? x574 / chcie?? x312 / siebie x234 / oja?? x185 / wiedzie?? x175 / 	mie?? x574 / chcie?? x312 / siebie x234 / oja?? x185 / wiedzie?? x175 / 	mie?? x574 / chcie?? x312 / siebie x234 / oja?? x185 / wiedzie?? x175 / 	2022-07-04 19:37:47.482064+00	2022-07-04 17:08:07.998799+00
246	tony_jazzu	Tony Jazzu	2032	2032	2032	2032	130	131	131	131	mie?? x101 / wiedzie?? x83 / robi?? x43 / jazz x33 / chcie?? x32 / 	mie?? x101 / wiedzie?? x83 / robi?? x43 / jazz x33 / chcie?? x32 / 	mie?? x101 / wiedzie?? x83 / robi?? x43 / jazz x33 / chcie?? x32 / 	mie?? x101 / wiedzie?? x83 / robi?? x43 / jazz x33 / chcie?? x32 / 	2022-07-04 19:37:47.695309+00	2022-07-04 17:08:07.99002+00
233	szesnasty	Szesnasty	2210	2210	2210	2210	123	124	124	124	mie?? x132 / m??wi?? x72 / tylko x60 / chcie?? x54 / wiedzie?? x41 / 	mie?? x132 / m??wi?? x72 / tylko x60 / chcie?? x54 / wiedzie?? x41 / 	mie?? x132 / m??wi?? x72 / tylko x60 / chcie?? x54 / wiedzie?? x41 / 	mie?? x132 / m??wi?? x72 / tylko x60 / chcie?? x54 / wiedzie?? x41 / 	2022-07-04 19:37:47.668882+00	2022-07-04 17:08:07.952499+00
225	spinache	Spinache	1629	1629	1629	1629	146	146	146	146	mie?? x83 / wiedzie?? x39 / wszystko x34 / chcie?? x26 / czu?? x23 / 	mie?? x83 / wiedzie?? x39 / wszystko x34 / chcie?? x26 / czu?? x23 / 	mie?? x83 / wiedzie?? x39 / wszystko x34 / chcie?? x26 / czu?? x23 / 	mie?? x83 / wiedzie?? x39 / wszystko x34 / chcie?? x26 / czu?? x23 / 	2022-07-04 19:37:47.751044+00	2022-07-04 17:08:07.929675+00
232	szczyl	Szczyl	1428	1428	1428	1428	157	157	157	157	mie?? x148 / ??wiat x71 / tylko x68 / chcie?? x67 / toast x64 / 	mie?? x148 / ??wiat x71 / tylko x68 / chcie?? x67 / toast x64 / 	mie?? x148 / ??wiat x71 / tylko x68 / chcie?? x67 / toast x64 / 	mie?? x148 / ??wiat x71 / tylko x68 / chcie?? x67 / toast x64 / 	2022-07-04 19:37:47.791347+00	2022-07-04 17:08:07.949689+00
226	stasiak	Stasiak	1150	1150	1150	1150	166	166	166	166	mie?? x81 / wiedzie?? x51 / chcie?? x34 / dzisiaj x24 / s??owo x24 / 	mie?? x81 / wiedzie?? x51 / chcie?? x34 / dzisiaj x24 / s??owo x24 / 	mie?? x81 / wiedzie?? x51 / chcie?? x34 / dzisiaj x24 / s??owo x24 / 	mie?? x81 / wiedzie?? x51 / chcie?? x34 / dzisiaj x24 / s??owo x24 / 	2022-07-04 19:37:47.824701+00	2022-07-04 17:08:07.932331+00
242	teka	Teka	1120	1120	1120	1120	168	168	168	168	wiedzie?? x63 / ta??cz x56 / mie?? x38 / wszystko x33 / wr??ci?? x31 / 	wiedzie?? x63 / ta??cz x56 / mie?? x38 / wszystko x33 / wr??ci?? x31 / 	wiedzie?? x63 / ta??cz x56 / mie?? x38 / wszystko x33 / wr??ci?? x31 / 	wiedzie?? x63 / ta??cz x56 / mie?? x38 / wszystko x33 / wr??ci?? x31 / 	2022-07-04 19:37:47.832027+00	2022-07-04 17:08:07.978438+00
238	tadek	Tadek	332	332	332	332	203	203	203	203	polski x14 / wygrana x7 / niemiecki x7 / walczy?? x6 / polak x6 / 	polski x14 / wygrana x7 / niemiecki x7 / walczy?? x6 / polak x6 / 	polski x14 / wygrana x7 / niemiecki x7 / walczy?? x6 / polak x6 / 	polski x14 / wygrana x7 / niemiecki x7 / walczy?? x6 / polak x6 / 	2022-07-04 19:37:47.960909+00	2022-07-04 17:08:07.966662+00
241	tede	Tede	3533	5786	7836	13695	37	17	6	3	mie?? x253 / wiedzie?? x200 / robi?? x88 / oja?? x88 / czas x82 / 	mie?? x580 / wiedzie?? x370 / czas x163 / chcie?? x148 / oja?? x144 / 	mie?? x850 / wiedzie?? x526 / chcie?? x217 / robi?? x211 / czas x204 / 	mie?? x2248 / wiedzie?? x1032 / chcie?? x591 / robi?? x527 / taki x449 / 	2022-07-04 19:37:47.225164+00	2022-07-04 17:08:07.975306+00
239	tau	Tau	3727	5645	7280	7280	25	18	12	16	mie?? x283 / chcie?? x109 / kt??ry x104 / wiedzie?? x102 / ??ycie x91 / 	mie?? x536 / chcie?? x226 / ??ycie x205 / wiedzie?? x185 / kt??ry x180 / 	mie?? x763 / chcie?? x320 / kt??ry x287 / ??ycie x271 / wiedzie?? x267 / 	mie?? x763 / chcie?? x320 / kt??ry x287 / ??ycie x271 / wiedzie?? x267 / 	2022-07-04 19:37:47.272405+00	2022-07-04 17:08:07.969599+00
236	sliwa	??liwa	3559	5389	5389	5389	33	26	35	35	mie?? x218 / wiedzie?? x119 / chcie?? x111 / ??ycie x93 / czas x80 / 	mie?? x443 / chcie?? x227 / wiedzie?? x214 / ??ycie x123 / czas x115 / 	mie?? x443 / chcie?? x227 / wiedzie?? x214 / ??ycie x123 / czas x115 / 	mie?? x443 / chcie?? x227 / wiedzie?? x214 / ??ycie x123 / czas x115 / 	2022-07-04 19:37:47.342566+00	2022-07-04 17:08:07.961052+00
258	white_2115	White 2115	2497	3022	3022	3022	114	104	104	104	mie?? x263 / chcie?? x253 / wiedzie?? x135 / tylko x111 / czas x102 / 	mie?? x331 / chcie?? x325 / wiedzie?? x169 / yeah x154 / czas x131 / 	mie?? x331 / chcie?? x325 / wiedzie?? x169 / yeah x154 / czas x131 / 	mie?? x331 / chcie?? x325 / wiedzie?? x169 / yeah x154 / czas x131 / 	2022-07-04 19:37:47.596115+00	2022-07-04 17:08:08.025209+00
255	waco	Waco	1799	1799	1799	1799	141	141	141	141	mie?? x72 / chcie?? x51 / czas x44 / ??ycie x41 / wiedzie?? x40 / 	mie?? x72 / chcie?? x51 / czas x44 / ??ycie x41 / wiedzie?? x40 / 	mie?? x72 / chcie?? x51 / czas x44 / ??ycie x41 / wiedzie?? x40 / 	mie?? x72 / chcie?? x51 / czas x44 / ??ycie x41 / wiedzie?? x40 / 	2022-07-04 19:37:47.732183+00	2022-07-04 17:08:08.015969+00
265	yaro	Yaro	1680	1680	1680	1680	144	144	144	144	mie?? x87 / wiedzie?? x46 / chcie?? x45 / dzi?? x40 / ka??dy x33 / 	mie?? x87 / wiedzie?? x46 / chcie?? x45 / dzi?? x40 / ka??dy x33 / 	mie?? x87 / wiedzie?? x46 / chcie?? x45 / dzi?? x40 / ka??dy x33 / 	mie?? x87 / wiedzie?? x46 / chcie?? x45 / dzi?? x40 / ka??dy x33 / 	2022-07-04 19:37:47.743289+00	2022-07-04 17:08:08.045104+00
263	wojtas	Wojtas	1240	1240	1240	1240	164	164	164	164	mie?? x42 / czas x26 / sw??j x20 / kt??ry x19 / rapa x18 / 	mie?? x42 / czas x26 / sw??j x20 / kt??ry x19 / rapa x18 / 	mie?? x42 / czas x26 / sw??j x20 / kt??ry x19 / rapa x18 / 	mie?? x42 / czas x26 / sw??j x20 / kt??ry x19 / rapa x18 / 	2022-07-04 19:37:47.817239+00	2022-07-04 17:08:08.039775+00
266	young_igi	Young Igi	2314	2323	2323	2323	121	122	122	122	mie?? x411 / chcie?? x247 / wiedzie?? x175 / m??wi?? x121 / robi?? x93 / 	mie?? x426 / chcie?? x256 / wiedzie?? x175 / m??wi?? x123 / robi?? x94 / 	mie?? x426 / chcie?? x256 / wiedzie?? x175 / m??wi?? x123 / robi?? x94 / 	mie?? x426 / chcie?? x256 / wiedzie?? x175 / m??wi?? x123 / robi?? x94 / 	2022-07-04 19:37:47.661451+00	2022-07-04 17:08:08.048484+00
274	zorak	Zorak	1021	1021	1021	1021	172	172	172	172	mie?? x52 / e??dezet x27 / krew x23 / chcie?? x22 / poddaja x16 / 	mie?? x52 / e??dezet x27 / krew x23 / chcie?? x22 / poddaja x16 / 	mie?? x52 / e??dezet x27 / krew x23 / chcie?? x22 / poddaja x16 / 	mie?? x52 / e??dezet x27 / krew x23 / chcie?? x22 / poddaja x16 / 	2022-07-04 19:37:47.847024+00	2022-07-04 17:08:08.071644+00
270	zawodnik	Zawodnik	574	574	574	574	188	188	188	188	mie?? x27 / tylko x22 / wiedzie?? x20 / wszystko x14 / chcie?? x13 / 	mie?? x27 / tylko x22 / wiedzie?? x20 / wszystko x14 / chcie?? x13 / 	mie?? x27 / tylko x22 / wiedzie?? x20 / wszystko x14 / chcie?? x13 / 	mie?? x27 / tylko x22 / wiedzie?? x20 / wszystko x14 / chcie?? x13 / 	2022-07-04 19:37:47.905274+00	2022-07-04 17:08:08.060193+00
264	wsz	WSZ	453	453	453	453	195	195	195	195	kt??ry x9 / chcie?? x9 / sw??j x9 / mie?? x8 / cz??owiek x8 / 	kt??ry x9 / chcie?? x9 / sw??j x9 / mie?? x8 / cz??owiek x8 / 	kt??ry x9 / chcie?? x9 / sw??j x9 / mie?? x8 / cz??owiek x8 / 	kt??ry x9 / chcie?? x9 / sw??j x9 / mie?? x8 / cz??owiek x8 / 	2022-07-04 19:37:47.930837+00	2022-07-04 17:08:08.04248+00
261	wisnix	Wi??nix	375	375	375	375	200	199	200	199	mie?? x49 / ??eby x21 / chcie?? x16 / wszystko x15 / nawet x13 / 	mie?? x49 / ??eby x21 / chcie?? x16 / wszystko x15 / nawet x13 / 	mie?? x49 / ??eby x21 / chcie?? x16 / wszystko x15 / nawet x13 / 	mie?? x49 / ??eby x21 / chcie?? x16 / wszystko x15 / nawet x13 / 	2022-07-04 19:37:47.945609+00	2022-07-04 17:08:08.033892+00
269	zajka	Zajka	0	0	0	0	258	269	220	264					2022-07-04 19:37:48.18711+00	2022-07-04 17:08:08.056936+00
160	o_s_t_r_	O.S.T.R.	4043	6581	8633	15697	10	3	2	2	mie?? x210 / kt??ry x85 / wiedzie?? x76 / ??wiat x76 / chcie?? x72 / 	mie?? x505 / chcie?? x173 / wiedzie?? x170 / ??wiat x128 / kt??ry x121 / 	mie?? x759 / wiedzie?? x284 / chcie?? x277 / ??ycie x196 / ??wiat x194 / 	mie?? x2164 / chcie?? x708 / wiedzie?? x658 / ??ycie x565 / ??wiat x490 / 	2022-07-04 19:37:47.221564+00	2022-07-04 17:08:07.739543+00
195	quebonafide	Quebonafide	4095	6180	7501	7501	6	10	11	14	mie?? x235 / chcie?? x91 / ??ycie x70 / wiedzie?? x64 / tylko x64 / 	mie?? x480 / chcie?? x208 / tylko x166 / wiedzie?? x123 / ??ycie x118 / 	mie?? x609 / chcie?? x302 / tylko x212 / quebonafide x182 / wiedzie?? x169 / 	mie?? x609 / chcie?? x302 / tylko x212 / quebonafide x182 / wiedzie?? x169 / 	2022-07-04 19:37:47.265244+00	2022-07-04 17:08:07.84136+00
272	zeus	Zeus	3167	5178	6784	6784	76	30	17	19	mie?? x344 / czas x121 / chcie?? x113 / tylko x106 / wiedzie?? x103 / 	mie?? x629 / chcie?? x263 / czas x206 / wiedzie?? x196 / tylko x170 / 	mie?? x807 / chcie?? x358 / czas x305 / ka??dy x239 / wiedzie?? x237 / 	mie?? x807 / chcie?? x358 / czas x305 / ka??dy x239 / wiedzie?? x237 / 	2022-07-04 19:37:47.283305+00	2022-07-04 17:08:08.065851+00
40	deys	Deys	4175	6541	6541	6541	3	4	20	23	mie?? x270 / chcie?? x103 / wiedzie?? x87 / tylko x85 / siebie x76 / 	mie?? x498 / chcie?? x167 / tylko x161 / wiedzie?? x153 / m??wi?? x125 / 	mie?? x498 / chcie?? x167 / tylko x161 / wiedzie?? x153 / m??wi?? x125 / 	mie?? x498 / chcie?? x167 / tylko x161 / wiedzie?? x153 / m??wi?? x125 / 	2022-07-04 19:37:47.29875+00	2022-07-04 17:08:07.371253+00
32	buka	Buka	4020	6195	6195	6195	12	9	26	27	mie?? x328 / wiedzie?? x99 / chcie?? x77 / ??wiat x61 / chyba x60 / 	mie?? x567 / wiedzie?? x159 / chcie?? x129 / tylko x98 / robi?? x90 / 	mie?? x567 / wiedzie?? x159 / chcie?? x129 / tylko x98 / robi?? x90 / 	mie?? x567 / wiedzie?? x159 / chcie?? x129 / tylko x98 / robi?? x90 / 	2022-07-04 19:37:47.313404+00	2022-07-04 17:08:07.345117+00
174	peerzet	Peerzet	4083	6118	6118	6118	7	12	27	28	mie?? x352 / wiedzie?? x117 / chcie?? x96 / siebie x74 / tylko x55 / 	mie?? x596 / chcie?? x198 / wiedzie?? x188 / siebie x119 / tylko x105 / 	mie?? x596 / chcie?? x198 / wiedzie?? x188 / siebie x119 / tylko x105 / 	mie?? x596 / chcie?? x198 / wiedzie?? x188 / siebie x119 / tylko x105 / 	2022-07-04 19:37:47.316965+00	2022-07-04 17:08:07.780547+00
75	hades	Hades	4227	4613	4613	4613	1	49	50	50	mie?? x216 / inny x87 / tylko x67 / chcie?? x53 / your x52 / 	mie?? x216 / inny x139 / your x68 / tylko x67 / chcie?? x53 / 	mie?? x216 / inny x139 / your x68 / tylko x67 / chcie?? x53 / 	mie?? x216 / inny x139 / your x68 / tylko x67 / chcie?? x53 / 	2022-07-04 19:37:47.397748+00	2022-07-04 17:08:07.479019+00
139	mezo	Mezo	4171	6357	6357	6357	4	6	23	26	mie?? x236 / chcie?? x129 / ??wiat x82 / siebie x73 / ??ycie x73 / 	mie?? x468 / chcie?? x285 / wiedzie?? x229 / tylko x150 / ??ycie x145 / 	mie?? x468 / chcie?? x285 / wiedzie?? x229 / tylko x150 / ??ycie x145 / 	mie?? x468 / chcie?? x285 / wiedzie?? x229 / tylko x150 / ??ycie x145 / 	2022-07-04 19:37:47.309341+00	2022-07-04 17:08:07.677132+00
271	zeamsone	Zeamsone	2368	3114	3114	3114	118	100	100	100	mie?? x337 / chcie?? x248 / m??wi?? x136 / robi?? x125 / dzi?? x112 / 	mie?? x529 / chcie?? x429 / m??wi?? x167 / robi?? x158 / wiedzie?? x143 / 	mie?? x529 / chcie?? x429 / m??wi?? x167 / robi?? x158 / wiedzie?? x143 / 	mie?? x529 / chcie?? x429 / m??wi?? x167 / robi?? x158 / wiedzie?? x143 / 	2022-07-04 19:37:47.581607+00	2022-07-04 17:08:08.063169+00
254	wac_toja	Wac Toja	2829	2829	2829	2829	103	109	109	109	mie?? x292 / chcie?? x177 / robi?? x83 / czu?? x80 / tylko x76 / 	mie?? x292 / chcie?? x177 / robi?? x83 / czu?? x80 / tylko x76 / 	mie?? x292 / chcie?? x177 / robi?? x83 / czu?? x80 / tylko x76 / 	mie?? x292 / chcie?? x177 / robi?? x83 / czu?? x80 / tylko x76 / 	2022-07-04 19:37:47.614326+00	2022-07-04 17:08:08.013426+00
243	ten_typ_mes	Ten Typ Mes	3931	6871	9578	10546	14	1	1	6	mie?? x245 / wiedzie?? x150 / kt??ry x121 / chcie?? x94 / m??wi?? x86 / 	mie?? x484 / wiedzie?? x228 / chcie?? x208 / kt??ry x194 / tylko x127 / 	mie?? x700 / wiedzie?? x290 / chcie?? x289 / kt??ry x237 / m??wi?? x177 / 	mie?? x770 / chcie?? x342 / wiedzie?? x339 / kt??ry x267 / tylko x207 / 	2022-07-04 19:37:47.236329+00	2022-07-04 17:08:07.981035+00
275	zabson	??abson	3470	5450	5450	5450	43	22	34	34	mie?? x283 / chcie?? x209 / tylko x114 / wiedzie?? x84 / thing x72 / 	mie?? x565 / chcie?? x360 / tylko x187 / robi?? x144 / wiedzie?? x125 / 	mie?? x565 / chcie?? x360 / tylko x187 / robi?? x144 / wiedzie?? x125 / 	mie?? x565 / chcie?? x360 / tylko x187 / robi?? x144 / wiedzie?? x125 / 	2022-07-04 19:37:47.339042+00	2022-07-04 17:08:08.074811+00
204	reto	ReTo	3158	5127	5127	5127	77	32	39	39	mie?? x347 / chcie?? x215 / m??wi?? x125 / wiedzie?? x102 / hajs x97 / 	mie?? x649 / chcie?? x416 / m??wi?? x213 / wiedzie?? x194 / kurwa x148 / 	mie?? x649 / chcie?? x416 / m??wi?? x213 / wiedzie?? x194 / kurwa x148 / 	mie?? x649 / chcie?? x416 / m??wi?? x213 / wiedzie?? x194 / kurwa x148 / 	2022-07-04 19:37:47.357203+00	2022-07-04 17:08:07.868431+00
91	k2	K2	3849	4973	4973	4973	17	38	44	44	mie?? x270 / wiedzie?? x152 / ??wiat x109 / chcie?? x106 / cz??owiek x92 / 	mie?? x394 / wiedzie?? x188 / ??wiat x155 / chcie?? x150 / cz??owiek x137 / 	mie?? x394 / wiedzie?? x188 / ??wiat x155 / chcie?? x150 / cz??owiek x137 / 	mie?? x394 / wiedzie?? x188 / ??wiat x155 / chcie?? x150 / cz??owiek x137 / 	2022-07-04 19:37:47.376223+00	2022-07-04 17:08:07.530456+00
28	bosski_roman	Bosski Roman	3500	4502	4502	4502	42	51	52	52	mie?? x195 / ??ycie x114 / siebie x114 / cz??owiek x99 / tw??j x90 / 	mie?? x297 / ??ycie x152 / siebie x133 / cz??owiek x122 / sw??j x121 / 	mie?? x297 / ??ycie x152 / siebie x133 / cz??owiek x122 / sw??j x121 / 	mie?? x297 / ??ycie x152 / siebie x133 / cz??owiek x122 / sw??j x121 / 	2022-07-04 19:37:47.404821+00	2022-07-04 17:08:07.331453+00
10	aro	Aro	3931	3931	3931	3931	15	67	67	67	mie?? x191 / chcie?? x84 / kt??ry x76 / ??ycie x68 / wiedzie?? x67 / 	mie?? x191 / chcie?? x84 / kt??ry x76 / ??ycie x68 / wiedzie?? x67 / 	mie?? x191 / chcie?? x84 / kt??ry x76 / ??ycie x68 / wiedzie?? x67 / 	mie?? x191 / chcie?? x84 / kt??ry x76 / ??ycie x68 / wiedzie?? x67 / 	2022-07-04 19:37:47.460435+00	2022-07-04 17:08:07.269314+00
4	dj_600v	DJ 600V	3287	3287	3287	3287	60	91	92	92	mie?? x198 / chcie?? x113 / wiedzie?? x87 / pami??ta?? x75 / koniec x67 / 	mie?? x198 / chcie?? x113 / wiedzie?? x87 / pami??ta?? x75 / koniec x67 / 	mie?? x198 / chcie?? x113 / wiedzie?? x87 / pami??ta?? x75 / koniec x67 / 	mie?? x198 / chcie?? x113 / wiedzie?? x87 / pami??ta?? x75 / koniec x67 / 	2022-07-04 19:37:47.552173+00	2022-07-04 17:08:07.247509+00
130	malik_montana	Malik Montana	2510	2510	2510	2510	113	116	116	116	mie?? x263 / malik x111 / chcie?? x110 / montan x88 / robi?? x62 / 	mie?? x263 / malik x111 / chcie?? x110 / montan x88 / robi?? x62 / 	mie?? x263 / malik x111 / chcie?? x110 / montan x88 / robi?? x62 / 	mie?? x263 / malik x111 / chcie?? x110 / montan x88 / robi?? x62 / 	2022-07-04 19:37:47.640101+00	2022-07-04 17:08:07.650228+00
267	young_multi	Young Multi	2442	2442	2442	2442	115	117	117	117	chcie?? x235 / mie?? x235 / wiedzie?? x191 / yeah x176 / robi?? x137 / 	chcie?? x235 / mie?? x235 / wiedzie?? x191 / yeah x176 / robi?? x137 / 	chcie?? x235 / mie?? x235 / wiedzie?? x191 / yeah x176 / robi?? x137 / 	chcie?? x235 / mie?? x235 / wiedzie?? x191 / yeah x176 / robi?? x137 / 	2022-07-04 19:37:47.643562+00	2022-07-04 17:08:08.051147+00
132	malolat	Ma??olat	2030	2030	2030	2030	131	132	132	132	mie?? x234 / chcie?? x158 / zanim x66 / wiedzie?? x65 / ??ycie x51 / 	mie?? x234 / chcie?? x158 / zanim x66 / wiedzie?? x65 / ??ycie x51 / 	mie?? x234 / chcie?? x158 / zanim x66 / wiedzie?? x65 / ??ycie x51 / 	mie?? x234 / chcie?? x158 / zanim x66 / wiedzie?? x65 / ??ycie x51 / 	2022-07-04 19:37:47.698904+00	2022-07-04 17:08:07.655819+00
74	gverilla	Gverilla	625	625	625	625	186	186	186	186	chcie?? x47 / wiedzie?? x30 / przyzna?? x20 / przez x16 / wszystko x16 / 	chcie?? x47 / wiedzie?? x30 / przyzna?? x20 / przez x16 / wszystko x16 / 	chcie?? x47 / wiedzie?? x30 / przyzna?? x20 / przez x16 / wszystko x16 / 	chcie?? x47 / wiedzie?? x30 / przyzna?? x20 / przez x16 / wszystko x16 / 	2022-07-04 19:37:47.898089+00	2022-07-04 17:08:07.476088+00
99	kali	Kali	3545	6267	7691	7691	35	7	8	12	mie?? x252 / chcie?? x150 / gdzie x89 / ??ycie x83 / kala x70 / 	mie?? x401 / chcie?? x266 / gdzie x152 / ??ycie x136 / wiedzie?? x128 / 	mie?? x523 / chcie?? x362 / gdzie x190 / ??ycie x183 / wiedzie?? x178 / 	mie?? x523 / chcie?? x362 / gdzie x190 / ??ycie x183 / wiedzie?? x178 / 	2022-07-04 19:37:47.25819+00	2022-07-04 17:08:07.55676+00
102	kartky	Kartky	3136	4853	6314	7435	80	43	24	15	mie?? x268 / kt??ry x142 / wiedzie?? x140 / chcie?? x119 / tylko x79 / 	mie?? x490 / chcie?? x306 / wiedzie?? x245 / kt??ry x236 / kiedy x188 / 	mie?? x726 / chcie?? x477 / wiedzie?? x351 / kt??ry x320 / kiedy x294 / 	mie?? x907 / chcie?? x637 / wiedzie?? x476 / kiedy x383 / kt??ry x377 / 	2022-07-04 19:37:47.268833+00	2022-07-04 17:08:07.566498+00
106	keke	K??K??	3804	5529	6625	6625	21	20	18	21	mie?? x214 / tylko x91 / robi?? x89 / wiedzie?? x89 / chcie?? x80 / 	mie?? x529 / chcie?? x236 / wiedzie?? x218 / tylko x181 / robi?? x169 / 	mie?? x775 / chcie?? x338 / wiedzie?? x322 / ??ycie x226 / tylko x222 / 	mie?? x775 / chcie?? x338 / wiedzie?? x322 / ??ycie x226 / tylko x222 / 	2022-07-04 19:37:47.290952+00	2022-07-04 17:08:07.578499+00
177	pezet	Pezet	3278	4963	5969	5969	62	40	29	30	mie?? x257 / wiedzie?? x183 / chcie?? x158 / tw??j x89 / rapa x86 / 	mie?? x531 / wiedzie?? x413 / chcie?? x359 / czas x173 / m??wi?? x167 / 	mie?? x742 / wiedzie?? x473 / chcie?? x458 / czas x247 / m??wi?? x223 / 	mie?? x742 / wiedzie?? x473 / chcie?? x458 / czas x247 / m??wi?? x223 / 	2022-07-04 19:37:47.324217+00	2022-07-04 17:08:07.789319+00
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

