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
ALTER ROLE postgres WITH SUPERUSER INHERIT CREATEROLE CREATEDB LOGIN REPLICATION BYPASSRLS PASSWORD 'SCRAM-SHA-256$4096:czIxdpoyWwkEVVj2TE+aAA==$rCh1U0o/caQSh+qc/hrMYejFCt+90/nzR8UqPL5y9GE=:pGX9l1PXaL+JF1F2ynCk02x25kgXVIFq76CnuQLn7b4=';






--
-- Databases
--

--
-- Database "template1" dump
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 14.2
-- Dumped by pg_dump version 14.2

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

CREATE DATABASE template1 WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.utf8';


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

-- Dumped from database version 14.2
-- Dumped by pg_dump version 14.2

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

CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.utf8';


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

-- Dumped from database version 14.2
-- Dumped by pg_dump version 14.2

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

CREATE DATABASE rappers WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.utf8';


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
-- Name: musicians; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.musicians (
    id integer NOT NULL,
    name character varying(32),
    "artistName" character varying(32),
    "numberOfWords10000" integer,
    "numberOfWords20000" integer,
    "numberOfWords30000" integer,
    "numberOfWordsAll" integer,
    ranking10000 integer,
    ranking20000 integer,
    ranking30000 integer,
    "rankingAll" integer,
    "mostCommon10000" character varying(256),
    "mostCommon20000" character varying(256),
    "mostCommon30000" character varying(256),
    "mostCommonAll" character varying(256),
    "updatedAt" timestamp with time zone,
    "createdAt" timestamp with time zone DEFAULT now()
);


ALTER TABLE public.musicians OWNER TO postgres;

--
-- Name: musicians_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.musicians_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.musicians_id_seq OWNER TO postgres;

--
-- Name: musicians_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.musicians_id_seq OWNED BY public.musicians.id;


--
-- Name: musicians id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.musicians ALTER COLUMN id SET DEFAULT nextval('public.musicians_id_seq'::regclass);


--
-- Data for Name: alembic_version; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.alembic_version (version_num) FROM stdin;
95fdbe5d74df
\.


