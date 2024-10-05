--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: blackhole; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.blackhole (
    blackhole_id integer NOT NULL,
    gravity integer,
    galaxy_id integer,
    wormhole boolean DEFAULT false NOT NULL,
    author_views character varying(255),
    name character varying(255)
);


ALTER TABLE public.blackhole OWNER TO freecodecamp;

--
-- Name: blachole_blackhole_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.blachole_blackhole_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.blachole_blackhole_id_seq OWNER TO freecodecamp;

--
-- Name: blachole_blackhole_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.blachole_blackhole_id_seq OWNED BY public.blackhole.blackhole_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    speed integer,
    description text,
    name character varying(255) NOT NULL,
    rotation_speed integer DEFAULT 3223 NOT NULL,
    author_views character varying(255)
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(255) NOT NULL,
    has_water boolean NOT NULL,
    planet_id integer NOT NULL,
    name_code character varying(255) NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(255) NOT NULL,
    amount_of_people numeric,
    time_travel boolean DEFAULT false NOT NULL,
    star_id integer NOT NULL,
    author_views character varying(255)
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    size integer NOT NULL,
    radius integer NOT NULL,
    color character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    galaxy_id integer,
    author_views character varying(255)
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: blackhole blackhole_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackhole ALTER COLUMN blackhole_id SET DEFAULT nextval('public.blachole_blackhole_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: blackhole; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.blackhole VALUES (1, 10, 1, true, NULL, NULL);
INSERT INTO public.blackhole VALUES (2, 11, 2, false, NULL, NULL);
INSERT INTO public.blackhole VALUES (3, 16, 3, true, NULL, NULL);
INSERT INTO public.blackhole VALUES (4, 12, 4, false, NULL, NULL);
INSERT INTO public.blackhole VALUES (5, 9, 5, true, NULL, NULL);
INSERT INTO public.blackhole VALUES (6, 10, 6, false, NULL, NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, NULL, NULL, 'andromeda', 3223, NULL);
INSERT INTO public.galaxy VALUES (2, NULL, NULL, 'Milky Way', 3223, NULL);
INSERT INTO public.galaxy VALUES (3, NULL, NULL, 'AndromedaNegative', 3223, NULL);
INSERT INTO public.galaxy VALUES (4, NULL, NULL, 'Triangulum', 3223, NULL);
INSERT INTO public.galaxy VALUES (5, NULL, NULL, 'Whirlpool', 3223, NULL);
INSERT INTO public.galaxy VALUES (6, NULL, NULL, 'Sombrero', 3223, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (2, 'Moon 1 of Planet 21', false, 21, 'M1');
INSERT INTO public.moon VALUES (3, 'Moon 1 of Planet 22', true, 22, 'M2');
INSERT INTO public.moon VALUES (4, 'Moon 1 of Planet 23', false, 23, 'M3');
INSERT INTO public.moon VALUES (5, 'Moon 1 of Planet 24', true, 24, 'M4');
INSERT INTO public.moon VALUES (6, 'Moon 1 of Planet 25', false, 25, 'M5');
INSERT INTO public.moon VALUES (7, 'Moon 1 of Planet 26', true, 26, 'M6');
INSERT INTO public.moon VALUES (8, 'Moon 1 of Planet 27', false, 27, 'M7');
INSERT INTO public.moon VALUES (9, 'Moon 1 of Planet 28', true, 28, 'M8');
INSERT INTO public.moon VALUES (10, 'Moon 1 of Planet 29', false, 29, 'M9');
INSERT INTO public.moon VALUES (11, 'Moon 1 of Planet 30', true, 30, 'M10');
INSERT INTO public.moon VALUES (12, 'Moon 1 of Planet 31', false, 31, 'M11');
INSERT INTO public.moon VALUES (13, 'Moon 1 of Planet 32', true, 32, 'M12');
INSERT INTO public.moon VALUES (14, 'Moon 1 of Planet 33', false, 33, 'M13');
INSERT INTO public.moon VALUES (15, 'Moon 1 of Planet 34', true, 34, 'M14');
INSERT INTO public.moon VALUES (16, 'Moon 1 of Planet 35', false, 35, 'M15');
INSERT INTO public.moon VALUES (17, 'Moon 1 of Planet 36', true, 36, 'M16');
INSERT INTO public.moon VALUES (18, 'Moon 1 of Planet 37', false, 37, 'M17');
INSERT INTO public.moon VALUES (19, 'Moon 1 of Planet 38', true, 38, 'M18');
INSERT INTO public.moon VALUES (20, 'Moon 1 of Planet 39', false, 39, 'M19');
INSERT INTO public.moon VALUES (21, 'Moon 1 of Planet 40', true, 40, 'M20');
INSERT INTO public.moon VALUES (22, 'Moon 2 of Planet 21', false, 21, 'M21');
INSERT INTO public.moon VALUES (23, 'Moon 2 of Planet 22', true, 22, 'M22');
INSERT INTO public.moon VALUES (24, 'Moon 2 of Planet 23', false, 23, 'M23');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (21, 'Mercury', NULL, false, 4, NULL);
INSERT INTO public.planet VALUES (22, 'Venus', NULL, false, 4, NULL);
INSERT INTO public.planet VALUES (23, 'Earth', NULL, false, 4, NULL);
INSERT INTO public.planet VALUES (24, 'Mars', NULL, false, 4, NULL);
INSERT INTO public.planet VALUES (25, 'Jupiter', NULL, false, 4, NULL);
INSERT INTO public.planet VALUES (26, 'Saturn', NULL, false, 5, NULL);
INSERT INTO public.planet VALUES (27, 'Uranus', NULL, false, 5, NULL);
INSERT INTO public.planet VALUES (28, 'Neptune', NULL, false, 5, NULL);
INSERT INTO public.planet VALUES (29, 'Proxima b', NULL, false, 5, NULL);
INSERT INTO public.planet VALUES (30, 'Sirius b', NULL, false, 6, NULL);
INSERT INTO public.planet VALUES (31, 'Betelgeuse I', NULL, false, 6, NULL);
INSERT INTO public.planet VALUES (32, 'Betelgeuse II', NULL, false, 6, NULL);
INSERT INTO public.planet VALUES (33, 'Rigel I', NULL, false, 7, NULL);
INSERT INTO public.planet VALUES (34, 'Rigel II', NULL, false, 7, NULL);
INSERT INTO public.planet VALUES (35, 'Rigel III', NULL, false, 7, NULL);
INSERT INTO public.planet VALUES (36, 'Procyon b', NULL, false, 8, NULL);
INSERT INTO public.planet VALUES (37, 'Antares I', NULL, false, 9, NULL);
INSERT INTO public.planet VALUES (38, 'Antares II', NULL, false, 9, NULL);
INSERT INTO public.planet VALUES (39, 'Antares III', NULL, false, 9, NULL);
INSERT INTO public.planet VALUES (40, 'Antares IV', NULL, false, 9, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (4, 2, 696340, 'Yellow', 'Sun', 1, NULL);
INSERT INTO public.star VALUES (5, 3, 602680, 'Blue', 'Sirius', 2, NULL);
INSERT INTO public.star VALUES (6, 4, 1737000, 'Red', 'Betelgeuse', 1, NULL);
INSERT INTO public.star VALUES (7, 4, 1392000, 'Blue', 'Rigel', 2, NULL);
INSERT INTO public.star VALUES (8, 2, 346420, 'White', 'Procyon', 1, NULL);
INSERT INTO public.star VALUES (9, 4, 1010000, 'Red', 'Antares', 2, NULL);


--
-- Name: blachole_blackhole_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.blachole_blackhole_id_seq', 1, false);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 24, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 40, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 9, true);


--
-- Name: blackhole blachole_author_views_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackhole
    ADD CONSTRAINT blachole_author_views_key UNIQUE (author_views);


--
-- Name: blackhole blachole_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackhole
    ADD CONSTRAINT blachole_pkey PRIMARY KEY (blackhole_id);


--
-- Name: galaxy galaxy_author_views_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_author_views_key UNIQUE (author_views);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_code_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_code_key UNIQUE (name_code);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_author_views_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_author_views_key UNIQUE (author_views);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_author_views_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_author_views_key UNIQUE (author_views);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star fk_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