--
-- Data for Name: musicians; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.musicians (id, name, "artistName", "numberOfWords10000", "numberOfWords20000", "numberOfWords30000", "numberOfWordsAll", ranking10000, ranking20000, ranking30000, "rankingAll", "mostCommon10000", "mostCommon20000", "mostCommon30000", "mostCommonAll", "updatedAt", "createdAt") FROM stdin;
70	green	Green	1898	1898	1898	1898	137	137	137	137	mie─ç x105 / kt├│ry x62 / chcie─ç x48 / wiedzie─ç x42 / gdzie x40 / 	mie─ç x105 / kt├│ry x62 / chcie─ç x48 / wiedzie─ç x42 / gdzie x40 / 	mie─ç x105 / kt├│ry x62 / chcie─ç x48 / wiedzie─ç x42 / gdzie x40 / 	mie─ç x105 / kt├│ry x62 / chcie─ç x48 / wiedzie─ç x42 / gdzie x40 / 	2022-06-28 20:29:15.902115+00	2022-06-28 15:17:28.666528+00
154	adi_nowak	Adi Nowak	3443	3443	3443	3443	47	85	85	85	mie─ç x186 / chcie─ç x137 / wiedzie─ç x68 / m├│wi─ç x43 / kt├│ry x42 / 	mie─ç x186 / chcie─ç x137 / wiedzie─ç x68 / m├│wi─ç x43 / kt├│ry x42 / 	mie─ç x186 / chcie─ç x137 / wiedzie─ç x68 / m├│wi─ç x43 / kt├│ry x42 / 	mie─ç x186 / chcie─ç x137 / wiedzie─ç x68 / m├│wi─ç x43 / kt├│ry x42 / 	2022-06-28 20:29:15.675053+00	2022-06-28 15:17:28.934519+00
117	kuban	Kuban	3210	3742	3742	3742	67	71	71	71	mie─ç x394 / chcie─ç x114 / siebie x97 / taki x89 / m├│wi─ç x84 / 	mie─ç x478 / chcie─ç x123 / siebie x114 / taki x100 / wiedzie─ç x93 / 	mie─ç x478 / chcie─ç x123 / siebie x114 / taki x100 / wiedzie─ç x93 / 	mie─ç x478 / chcie─ç x123 / siebie x114 / taki x100 / wiedzie─ç x93 / 	2022-06-28 20:29:15.614678+00	2022-06-28 15:17:28.818965+00
32	buka	Buka	4020	6195	6195	6195	12	9	26	27	mie─ç x328 / wiedzie─ç x99 / chcie─ç x77 / ┼Ťwiat x61 / chyba x60 / 	mie─ç x567 / wiedzie─ç x159 / chcie─ç x129 / tylko x98 / robi─ç x90 / 	mie─ç x567 / wiedzie─ç x159 / chcie─ç x129 / tylko x98 / robi─ç x90 / 	mie─ç x567 / wiedzie─ç x159 / chcie─ç x129 / tylko x98 / robi─ç x90 / 	2022-06-28 20:29:15.422215+00	2022-06-28 15:17:28.52926+00
106	keke	K─ÖK─Ö	3804	5529	6625	6625	21	20	18	21	mie─ç x214 / tylko x91 / robi─ç x89 / wiedzie─ç x89 / chcie─ç x80 / 	mie─ç x529 / chcie─ç x236 / wiedzie─ç x218 / tylko x181 / robi─ç x169 / 	mie─ç x775 / chcie─ç x338 / wiedzie─ç x322 / ┼╝ycie x226 / tylko x222 / 	mie─ç x775 / chcie─ç x338 / wiedzie─ç x322 / ┼╝ycie x226 / tylko x222 / 	2022-06-28 20:29:15.397213+00	2022-06-28 15:17:28.784849+00
118	l_pro	L-Pro	0	0	0	0	276	277	274	261					2022-06-28 20:29:16.42015+00	2022-06-28 15:17:28.822191+00
81	iceman	Iceman	0	0	0	0	275	276	273	260					2022-06-28 20:29:16.414847+00	2022-06-28 15:17:28.70763+00
153	norbi	Norbi	852	852	852	852	178	178	178	178	mie─ç x90 / wszystko x28 / pami─Öta─ç x27 / jedyny x26 / kobieta x22 / 	mie─ç x90 / wszystko x28 / pami─Öta─ç x27 / jedyny x26 / kobieta x22 / 	mie─ç x90 / wszystko x28 / pami─Öta─ç x27 / jedyny x26 / kobieta x22 / 	mie─ç x90 / wszystko x28 / pami─Öta─ç x27 / jedyny x26 / kobieta x22 / 	2022-06-28 20:29:16.074061+00	2022-06-28 15:17:28.93115+00
61	flint	Flint	2263	2263	2263	2263	122	123	123	123	mie─ç x135 / chcie─ç x61 / tylko x38 / kt├│ry x36 / czas x35 / 	mie─ç x135 / chcie─ç x61 / tylko x38 / kt├│ry x36 / czas x35 / 	mie─ç x135 / chcie─ç x61 / tylko x38 / kt├│ry x36 / czas x35 / 	mie─ç x135 / chcie─ç x61 / tylko x38 / kt├│ry x36 / czas x35 / 	2022-06-28 20:29:15.842986+00	2022-06-28 15:17:28.635119+00
116	ksiaze_kapota	Ksi─ů┼╝─Ö Kapota	0	0	0	0	214	252	272	259					2022-06-28 20:29:16.410247+00	2022-06-28 15:17:28.816206+00
17	bezczel	Bezczel	0	0	0	0	270	275	257	248					2022-06-28 20:29:16.356558+00	2022-06-28 15:17:28.479283+00
35	chiwas	Chiwas	0	0	0	0	267	270	254	247					2022-06-28 20:29:16.350782+00	2022-06-28 15:17:28.539755+00
8	ak_47	AK-47	3048	4035	4035	4035	90	64	64	64	mie─ç x180 / kt├│ry x138 / lecz x109 / siebie x98 / chcie─ç x81 / 	mie─ç x220 / kt├│ry x194 / lecz x146 / siebie x117 / chcie─ç x112 / 	mie─ç x220 / kt├│ry x194 / lecz x146 / siebie x117 / chcie─ç x112 / 	mie─ç x220 / kt├│ry x194 / lecz x146 / siebie x117 / chcie─ç x112 / 	2022-06-28 20:29:15.585066+00	2022-06-28 15:17:28.450593+00
37	cne	CNE	0	0	0	0	266	269	253	246					2022-06-28 20:29:16.346016+00	2022-06-28 15:17:28.547383+00
38	aleksander_czyz	Aleksander Czy┼╝	0	0	0	0	265	267	252	245					2022-06-28 20:29:16.341578+00	2022-06-28 15:17:28.551309+00
42	dizkret	Dizkret	0	0	0	0	264	266	245	244					2022-06-28 20:29:16.336743+00	2022-06-28 15:17:28.565836+00
49	duze_pe	Du┼╝e Pe	0	0	0	0	263	265	244	241					2022-06-28 20:29:16.323271+00	2022-06-28 15:17:28.591279+00
54	emazet	Emazet	0	0	0	0	262	264	243	240					2022-06-28 20:29:16.319131+00	2022-06-28 15:17:28.609892+00
55	ignacy_erenski	Ignacy Ere┼äski	0	0	0	0	261	263	242	239					2022-06-28 20:29:16.314714+00	2022-06-28 15:17:28.613869+00
66	gal	Gal	0	0	0	0	259	262	239	238					2022-06-28 20:29:16.310272+00	2022-06-28 15:17:28.651924+00
7	afrojax	Afrojax	0	0	0	0	258	261	238	235					2022-06-28 20:29:16.294853+00	2022-06-28 15:17:28.447697+00
69	gorzki	Gorzki	0	0	0	0	257	260	237	234					2022-06-28 20:29:16.290588+00	2022-06-28 15:17:28.663043+00
85	jedker	J─Ödker	0	0	0	0	256	259	236	233					2022-06-28 20:29:16.286569+00	2022-06-28 15:17:28.719865+00
86	joka	Joka	0	0	0	0	255	258	234	232					2022-06-28 20:29:16.28222+00	2022-06-28 15:17:28.72253+00
103	karwel	Karwel	0	0	0	0	254	256	233	230					2022-06-28 20:29:16.273776+00	2022-06-28 15:17:28.7759+00
112	koras	Koras	0	0	0	0	253	255	226	229					2022-06-28 20:29:16.269412+00	2022-06-28 15:17:28.803906+00
52	ekonom	Ekonom	0	0	0	0	250	254	225	228					2022-06-28 20:29:16.26535+00	2022-06-28 15:17:28.602636+00
113	wojciech_kosun	Wojciech Kosu┼ä	0	0	0	0	252	253	224	223					2022-06-28 20:29:16.244591+00	2022-06-28 15:17:28.806737+00
30	dj_brk	DJ BRK	0	0	0	0	268	214	223	222					2022-06-28 20:29:16.240729+00	2022-06-28 15:17:28.521089+00
94	kaczmi	Kaczmi	3118	3118	3118	3118	83	98	98	98	kupa x134 / mie─ç x111 / zrobi─ç x91 / sw├│j x73 / siebie x58 / 	kupa x134 / mie─ç x111 / zrobi─ç x91 / sw├│j x73 / siebie x58 / 	kupa x134 / mie─ç x111 / zrobi─ç x91 / sw├│j x73 / siebie x58 / 	kupa x134 / mie─ç x111 / zrobi─ç x91 / sw├│j x73 / siebie x58 / 	2022-06-28 20:29:15.729956+00	2022-06-28 15:17:28.748171+00
19	bilon	Bilon	230	230	230	230	208	208	208	208	polski x7 / wolno┼Ť─ç x7 / mie─ç x7 / refy x5 / gdzie x5 / 	polski x7 / wolno┼Ť─ç x7 / mie─ç x7 / refy x5 / gdzie x5 / 	polski x7 / wolno┼Ť─ç x7 / mie─ç x7 / refy x5 / gdzie x5 / 	polski x7 / wolno┼Ť─ç x7 / mie─ç x7 / refy x5 / gdzie x5 / 	2022-06-28 20:29:16.188221+00	2022-06-28 15:17:28.485606+00
56	ero	Ero	802	802	802	802	180	180	180	180	mie─ç x88 / tylko x32 / dobry x21 / pu┼Ť─ç x14 / wzi─ů─ç x14 / 	mie─ç x88 / tylko x32 / dobry x21 / pu┼Ť─ç x14 / wzi─ů─ç x14 / 	mie─ç x88 / tylko x32 / dobry x21 / pu┼Ť─ç x14 / wzi─ů─ç x14 / 	mie─ç x88 / tylko x32 / dobry x21 / pu┼Ť─ç x14 / wzi─ů─ç x14 / 	2022-06-28 20:29:16.081683+00	2022-06-28 15:17:28.617313+00
44	dohtor_miod	Dohtor Mi├│d	445	445	445	445	196	196	196	196	jadym x49 / kurwa x46 / upierdliwa x27 / sonsiod x21 / musa x14 / 	jadym x49 / kurwa x46 / upierdliwa x27 / sonsiod x21 / musa x14 / 	jadym x49 / kurwa x46 / upierdliwa x27 / sonsiod x21 / musa x14 / 	jadym x49 / kurwa x46 / upierdliwa x27 / sonsiod x21 / musa x14 / 	2022-06-28 20:29:16.143086+00	2022-06-28 15:17:28.572994+00
84	jarecki	Jarecki	1308	1308	1308	1308	160	160	160	160	mie─ç x133 / tylko x63 / chcie─ç x60 / wi─Öc x50 / dzi┼Ť x44 / 	mie─ç x133 / tylko x63 / chcie─ç x60 / wi─Öc x50 / dzi┼Ť x44 / 	mie─ç x133 / tylko x63 / chcie─ç x60 / wi─Öc x50 / dzi┼Ť x44 / 	mie─ç x133 / tylko x63 / chcie─ç x60 / wi─Öc x50 / dzi┼Ť x44 / 	2022-06-28 20:29:15.998953+00	2022-06-28 15:17:28.717019+00
170	owal	Owal	1514	1514	1514	1514	154	154	154	154	mie─ç x63 / wiedzie─ç x60 / chcie─ç x40 / rapa x34 / je┼Ťli x30 / 	mie─ç x63 / wiedzie─ç x60 / chcie─ç x40 / rapa x34 / je┼Ťli x30 / 	mie─ç x63 / wiedzie─ç x60 / chcie─ç x40 / rapa x34 / je┼Ťli x30 / 	mie─ç x63 / wiedzie─ç x60 / chcie─ç x40 / rapa x34 / je┼Ťli x30 / 	2022-06-28 20:29:15.974279+00	2022-06-28 15:17:28.990839+00
230	szad	Szad	2722	2722	2722	2722	107	112	112	112	mie─ç x137 / czas x56 / wiedzie─ç x42 / chcie─ç x34 / dzi┼Ť x32 / 	mie─ç x137 / czas x56 / wiedzie─ç x42 / chcie─ç x34 / dzi┼Ť x32 / 	mie─ç x137 / czas x56 / wiedzie─ç x42 / chcie─ç x34 / dzi┼Ť x32 / 	mie─ç x137 / czas x56 / wiedzie─ç x42 / chcie─ç x34 / dzi┼Ť x32 / 	2022-06-28 20:29:15.791224+00	2022-06-28 15:17:29.216842+00
213	shellerini	Shellerini	3537	3537	3537	3537	36	82	82	82	mie─ç x204 / kt├│ry x79 / rapa x76 / sw├│j x72 / robi─ç x64 / 	mie─ç x204 / kt├│ry x79 / rapa x76 / sw├│j x72 / robi─ç x64 / 	mie─ç x204 / kt├│ry x79 / rapa x76 / sw├│j x72 / robi─ç x64 / 	mie─ç x204 / kt├│ry x79 / rapa x76 / sw├│j x72 / robi─ç x64 / 	2022-06-28 20:29:15.661292+00	2022-06-28 15:17:29.158985+00
208	rufuz	Rufuz	0	0	0	0	229	231	248	218					2022-06-28 20:29:16.225779+00	2022-06-28 15:17:29.14173+00
152	niziol	Nizio┼é	0	0	0	0	245	247	216	217					2022-06-28 20:29:16.222191+00	2022-06-28 15:17:28.928182+00
146	mlody_m	M┼éody M	3279	3610	3610	3610	61	78	78	78	mie─ç x291 / wiedzie─ç x174 / czas x128 / ┼╝ycie x117 / chcie─ç x114 / 	mie─ç x329 / wiedzie─ç x188 / czas x137 / chcie─ç x130 / ┼╝ycie x126 / 	mie─ç x329 / wiedzie─ç x188 / czas x137 / chcie─ç x130 / ┼╝ycie x126 / 	mie─ç x329 / wiedzie─ç x188 / czas x137 / chcie─ç x130 / ┼╝ycie x126 / 	2022-06-28 20:29:15.643972+00	2022-06-28 15:17:28.90949+00
126	legu	┼ü─Ögu	0	0	0	0	249	251	215	216					2022-06-28 20:29:16.218514+00	2022-06-28 15:17:28.84714+00
156	kamil_nozynski	Kamil No┼╝y┼äski	0	0	0	0	248	250	214	215					2022-06-28 20:29:16.214699+00	2022-06-28 15:17:28.940721+00
237	sliwka_tuitam	┼Üliwka Tuitam	303	303	303	303	204	204	204	204	mie─ç x14 / koniec x7 / cisza x7 / kt├│ry x6 / wci─ů┼╝ x6 / 	mie─ç x14 / koniec x7 / cisza x7 / kt├│ry x6 / wci─ů┼╝ x6 / 	mie─ç x14 / koniec x7 / cisza x7 / kt├│ry x6 / wci─ů┼╝ x6 / 	mie─ç x14 / koniec x7 / cisza x7 / kt├│ry x6 / wci─ů┼╝ x6 / 	2022-06-28 20:29:16.17329+00	2022-06-28 15:17:29.240931+00
194	qry	Qry	891	891	891	891	177	177	177	177	mie─ç x88 / ca┼éy x74 / czas x62 / chcie─ç x44 / kiedy┼Ť x30 / 	mie─ç x88 / ca┼éy x74 / czas x62 / chcie─ç x44 / kiedy┼Ť x30 / 	mie─ç x88 / ca┼éy x74 / czas x62 / chcie─ç x44 / kiedy┼Ť x30 / 	mie─ç x88 / ca┼éy x74 / czas x62 / chcie─ç x44 / kiedy┼Ť x30 / 	2022-06-28 20:29:16.070075+00	2022-06-28 15:17:29.08651+00
207	rufin_mc	Rufin MC	0	0	0	0	230	232	247	276					2022-06-28 20:29:16.493273+00	2022-06-28 15:17:29.13783+00
209	ryba	Ryba	0	0	0	0	243	245	218	275					2022-06-28 20:29:16.488477+00	2022-06-28 15:17:29.144934+00
218	tymon_smektala	Tymon Smekta┼éa	0	0	0	0	232	234	241	272					2022-06-28 20:29:16.473638+00	2022-06-28 15:17:29.176359+00
141	mikser	Mikser	0	0	0	0	221	223	220	271					2022-06-28 20:29:16.468873+00	2022-06-28 15:17:28.893859+00
190	pork	Pork	0	0	0	0	241	243	221	270					2022-06-28 20:29:16.463825+00	2022-06-28 15:17:29.070302+00
151	iwo_naumowicz	Iwo Naumowicz	0	0	0	0	240	242	222	269					2022-06-28 20:29:16.459683+00	2022-06-28 15:17:28.924729+00
125	lyonner	Lyonner	0	0	0	0	239	241	228	268					2022-06-28 20:29:16.454945+00	2022-06-28 15:17:28.844422+00
167	ostry	Ostry	0	0	0	0	238	240	229	267					2022-06-28 20:29:16.449765+00	2022-06-28 15:17:28.979816+00
157	nullo	Nullo	529	529	529	529	191	191	191	191	kt├│ry x14 / gdzie x13 / mie─ç x13 / ┼Ťwiat x12 / sw├│j x10 / 	kt├│ry x14 / gdzie x13 / mie─ç x13 / ┼Ťwiat x12 / sw├│j x10 / 	kt├│ry x14 / gdzie x13 / mie─ç x13 / ┼Ťwiat x12 / sw├│j x10 / 	kt├│ry x14 / gdzie x13 / mie─ç x13 / ┼Ťwiat x12 / sw├│j x10 / 	2022-06-28 20:29:16.124101+00	2022-06-28 15:17:28.943529+00
137	matheo	Matheo	646	646	646	646	185	185	185	185	mie─ç x48 / ca┼éy x32 / ci─ůgle x31 / chcie─ç x27 / esta x19 / 	mie─ç x48 / ca┼éy x32 / ci─ůgle x31 / chcie─ç x27 / esta x19 / 	mie─ç x48 / ca┼éy x32 / ci─ůgle x31 / chcie─ç x27 / esta x19 / 	mie─ç x48 / ca┼éy x32 / ci─ůgle x31 / chcie─ç x27 / esta x19 / 	2022-06-28 20:29:16.100944+00	2022-06-28 15:17:28.881409+00
203	rest	Rest	375	375	375	375	200	199	199	200	nivot x20 / boombap x15 / kterej x13 / miluja x12 / st├íle x10 / 	nivot x20 / boombap x15 / kterej x13 / miluja x12 / st├íle x10 / 	nivot x20 / boombap x15 / kterej x13 / miluja x12 / st├íle x10 / 	nivot x20 / boombap x15 / kterej x13 / miluja x12 / st├íle x10 / 	2022-06-28 20:29:16.15825+00	2022-06-28 15:17:29.123244+00
217	slon	S┼éo┼ä	0	0	0	0	234	236	235	264					2022-06-28 20:29:16.434702+00	2022-06-28 15:17:29.17275+00
240	te_tris	Te-Tris	0	0	0	0	236	238	231	263					2022-06-28 20:29:16.429494+00	2022-06-28 15:17:29.250103+00
227	stasio	Stasio	0	0	0	0	233	235	240	265					2022-06-28 20:29:16.440152+00	2022-06-28 15:17:29.206069+00
244	tigermaan	Tigermaan	0	0	0	0	237	239	230	266					2022-06-28 20:29:16.444752+00	2022-06-28 15:17:29.262937+00
198	radonis	Radonis	0	0	0	0	231	233	246	273					2022-06-28 20:29:16.478221+00	2022-06-28 15:17:29.102825+00
149	mrokas	Mrokas	0	0	0	0	242	244	219	274					2022-06-28 20:29:16.4834+00	2022-06-28 15:17:28.91906+00
165	onil	Onil	0	0	0	0	244	246	217	277					2022-06-28 20:29:16.498323+00	2022-06-28 15:17:28.972561+00
171	daniel_oware	Daniel Oware	0	0	0	0	228	230	249	219					2022-06-28 20:29:16.229493+00	2022-06-28 15:17:28.994484+00
181	kordian_piwowarski	Kordian Piwowarski	0	0	0	0	227	229	250	220					2022-06-28 20:29:16.233278+00	2022-06-28 15:17:29.0333+00
185	platoon	Platoon	0	0	0	0	226	228	255	221					2022-06-28 20:29:16.237116+00	2022-06-28 15:17:29.049919+00
199	radoskor	Radosk├│r	0	0	0	0	225	227	256	225					2022-06-28 20:29:16.252624+00	2022-06-28 15:17:29.107013+00
187	pomidor	Pomidor	0	0	0	0	224	226	258	226					2022-06-28 20:29:16.256901+00	2022-06-28 15:17:29.058177+00
132	malolat	Ma┼éolat	2030	2030	2030	2030	131	132	132	132	mie─ç x234 / chcie─ç x158 / zanim x66 / wiedzie─ç x65 / ┼╝ycie x51 / 	mie─ç x234 / chcie─ç x158 / zanim x66 / wiedzie─ç x65 / ┼╝ycie x51 / 	mie─ç x234 / chcie─ç x158 / zanim x66 / wiedzie─ç x65 / ┼╝ycie x51 / 	mie─ç x234 / chcie─ç x158 / zanim x66 / wiedzie─ç x65 / ┼╝ycie x51 / 	2022-06-28 20:29:15.880661+00	2022-06-28 15:17:28.865909+00
140	michal_zytniak	Micha┼é ┼╗ytniak	0	0	0	0	223	225	259	227					2022-06-28 20:29:16.26099+00	2022-06-28 15:17:28.890834+00
166	oreu	OREU	0	0	0	0	222	224	261	231					2022-06-28 20:29:16.278125+00	2022-06-28 15:17:28.97643+00
176	pelson	Pelson	2335	2335	2335	2335	120	121	121	121	mie─ç x139 / wiedzie─ç x82 / dzi┼Ť x74 / chcie─ç x72 / czas x63 / 	mie─ç x139 / wiedzie─ç x82 / dzi┼Ť x74 / chcie─ç x72 / czas x63 / 	mie─ç x139 / wiedzie─ç x82 / dzi┼Ť x74 / chcie─ç x72 / czas x63 / 	mie─ç x139 / wiedzie─ç x82 / dzi┼Ť x74 / chcie─ç x72 / czas x63 / 	2022-06-28 20:29:15.834654+00	2022-06-28 15:17:29.013935+00
228	kazik_staszewski	Kazik Staszewski	0	0	0	0	246	248	275	236					2022-06-28 20:29:16.299069+00	2022-06-28 15:17:29.209282+00
235	szyha	Szyha	0	0	0	0	235	237	232	243					2022-06-28 20:29:16.331831+00	2022-06-28 15:17:29.23402+00
162	olsen	Olsen	0	0	0	0	247	249	277	214					2022-06-28 20:29:16.211168+00	2022-06-28 15:17:28.962117+00
268	z_b_u_k_u	Z.B.U.K.U	2969	4972	5286	5286	95	39	36	36	mie─ç x297 / ┼╝ycie x160 / wiedzie─ç x100 / tylko x85 / chcie─ç x85 / 	mie─ç x564 / chcie─ç x269 / ┼╝ycie x262 / wiedzie─ç x196 / tylko x182 / 	mie─ç x611 / chcie─ç x306 / ┼╝ycie x269 / tylko x212 / wiedzie─ç x207 / 	mie─ç x611 / chcie─ç x306 / ┼╝ycie x269 / tylko x212 / wiedzie─ç x207 / 	2022-06-28 20:29:15.460641+00	2022-06-28 15:17:29.337114+00
276	zolf	┼╗├│┼éf	0	0	0	0	218	219	265	249					2022-06-28 20:29:16.361685+00	2022-06-28 15:17:29.361306+00
9	alberto	Alberto	897	897	897	897	176	176	176	176	mie─ç x75 / peng x32 / albo x27 / koka x24 / przew├│z x24 / 	mie─ç x75 / peng x32 / albo x27 / koka x24 / przew├│z x24 / 	mie─ç x75 / peng x32 / albo x27 / koka x24 / przew├│z x24 / 	mie─ç x75 / peng x32 / albo x27 / koka x24 / przew├│z x24 / 	2022-06-28 20:29:16.066106+00	2022-06-28 15:17:28.454052+00
277	zurom	┼╗urom	0	0	0	0	277	218	269	250					2022-06-28 20:29:16.366125+00	2022-06-28 15:17:29.36493+00
250	vienio	Vienio	2821	2821	2821	2821	104	110	110	110	mie─ç x153 / wiedzie─ç x94 / cz┼éowiek x77 / siebie x48 / sw├│j x45 / 	mie─ç x153 / wiedzie─ç x94 / cz┼éowiek x77 / siebie x48 / sw├│j x45 / 	mie─ç x153 / wiedzie─ç x94 / cz┼éowiek x77 / siebie x48 / sw├│j x45 / 	mie─ç x153 / wiedzie─ç x94 / cz┼éowiek x77 / siebie x48 / sw├│j x45 / 	2022-06-28 20:29:15.782783+00	2022-06-28 15:17:29.281838+00
6	abradab	Abradab	3758	5109	5109	5109	24	33	40	40	mie─ç x244 / sw├│j x93 / wiedzie─ç x83 / chcie─ç x81 / rapa x75 / 	mie─ç x365 / chcie─ç x174 / sw├│j x132 / wiedzie─ç x121 / kiedy x117 / 	mie─ç x365 / chcie─ç x174 / sw├│j x132 / wiedzie─ç x121 / kiedy x117 / 	mie─ç x365 / chcie─ç x174 / sw├│j x132 / wiedzie─ç x121 / kiedy x117 / 	2022-06-28 20:29:15.47782+00	2022-06-28 15:17:28.443948+00
11	ash	Ash	1898	3119	3402	3402	136	97	87	87	inny x371 / your x251 / alla x163 / yeah x145 / know x121 / 	inny x671 / your x518 / alla x309 / yeah x280 / know x210 / 	inny x712 / your x546 / alla x324 / yeah x282 / know x221 / 	inny x712 / your x546 / alla x324 / yeah x282 / know x221 / 	2022-06-28 20:29:15.683424+00	2022-06-28 15:17:28.460084+00
262	wlodi	W┼éodi	3116	3116	3116	3116	84	99	99	99	mie─ç x188 / chcie─ç x90 / wiedzie─ç x77 / kt├│ry x62 / w┼é├│d x55 / 	mie─ç x188 / chcie─ç x90 / wiedzie─ç x77 / kt├│ry x62 / w┼é├│d x55 / 	mie─ç x188 / chcie─ç x90 / wiedzie─ç x77 / kt├│ry x62 / w┼é├│d x55 / 	mie─ç x188 / chcie─ç x90 / wiedzie─ç x77 / kt├│ry x62 / w┼é├│d x55 / 	2022-06-28 20:29:15.734498+00	2022-06-28 15:17:29.318481+00
257	grzegorz_wasowski	Grzegorz Wasowski	0	0	0	0	216	217	270	251					2022-06-28 20:29:16.371126+00	2022-06-28 15:17:29.303294+00
4	dj_600v	DJ 600V	3287	3287	3287	3287	60	91	92	92	mie─ç x198 / chcie─ç x113 / wiedzie─ç x87 / pami─Öta─ç x75 / koniec x67 / 	mie─ç x198 / chcie─ç x113 / wiedzie─ç x87 / pami─Öta─ç x75 / koniec x67 / 	mie─ç x198 / chcie─ç x113 / wiedzie─ç x87 / pami─Öta─ç x75 / koniec x67 / 	mie─ç x198 / chcie─ç x113 / wiedzie─ç x87 / pami─Öta─ç x75 / koniec x67 / 	2022-06-28 20:29:15.704925+00	2022-06-28 15:17:28.437479+00
273	zocha	Zocha	0	0	0	0	217	216	271	252					2022-06-28 20:29:16.375945+00	2022-06-28 15:17:29.35236+00
245	zygmunt_tomala	Zygmunt Tomala	0	0	0	0	215	215	276	257					2022-06-28 20:29:16.399475+00	2022-06-28 15:17:29.266236+00
256	ward	Ward	0	0	0	0	251	222	262	258					2022-06-28 20:29:16.405291+00	2022-06-28 15:17:29.300333+00
5	abel	Abel	1562	1562	1562	1562	150	150	150	150	mie─ç x91 / wiedzie─ç x49 / rapa x28 / chcie─ç x28 / robi─ç x28 / 	mie─ç x91 / wiedzie─ç x49 / rapa x28 / chcie─ç x28 / robi─ç x28 / 	mie─ç x91 / wiedzie─ç x49 / rapa x28 / chcie─ç x28 / robi─ç x28 / 	mie─ç x91 / wiedzie─ç x49 / rapa x28 / chcie─ç x28 / robi─ç x28 / 	2022-06-28 20:29:15.957487+00	2022-06-28 15:17:28.441211+00
18	bialas	Bia┼éas	3366	5418	5808	5808	52	24	32	33	mie─ç x292 / wiedzie─ç x147 / chcie─ç x99 / tylko x97 / bia┼éas x89 / 	mie─ç x618 / chcie─ç x247 / wiedzie─ç x237 / tylko x173 / bia┼éas x163 / 	mie─ç x709 / chcie─ç x270 / wiedzie─ç x261 / tylko x192 / siebie x190 / 	mie─ç x709 / chcie─ç x270 / wiedzie─ç x261 / tylko x192 / siebie x190 / 	2022-06-28 20:29:15.447563+00	2022-06-28 15:17:28.482894+00
260	wilku	Wilku	0	0	0	0	219	220	264	262					2022-06-28 20:29:16.424985+00	2022-06-28 15:17:29.31219+00
259	wigor	Wigor	0	0	0	0	220	221	263	242					2022-06-28 20:29:16.327308+00	2022-06-28 15:17:29.309371+00
22	bob_one	Bob One	2643	2643	2643	2643	109	114	114	114	mie─ç x234 / czas x106 / wiedzie─ç x103 / chcie─ç x99 / sw├│j x83 / 	mie─ç x234 / czas x106 / wiedzie─ç x103 / chcie─ç x99 / sw├│j x83 / 	mie─ç x234 / czas x106 / wiedzie─ç x103 / chcie─ç x99 / sw├│j x83 / 	mie─ç x234 / czas x106 / wiedzie─ç x103 / chcie─ç x99 / sw├│j x83 / 	2022-06-28 20:29:15.799898+00	2022-06-28 15:17:28.495295+00
21	emil_blef	Emil Blef	1757	1757	1757	1757	142	142	142	142	mie─ç x108 / wiedzie─ç x44 / kt├│ry x43 / tylko x35 / m├│wi─ç x34 / 	mie─ç x108 / wiedzie─ç x44 / kt├│ry x43 / tylko x35 / m├│wi─ç x34 / 	mie─ç x108 / wiedzie─ç x44 / kt├│ry x43 / tylko x35 / m├│wi─ç x34 / 	mie─ç x108 / wiedzie─ç x44 / kt├│ry x43 / tylko x35 / m├│wi─ç x34 / 	2022-06-28 20:29:15.924093+00	2022-06-28 15:17:28.491837+00
1	1z2	1z2	1938	1938	1938	1938	133	134	134	134	mie─ç x159 / rapa x129 / ┼╝ycie x103 / chcie─ç x93 / wiedzie─ç x90 / 	mie─ç x159 / rapa x129 / ┼╝ycie x103 / chcie─ç x93 / wiedzie─ç x90 / 	mie─ç x159 / rapa x129 / ┼╝ycie x103 / chcie─ç x93 / wiedzie─ç x90 / 	mie─ç x159 / rapa x129 / ┼╝ycie x103 / chcie─ç x93 / wiedzie─ç x90 / 	2022-06-28 20:29:15.889798+00	2022-06-28 15:17:28.413696+00
10	aro	Aro	3931	3931	3931	3931	14	67	67	67	mie─ç x191 / chcie─ç x84 / kt├│ry x76 / ┼╝ycie x68 / wiedzie─ç x67 / 	mie─ç x191 / chcie─ç x84 / kt├│ry x76 / ┼╝ycie x68 / wiedzie─ç x67 / 	mie─ç x191 / chcie─ç x84 / kt├│ry x76 / ┼╝ycie x68 / wiedzie─ç x67 / 	mie─ç x191 / chcie─ç x84 / kt├│ry x76 / ┼╝ycie x68 / wiedzie─ç x67 / 	2022-06-28 20:29:15.597922+00	2022-06-28 15:17:28.456923+00
20	bisz	Bisz	3464	3464	3464	3464	44	84	84	84	mie─ç x164 / chcie─ç x105 / kt├│ry x95 / wiedzie─ç x95 / czas x85 / 	mie─ç x164 / chcie─ç x105 / kt├│ry x95 / wiedzie─ç x95 / czas x85 / 	mie─ç x164 / chcie─ç x105 / kt├│ry x95 / wiedzie─ç x95 / czas x85 / 	mie─ç x164 / chcie─ç x105 / kt├│ry x95 / wiedzie─ç x95 / czas x85 / 	2022-06-28 20:29:15.670584+00	2022-06-28 15:17:28.489043+00
16	belmondo	Belmondo	993	993	993	993	173	173	173	173	mie─ç x37 / m┼éody x17 / gram x16 / squad x16 / chcie─ç x14 / 	mie─ç x37 / m┼éody x17 / gram x16 / squad x16 / chcie─ç x14 / 	mie─ç x37 / m┼éody x17 / gram x16 / squad x16 / chcie─ç x14 / 	mie─ç x37 / m┼éody x17 / gram x16 / squad x16 / chcie─ç x14 / 	2022-06-28 20:29:16.047392+00	2022-06-28 15:17:28.476429+00
15	bedoes	Bedoes	2854	3434	3434	3434	101	86	86	86	mie─ç x348 / chcie─ç x214 / wiedzie─ç x151 / robi─ç x117 / kurwa x101 / 	mie─ç x410 / chcie─ç x259 / wiedzie─ç x162 / m├│wi─ç x132 / robi─ç x122 / 	mie─ç x410 / chcie─ç x259 / wiedzie─ç x162 / m├│wi─ç x132 / robi─ç x122 / 	mie─ç x410 / chcie─ç x259 / wiedzie─ç x162 / m├│wi─ç x132 / robi─ç x122 / 	2022-06-28 20:29:15.678863+00	2022-06-28 15:17:28.473029+00
2	2sty	2sty	2151	2151	2151	2151	124	125	125	125	mie─ç x176 / wiedzie─ç x70 / chcie─ç x45 / siebie x45 / kt├│ry x39 / 	mie─ç x176 / wiedzie─ç x70 / chcie─ç x45 / siebie x45 / kt├│ry x39 / 	mie─ç x176 / wiedzie─ç x70 / chcie─ç x45 / siebie x45 / kt├│ry x39 / 	mie─ç x176 / wiedzie─ç x70 / chcie─ç x45 / siebie x45 / kt├│ry x39 / 	2022-06-28 20:29:15.851362+00	2022-06-28 15:17:28.430653+00
51	eis	Eis	1801	1801	1801	1801	139	139	139	139	mie─ç x136 / chcie─ç x59 / inny x53 / wiedzie─ç x47 / polski x33 / 	mie─ç x136 / chcie─ç x59 / inny x53 / wiedzie─ç x47 / polski x33 / 	mie─ç x136 / chcie─ç x59 / inny x53 / wiedzie─ç x47 / polski x33 / 	mie─ç x136 / chcie─ç x59 / inny x53 / wiedzie─ç x47 / polski x33 / 	2022-06-28 20:29:15.911126+00	2022-06-28 15:17:28.599061+00
50	egon	Egon	1127	1127	1127	1127	167	167	167	167	mie─ç x49 / ulica x31 / late x24 / chcie─ç x22 / ┼╝ycie x20 / 	mie─ç x49 / ulica x31 / late x24 / chcie─ç x22 / ┼╝ycie x20 / 	mie─ç x49 / ulica x31 / late x24 / chcie─ç x22 / ┼╝ycie x20 / 	mie─ç x49 / ulica x31 / late x24 / chcie─ç x22 / ┼╝ycie x20 / 	2022-06-28 20:29:16.025347+00	2022-06-28 15:17:28.595144+00
36	cira	Cira	4037	4037	4037	4037	11	63	63	63	mie─ç x100 / chcie─ç x69 / kt├│ry x53 / cz┼éowiek x47 / czas x39 / 	mie─ç x100 / chcie─ç x69 / kt├│ry x53 / cz┼éowiek x47 / czas x39 / 	mie─ç x100 / chcie─ç x69 / kt├│ry x53 / cz┼éowiek x47 / czas x39 / 	mie─ç x100 / chcie─ç x69 / kt├│ry x53 / cz┼éowiek x47 / czas x39 / 	2022-06-28 20:29:15.580565+00	2022-06-28 15:17:28.54376+00
41	diox	Diox	2521	2521	2521	2521	112	115	115	115	mie─ç x169 / chcie─ç x107 / wiedzie─ç x82 / czu─ç x52 / gra─ç x46 / 	mie─ç x169 / chcie─ç x107 / wiedzie─ç x82 / czu─ç x52 / gra─ç x46 / 	mie─ç x169 / chcie─ç x107 / wiedzie─ç x82 / czu─ç x52 / gra─ç x46 / 	mie─ç x169 / chcie─ç x107 / wiedzie─ç x82 / czu─ç x52 / gra─ç x46 / 	2022-06-28 20:29:15.807441+00	2022-06-28 15:17:28.56215+00
40	deys	Deys	4175	6541	6541	6541	3	4	20	23	mie─ç x270 / chcie─ç x103 / wiedzie─ç x87 / tylko x85 / siebie x76 / 	mie─ç x498 / chcie─ç x167 / tylko x161 / wiedzie─ç x153 / m├│wi─ç x125 / 	mie─ç x498 / chcie─ç x167 / tylko x161 / wiedzie─ç x153 / m├│wi─ç x125 / 	mie─ç x498 / chcie─ç x167 / tylko x161 / wiedzie─ç x153 / m├│wi─ç x125 / 	2022-06-28 20:29:15.40597+00	2022-06-28 15:17:28.558799+00
48	dudek_p56	Dudek P56	3047	4854	6459	6708	91	42	22	20	mie─ç x176 / cz┼éowiek x128 / chcie─ç x118 / wiedzie─ç x117 / ka┼╝dy x99 / 	mie─ç x346 / cz┼éowiek x309 / wiedzie─ç x258 / chcie─ç x231 / ┼╝ycie x218 / 	mie─ç x719 / cz┼éowiek x446 / wiedzie─ç x362 / ┼╝ycie x339 / chcie─ç x325 / 	mie─ç x755 / cz┼éowiek x461 / wiedzie─ç x367 / ┼╝ycie x350 / chcie─ç x346 / 	2022-06-28 20:29:15.392859+00	2022-06-28 15:17:28.587795+00
33	chada	Chada	3151	5230	6612	6617	78	27	19	22	mie─ç x250 / wiedzie─ç x124 / sw├│j x106 / kt├│ry x100 / chcie─ç x89 / 	mie─ç x514 / wiedzie─ç x221 / chcie─ç x180 / ┼╝ycie x180 / kt├│ry x177 / 	mie─ç x727 / wiedzie─ç x316 / ┼╝ycie x303 / chcie─ç x295 / kt├│ry x231 / 	mie─ç x727 / wiedzie─ç x316 / ┼╝ycie x303 / chcie─ç x295 / kt├│ry x231 / 	2022-06-28 20:29:15.401368+00	2022-06-28 15:17:28.532833+00
53	eldo	Eldo	3503	5623	6995	6995	41	19	16	18	mie─ç x234 / chcie─ç x157 / wiedzie─ç x135 / kt├│ry x95 / ┼╝ycie x93 / 	mie─ç x458 / chcie─ç x295 / wiedzie─ç x242 / kt├│ry x190 / ┼╝ycie x190 / 	mie─ç x606 / chcie─ç x370 / wiedzie─ç x308 / ┼Ťwiat x225 / kt├│ry x219 / 	mie─ç x606 / chcie─ç x370 / wiedzie─ç x308 / ┼Ťwiat x225 / kt├│ry x219 / 	2022-06-28 20:29:15.384155+00	2022-06-28 15:17:28.606467+00
45	donguralesko	Donguralesko	3853	6368	8468	12937	16	5	4	4	mie─ç x262 / wiedzie─ç x88 / gural x79 / m├│wi─ç x73 / robi─ç x70 / 	mie─ç x508 / wiedzie─ç x178 / robi─ç x165 / chcie─ç x145 / gural x144 / 	mie─ç x774 / wiedzie─ç x280 / robi─ç x230 / m├│wi─ç x210 / chcie─ç x199 / 	mie─ç x1355 / wiedzie─ç x423 / chcie─ç x384 / robi─ç x335 / m├│wi─ç x324 / 	2022-06-28 20:29:15.324345+00	2022-06-28 15:17:28.576419+00
26	bolec	Bolec	475	475	475	475	194	194	194	194	czas x20 / buja x19 / czu─ç x17 / mie─ç x16 / nowy x13 / 	czas x20 / buja x19 / czu─ç x17 / mie─ç x16 / nowy x13 / 	czas x20 / buja x19 / czu─ç x17 / mie─ç x16 / nowy x13 / 	czas x20 / buja x19 / czu─ç x17 / mie─ç x16 / nowy x13 / 	2022-06-28 20:29:16.13579+00	2022-06-28 15:17:28.507098+00
46	doniu	Doniu	3001	3001	3001	3001	94	106	106	106	mie─ç x253 / wiedzie─ç x91 / chcie─ç x75 / tylko x67 / dzi┼Ť x54 / 	mie─ç x253 / wiedzie─ç x91 / chcie─ç x75 / tylko x67 / dzi┼Ť x54 / 	mie─ç x253 / wiedzie─ç x91 / chcie─ç x75 / tylko x67 / dzi┼Ť x54 / 	mie─ç x253 / wiedzie─ç x91 / chcie─ç x75 / tylko x67 / dzi┼Ť x54 / 	2022-06-28 20:29:15.765565+00	2022-06-28 15:17:28.580179+00
39	deep	Deep	1070	1070	1070	1070	170	170	170	170	mie─ç x28 / dzie┼ä x14 / cest x13 / chcie─ç x11 / kiedy x11 / 	mie─ç x28 / dzie┼ä x14 / cest x13 / chcie─ç x11 / kiedy x11 / 	mie─ç x28 / dzie┼ä x14 / cest x13 / chcie─ç x11 / kiedy x11 / 	mie─ç x28 / dzie┼ä x14 / cest x13 / chcie─ç x11 / kiedy x11 / 	2022-06-28 20:29:16.036629+00	2022-06-28 15:17:28.554919+00
27	borixon	Borixon	3149	5217	5279	5279	79	28	37	37	mie─ç x348 / rapa x112 / wiedzie─ç x105 / kt├│ry x97 / nasz x83 / 	mie─ç x686 / chcie─ç x227 / wiedzie─ç x195 / siebie x173 / kt├│ry x171 / 	mie─ç x698 / chcie─ç x227 / wiedzie─ç x195 / siebie x177 / kt├│ry x171 / 	mie─ç x698 / chcie─ç x227 / wiedzie─ç x195 / siebie x177 / kt├│ry x171 / 	2022-06-28 20:29:15.464756+00	2022-06-28 15:17:28.510578+00
31	buczer	Buczer	3196	5040	5040	5040	68	35	42	42	mie─ç x289 / chcie─ç x170 / m├│wi─ç x117 / wiedzie─ç x112 / kt├│ry x100 / 	mie─ç x479 / chcie─ç x263 / wiedzie─ç x191 / kt├│ry x176 / m├│wi─ç x153 / 	mie─ç x479 / chcie─ç x263 / wiedzie─ç x191 / kt├│ry x176 / m├│wi─ç x153 / 	mie─ç x479 / chcie─ç x263 / wiedzie─ç x191 / kt├│ry x176 / m├│wi─ç x153 / 	2022-06-28 20:29:15.48635+00	2022-06-28 15:17:28.5251+00
25	bonus_rpk	Bonus RPK	3571	5859	5859	5859	31	16	31	32	mie─ç x177 / ┼╝ycie x144 / wiedzie─ç x84 / rapa x82 / sw├│j x65 / 	mie─ç x339 / ┼╝ycie x256 / wiedzie─ç x137 / cz┼éowiek x131 / chcie─ç x124 / 	mie─ç x339 / ┼╝ycie x256 / wiedzie─ç x137 / cz┼éowiek x131 / chcie─ç x124 / 	mie─ç x339 / ┼╝ycie x256 / wiedzie─ç x137 / cz┼éowiek x131 / chcie─ç x124 / 	2022-06-28 20:29:15.443412+00	2022-06-28 15:17:28.504435+00
43	dka	DKA	2754	4788	6266	6393	105	44	25	25	mie─ç x259 / chcie─ç x157 / wiedzie─ç x136 / ┼╝ycie x130 / cz┼éowiek x125 / 	mie─ç x575 / chcie─ç x397 / wiedzie─ç x270 / cz┼éowiek x232 / ┼Ťwiat x217 / 	mie─ç x935 / chcie─ç x596 / wiedzie─ç x414 / cz┼éowiek x302 / ┼Ťwiat x292 / 	mie─ç x993 / chcie─ç x661 / wiedzie─ç x442 / cz┼éowiek x311 / ┼Ťwiat x308 / 	2022-06-28 20:29:15.413839+00	2022-06-28 15:17:28.569222+00
34	chivas	Chivas	1207	1207	1207	1207	165	165	165	165	mie─ç x95 / chcie─ç x69 / wiedzie─ç x38 / piek┼éo x36 / robi─ç x35 / 	mie─ç x95 / chcie─ç x69 / wiedzie─ç x38 / piek┼éo x36 / robi─ç x35 / 	mie─ç x95 / chcie─ç x69 / wiedzie─ç x38 / piek┼éo x36 / robi─ç x35 / 	mie─ç x95 / chcie─ç x69 / wiedzie─ç x38 / piek┼éo x36 / robi─ç x35 / 	2022-06-28 20:29:16.01782+00	2022-06-28 15:17:28.536299+00
23	bober	Bober	1672	1672	1672	1672	145	145	145	145	mie─ç x99 / chcie─ç x63 / wiedzie─ç x35 / tw├│j x32 / chodzi─ç x29 / 	mie─ç x99 / chcie─ç x63 / wiedzie─ç x35 / tw├│j x32 / chodzi─ç x29 / 	mie─ç x99 / chcie─ç x63 / wiedzie─ç x35 / tw├│j x32 / chodzi─ç x29 / 	mie─ç x99 / chcie─ç x63 / wiedzie─ç x35 / tw├│j x32 / chodzi─ç x29 / 	2022-06-28 20:29:15.936188+00	2022-06-28 15:17:28.49828+00
29	brahu	Brahu	2080	2080	2080	2080	128	129	129	129	mie─ç x108 / ┼╝ycie x83 / chcie─ç x82 / wiedzie─ç x71 / kt├│ry x70 / 	mie─ç x108 / ┼╝ycie x83 / chcie─ç x82 / wiedzie─ç x71 / kt├│ry x70 / 	mie─ç x108 / ┼╝ycie x83 / chcie─ç x82 / wiedzie─ç x71 / kt├│ry x70 / 	mie─ç x108 / ┼╝ycie x83 / chcie─ç x82 / wiedzie─ç x71 / kt├│ry x70 / 	2022-06-28 20:29:15.868528+00	2022-06-28 15:17:28.517903+00
28	bosski_roman	Bosski Roman	3500	4502	4502	4502	42	51	52	52	mie─ç x195 / ┼╝ycie x114 / siebie x114 / cz┼éowiek x99 / tw├│j x90 / 	mie─ç x297 / ┼╝ycie x152 / siebie x133 / cz┼éowiek x122 / sw├│j x121 / 	mie─ç x297 / ┼╝ycie x152 / siebie x133 / cz┼éowiek x122 / sw├│j x121 / 	mie─ç x297 / ┼╝ycie x152 / siebie x133 / cz┼éowiek x122 / sw├│j x121 / 	2022-06-28 20:29:15.529995+00	2022-06-28 15:17:28.513979+00
60	fisz	Fisz	3180	3180	3180	3180	71	94	95	95	mie─ç x284 / m├│wi─ç x115 / wiedzie─ç x93 / kt├│ry x80 / siebie x79 / 	mie─ç x284 / m├│wi─ç x115 / wiedzie─ç x93 / kt├│ry x80 / siebie x79 / 	mie─ç x284 / m├│wi─ç x115 / wiedzie─ç x93 / kt├│ry x80 / siebie x79 / 	mie─ç x284 / m├│wi─ç x115 / wiedzie─ç x93 / kt├│ry x80 / siebie x79 / 	2022-06-28 20:29:15.717181+00	2022-06-28 15:17:28.631189+00
75	hades	Hades	4227	4613	4613	4613	1	49	50	50	mie─ç x216 / inny x87 / tylko x67 / chcie─ç x53 / your x52 / 	mie─ç x216 / inny x139 / your x68 / tylko x67 / chcie─ç x53 / 	mie─ç x216 / inny x139 / your x68 / tylko x67 / chcie─ç x53 / 	mie─ç x216 / inny x139 / your x68 / tylko x67 / chcie─ç x53 / 	2022-06-28 20:29:15.520593+00	2022-06-28 15:17:28.6865+00
87	jongmen	Jongmen	3505	3505	3505	3505	40	83	83	83	mie─ç x184 / chcie─ç x103 / wiedzie─ç x75 / sw├│j x74 / ┼╝ycie x74 / 	mie─ç x184 / chcie─ç x103 / wiedzie─ç x75 / sw├│j x74 / ┼╝ycie x74 / 	mie─ç x184 / chcie─ç x103 / wiedzie─ç x75 / sw├│j x74 / ┼╝ycie x74 / 	mie─ç x184 / chcie─ç x103 / wiedzie─ç x75 / sw├│j x74 / ┼╝ycie x74 / 	2022-06-28 20:29:15.665583+00	2022-06-28 15:17:28.726138+00
79	huczuhucz	HuczuHucz	3311	4102	4102	4102	57	59	59	59	mie─ç x256 / jeden x154 / wiedzie─ç x124 / chcie─ç x94 / czas x88 / 	mie─ç x377 / wiedzie─ç x170 / jeden x168 / chcie─ç x144 / czas x115 / 	mie─ç x377 / wiedzie─ç x170 / jeden x168 / chcie─ç x144 / czas x115 / 	mie─ç x377 / wiedzie─ç x170 / jeden x168 / chcie─ç x144 / czas x115 / 	2022-06-28 20:29:15.563681+00	2022-06-28 15:17:28.701068+00
82	inespe	Inespe	1253	1253	1253	1253	163	163	163	163	mie─ç x54 / cz┼éowiek x35 / chcie─ç x33 / siebie x29 / sw├│j x28 / 	mie─ç x54 / cz┼éowiek x35 / chcie─ç x33 / siebie x29 / sw├│j x28 / 	mie─ç x54 / cz┼éowiek x35 / chcie─ç x33 / siebie x29 / sw├│j x28 / 	mie─ç x54 / cz┼éowiek x35 / chcie─ç x33 / siebie x29 / sw├│j x28 / 	2022-06-28 20:29:16.010459+00	2022-06-28 15:17:28.710783+00
58	fazi	Fazi	4210	4210	4210	4210	2	58	58	58	mie─ç x169 / chcie─ç x132 / kurwa x105 / wiedzie─ç x83 / tylko x65 / 	mie─ç x169 / chcie─ç x132 / kurwa x105 / wiedzie─ç x83 / tylko x65 / 	mie─ç x169 / chcie─ç x132 / kurwa x105 / wiedzie─ç x83 / tylko x65 / 	mie─ç x169 / chcie─ç x132 / kurwa x105 / wiedzie─ç x83 / tylko x65 / 	2022-06-28 20:29:15.559349+00	2022-06-28 15:17:28.62416+00
73	guzior	Guzior	3701	3900	3900	3900	26	68	68	68	mie─ç x253 / siebie x97 / tylko x89 / m├│wi─ç x76 / wszystko x72 / 	mie─ç x268 / siebie x103 / tylko x103 / m├│wi─ç x80 / wiedzie─ç x75 / 	mie─ç x268 / siebie x103 / tylko x103 / m├│wi─ç x80 / wiedzie─ç x75 / 	mie─ç x268 / siebie x103 / tylko x103 / m├│wi─ç x80 / wiedzie─ç x75 / 	2022-06-28 20:29:15.601941+00	2022-06-28 15:17:28.678316+00
62	fokus	Fokus	3951	5190	5190	5190	13	29	38	38	mie─ç x328 / wiedzie─ç x131 / czas x84 / chcie─ç x78 / m├│wi─ç x75 / 	mie─ç x479 / wiedzie─ç x206 / chcie─ç x138 / czas x129 / m├│wi─ç x112 / 	mie─ç x479 / wiedzie─ç x206 / chcie─ç x138 / czas x129 / m├│wi─ç x112 / 	mie─ç x479 / wiedzie─ç x206 / chcie─ç x138 / czas x129 / m├│wi─ç x112 / 	2022-06-28 20:29:15.469283+00	2022-06-28 15:17:28.638327+00
71	grubson	Grubson	3190	5438	7173	8705	69	22	15	9	mie─ç x287 / siebie x114 / ca┼éy x96 / cz┼éowiek x95 / wi─Öc x79 / 	mie─ç x557 / siebie x211 / cz┼éowiek x197 / wiedzie─ç x167 / ca┼éy x155 / 	mie─ç x876 / siebie x284 / cz┼éowiek x250 / ca┼éy x230 / wiedzie─ç x222 / 	mie─ç x1124 / siebie x375 / cz┼éowiek x292 / wiedzie─ç x289 / chcie─ç x284 / 	2022-06-28 20:29:15.345462+00	2022-06-28 15:17:28.670231+00
77	taco_hemingway	Taco Hemingway	4127	6077	7569	9010	5	13	10	8	mie─ç x159 / chcie─ç x103 / m├│wi─ç x79 / your x71 / inny x61 / 	mie─ç x366 / chcie─ç x249 / m├│wi─ç x197 / widzie─ç x112 / wiedzie─ç x109 / 	mie─ç x608 / chcie─ç x433 / m├│wi─ç x265 / wiedzie─ç x172 / znowu x161 / 	mie─ç x883 / chcie─ç x545 / m├│wi─ç x326 / wiedzie─ç x218 / robi─ç x200 / 	2022-06-28 20:29:15.341447+00	2022-06-28 15:17:28.694165+00
88	josef_bratan	Josef Bratan	272	272	272	272	205	205	205	205	tylko x12 / wszystko x11 / dawaj x11 / josef x10 / auto x10 / 	tylko x12 / wszystko x11 / dawaj x11 / josef x10 / auto x10 / 	tylko x12 / wszystko x11 / dawaj x11 / josef x10 / auto x10 / 	tylko x12 / wszystko x11 / dawaj x11 / josef x10 / auto x10 / 	2022-06-28 20:29:16.176935+00	2022-06-28 15:17:28.729133+00
68	gedz	Gedz	3263	3882	3882	3882	63	70	70	70	mie─ç x297 / chcie─ç x150 / ┼╝ycie x110 / wiedzie─ç x106 / m├│wi─ç x94 / 	mie─ç x379 / chcie─ç x222 / m├│wi─ç x139 / ┼╝ycie x132 / wiedzie─ç x130 / 	mie─ç x379 / chcie─ç x222 / m├│wi─ç x139 / ┼╝ycie x132 / wiedzie─ç x130 / 	mie─ç x379 / chcie─ç x222 / m├│wi─ç x139 / ┼╝ycie x132 / wiedzie─ç x130 / 	2022-06-28 20:29:15.610482+00	2022-06-28 15:17:28.659064+00
80	hukos	Hukos	3619	3619	3619	3619	30	77	77	77	mie─ç x149 / czas x84 / chcie─ç x82 / hukos x61 / tylko x60 / 	mie─ç x149 / czas x84 / chcie─ç x82 / hukos x61 / tylko x60 / 	mie─ç x149 / czas x84 / chcie─ç x82 / hukos x61 / tylko x60 / 	mie─ç x149 / czas x84 / chcie─ç x82 / hukos x61 / tylko x60 / 	2022-06-28 20:29:15.640035+00	2022-06-28 15:17:28.704778+00
83	jan_rapowanie	Jan-Rapowanie	1905	1905	1905	1905	134	135	135	135	mie─ç x114 / chcie─ç x94 / kurwa x56 / wiedzie─ç x52 / czas x51 / 	mie─ç x114 / chcie─ç x94 / kurwa x56 / wiedzie─ç x52 / czas x51 / 	mie─ç x114 / chcie─ç x94 / kurwa x56 / wiedzie─ç x52 / czas x51 / 	mie─ç x114 / chcie─ç x94 / kurwa x56 / wiedzie─ç x52 / czas x51 / 	2022-06-28 20:29:15.893601+00	2022-06-28 15:17:28.713909+00
64	fukaj	Fukaj	548	548	548	548	190	190	190	190	┼╝ycie x29 / chcie─ç x27 / mie─ç x22 / nadal x18 / temu x16 / 	┼╝ycie x29 / chcie─ç x27 / mie─ç x22 / nadal x18 / temu x16 / 	┼╝ycie x29 / chcie─ç x27 / mie─ç x22 / nadal x18 / temu x16 / 	┼╝ycie x29 / chcie─ç x27 / mie─ç x22 / nadal x18 / temu x16 / 	2022-06-28 20:29:16.120621+00	2022-06-28 15:17:28.644858+00
74	gverilla	Gverilla	625	625	625	625	186	186	186	186	chcie─ç x47 / wiedzie─ç x30 / przyzna─ç x20 / przez x16 / wszystko x16 / 	chcie─ç x47 / wiedzie─ç x30 / przyzna─ç x20 / przez x16 / wszystko x16 / 	chcie─ç x47 / wiedzie─ç x30 / przyzna─ç x20 / przez x16 / wszystko x16 / 	chcie─ç x47 / wiedzie─ç x30 / przyzna─ç x20 / przez x16 / wszystko x16 / 	2022-06-28 20:29:16.104636+00	2022-06-28 15:17:28.682972+00
67	gano	Gano	764	764	764	764	181	181	181	181	mie─ç x17 / czas x12 / prosty x11 / m├│wi─ç x10 / kiedy x9 / 	mie─ç x17 / czas x12 / prosty x11 / m├│wi─ç x10 / kiedy x9 / 	mie─ç x17 / czas x12 / prosty x11 / m├│wi─ç x10 / kiedy x9 / 	mie─ç x17 / czas x12 / prosty x11 / m├│wi─ç x10 / kiedy x9 / 	2022-06-28 20:29:16.085685+00	2022-06-28 15:17:28.655703+00
78	hst	HST	1522	1522	1522	1522	153	153	153	153	brat x77 / mie─ç x74 / wiedzie─ç x40 / chcie─ç x40 / ┼╝ycie x33 / 	brat x77 / mie─ç x74 / wiedzie─ç x40 / chcie─ç x40 / ┼╝ycie x33 / 	brat x77 / mie─ç x74 / wiedzie─ç x40 / chcie─ç x40 / ┼╝ycie x33 / 	brat x77 / mie─ç x74 / wiedzie─ç x40 / chcie─ç x40 / ┼╝ycie x33 / 	2022-06-28 20:29:15.970111+00	2022-06-28 15:17:28.698101+00
72	gruby_mielzky	Gruby Mielzky	3378	3378	3378	3378	51	87	88	88	mie─ç x210 / kt├│ry x129 / rapa x101 / chcie─ç x88 / cz┼éowiek x88 / 	mie─ç x210 / kt├│ry x129 / rapa x101 / chcie─ç x88 / cz┼éowiek x88 / 	mie─ç x210 / kt├│ry x129 / rapa x101 / chcie─ç x88 / cz┼éowiek x88 / 	mie─ç x210 / kt├│ry x129 / rapa x101 / chcie─ç x88 / cz┼éowiek x88 / 	2022-06-28 20:29:15.687567+00	2022-06-28 15:17:28.673826+00
63	fu	Fu	3846	5045	5045	5045	18	34	41	41	mie─ç x163 / czas x84 / ┼Ťwiat x83 / sw├│j x83 / chcie─ç x80 / 	mie─ç x274 / ┼╝ycie x172 / czas x140 / chcie─ç x135 / sw├│j x131 / 	mie─ç x274 / ┼╝ycie x172 / czas x140 / chcie─ç x135 / sw├│j x131 / 	mie─ç x274 / ┼╝ycie x172 / czas x140 / chcie─ç x135 / sw├│j x131 / 	2022-06-28 20:29:15.482125+00	2022-06-28 15:17:28.641822+00
92	kabe	Kabe	1750	1750	1750	1750	143	143	143	143	mie─ç x192 / ca┼éy x80 / robi─ç x73 / chcie─ç x68 / wiedzie─ç x62 / 	mie─ç x192 / ca┼éy x80 / robi─ç x73 / chcie─ç x68 / wiedzie─ç x62 / 	mie─ç x192 / ca┼éy x80 / robi─ç x73 / chcie─ç x68 / wiedzie─ç x62 / 	mie─ç x192 / ca┼éy x80 / robi─ç x73 / chcie─ç x68 / wiedzie─ç x62 / 	2022-06-28 20:29:15.92831+00	2022-06-28 15:17:28.741867+00
95	kaczor	Kaczor	3092	3092	3092	3092	86	101	101	101	mie─ç x144 / dzi┼Ť x75 / sw├│j x75 / jeszcze x68 / kt├│ry x65 / 	mie─ç x144 / dzi┼Ť x75 / sw├│j x75 / jeszcze x68 / kt├│ry x65 / 	mie─ç x144 / dzi┼Ť x75 / sw├│j x75 / jeszcze x68 / kt├│ry x65 / 	mie─ç x144 / dzi┼Ť x75 / sw├│j x75 / jeszcze x68 / kt├│ry x65 / 	2022-06-28 20:29:15.743696+00	2022-06-28 15:17:28.751618+00
108	kleszcz	Kleszcz	1494	1494	1494	1494	155	155	155	155	mie─ç x90 / czas x47 / tw├│j x46 / wiedzie─ç x30 / g┼éowa x28 / 	mie─ç x90 / czas x47 / tw├│j x46 / wiedzie─ç x30 / g┼éowa x28 / 	mie─ç x90 / czas x47 / tw├│j x46 / wiedzie─ç x30 / g┼éowa x28 / 	mie─ç x90 / czas x47 / tw├│j x46 / wiedzie─ç x30 / g┼éowa x28 / 	2022-06-28 20:29:15.978376+00	2022-06-28 15:17:28.790804+00
109	kuba_knap	Kuba Knap	3640	3640	3640	3640	28	74	74	73	mie─ç x247 / wiedzie─ç x136 / knapa x108 / kuba x105 / chcie─ç x102 / 	mie─ç x247 / wiedzie─ç x136 / knapa x108 / kuba x105 / chcie─ç x102 / 	mie─ç x247 / wiedzie─ç x136 / knapa x108 / kuba x105 / chcie─ç x102 / 	mie─ç x247 / wiedzie─ç x136 / knapa x108 / kuba x105 / chcie─ç x102 / 	2022-06-28 20:29:15.623212+00	2022-06-28 15:17:28.794364+00
104	waldemar_kasta	Waldemar Kasta	3179	3179	3179	3179	72	95	96	96	mie─ç x164 / kasta x118 / rapa x96 / musie─ç x83 / ┼Ťl─ůsk x82 / 	mie─ç x164 / kasta x118 / rapa x96 / musie─ç x83 / ┼Ťl─ůsk x82 / 	mie─ç x164 / kasta x118 / rapa x96 / musie─ç x83 / ┼Ťl─ůsk x82 / 	mie─ç x164 / kasta x118 / rapa x96 / musie─ç x83 / ┼Ťl─ůsk x82 / 	2022-06-28 20:29:15.720999+00	2022-06-28 15:17:28.77906+00
115	kroolik_underwood	Kroolik Underwood	1627	1627	1627	1627	147	147	147	147	mie─ç x39 / tw├│j x36 / chcie─ç x34 / czas x32 / wiedzie─ç x28 / 	mie─ç x39 / tw├│j x36 / chcie─ç x34 / czas x32 / wiedzie─ç x28 / 	mie─ç x39 / tw├│j x36 / chcie─ç x34 / czas x32 / wiedzie─ç x28 / 	mie─ç x39 / tw├│j x36 / chcie─ç x34 / czas x32 / wiedzie─ç x28 / 	2022-06-28 20:29:15.945053+00	2022-06-28 15:17:28.812839+00
93	kacper_hta	Kacper HTA	3321	4642	4642	4642	55	47	48	48	mie─ç x269 / chcie─ç x158 / dzi┼Ť x102 / wiedzie─ç x92 / czas x92 / 	mie─ç x428 / chcie─ç x247 / tylko x179 / wiedzie─ç x146 / czas x143 / 	mie─ç x428 / chcie─ç x247 / tylko x179 / wiedzie─ç x146 / czas x143 / 	mie─ç x428 / chcie─ç x247 / tylko x179 / wiedzie─ç x146 / czas x143 / 	2022-06-28 20:29:15.511843+00	2022-06-28 15:17:28.745226+00
98	kajman	Kajman	3390	4434	4434	4434	50	52	53	53	mie─ç x313 / chcie─ç x156 / wiedzie─ç x141 / czas x77 / m├│wi─ç x77 / 	mie─ç x419 / chcie─ç x199 / wiedzie─ç x192 / czas x105 / m├│wi─ç x100 / 	mie─ç x419 / chcie─ç x199 / wiedzie─ç x192 / czas x105 / m├│wi─ç x100 / 	mie─ç x419 / chcie─ç x199 / wiedzie─ç x192 / czas x105 / m├│wi─ç x100 / 	2022-06-28 20:29:15.534001+00	2022-06-28 15:17:28.761049+00
91	k2	K2	3849	4973	4973	4973	17	38	44	44	mie─ç x270 / wiedzie─ç x152 / ┼Ťwiat x109 / chcie─ç x106 / cz┼éowiek x92 / 	mie─ç x394 / wiedzie─ç x188 / ┼Ťwiat x155 / chcie─ç x150 / cz┼éowiek x137 / 	mie─ç x394 / wiedzie─ç x188 / ┼Ťwiat x155 / chcie─ç x150 / cz┼éowiek x137 / 	mie─ç x394 / wiedzie─ç x188 / ┼Ťwiat x155 / chcie─ç x150 / cz┼éowiek x137 / 	2022-06-28 20:29:15.495239+00	2022-06-28 15:17:28.738903+00
102	kartky	Kartky	3136	4853	6314	7435	80	43	24	15	mie─ç x268 / kt├│ry x142 / wiedzie─ç x140 / chcie─ç x119 / tylko x79 / 	mie─ç x490 / chcie─ç x306 / wiedzie─ç x245 / kt├│ry x236 / kiedy x188 / 	mie─ç x726 / chcie─ç x477 / wiedzie─ç x351 / kt├│ry x320 / kiedy x294 / 	mie─ç x907 / chcie─ç x637 / wiedzie─ç x476 / kiedy x383 / kt├│ry x377 / 	2022-06-28 20:29:15.371113+00	2022-06-28 15:17:28.773015+00
100	kamien	Kamie┼ä	231	231	231	231	207	207	207	207	cz─Östo x7 / mordo x7 / du┼╝o x6 / wszystko x5 / czas x5 / 	cz─Östo x7 / mordo x7 / du┼╝o x6 / wszystko x5 / czas x5 / 	cz─Östo x7 / mordo x7 / du┼╝o x6 / wszystko x5 / czas x5 / 	cz─Östo x7 / mordo x7 / du┼╝o x6 / wszystko x5 / czas x5 / 	2022-06-28 20:29:16.184416+00	2022-06-28 15:17:28.767212+00
90	juras	Juras	564	564	564	564	189	189	189	189	mie─ç x27 / sw├│j x14 / robi─ç x12 / do┼Ť─ç x10 / patrzy─ç x9 / 	mie─ç x27 / sw├│j x14 / robi─ç x12 / do┼Ť─ç x10 / patrzy─ç x9 / 	mie─ç x27 / sw├│j x14 / robi─ç x12 / do┼Ť─ç x10 / patrzy─ç x9 / 	mie─ç x27 / sw├│j x14 / robi─ç x12 / do┼Ť─ç x10 / patrzy─ç x9 / 	2022-06-28 20:29:16.116421+00	2022-06-28 15:17:28.735401+00
97	kafar	Kafar	577	577	577	577	187	187	187	187	freestyl x35 / football x29 / nasz x22 / mie─ç x22 / gra─ç x15 / 	freestyl x35 / football x29 / nasz x22 / mie─ç x22 / gra─ç x15 / 	freestyl x35 / football x29 / nasz x22 / mie─ç x22 / gra─ç x15 / 	freestyl x35 / football x29 / nasz x22 / mie─ç x22 / gra─ç x15 / 	2022-06-28 20:29:16.108593+00	2022-06-28 15:17:28.757801+00
107	kizo	Kizo	3178	3622	3622	3622	73	76	76	76	mie─ç x226 / chcie─ç x111 / kizo x98 / ┼╝ycie x89 / tylko x64 / 	mie─ç x283 / kizo x169 / chcie─ç x148 / ┼╝ycie x98 / tylko x82 / 	mie─ç x283 / kizo x169 / chcie─ç x148 / ┼╝ycie x98 / tylko x82 / 	mie─ç x283 / kizo x169 / chcie─ç x148 / ┼╝ycie x98 / tylko x82 / 	2022-06-28 20:29:15.635714+00	2022-06-28 15:17:28.788127+00
120	leh	Leh	927	927	927	927	174	174	174	174	mie─ç x35 / czas x22 / m├│wi─ç x19 / doros┼éo┼Ť─ç x19 / dogoni─ç x16 / 	mie─ç x35 / czas x22 / m├│wi─ç x19 / doros┼éo┼Ť─ç x19 / dogoni─ç x16 / 	mie─ç x35 / czas x22 / m├│wi─ç x19 / doros┼éo┼Ť─ç x19 / dogoni─ç x16 / 	mie─ç x35 / czas x22 / m├│wi─ç x19 / doros┼éo┼Ť─ç x19 / dogoni─ç x16 / 	2022-06-28 20:29:16.051353+00	2022-06-28 15:17:28.828196+00
111	koni	Koni	1540	1540	1540	1540	152	152	152	152	mie─ç x103 / robi─ç x47 / chcie─ç x30 / refy x29 / rapa x23 / 	mie─ç x103 / robi─ç x47 / chcie─ç x30 / refy x29 / rapa x23 / 	mie─ç x103 / robi─ç x47 / chcie─ç x30 / refy x29 / rapa x23 / 	mie─ç x103 / robi─ç x47 / chcie─ç x30 / refy x29 / rapa x23 / 	2022-06-28 20:29:15.966167+00	2022-06-28 15:17:28.800873+00
110	kobra	Kobra	3445	3593	3593	3593	46	79	79	79	mie─ç x277 / chcie─ç x130 / rapa x87 / wiedzie─ç x86 / miasto x75 / 	mie─ç x294 / chcie─ç x134 / wiedzie─ç x97 / rapa x91 / miasto x77 / 	mie─ç x294 / chcie─ç x134 / wiedzie─ç x97 / rapa x91 / miasto x77 / 	mie─ç x294 / chcie─ç x134 / wiedzie─ç x97 / rapa x91 / miasto x77 / 	2022-06-28 20:29:15.648325+00	2022-06-28 15:17:28.797441+00
114	kris	Kris	1267	1267	1267	1267	162	162	162	162	mie─ç x41 / tw├│j x30 / tylko x26 / ┼╝ycie x25 / kt├│ry x25 / 	mie─ç x41 / tw├│j x30 / tylko x26 / ┼╝ycie x25 / kt├│ry x25 / 	mie─ç x41 / tw├│j x30 / tylko x26 / ┼╝ycie x25 / kt├│ry x25 / 	mie─ç x41 / tw├│j x30 / tylko x26 / ┼╝ycie x25 / kt├│ry x25 / 	2022-06-28 20:29:16.006794+00	2022-06-28 15:17:28.809873+00
105	kaz_balagane	Kaz Ba┼éagane	1991	1991	1991	1991	132	133	133	133	mie─ç x126 / wiedzie─ç x53 / kaza x50 / robi─ç x47 / ba┼éagane x46 / 	mie─ç x126 / wiedzie─ç x53 / kaza x50 / robi─ç x47 / ba┼éagane x46 / 	mie─ç x126 / wiedzie─ç x53 / kaza x50 / robi─ç x47 / ba┼éagane x46 / 	mie─ç x126 / wiedzie─ç x53 / kaza x50 / robi─ç x47 / ba┼éagane x46 / 	2022-06-28 20:29:15.885406+00	2022-06-28 15:17:28.782266+00
101	karramba	Karramba	3090	4403	4403	4403	87	53	54	54	mie─ç x121 / refy x108 / tw├│j x105 / wiedzie─ç x68 / ka┼╝dy x66 / 	mie─ç x199 / tw├│j x180 / refy x160 / ka┼╝dy x112 / wiedzie─ç x102 / 	mie─ç x199 / tw├│j x180 / refy x160 / ka┼╝dy x112 / wiedzie─ç x102 / 	mie─ç x199 / tw├│j x180 / refy x160 / ka┼╝dy x112 / wiedzie─ç x102 / 	2022-06-28 20:29:15.538303+00	2022-06-28 15:17:28.769879+00
121	liber	Liber	3216	3216	3216	3216	66	92	93	93	mie─ç x139 / chcie─ç x100 / tylko x69 / gra─ç x69 / wiedzie─ç x64 / 	mie─ç x139 / chcie─ç x100 / tylko x69 / gra─ç x69 / wiedzie─ç x64 / 	mie─ç x139 / chcie─ç x100 / tylko x69 / gra─ç x69 / wiedzie─ç x64 / 	mie─ç x139 / chcie─ç x100 / tylko x69 / gra─ç x69 / wiedzie─ç x64 / 	2022-06-28 20:29:15.709113+00	2022-06-28 15:17:28.831309+00
128	lysonzi	┼üyson┼╝i	1901	1901	1901	1901	135	136	136	136	mie─ç x159 / kurwa x37 / czas x35 / wiedzie─ç x35 / ┼╝ycie x32 / 	mie─ç x159 / kurwa x37 / czas x35 / wiedzie─ç x35 / ┼╝ycie x32 / 	mie─ç x159 / kurwa x37 / czas x35 / wiedzie─ç x35 / ┼╝ycie x32 / 	mie─ç x159 / kurwa x37 / czas x35 / wiedzie─ç x35 / ┼╝ycie x32 / 	2022-06-28 20:29:15.897917+00	2022-06-28 15:17:28.853734+00
135	massey	Massey	2734	2734	2734	2734	106	111	111	111	mie─ç x116 / ┼╝ycie x87 / wiedzie─ç x63 / sw├│j x53 / dobry x48 / 	mie─ç x116 / ┼╝ycie x87 / wiedzie─ç x63 / sw├│j x53 / dobry x48 / 	mie─ç x116 / ┼╝ycie x87 / wiedzie─ç x63 / sw├│j x53 / dobry x48 / 	mie─ç x116 / ┼╝ycie x87 / wiedzie─ç x63 / sw├│j x53 / dobry x48 / 	2022-06-28 20:29:15.787153+00	2022-06-28 15:17:28.874745+00
130	malik_montana	Malik Montana	2510	2510	2510	2510	113	116	116	116	mie─ç x263 / malik x111 / chcie─ç x110 / montan x88 / robi─ç x62 / 	mie─ç x263 / malik x111 / chcie─ç x110 / montan x88 / robi─ç x62 / 	mie─ç x263 / malik x111 / chcie─ç x110 / montan x88 / robi─ç x62 / 	mie─ç x263 / malik x111 / chcie─ç x110 / montan x88 / robi─ç x62 / 	2022-06-28 20:29:15.813218+00	2022-06-28 15:17:28.859721+00
138	meek__oh_why_	Meek, Oh Why?	2843	2843	2843	2843	102	108	108	108	mie─ç x165 / ┼Ťwiat x144 / chcie─ç x121 / s┼éowo x69 / siebie x67 / 	mie─ç x165 / ┼Ťwiat x144 / chcie─ç x121 / s┼éowo x69 / siebie x67 / 	mie─ç x165 / ┼Ťwiat x144 / chcie─ç x121 / s┼éowo x69 / siebie x67 / 	mie─ç x165 / ┼Ťwiat x144 / chcie─ç x121 / s┼éowo x69 / siebie x67 / 	2022-06-28 20:29:15.774213+00	2022-06-28 15:17:28.884764+00
136	mata	Mata	3685	4254	4254	4254	27	56	56	56	mie─ç x271 / chcie─ç x129 / montan x115 / cafe x79 / oja┼é x78 / 	mie─ç x352 / chcie─ç x193 / montan x115 / oja┼é x104 / wiedzie─ç x96 / 	mie─ç x352 / chcie─ç x193 / montan x115 / oja┼é x104 / wiedzie─ç x96 / 	mie─ç x352 / chcie─ç x193 / montan x115 / oja┼é x104 / wiedzie─ç x96 / 	2022-06-28 20:29:15.546564+00	2022-06-28 15:17:28.878616+00
123	lukasyno	Lukasyno	3174	5006	5006	5006	75	37	43	43	mie─ç x278 / ┼╝ycie x136 / sw├│j x106 / chcie─ç x103 / wszystko x92 / 	mie─ç x406 / ┼╝ycie x215 / chcie─ç x213 / sw├│j x212 / dzi┼Ť x172 / 	mie─ç x406 / ┼╝ycie x215 / chcie─ç x213 / sw├│j x212 / dzi┼Ť x172 / 	mie─ç x406 / ┼╝ycie x215 / chcie─ç x213 / sw├│j x212 / dzi┼Ť x172 / 	2022-06-28 20:29:15.490742+00	2022-06-28 15:17:28.837947+00
143	miuosh	Miuosh	3319	5032	5863	5863	56	36	30	31	mie─ç x227 / wiedzie─ç x150 / chcie─ç x114 / m├│wi─ç x111 / ka┼╝dy x105 / 	mie─ç x539 / wiedzie─ç x328 / chcie─ç x240 / m├│wi─ç x189 / ka┼╝dy x165 / 	mie─ç x734 / wiedzie─ç x409 / chcie─ç x311 / ka┼╝dy x232 / m├│wi─ç x230 / 	mie─ç x734 / wiedzie─ç x409 / chcie─ç x311 / ka┼╝dy x232 / m├│wi─ç x230 / 	2022-06-28 20:29:15.439472+00	2022-06-28 15:17:28.900504+00
139	mezo	Mezo	4171	6357	6357	6357	4	6	23	26	mie─ç x236 / chcie─ç x129 / ┼Ťwiat x82 / siebie x73 / ┼╝ycie x73 / 	mie─ç x468 / chcie─ç x285 / wiedzie─ç x229 / tylko x150 / ┼╝ycie x145 / 	mie─ç x468 / chcie─ç x285 / wiedzie─ç x229 / tylko x150 / ┼╝ycie x145 / 	mie─ç x468 / chcie─ç x285 / wiedzie─ç x229 / tylko x150 / ┼╝ycie x145 / 	2022-06-28 20:29:15.418061+00	2022-06-28 15:17:28.887521+00
148	mr__polska	Mr. Polska	520	520	520	520	192	192	192	192	mie─ç x30 / daleko x27 / blaas x22 / bosfluit x22 / yeah x19 / 	mie─ç x30 / daleko x27 / blaas x22 / bosfluit x22 / yeah x19 / 	mie─ç x30 / daleko x27 / blaas x22 / bosfluit x22 / yeah x19 / 	mie─ç x30 / daleko x27 / blaas x22 / bosfluit x22 / yeah x19 / 	2022-06-28 20:29:16.128058+00	2022-06-28 15:17:28.915827+00
144	mleko	Mleko	727	727	727	727	183	183	183	183	mie─ç x19 / kt├│ry x18 / bardzo x17 / ┼éapa x16 / lubi─ç x11 / 	mie─ç x19 / kt├│ry x18 / bardzo x17 / ┼éapa x16 / lubi─ç x11 / 	mie─ç x19 / kt├│ry x18 / bardzo x17 / ┼éapa x16 / lubi─ç x11 / 	mie─ç x19 / kt├│ry x18 / bardzo x17 / ┼éapa x16 / lubi─ç x11 / 	2022-06-28 20:29:16.093369+00	2022-06-28 15:17:28.903123+00
142	minix	Minix	753	753	753	753	182	182	182	182	mie─ç x38 / ka┼╝dy x23 / usta x18 / gor─ůco x18 / siebie x14 / 	mie─ç x38 / ka┼╝dy x23 / usta x18 / gor─ůco x18 / siebie x14 / 	mie─ç x38 / ka┼╝dy x23 / usta x18 / gor─ůco x18 / siebie x14 / 	mie─ç x38 / ka┼╝dy x23 / usta x18 / gor─ůco x18 / siebie x14 / 	2022-06-28 20:29:16.089448+00	2022-06-28 15:17:28.897673+00
145	mlodyskiny	Mlodyskiny	840	840	840	840	179	179	179	179	chcie─ç x145 / mie─ç x128 / wiedzie─ç x55 / siebie x48 / czu─ç x44 / 	chcie─ç x145 / mie─ç x128 / wiedzie─ç x55 / siebie x48 / czu─ç x44 / 	chcie─ç x145 / mie─ç x128 / wiedzie─ç x55 / siebie x48 / czu─ç x44 / 	chcie─ç x145 / mie─ç x128 / wiedzie─ç x55 / siebie x48 / czu─ç x44 / 	2022-06-28 20:29:16.077965+00	2022-06-28 15:17:28.906547+00
122	liroy	Liroy	3127	3628	3628	3628	81	75	75	75	mie─ç x196 / chcie─ç x107 / taki x101 / tw├│j x100 / powiedzie─ç x98 / 	mie─ç x228 / chcie─ç x134 / taki x115 / liro x111 / tw├│j x111 / 	mie─ç x228 / chcie─ç x134 / taki x115 / liro x111 / tw├│j x111 / 	mie─ç x228 / chcie─ç x134 / taki x115 / liro x111 / tw├│j x111 / 	2022-06-28 20:29:15.631602+00	2022-06-28 15:17:28.834945+00
131	malach	Ma┼éach	1897	1897	1897	1897	138	138	138	138	mie─ç x144 / chcie─ç x62 / ┼╝ycie x57 / ka┼╝dy x55 / kto┼Ť x49 / 	mie─ç x144 / chcie─ç x62 / ┼╝ycie x57 / ka┼╝dy x55 / kto┼Ť x49 / 	mie─ç x144 / chcie─ç x62 / ┼╝ycie x57 / ka┼╝dy x55 / kto┼Ť x49 / 	mie─ç x144 / chcie─ç x62 / ┼╝ycie x57 / ka┼╝dy x55 / kto┼Ť x49 / 	2022-06-28 20:29:15.906398+00	2022-06-28 15:17:28.863024+00
24	bonson	Bonson	3075	4226	4226	4226	89	57	57	57	mie─ç x311 / wiedzie─ç x170 / chcie─ç x129 / m├│wi─ç x122 / czas x104 / 	mie─ç x501 / wiedzie─ç x269 / chcie─ç x237 / m├│wi─ç x185 / kurwa x147 / 	mie─ç x501 / wiedzie─ç x269 / chcie─ç x237 / m├│wi─ç x185 / kurwa x147 / 	mie─ç x501 / wiedzie─ç x269 / chcie─ç x237 / m├│wi─ç x185 / kurwa x147 / 	2022-06-28 20:29:15.550561+00	2022-06-28 15:17:28.501382+00
129	magik	Magik	899	899	899	899	175	175	175	175	mie─ç x29 / kt├│ry x12 / odda─ç x10 / wiedzie─ç x10 / siebie x10 / 	mie─ç x29 / kt├│ry x12 / odda─ç x10 / wiedzie─ç x10 / siebie x10 / 	mie─ç x29 / kt├│ry x12 / odda─ç x10 / wiedzie─ç x10 / siebie x10 / 	mie─ç x29 / kt├│ry x12 / odda─ç x10 / wiedzie─ç x10 / siebie x10 / 	2022-06-28 20:29:16.06165+00	2022-06-28 15:17:28.856907+00
134	mam_na_imie_aleksander	Mam Na Imi─Ö Aleksander	2399	2399	2399	2399	117	119	119	119	mie─ç x154 / wiedzie─ç x87 / chcie─ç x81 / wi─Öcej x57 / musie─ç x47 / 	mie─ç x154 / wiedzie─ç x87 / chcie─ç x81 / wi─Öcej x57 / musie─ç x47 / 	mie─ç x154 / wiedzie─ç x87 / chcie─ç x81 / wi─Öcej x57 / musie─ç x47 / 	mie─ç x154 / wiedzie─ç x87 / chcie─ç x81 / wi─Öcej x57 / musie─ç x47 / 	2022-06-28 20:29:15.825449+00	2022-06-28 15:17:28.872129+00
133	malpa	Ma┼épa	3639	4085	4085	4085	29	60	60	60	mie─ç x222 / kt├│ry x135 / wiedzie─ç x116 / chcie─ç x99 / m├│wi─ç x78 / 	mie─ç x282 / kt├│ry x157 / chcie─ç x140 / wiedzie─ç x132 / m├│wi─ç x88 / 	mie─ç x282 / kt├│ry x157 / chcie─ç x140 / wiedzie─ç x132 / m├│wi─ç x88 / 	mie─ç x282 / kt├│ry x157 / chcie─ç x140 / wiedzie─ç x132 / m├│wi─ç x88 / 	2022-06-28 20:29:15.56789+00	2022-06-28 15:17:28.869238+00
127	lona	┼üona	3838	4024	4024	4024	20	65	65	65	mie─ç x274 / wiedzie─ç x101 / chcie─ç x87 / tylko x81 / wi─Öc x78 / 	mie─ç x283 / wiedzie─ç x108 / chcie─ç x90 / tylko x83 / wi─Öc x80 / 	mie─ç x283 / wiedzie─ç x108 / chcie─ç x90 / tylko x83 / wi─Öc x80 / 	mie─ç x283 / wiedzie─ç x108 / chcie─ç x90 / tylko x83 / wi─Öc x80 / 	2022-06-28 20:29:15.589398+00	2022-06-28 15:17:28.851008+00
169	otsochodzi	Otsochodzi	2429	2429	2429	2429	116	118	118	118	mie─ç x226 / m├│wi─ç x109 / chcie─ç x103 / robi─ç x89 / wiedzie─ç x77 / 	mie─ç x226 / m├│wi─ç x109 / chcie─ç x103 / robi─ç x89 / wiedzie─ç x77 / 	mie─ç x226 / m├│wi─ç x109 / chcie─ç x103 / robi─ç x89 / wiedzie─ç x77 / 	mie─ç x226 / m├│wi─ç x109 / chcie─ç x103 / robi─ç x89 / wiedzie─ç x77 / 	2022-06-28 20:29:15.821728+00	2022-06-28 15:17:28.986876+00
188	pono	Pono	3184	3184	3184	3184	70	93	94	94	mie─ç x268 / wiedzie─ç x131 / chcie─ç x112 / wszystko x100 / cz┼éowiek x94 / 	mie─ç x268 / wiedzie─ç x131 / chcie─ç x112 / wszystko x100 / cz┼éowiek x94 / 	mie─ç x268 / wiedzie─ç x131 / chcie─ç x112 / wszystko x100 / cz┼éowiek x94 / 	mie─ç x268 / wiedzie─ç x131 / chcie─ç x112 / wszystko x100 / cz┼éowiek x94 / 	2022-06-28 20:29:15.712943+00	2022-06-28 15:17:29.061787+00
172	paluch	Paluch	3451	5489	7218	9302	45	21	13	7	mie─ç x215 / ┼╝ycie x103 / wiedzie─ç x96 / sw├│j x89 / rapa x84 / 	mie─ç x498 / ┼╝ycie x245 / chcie─ç x237 / sw├│j x176 / wiedzie─ç x173 / 	mie─ç x750 / chcie─ç x356 / ┼╝ycie x343 / wiedzie─ç x245 / ka┼╝dy x231 / 	mie─ç x1189 / ┼╝ycie x599 / chcie─ç x573 / ka┼╝dy x379 / wiedzie─ç x371 / 	2022-06-28 20:29:15.337023+00	2022-06-28 15:17:28.998348+00
164	onar	Onar	2939	4875	4875	4875	97	41	45	45	mie─ç x262 / chcie─ç x146 / wiedzie─ç x121 / kt├│ry x100 / wszystko x98 / 	mie─ç x519 / chcie─ç x305 / kt├│ry x203 / tw├│j x187 / wiedzie─ç x179 / 	mie─ç x519 / chcie─ç x305 / kt├│ry x203 / tw├│j x187 / wiedzie─ç x179 / 	mie─ç x519 / chcie─ç x305 / kt├│ry x203 / tw├│j x187 / wiedzie─ç x179 / 	2022-06-28 20:29:15.499532+00	2022-06-28 15:17:28.969348+00
174	peerzet	Peerzet	4083	6118	6118	6118	7	12	27	28	mie─ç x352 / wiedzie─ç x117 / chcie─ç x96 / siebie x74 / tylko x55 / 	mie─ç x596 / chcie─ç x198 / wiedzie─ç x188 / siebie x119 / tylko x105 / 	mie─ç x596 / chcie─ç x198 / wiedzie─ç x188 / siebie x119 / tylko x105 / 	mie─ç x596 / chcie─ç x198 / wiedzie─ç x188 / siebie x119 / tylko x105 / 	2022-06-28 20:29:15.426754+00	2022-06-28 15:17:29.005878+00
183	planbe	PlanBe	3081	3889	3889	3889	88	69	69	69	mie─ç x284 / chcie─ç x245 / tylko x134 / wiedzie─ç x113 / siebie x107 / 	mie─ç x412 / chcie─ç x330 / tylko x183 / wiedzie─ç x161 / siebie x129 / 	mie─ç x412 / chcie─ç x330 / tylko x183 / wiedzie─ç x161 / siebie x129 / 	mie─ç x412 / chcie─ç x330 / tylko x183 / wiedzie─ç x161 / siebie x129 / 	2022-06-28 20:29:15.606383+00	2022-06-28 15:17:29.041183+00
177	pezet	Pezet	3278	4963	5969	5969	62	40	29	30	mie─ç x257 / wiedzie─ç x183 / chcie─ç x158 / tw├│j x89 / rapa x86 / 	mie─ç x531 / wiedzie─ç x413 / chcie─ç x359 / czas x173 / m├│wi─ç x167 / 	mie─ç x742 / wiedzie─ç x473 / chcie─ç x458 / czas x247 / m├│wi─ç x223 / 	mie─ç x742 / wiedzie─ç x473 / chcie─ç x458 / czas x247 / m├│wi─ç x223 / 	2022-06-28 20:29:15.435246+00	2022-06-28 15:17:29.018403+00
160	o_s_t_r_	O.S.T.R.	4043	6581	8633	15697	10	3	2	2	mie─ç x210 / kt├│ry x85 / wiedzie─ç x76 / ┼Ťwiat x76 / chcie─ç x72 / 	mie─ç x505 / chcie─ç x173 / wiedzie─ç x170 / ┼Ťwiat x128 / kt├│ry x121 / 	mie─ç x759 / wiedzie─ç x284 / chcie─ç x277 / ┼╝ycie x196 / ┼Ťwiat x194 / 	mie─ç x2164 / chcie─ç x708 / wiedzie─ç x658 / ┼╝ycie x565 / ┼Ťwiat x490 / 	2022-06-28 20:29:15.315905+00	2022-06-28 15:17:28.954854+00
180	pih	Pih	4080	6597	8521	11580	8	2	3	5	mie─ç x211 / wiedzie─ç x113 / chcie─ç x111 / ┼╝ycie x110 / tw├│j x88 / 	mie─ç x407 / wiedzie─ç x266 / ┼╝ycie x210 / chcie─ç x192 / tw├│j x190 / 	mie─ç x616 / wiedzie─ç x408 / ┼╝ycie x305 / tw├│j x268 / chcie─ç x261 / 	mie─ç x919 / wiedzie─ç x528 / ┼╝ycie x458 / tw├│j x379 / chcie─ç x372 / 	2022-06-28 20:29:15.328742+00	2022-06-28 15:17:29.029543+00
175	peja	Peja	3767	6170	8246	17139	23	11	5	1	mie─ç x158 / ┼╝ycie x119 / chcie─ç x103 / czas x72 / wiedzie─ç x71 / 	mie─ç x350 / chcie─ç x235 / ┼╝ycie x208 / wiedzie─ç x182 / sw├│j x151 / 	mie─ç x538 / chcie─ç x369 / wiedzie─ç x294 / ┼╝ycie x285 / kt├│ry x230 / 	mie─ç x1649 / chcie─ç x1014 / wiedzie─ç x839 / ┼╝ycie x779 / sw├│j x645 / 	2022-06-28 20:29:15.305858+00	2022-06-28 15:17:29.010129+00
179	piernikowski	Piernikowski	346	346	346	346	202	202	202	202	trwam x58 / bia┼éas x23 / oja┼é x20 / g┼éowa x11 / getto x11 / 	trwam x58 / bia┼éas x23 / oja┼é x20 / g┼éowa x11 / getto x11 / 	trwam x58 / bia┼éas x23 / oja┼é x20 / g┼éowa x11 / getto x11 / 	trwam x58 / bia┼éas x23 / oja┼é x20 / g┼éowa x11 / getto x11 / 	2022-06-28 20:29:16.165498+00	2022-06-28 15:17:29.025719+00
150	muflon	Muflon	371	371	371	371	201	201	201	201	mie─ç x17 / chcie─ç x9 / ka┼╝dy x5 / cz┼éowiek x5 / wiedzie─ç x5 / 	mie─ç x17 / chcie─ç x9 / ka┼╝dy x5 / cz┼éowiek x5 / wiedzie─ç x5 / 	mie─ç x17 / chcie─ç x9 / ka┼╝dy x5 / cz┼éowiek x5 / wiedzie─ç x5 / 	mie─ç x17 / chcie─ç x9 / ka┼╝dy x5 / cz┼éowiek x5 / wiedzie─ç x5 / 	2022-06-28 20:29:16.162118+00	2022-06-28 15:17:28.921814+00
159	nemy	┼âemy	509	509	509	509	193	193	193	193	dont x14 / wanna x11 / live x11 / pain x11 / mie─ç x11 / 	dont x14 / wanna x11 / live x11 / pain x11 / mie─ç x11 / 	dont x14 / wanna x11 / live x11 / pain x11 / mie─ç x11 / 	dont x14 / wanna x11 / live x11 / pain x11 / mie─ç x11 / 	2022-06-28 20:29:16.13188+00	2022-06-28 15:17:28.951217+00
155	nowator	Nowator	2913	3016	3016	3016	99	105	105	105	mie─ç x233 / wiedzie─ç x196 / chcie─ç x155 / tylko x106 / teraz x99 / 	mie─ç x243 / wiedzie─ç x198 / chcie─ç x161 / tylko x107 / teraz x102 / 	mie─ç x243 / wiedzie─ç x198 / chcie─ç x161 / tylko x107 / teraz x102 / 	mie─ç x243 / wiedzie─ç x198 / chcie─ç x161 / tylko x107 / teraz x102 / 	2022-06-28 20:29:15.760645+00	2022-06-28 15:17:28.937241+00
182	pjus	Pjus	1339	1339	1339	1339	159	159	159	159	mie─ç x97 / m├│wi─ç x58 / ┼╝ycie x46 / zawsze x38 / s┼éysze─ç x37 / 	mie─ç x97 / m├│wi─ç x58 / ┼╝ycie x46 / zawsze x38 / s┼éysze─ç x37 / 	mie─ç x97 / m├│wi─ç x58 / ┼╝ycie x46 / zawsze x38 / s┼éysze─ç x37 / 	mie─ç x97 / m├│wi─ç x58 / ┼╝ycie x46 / zawsze x38 / s┼éysze─ç x37 / 	2022-06-28 20:29:15.994549+00	2022-06-28 15:17:29.037174+00
173	parzel	Parzel	657	657	657	657	184	184	184	184	mie─ç x24 / wiedzie─ç x15 / kt├│ry x13 / chcie─ç x12 / czas x11 / 	mie─ç x24 / wiedzie─ç x15 / kt├│ry x13 / chcie─ç x12 / czas x11 / 	mie─ç x24 / wiedzie─ç x15 / kt├│ry x13 / chcie─ç x12 / czas x11 / 	mie─ç x24 / wiedzie─ç x15 / kt├│ry x13 / chcie─ç x12 / czas x11 / 	2022-06-28 20:29:16.097056+00	2022-06-28 15:17:29.00241+00
163	olszakumpel	Olszakumpel	1065	1065	1065	1065	171	171	171	171	mie─ç x82 / chcie─ç x55 / kurwa x22 / oja┼é x20 / ┼╝ycie x19 / 	mie─ç x82 / chcie─ç x55 / kurwa x22 / oja┼é x20 / ┼╝ycie x19 / 	mie─ç x82 / chcie─ç x55 / kurwa x22 / oja┼é x20 / ┼╝ycie x19 / 	mie─ç x82 / chcie─ç x55 / kurwa x22 / oja┼é x20 / ┼╝ycie x19 / 	2022-06-28 20:29:16.040179+00	2022-06-28 15:17:28.965597+00
161	oki	Oki	2352	2352	2352	2352	119	120	120	120	mie─ç x212 / chcie─ç x117 / wiedzie─ç x97 / g┼éowa x91 / ┼╝ycie x63 / 	mie─ç x212 / chcie─ç x117 / wiedzie─ç x97 / g┼éowa x91 / ┼╝ycie x63 / 	mie─ç x212 / chcie─ç x117 / wiedzie─ç x97 / g┼éowa x91 / ┼╝ycie x63 / 	mie─ç x212 / chcie─ç x117 / wiedzie─ç x97 / g┼éowa x91 / ┼╝ycie x63 / 	2022-06-28 20:29:15.830109+00	2022-06-28 15:17:28.958229+00
189	popek	Popek	3127	3127	3127	3127	82	96	97	97	mie─ç x181 / chcie─ç x119 / sw├│j x95 / ┼╝ycie x79 / wszystko x56 / 	mie─ç x181 / chcie─ç x119 / sw├│j x95 / ┼╝ycie x79 / wszystko x56 / 	mie─ç x181 / chcie─ç x119 / sw├│j x95 / ┼╝ycie x79 / wszystko x56 / 	mie─ç x181 / chcie─ç x119 / sw├│j x95 / ┼╝ycie x79 / wszystko x56 / 	2022-06-28 20:29:15.725584+00	2022-06-28 15:17:29.066208+00
158	numer_raz	Numer Raz	1386	1386	1386	1386	158	158	158	158	mie─ç x56 / chwila x39 / numer x38 / czas x27 / dobrze x27 / 	mie─ç x56 / chwila x39 / numer x38 / czas x27 / dobrze x27 / 	mie─ç x56 / chwila x39 / numer x38 / czas x27 / dobrze x27 / 	mie─ç x56 / chwila x39 / numer x38 / czas x27 / dobrze x27 / 	2022-06-28 20:29:15.990477+00	2022-06-28 15:17:28.94787+00
215	siwers	Siwers	2703	2703	2703	2703	108	113	113	113	mie─ç x114 / wiedzie─ç x50 / chcie─ç x47 / siebie x34 / dobry x31 / 	mie─ç x114 / wiedzie─ç x50 / chcie─ç x47 / siebie x34 / dobry x31 / 	mie─ç x114 / wiedzie─ç x50 / chcie─ç x47 / siebie x34 / dobry x31 / 	mie─ç x114 / wiedzie─ç x50 / chcie─ç x47 / siebie x34 / dobry x31 / 	2022-06-28 20:29:15.795347+00	2022-06-28 15:17:29.165585+00
205	rover	Rover	3220	4614	4614	4614	65	48	49	49	mie─ç x214 / chcie─ç x112 / tylko x86 / ┼╝ycie x74 / wiedzie─ç x73 / 	mie─ç x331 / ┼╝ycie x153 / chcie─ç x149 / tylko x140 / kt├│ry x116 / 	mie─ç x331 / ┼╝ycie x153 / chcie─ç x149 / tylko x140 / kt├│ry x116 / 	mie─ç x331 / ┼╝ycie x153 / chcie─ç x149 / tylko x140 / kt├│ry x116 / 	2022-06-28 20:29:15.516454+00	2022-06-28 15:17:29.130893+00
193	qbik	Qbik	2554	3331	3331	3331	110	89	90	90	mie─ç x293 / chcie─ç x182 / tylko x130 / siebie x123 / wszystko x98 / 	mie─ç x373 / chcie─ç x270 / siebie x164 / tylko x142 / wiedzie─ç x133 / 	mie─ç x373 / chcie─ç x270 / siebie x164 / tylko x142 / wiedzie─ç x133 / 	mie─ç x373 / chcie─ç x270 / siebie x164 / tylko x142 / wiedzie─ç x133 / 	2022-06-28 20:29:15.696323+00	2022-06-28 15:17:29.082166+00
197	raca	Raca	3104	3643	3643	3643	85	72	72	72	mie─ç x242 / chcie─ç x133 / wiedzie─ç x119 / m├│wi─ç x115 / ┼╝ycie x77 / 	mie─ç x295 / chcie─ç x162 / m├│wi─ç x145 / wiedzie─ç x143 / czas x110 / 	mie─ç x295 / chcie─ç x162 / m├│wi─ç x145 / wiedzie─ç x143 / czas x110 / 	mie─ç x295 / chcie─ç x162 / m├│wi─ç x145 / wiedzie─ç x143 / czas x110 / 	2022-06-28 20:29:15.618878+00	2022-06-28 15:17:29.098824+00
201	rahim	Rahim	3557	3557	3557	3557	34	81	81	81	mie─ç x209 / czas x79 / chcie─ç x65 / sw├│j x65 / siebie x58 / 	mie─ç x209 / czas x79 / chcie─ç x65 / sw├│j x65 / siebie x58 / 	mie─ç x209 / czas x79 / chcie─ç x65 / sw├│j x65 / siebie x58 / 	mie─ç x209 / czas x79 / chcie─ç x65 / sw├│j x65 / siebie x58 / 	2022-06-28 20:29:15.657169+00	2022-06-28 15:17:29.115073+00
210	sarius	Sarius	3337	4701	4701	4701	54	45	46	46	mie─ç x308 / chcie─ç x141 / wiedzie─ç x110 / m├│wi─ç x84 / tylko x81 / 	mie─ç x594 / chcie─ç x289 / wiedzie─ç x268 / tylko x210 / m├│wi─ç x157 / 	mie─ç x594 / chcie─ç x289 / wiedzie─ç x268 / tylko x210 / m├│wi─ç x157 / 	mie─ç x594 / chcie─ç x289 / wiedzie─ç x268 / tylko x210 / m├│wi─ç x157 / 	2022-06-28 20:29:15.503757+00	2022-06-28 15:17:29.148905+00
204	reto	ReTo	3158	5111	5111	5111	77	32	39	39	mie─ç x347 / chcie─ç x215 / m├│wi─ç x125 / wiedzie─ç x102 / hajs x97 / 	mie─ç x642 / chcie─ç x412 / m├│wi─ç x213 / wiedzie─ç x193 / kurwa x148 / 	mie─ç x642 / chcie─ç x412 / m├│wi─ç x213 / wiedzie─ç x193 / kurwa x148 / 	mie─ç x642 / chcie─ç x412 / m├│wi─ç x213 / wiedzie─ç x193 / kurwa x148 / 	2022-06-28 20:29:15.473422+00	2022-06-28 15:17:29.127066+00
221	sobota	Sobota	3398	5403	6018	6018	49	25	28	29	mie─ç x226 / chcie─ç x144 / jeden x121 / wiedzie─ç x93 / strza┼é x73 / 	mie─ç x503 / chcie─ç x323 / wiedzie─ç x235 / sw├│j x156 / jeden x146 / 	mie─ç x606 / chcie─ç x411 / wiedzie─ç x296 / sw├│j x188 / jeden x166 / 	mie─ç x606 / chcie─ç x411 / wiedzie─ç x296 / sw├│j x188 / jeden x166 / 	2022-06-28 20:29:15.431013+00	2022-06-28 15:17:29.185991+00
195	quebonafide	Quebonafide	4095	6180	7501	7501	6	10	11	14	mie─ç x235 / chcie─ç x91 / ┼╝ycie x70 / wiedzie─ç x64 / tylko x64 / 	mie─ç x480 / chcie─ç x208 / tylko x166 / wiedzie─ç x123 / ┼╝ycie x118 / 	mie─ç x609 / chcie─ç x302 / tylko x212 / quebonafide x182 / wiedzie─ç x169 / 	mie─ç x609 / chcie─ç x302 / tylko x212 / quebonafide x182 / wiedzie─ç x169 / 	2022-06-28 20:29:15.366456+00	2022-06-28 15:17:29.089928+00
212	sentino	Sentino	2055	2055	2055	2055	129	130	130	130	mie─ç x122 / chcie─ç x101 / ┼╝aden x79 / tylko x48 / m├│wi─ç x45 / 	mie─ç x122 / chcie─ç x101 / ┼╝aden x79 / tylko x48 / m├│wi─ç x45 / 	mie─ç x122 / chcie─ç x101 / ┼╝aden x79 / tylko x48 / m├│wi─ç x45 / 	mie─ç x122 / chcie─ç x101 / ┼╝aden x79 / tylko x48 / m├│wi─ç x45 / 	2022-06-28 20:29:15.872523+00	2022-06-28 15:17:29.155708+00
196	quiz	Quiz	1564	1564	1564	1564	149	149	149	149	mie─ç x103 / wiedzie─ç x32 / chcie─ç x31 / sw├│j x27 / tylko x25 / 	mie─ç x103 / wiedzie─ç x32 / chcie─ç x31 / sw├│j x27 / tylko x25 / 	mie─ç x103 / wiedzie─ç x32 / chcie─ç x31 / sw├│j x27 / tylko x25 / 	mie─ç x103 / wiedzie─ç x32 / chcie─ç x31 / sw├│j x27 / tylko x25 / 	2022-06-28 20:29:15.953661+00	2022-06-28 15:17:29.094587+00
220	sobel	Sobel	1621	1621	1621	1621	148	148	148	148	mie─ç x185 / chcie─ç x146 / wiedzie─ç x121 / czas x83 / tylko x72 / 	mie─ç x185 / chcie─ç x146 / wiedzie─ç x121 / czas x83 / tylko x72 / 	mie─ç x185 / chcie─ç x146 / wiedzie─ç x121 / czas x83 / tylko x72 / 	mie─ç x185 / chcie─ç x146 / wiedzie─ç x121 / czas x83 / tylko x72 / 	2022-06-28 20:29:15.949075+00	2022-06-28 15:17:29.183048+00
211	schafter	Schafter	1771	1771	1771	1771	141	141	141	141	mie─ç x76 / robi─ç x53 / yeah x48 / wiedzie─ç x38 / drip x38 / 	mie─ç x76 / robi─ç x53 / yeah x48 / wiedzie─ç x38 / drip x38 / 	mie─ç x76 / robi─ç x53 / yeah x48 / wiedzie─ç x38 / drip x38 / 	mie─ç x76 / robi─ç x53 / yeah x48 / wiedzie─ç x38 / drip x38 / 	2022-06-28 20:29:15.920043+00	2022-06-28 15:17:29.152126+00
200	rafi	Rafi	3299	3299	3299	3299	58	90	91	91	mie─ç x186 / czas x127 / kt├│ry x91 / cz┼éowiek x81 / wi─Öc x74 / 	mie─ç x186 / czas x127 / kt├│ry x91 / cz┼éowiek x81 / wi─Öc x74 / 	mie─ç x186 / czas x127 / kt├│ry x91 / cz┼éowiek x81 / wi─Öc x74 / 	mie─ç x186 / czas x127 / kt├│ry x91 / cz┼éowiek x81 / wi─Öc x74 / 	2022-06-28 20:29:15.700161+00	2022-06-28 15:17:29.11089+00
192	pyskaty	Pyskaty	3044	3044	3044	3044	92	102	102	102	mie─ç x215 / wiedzie─ç x161 / chcie─ç x150 / dzi┼Ť x99 / m├│wi─ç x82 / 	mie─ç x215 / wiedzie─ç x161 / chcie─ç x150 / dzi┼Ť x99 / m├│wi─ç x82 / 	mie─ç x215 / wiedzie─ç x161 / chcie─ç x150 / dzi┼Ť x99 / m├│wi─ç x82 / 	mie─ç x215 / wiedzie─ç x161 / chcie─ç x150 / dzi┼Ť x99 / m├│wi─ç x82 / 	2022-06-28 20:29:15.747715+00	2022-06-28 15:17:29.078233+00
191	proceente	Proceente	3033	3033	3033	3033	93	103	103	103	mie─ç x142 / dzie┼ä x55 / siebie x48 / czas x48 / dobry x44 / 	mie─ç x142 / dzie┼ä x55 / siebie x48 / czas x48 / dobry x44 / 	mie─ç x142 / dzie┼ä x55 / siebie x48 / czas x48 / dobry x44 / 	mie─ç x142 / dzie┼ä x55 / siebie x48 / czas x48 / dobry x44 / 	2022-06-28 20:29:15.752382+00	2022-06-28 15:17:29.074352+00
219	smolasty	Smolasty	2139	2139	2139	2139	125	126	126	126	chcie─ç x342 / mie─ç x321 / wiedzie─ç x181 / tylko x118 / tw├│j x89 / 	chcie─ç x342 / mie─ç x321 / wiedzie─ç x181 / tylko x118 / tw├│j x89 / 	chcie─ç x342 / mie─ç x321 / wiedzie─ç x181 / tylko x118 / tw├│j x89 / 	chcie─ç x342 / mie─ç x321 / wiedzie─ç x181 / tylko x118 / tw├│j x89 / 	2022-06-28 20:29:15.855549+00	2022-06-28 15:17:29.179376+00
216	skorup	Skorup	4071	4071	4071	4071	9	61	61	61	mie─ç x171 / siebie x83 / sw├│j x80 / taki x57 / cz┼éowiek x54 / 	mie─ç x171 / siebie x83 / sw├│j x80 / taki x57 / cz┼éowiek x54 / 	mie─ç x171 / siebie x83 / sw├│j x80 / taki x57 / cz┼éowiek x54 / 	mie─ç x171 / siebie x83 / sw├│j x80 / taki x57 / cz┼éowiek x54 / 	2022-06-28 20:29:15.572333+00	2022-06-28 15:17:29.169452+00
214	sitek	Sitek	2107	2107	2107	2107	127	128	128	128	mie─ç x277 / chcie─ç x149 / wiedzie─ç x119 / m├│wi─ç x78 / kiedy x74 / 	mie─ç x277 / chcie─ç x149 / wiedzie─ç x119 / m├│wi─ç x78 / kiedy x74 / 	mie─ç x277 / chcie─ç x149 / wiedzie─ç x119 / m├│wi─ç x78 / kiedy x74 / 	mie─ç x277 / chcie─ç x149 / wiedzie─ç x119 / m├│wi─ç x78 / kiedy x74 / 	2022-06-28 20:29:15.863965+00	2022-06-28 15:17:29.162554+00
223	sokol	Sok├│┼é	3568	3568	3568	3568	32	80	80	80	mie─ç x205 / chcie─ç x90 / wiedzie─ç x76 / m├│wi─ç x68 / ┼╝ycie x66 / 	mie─ç x205 / chcie─ç x90 / wiedzie─ç x76 / m├│wi─ç x68 / ┼╝ycie x66 / 	mie─ç x205 / chcie─ç x90 / wiedzie─ç x76 / m├│wi─ç x68 / ┼╝ycie x66 / 	mie─ç x205 / chcie─ç x90 / wiedzie─ç x76 / m├│wi─ç x68 / ┼╝ycie x66 / 	2022-06-28 20:29:15.652813+00	2022-06-28 15:17:29.19284+00
251	vixen	Vixen	3243	5166	6504	6504	64	31	21	24	mie─ç x421 / chcie─ç x193 / wiedzie─ç x118 / czas x76 / ka┼╝dy x75 / 	mie─ç x736 / chcie─ç x338 / wiedzie─ç x209 / kt├│ry x170 / sw├│j x158 / 	mie─ç x995 / chcie─ç x445 / wiedzie─ç x275 / sw├│j x220 / wszystko x217 / 	mie─ç x995 / chcie─ç x445 / wiedzie─ç x275 / sw├│j x220 / wszystko x217 / 	2022-06-28 20:29:15.410071+00	2022-06-28 15:17:29.284446+00
246	tony_jazzu	Tony Jazzu	2032	2032	2032	2032	130	131	131	131	mie─ç x101 / wiedzie─ç x83 / robi─ç x43 / jazz x33 / chcie─ç x32 / 	mie─ç x101 / wiedzie─ç x83 / robi─ç x43 / jazz x33 / chcie─ç x32 / 	mie─ç x101 / wiedzie─ç x83 / robi─ç x43 / jazz x33 / chcie─ç x32 / 	mie─ç x101 / wiedzie─ç x83 / robi─ç x43 / jazz x33 / chcie─ç x32 / 	2022-06-28 20:29:15.876636+00	2022-06-28 15:17:29.269071+00
234	szpaku	Szpaku	3299	3955	3955	3955	59	66	66	66	mie─ç x295 / chcie─ç x160 / ci─ůgle x109 / robi─ç x83 / cz┼éowiek x79 / 	mie─ç x375 / chcie─ç x207 / ci─ůgle x127 / robi─ç x99 / cz┼éowiek x99 / 	mie─ç x375 / chcie─ç x207 / ci─ůgle x127 / robi─ç x99 / cz┼éowiek x99 / 	mie─ç x375 / chcie─ç x207 / ci─ůgle x127 / robi─ç x99 / cz┼éowiek x99 / 	2022-06-28 20:29:15.593806+00	2022-06-28 15:17:29.230338+00
248	tps	TPS	3405	4543	4543	4543	48	50	51	51	mie─ç x192 / chcie─ç x132 / czas x115 / wiedzie─ç x81 / ┼╝ycie x72 / 	mie─ç x303 / chcie─ç x187 / czas x170 / wiedzie─ç x120 / ┼╝ycie x113 / 	mie─ç x303 / chcie─ç x187 / czas x170 / wiedzie─ç x120 / ┼╝ycie x113 / 	mie─ç x303 / chcie─ç x187 / czas x170 / wiedzie─ç x120 / ┼╝ycie x113 / 	2022-06-28 20:29:15.525173+00	2022-06-28 15:17:29.275596+00
224	solar	Solar	3346	3346	3346	3346	53	88	89	89	mie─ç x205 / chcie─ç x128 / wiedzie─ç x70 / m├│wi─ç x66 / tylko x59 / 	mie─ç x205 / chcie─ç x128 / wiedzie─ç x70 / m├│wi─ç x66 / tylko x59 / 	mie─ç x205 / chcie─ç x128 / wiedzie─ç x70 / m├│wi─ç x66 / tylko x59 / 	mie─ç x205 / chcie─ç x128 / wiedzie─ç x70 / m├│wi─ç x66 / tylko x59 / 	2022-06-28 20:29:15.691936+00	2022-06-28 15:17:29.196538+00
229	sulin	Sulin	2952	4345	4345	4345	96	55	55	55	mie─ç x314 / chcie─ç x160 / wiedzie─ç x135 / m├│wi─ç x122 / ┼╝ycie x96 / 	mie─ç x583 / chcie─ç x291 / wiedzie─ç x250 / m├│wi─ç x239 / ┼╝ycie x206 / 	mie─ç x583 / chcie─ç x291 / wiedzie─ç x250 / m├│wi─ç x239 / ┼╝ycie x206 / 	mie─ç x583 / chcie─ç x291 / wiedzie─ç x250 / m├│wi─ç x239 / ┼╝ycie x206 / 	2022-06-28 20:29:15.542627+00	2022-06-28 15:17:29.213384+00
236	sliwa	┼Üliwa	3559	5389	5389	5389	33	26	35	35	mie─ç x218 / wiedzie─ç x119 / chcie─ç x111 / ┼╝ycie x93 / czas x80 / 	mie─ç x443 / chcie─ç x227 / wiedzie─ç x214 / ┼╝ycie x123 / czas x115 / 	mie─ç x443 / chcie─ç x227 / wiedzie─ç x214 / ┼╝ycie x123 / czas x115 / 	mie─ç x443 / chcie─ç x227 / wiedzie─ç x214 / ┼╝ycie x123 / czas x115 / 	2022-06-28 20:29:15.456199+00	2022-06-28 15:17:29.237587+00
239	tau	Tau	3727	5645	7280	7280	25	18	12	16	mie─ç x283 / chcie─ç x109 / kt├│ry x104 / wiedzie─ç x102 / ┼╝ycie x91 / 	mie─ç x536 / chcie─ç x226 / ┼╝ycie x205 / wiedzie─ç x185 / kt├│ry x180 / 	mie─ç x763 / chcie─ç x320 / kt├│ry x287 / ┼╝ycie x271 / wiedzie─ç x267 / 	mie─ç x763 / chcie─ç x320 / kt├│ry x287 / ┼╝ycie x271 / wiedzie─ç x267 / 	2022-06-28 20:29:15.375336+00	2022-06-28 15:17:29.247437+00
241	tede	Tede	3533	5786	7836	13695	37	17	6	3	mie─ç x253 / wiedzie─ç x200 / robi─ç x88 / oja┼é x88 / czas x82 / 	mie─ç x580 / wiedzie─ç x370 / czas x163 / chcie─ç x148 / oja┼é x144 / 	mie─ç x850 / wiedzie─ç x526 / chcie─ç x217 / robi─ç x211 / czas x204 / 	mie─ç x2248 / wiedzie─ç x1032 / chcie─ç x591 / robi─ç x527 / taki x449 / 	2022-06-28 20:29:15.320427+00	2022-06-28 15:17:29.253791+00
231	slawomir_szczesniak	S┼éawomir Szcz─Ö┼Ťniak	0	0	0	0	260	257	227	224					2022-06-28 20:29:16.248085+00	2022-06-28 15:17:29.220042+00
232	szczyl	Szczyl	1428	1428	1428	1428	157	157	157	157	mie─ç x148 / ┼Ťwiat x71 / tylko x68 / chcie─ç x67 / toast x64 / 	mie─ç x148 / ┼Ťwiat x71 / tylko x68 / chcie─ç x67 / toast x64 / 	mie─ç x148 / ┼Ťwiat x71 / tylko x68 / chcie─ç x67 / toast x64 / 	mie─ç x148 / ┼Ťwiat x71 / tylko x68 / chcie─ç x67 / toast x64 / 	2022-06-28 20:29:15.986583+00	2022-06-28 15:17:29.223219+00
242	teka	Teka	1120	1120	1120	1120	168	168	168	168	wiedzie─ç x63 / ta┼äcz x56 / mie─ç x38 / wszystko x33 / wr├│ci─ç x31 / 	wiedzie─ç x63 / ta┼äcz x56 / mie─ç x38 / wszystko x33 / wr├│ci─ç x31 / 	wiedzie─ç x63 / ta┼äcz x56 / mie─ç x38 / wszystko x33 / wr├│ci─ç x31 / 	wiedzie─ç x63 / ta┼äcz x56 / mie─ç x38 / wszystko x33 / wr├│ci─ç x31 / 	2022-06-28 20:29:16.029277+00	2022-06-28 15:17:29.256694+00
225	spinache	Spinache	1629	1629	1629	1629	146	146	146	146	mie─ç x83 / wiedzie─ç x39 / wszystko x34 / chcie─ç x26 / czu─ç x23 / 	mie─ç x83 / wiedzie─ç x39 / wszystko x34 / chcie─ç x26 / czu─ç x23 / 	mie─ç x83 / wiedzie─ç x39 / wszystko x34 / chcie─ç x26 / czu─ç x23 / 	mie─ç x83 / wiedzie─ç x39 / wszystko x34 / chcie─ç x26 / czu─ç x23 / 	2022-06-28 20:29:15.94079+00	2022-06-28 15:17:29.199361+00
252	vnm	VNM	3515	5868	7217	7217	39	15	14	17	mie─ç x266 / chcie─ç x123 / rapa x102 / wiedzie─ç x100 / tw├│j x94 / 	mie─ç x502 / chcie─ç x261 / wiedzie─ç x245 / tw├│j x164 / kiedy x160 / 	mie─ç x667 / chcie─ç x333 / wiedzie─ç x330 / kiedy x220 / m├│wi─ç x191 / 	mie─ç x667 / chcie─ç x333 / wiedzie─ç x330 / kiedy x220 / m├│wi─ç x191 / 	2022-06-28 20:29:15.379419+00	2022-06-28 15:17:29.28794+00
233	szesnasty	Szesnasty	2210	2210	2210	2210	123	124	124	124	mie─ç x132 / m├│wi─ç x72 / tylko x60 / chcie─ç x54 / wiedzie─ç x41 / 	mie─ç x132 / m├│wi─ç x72 / tylko x60 / chcie─ç x54 / wiedzie─ç x41 / 	mie─ç x132 / m├│wi─ç x72 / tylko x60 / chcie─ç x54 / wiedzie─ç x41 / 	mie─ç x132 / m├│wi─ç x72 / tylko x60 / chcie─ç x54 / wiedzie─ç x41 / 	2022-06-28 20:29:15.847013+00	2022-06-28 15:17:29.226748+00
226	stasiak	Stasiak	1150	1150	1150	1150	166	166	166	166	mie─ç x81 / wiedzie─ç x51 / chcie─ç x34 / dzisiaj x24 / s┼éowo x24 / 	mie─ç x81 / wiedzie─ç x51 / chcie─ç x34 / dzisiaj x24 / s┼éowo x24 / 	mie─ç x81 / wiedzie─ç x51 / chcie─ç x34 / dzisiaj x24 / s┼éowo x24 / 	mie─ç x81 / wiedzie─ç x51 / chcie─ç x34 / dzisiaj x24 / s┼éowo x24 / 	2022-06-28 20:29:16.021724+00	2022-06-28 15:17:29.203105+00
253	w_e_n_a_	W.E.N.A.	3533	4050	4050	4050	38	62	62	62	mie─ç x206 / kt├│ry x129 / chcie─ç x123 / wiedzie─ç x95 / m├│wi─ç x91 / 	mie─ç x275 / chcie─ç x155 / kt├│ry x154 / wiedzie─ç x121 / m├│wi─ç x110 / 	mie─ç x275 / chcie─ç x155 / kt├│ry x154 / wiedzie─ç x121 / m├│wi─ç x110 / 	mie─ç x275 / chcie─ç x155 / kt├│ry x154 / wiedzie─ç x121 / m├│wi─ç x110 / 	2022-06-28 20:29:15.576476+00	2022-06-28 15:17:29.290572+00
249	tymek	Tymek	2546	3640	3640	3640	111	73	73	74	mie─ç x320 / chcie─ç x221 / oja┼é x158 / siebie x121 / wiedzie─ç x118 / 	mie─ç x574 / chcie─ç x312 / siebie x234 / oja┼é x185 / wiedzie─ç x175 / 	mie─ç x574 / chcie─ç x312 / siebie x234 / oja┼é x185 / wiedzie─ç x175 / 	mie─ç x574 / chcie─ç x312 / siebie x234 / oja┼é x185 / wiedzie─ç x175 / 	2022-06-28 20:29:15.627528+00	2022-06-28 15:17:29.278532+00
247	toony	Toony	2109	2109	2109	2109	126	127	127	127	mie─ç x65 / wiedzie─ç x61 / ┼╝ycie x39 / polak x37 / serce x36 / 	mie─ç x65 / wiedzie─ç x61 / ┼╝ycie x39 / polak x37 / serce x36 / 	mie─ç x65 / wiedzie─ç x61 / ┼╝ycie x39 / polak x37 / serce x36 / 	mie─ç x65 / wiedzie─ç x61 / ┼╝ycie x39 / polak x37 / serce x36 / 	2022-06-28 20:29:15.859604+00	2022-06-28 15:17:29.272743+00
254	wac_toja	Wac Toja	2829	2829	2829	2829	103	109	109	109	mie─ç x292 / chcie─ç x177 / robi─ç x83 / czu─ç x80 / tylko x76 / 	mie─ç x292 / chcie─ç x177 / robi─ç x83 / czu─ç x80 / tylko x76 / 	mie─ç x292 / chcie─ç x177 / robi─ç x83 / czu─ç x80 / tylko x76 / 	mie─ç x292 / chcie─ç x177 / robi─ç x83 / czu─ç x80 / tylko x76 / 	2022-06-28 20:29:15.778811+00	2022-06-28 15:17:29.293746+00
261	wisnix	Wi┼Ťnix	375	375	375	375	199	200	200	199	mie─ç x49 / ┼╝eby x21 / chcie─ç x16 / wszystko x15 / nawet x13 / 	mie─ç x49 / ┼╝eby x21 / chcie─ç x16 / wszystko x15 / nawet x13 / 	mie─ç x49 / ┼╝eby x21 / chcie─ç x16 / wszystko x15 / nawet x13 / 	mie─ç x49 / ┼╝eby x21 / chcie─ç x16 / wszystko x15 / nawet x13 / 	2022-06-28 20:29:16.154606+00	2022-06-28 15:17:29.315616+00
271	zeamsone	Zeamsone	2368	3114	3114	3114	118	100	100	100	mie─ç x337 / chcie─ç x248 / m├│wi─ç x136 / robi─ç x125 / dzi┼Ť x112 / 	mie─ç x529 / chcie─ç x429 / m├│wi─ç x167 / robi─ç x158 / wiedzie─ç x143 / 	mie─ç x529 / chcie─ç x429 / m├│wi─ç x167 / robi─ç x158 / wiedzie─ç x143 / 	mie─ç x529 / chcie─ç x429 / m├│wi─ç x167 / robi─ç x158 / wiedzie─ç x143 / 	2022-06-28 20:29:15.739401+00	2022-06-28 15:17:29.346216+00
267	young_multi	Young Multi	2442	2442	2442	2442	115	117	117	117	chcie─ç x235 / mie─ç x235 / wiedzie─ç x191 / yeah x176 / robi─ç x137 / 	chcie─ç x235 / mie─ç x235 / wiedzie─ç x191 / yeah x176 / robi─ç x137 / 	chcie─ç x235 / mie─ç x235 / wiedzie─ç x191 / yeah x176 / robi─ç x137 / 	chcie─ç x235 / mie─ç x235 / wiedzie─ç x191 / yeah x176 / robi─ç x137 / 	2022-06-28 20:29:15.817358+00	2022-06-28 15:17:29.333647+00
255	waco	Waco	1799	1799	1799	1799	140	140	140	140	mie─ç x72 / chcie─ç x51 / czas x44 / ┼╝ycie x41 / wiedzie─ç x40 / 	mie─ç x72 / chcie─ç x51 / czas x44 / ┼╝ycie x41 / wiedzie─ç x40 / 	mie─ç x72 / chcie─ç x51 / czas x44 / ┼╝ycie x41 / wiedzie─ç x40 / 	mie─ç x72 / chcie─ç x51 / czas x44 / ┼╝ycie x41 / wiedzie─ç x40 / 	2022-06-28 20:29:15.915226+00	2022-06-28 15:17:29.297086+00
265	yaro	Yaro	1680	1680	1680	1680	144	144	144	144	mie─ç x87 / wiedzie─ç x46 / chcie─ç x45 / dzi┼Ť x40 / ka┼╝dy x33 / 	mie─ç x87 / wiedzie─ç x46 / chcie─ç x45 / dzi┼Ť x40 / ka┼╝dy x33 / 	mie─ç x87 / wiedzie─ç x46 / chcie─ç x45 / dzi┼Ť x40 / ka┼╝dy x33 / 	mie─ç x87 / wiedzie─ç x46 / chcie─ç x45 / dzi┼Ť x40 / ka┼╝dy x33 / 	2022-06-28 20:29:15.93241+00	2022-06-28 15:17:29.327325+00
263	wojtas	Wojtas	1240	1240	1240	1240	164	164	164	164	mie─ç x42 / czas x26 / sw├│j x20 / kt├│ry x19 / rapa x18 / 	mie─ç x42 / czas x26 / sw├│j x20 / kt├│ry x19 / rapa x18 / 	mie─ç x42 / czas x26 / sw├│j x20 / kt├│ry x19 / rapa x18 / 	mie─ç x42 / czas x26 / sw├│j x20 / kt├│ry x19 / rapa x18 / 	2022-06-28 20:29:16.014072+00	2022-06-28 15:17:29.321683+00
270	zawodnik	Zawodnik	574	574	574	574	188	188	188	188	mie─ç x27 / tylko x22 / wiedzie─ç x20 / wszystko x14 / chcie─ç x13 / 	mie─ç x27 / tylko x22 / wiedzie─ç x20 / wszystko x14 / chcie─ç x13 / 	mie─ç x27 / tylko x22 / wiedzie─ç x20 / wszystko x14 / chcie─ç x13 / 	mie─ç x27 / tylko x22 / wiedzie─ç x20 / wszystko x14 / chcie─ç x13 / 	2022-06-28 20:29:16.112837+00	2022-06-28 15:17:29.343148+00
269	zajka	Zajka	0	0	0	0	269	268	251	237					2022-06-28 20:29:16.303004+00	2022-06-28 15:17:29.339924+00
243	ten_typ_mes	Ten Typ Mes	3931	6871	9578	10546	15	1	1	6	mie─ç x245 / wiedzie─ç x150 / kt├│ry x121 / chcie─ç x94 / m├│wi─ç x86 / 	mie─ç x484 / wiedzie─ç x228 / chcie─ç x208 / kt├│ry x194 / tylko x127 / 	mie─ç x700 / wiedzie─ç x290 / chcie─ç x289 / kt├│ry x237 / m├│wi─ç x177 / 	mie─ç x770 / chcie─ç x342 / wiedzie─ç x339 / kt├│ry x267 / tylko x207 / 	2022-06-28 20:29:15.33284+00	2022-06-28 15:17:29.259931+00
12	b_r_o	B.R.O	2936	4375	5718	7567	98	54	33	13	mie─ç x372 / wiedzie─ç x162 / rapa x130 / chcie─ç x101 / kt├│ry x95 / 	mie─ç x615 / wiedzie─ç x422 / rapa x230 / kt├│ry x197 / chcie─ç x194 / 	mie─ç x893 / wiedzie─ç x664 / chcie─ç x313 / rapa x293 / m├│wi─ç x288 / 	mie─ç x1297 / wiedzie─ç x869 / chcie─ç x519 / m├│wi─ç x434 / dzi┼Ť x408 / 	2022-06-28 20:29:15.362405+00	2022-06-28 15:17:28.463345+00
272	zeus	Zeus	3167	5178	6784	6784	76	30	17	19	mie─ç x344 / czas x121 / chcie─ç x113 / tylko x106 / wiedzie─ç x103 / 	mie─ç x629 / chcie─ç x263 / czas x206 / wiedzie─ç x196 / tylko x170 / 	mie─ç x807 / chcie─ç x358 / czas x305 / ka┼╝dy x239 / wiedzie─ç x237 / 	mie─ç x807 / chcie─ç x358 / czas x305 / ka┼╝dy x239 / wiedzie─ç x237 / 	2022-06-28 20:29:15.38851+00	2022-06-28 15:17:29.349494+00
275	zabson	┼╗abson	3470	5429	5429	5429	43	23	34	34	mie─ç x283 / chcie─ç x209 / tylko x114 / wiedzie─ç x84 / thing x72 / 	mie─ç x546 / chcie─ç x359 / tylko x187 / robi─ç x142 / wiedzie─ç x125 / 	mie─ç x546 / chcie─ç x359 / tylko x187 / robi─ç x142 / wiedzie─ç x125 / 	mie─ç x546 / chcie─ç x359 / tylko x187 / robi─ç x142 / wiedzie─ç x125 / 	2022-06-28 20:29:15.452266+00	2022-06-28 15:17:29.358513+00
184	planet_anm	Planet ANM	3177	4655	4655	4655	74	46	47	47	mie─ç x359 / chcie─ç x134 / tylko x93 / wiedzie─ç x92 / m├│wi─ç x90 / 	mie─ç x654 / chcie─ç x237 / wiedzie─ç x187 / tylko x161 / siebie x146 / 	mie─ç x654 / chcie─ç x237 / wiedzie─ç x187 / tylko x161 / siebie x146 / 	mie─ç x654 / chcie─ç x237 / wiedzie─ç x187 / tylko x161 / siebie x146 / 	2022-06-28 20:29:15.507927+00	2022-06-28 15:17:29.045715+00
258	white_2115	White 2115	2497	3022	3022	3022	114	104	104	104	mie─ç x263 / chcie─ç x253 / wiedzie─ç x135 / tylko x111 / czas x102 / 	mie─ç x331 / chcie─ç x325 / wiedzie─ç x169 / yeah x154 / czas x131 / 	mie─ç x331 / chcie─ç x325 / wiedzie─ç x169 / yeah x154 / czas x131 / 	mie─ç x331 / chcie─ç x325 / wiedzie─ç x169 / yeah x154 / czas x131 / 	2022-06-28 20:29:15.756367+00	2022-06-28 15:17:29.30626+00
266	young_igi	Young Igi	2314	2323	2323	2323	121	122	122	122	mie─ç x411 / chcie─ç x247 / wiedzie─ç x175 / m├│wi─ç x121 / robi─ç x93 / 	mie─ç x426 / chcie─ç x256 / wiedzie─ç x175 / m├│wi─ç x123 / robi─ç x94 / 	mie─ç x426 / chcie─ç x256 / wiedzie─ç x175 / m├│wi─ç x123 / robi─ç x94 / 	mie─ç x426 / chcie─ç x256 / wiedzie─ç x175 / m├│wi─ç x123 / robi─ç x94 / 	2022-06-28 20:29:15.838938+00	2022-06-28 15:17:29.331+00
274	zorak	Zorak	1021	1021	1021	1021	172	172	172	172	mie─ç x52 / e┼édezet x27 / krew x23 / chcie─ç x22 / poddaja x16 / 	mie─ç x52 / e┼édezet x27 / krew x23 / chcie─ç x22 / poddaja x16 / 	mie─ç x52 / e┼édezet x27 / krew x23 / chcie─ç x22 / poddaja x16 / 	mie─ç x52 / e┼édezet x27 / krew x23 / chcie─ç x22 / poddaja x16 / 	2022-06-28 20:29:16.044055+00	2022-06-28 15:17:29.355398+00
264	wsz	WSZ	453	453	453	453	195	195	195	195	kt├│ry x9 / chcie─ç x9 / sw├│j x9 / mie─ç x8 / cz┼éowiek x8 / 	kt├│ry x9 / chcie─ç x9 / sw├│j x9 / mie─ç x8 / cz┼éowiek x8 / 	kt├│ry x9 / chcie─ç x9 / sw├│j x9 / mie─ç x8 / cz┼éowiek x8 / 	kt├│ry x9 / chcie─ç x9 / sw├│j x9 / mie─ç x8 / cz┼éowiek x8 / 	2022-06-28 20:29:16.139629+00	2022-06-28 15:17:29.324458+00
99	kali	Kali	3545	6267	7691	7691	35	7	8	12	mie─ç x252 / chcie─ç x150 / gdzie x89 / ┼╝ycie x83 / kala x70 / 	mie─ç x401 / chcie─ç x266 / gdzie x152 / ┼╝ycie x136 / wiedzie─ç x128 / 	mie─ç x523 / chcie─ç x362 / gdzie x190 / ┼╝ycie x183 / wiedzie─ç x178 / 	mie─ç x523 / chcie─ç x362 / gdzie x190 / ┼╝ycie x183 / wiedzie─ç x178 / 	2022-06-28 20:29:15.358176+00	2022-06-28 15:17:28.763763+00
14	jakub_bartczak	Jakub Bartczak	0	0	0	0	272	272	266	254					2022-06-28 20:29:16.385315+00	2022-06-28 15:17:28.469771+00
238	tadek	Tadek	332	332	332	332	203	203	203	203	polski x14 / wygrana x7 / niemiecki x7 / walczy─ç x6 / polak x6 / 	polski x14 / wygrana x7 / niemiecki x7 / walczy─ç x6 / polak x6 / 	polski x14 / wygrana x7 / niemiecki x7 / walczy─ç x6 / polak x6 / 	polski x14 / wygrana x7 / niemiecki x7 / walczy─ç x6 / polak x6 / 	2022-06-28 20:29:16.16966+00	2022-06-28 15:17:29.243985+00
89	jotuze	Jotuze	0	0	0	0	273	273	267	255					2022-06-28 20:29:16.390282+00	2022-06-28 15:17:28.732729+00
222	solei	Solei	246	246	246	246	206	206	206	206	┼Ťl─ůsk x6 / wi─Öc x6 / blok x6 / mie─ç x5 / wiedzie─ç x5 / 	┼Ťl─ůsk x6 / wi─Öc x6 / blok x6 / mie─ç x5 / wiedzie─ç x5 / 	┼Ťl─ůsk x6 / wi─Öc x6 / blok x6 / mie─ç x5 / wiedzie─ç x5 / 	┼Ťl─ůsk x6 / wi─Öc x6 / blok x6 / mie─ç x5 / wiedzie─ç x5 / 	2022-06-28 20:29:16.180586+00	2022-06-28 15:17:29.189448+00
76	hans	Hans	221	221	221	221	209	209	209	209	zwrotek x11 / parodia x11 / utw├│r x11 / wiedzie─ç x7 / mie─ç x6 / 	zwrotek x11 / parodia x11 / utw├│r x11 / wiedzie─ç x7 / mie─ç x6 / 	zwrotek x11 / parodia x11 / utw├│r x11 / wiedzie─ç x7 / mie─ç x6 / 	zwrotek x11 / parodia x11 / utw├│r x11 / wiedzie─ç x7 / mie─ç x6 / 	2022-06-28 20:29:16.19202+00	2022-06-28 15:17:28.690633+00
65	funky_filon	Funky Filon	217	217	217	217	210	210	210	210	czik x21 / ma┼éy x9 / linka x9 / chinka x8 / mie─ç x7 / 	czik x21 / ma┼éy x9 / linka x9 / chinka x8 / mie─ç x7 / 	czik x21 / ma┼éy x9 / linka x9 / chinka x8 / mie─ç x7 / 	czik x21 / ma┼éy x9 / linka x9 / chinka x8 / mie─ç x7 / 	2022-06-28 20:29:16.195922+00	2022-06-28 15:17:28.648635+00
206	rudy_mrw	Rudy MRW	1483	1483	1483	1483	156	156	156	156	mie─ç x73 / wzi─ů─ç x45 / zdejmij x41 / chcie─ç x35 / wiedzie─ç x27 / 	mie─ç x73 / wzi─ů─ç x45 / zdejmij x41 / chcie─ç x35 / wiedzie─ç x27 / 	mie─ç x73 / wzi─ů─ç x45 / zdejmij x41 / chcie─ç x35 / wiedzie─ç x27 / 	mie─ç x73 / wzi─ů─ç x45 / zdejmij x41 / chcie─ç x35 / wiedzie─ç x27 / 	2022-06-28 20:29:15.982526+00	2022-06-28 15:17:29.134842+00
124	lukatricks	Lukatricks	1296	1296	1296	1296	161	161	161	161	mie─ç x82 / chcie─ç x41 / m├│wi─ç x28 / wiedzie─ç x27 / ┼╝ycie x25 / 	mie─ç x82 / chcie─ç x41 / m├│wi─ç x28 / wiedzie─ç x27 / ┼╝ycie x25 / 	mie─ç x82 / chcie─ç x41 / m├│wi─ç x28 / wiedzie─ç x27 / ┼╝ycie x25 / 	mie─ç x82 / chcie─ç x41 / m├│wi─ç x28 / wiedzie─ç x27 / ┼╝ycie x25 / 	2022-06-28 20:29:16.003055+00	2022-06-28 15:17:28.840531+00
168	oska	O┼Ťka	167	167	167	167	211	211	211	211	wyja x26 / lala x18 / lalala x18 / eopseo x17 / nareul x13 / 	wyja x26 / lala x18 / lalala x18 / eopseo x17 / nareul x13 / 	wyja x26 / lala x18 / lalala x18 / eopseo x17 / nareul x13 / 	wyja x26 / lala x18 / lalala x18 / eopseo x17 / nareul x13 / 	2022-06-28 20:29:16.199593+00	2022-06-28 15:17:28.983632+00
47	dono	Dono	121	121	121	121	212	212	212	212	your x27 / wanna x15 / baba x11 / there x9 / wanted x8 / 	your x27 / wanna x15 / baba x11 / there x9 / wanted x8 / 	your x27 / wanna x15 / baba x11 / there x9 / wanted x8 / 	your x27 / wanna x15 / baba x11 / there x9 / wanted x8 / 	2022-06-28 20:29:16.203609+00	2022-06-28 15:17:28.583562+00
119	l_u_c_	L.U.C.	75	75	75	75	213	213	213	213	dzieciak x2 / onkologia x1 / robi─ç x1 / warsztaty x1 / gra─ç x1 / 	dzieciak x2 / onkologia x1 / robi─ç x1 / warsztaty x1 / gra─ç x1 / 	dzieciak x2 / onkologia x1 / robi─ç x1 / warsztaty x1 / gra─ç x1 / 	dzieciak x2 / onkologia x1 / robi─ç x1 / warsztaty x1 / gra─ç x1 / 	2022-06-28 20:29:16.207028+00	2022-06-28 15:17:28.824992+00
186	pogz	Pogz	0	0	0	0	274	274	268	256					2022-06-28 20:29:16.394666+00	2022-06-28 15:17:29.053974+00
57	sebastian_fabijanski	Sebastian Fabija┼äski	1084	1084	1084	1084	169	169	169	169	mie─ç x51 / wiedzie─ç x21 / chcie─ç x19 / tylko x17 / wszystko x17 / 	mie─ç x51 / wiedzie─ç x21 / chcie─ç x19 / tylko x17 / wszystko x17 / 	mie─ç x51 / wiedzie─ç x21 / chcie─ç x19 / tylko x17 / wszystko x17 / 	mie─ç x51 / wiedzie─ç x21 / chcie─ç x19 / tylko x17 / wszystko x17 / 	2022-06-28 20:29:16.032816+00	2022-06-28 15:17:28.620831+00
3	4p	4P	442	442	442	442	197	197	197	197	kakao x25 / mie─ç x16 / jeden x8 / pierwszy x8 / sw├│j x7 / 	kakao x25 / mie─ç x16 / jeden x8 / pierwszy x8 / sw├│j x7 / 	kakao x25 / mie─ç x16 / jeden x8 / pierwszy x8 / sw├│j x7 / 	kakao x25 / mie─ç x16 / jeden x8 / pierwszy x8 / sw├│j x7 / 	2022-06-28 20:29:16.146894+00	2022-06-28 15:17:28.43462+00
147	moral	Moral	399	399	399	399	198	198	198	198	chcie─ç x14 / mie─ç x13 / wiedzie─ç x11 / widzie─ç x10 / patrzysz x10 / 	chcie─ç x14 / mie─ç x13 / wiedzie─ç x11 / widzie─ç x10 / patrzysz x10 / 	chcie─ç x14 / mie─ç x13 / wiedzie─ç x11 / widzie─ç x10 / patrzysz x10 / 	chcie─ç x14 / mie─ç x13 / wiedzie─ç x11 / widzie─ç x10 / patrzysz x10 / 	2022-06-28 20:29:16.15078+00	2022-06-28 15:17:28.913055+00
13	bak	Bak	0	0	0	0	271	271	260	253					2022-06-28 20:29:16.38036+00	2022-06-28 15:17:28.466822+00
59	filipek	Filipek	3840	6210	7783	8584	19	8	7	10	mie─ç x305 / kurwa x168 / chcie─ç x112 / wiedzie─ç x74 / tw├│j x66 / 	mie─ç x569 / kurwa x260 / chcie─ç x205 / wiedzie─ç x135 / kt├│ry x135 / 	mie─ç x882 / chcie─ç x349 / kurwa x297 / ┼╝ycie x218 / kt├│ry x213 / 	mie─ç x1112 / chcie─ç x436 / kurwa x317 / ┼╝ycie x297 / kt├│ry x269 / 	2022-06-28 20:29:15.349936+00	2022-06-28 15:17:28.627736+00
96	kaen	Kaen	3772	5870	7592	7820	22	14	9	11	mie─ç x202 / chcie─ç x107 / ┼╝ycie x75 / kt├│ry x63 / wiedzie─ç x62 / 	mie─ç x433 / chcie─ç x258 / wiele x175 / ┼╝ycie x144 / siebie x125 / 	mie─ç x674 / chcie─ç x352 / wiele x281 / siebie x239 / wiedzie─ç x235 / 	mie─ç x716 / chcie─ç x358 / wiele x296 / wiedzie─ç x249 / siebie x244 / 	2022-06-28 20:29:15.354012+00	2022-06-28 15:17:28.754681+00
202	ramona_23	Ramona 23	2903	2903	2903	2903	100	107	107	107	mie─ç x201 / kt├│ry x107 / ka┼╝dy x105 / chcie─ç x89 / tw├│j x80 / 	mie─ç x201 / kt├│ry x107 / ka┼╝dy x105 / chcie─ç x89 / tw├│j x80 / 	mie─ç x201 / kt├│ry x107 / ka┼╝dy x105 / chcie─ç x89 / tw├│j x80 / 	mie─ç x201 / kt├│ry x107 / ka┼╝dy x105 / chcie─ç x89 / tw├│j x80 / 	2022-06-28 20:29:15.769907+00	2022-06-28 15:17:29.119071+00
178	peku	P─Öku	1553	1553	1553	1553	151	151	151	151	mie─ç x104 / szary x53 / kolejny x46 / przerwa x46 / wiedzie─ç x44 / 	mie─ç x104 / szary x53 / kolejny x46 / przerwa x46 / wiedzie─ç x44 / 	mie─ç x104 / szary x53 / kolejny x46 / przerwa x46 / wiedzie─ç x44 / 	mie─ç x104 / szary x53 / kolejny x46 / przerwa x46 / wiedzie─ç x44 / 	2022-06-28 20:29:15.961885+00	2022-06-28 15:17:29.021882+00
\.


--
-- Name: musicians_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.musicians_id_seq', 277, true);


--
-- Name: alembic_version alembic_version_pkc; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alembic_version
    ADD CONSTRAINT alembic_version_pkc PRIMARY KEY (version_num);


--
-- Name: musicians musicians_artistName_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.musicians
    ADD CONSTRAINT "musicians_artistName_key" UNIQUE ("artistName");


--
-- Name: musicians musicians_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.musicians
    ADD CONSTRAINT musicians_name_key UNIQUE (name);


--
-- Name: musicians musicians_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.musicians
    ADD CONSTRAINT musicians_pkey PRIMARY KEY (id);


--
-- Name: ix_musicians_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ix_musicians_id ON public.musicians USING btree (id);


--
-- PostgreSQL database dump complete
--

--
-- PostgreSQL database cluster dump complete
--

