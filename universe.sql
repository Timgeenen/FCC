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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    color text NOT NULL,
    age integer NOT NULL,
    radius_in_km numeric(10,1)
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
    name character varying(30) NOT NULL,
    color text NOT NULL,
    age integer NOT NULL,
    radius_in_km numeric(10,1),
    populated boolean NOT NULL,
    planet_id integer
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
    name character varying(30) NOT NULL,
    color text NOT NULL,
    age integer NOT NULL,
    radius_in_km numeric(10,1),
    populated boolean NOT NULL,
    star_id integer
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
-- Name: project; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.project (
    fill integer NOT NULL,
    name character varying(30),
    project_id integer NOT NULL
);


ALTER TABLE public.project OWNER TO freecodecamp;

--
-- Name: project_fill_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.project_fill_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.project_fill_seq OWNER TO freecodecamp;

--
-- Name: project_fill_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.project_fill_seq OWNED BY public.project.fill;


--
-- Name: project_project_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.project_project_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.project_project_id_seq OWNER TO freecodecamp;

--
-- Name: project_project_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.project_project_id_seq OWNED BY public.project.project_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    color text NOT NULL,
    age integer NOT NULL,
    radius_in_km numeric(10,1),
    galaxy_id integer
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
-- Name: project fill; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.project ALTER COLUMN fill SET DEFAULT nextval('public.project_fill_seq'::regclass);


--
-- Name: project project_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.project ALTER COLUMN project_id SET DEFAULT nextval('public.project_project_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (2, 'Milkyway Galaxy', 'Red', 1361, 52850.0);
INSERT INTO public.galaxy VALUES (3, 'Andromeda Galaxy', 'Purple', 1001, 110000.0);
INSERT INTO public.galaxy VALUES (4, 'Triangulum Galaxy', 'Orange', 1361, 25000.0);
INSERT INTO public.galaxy VALUES (5, 'Large Magellanic Cloud', 'Green', 1101, 7000.0);
INSERT INTO public.galaxy VALUES (6, 'Small Magellanic Cloud', 'Yellow', 1300, 3500.0);
INSERT INTO public.galaxy VALUES (7, 'Whirlpool Galaxy', 'Red', 400, 43000.0);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 'Brown-Gray', 453, 1737.0, false, 3);
INSERT INTO public.moon VALUES (2, 'Deimos', 'Reddish', 450, 6.0, false, 4);
INSERT INTO public.moon VALUES (3, 'Phobos', 'Gray-Reddish', 430, 11267.0, false, 4);
INSERT INTO public.moon VALUES (4, 'Amalthea', 'Reddish', 450, 84.0, false, 5);
INSERT INTO public.moon VALUES (5, 'Callisto', 'Dark', 400, 2400.0, false, 5);
INSERT INTO public.moon VALUES (6, 'Europa', 'White-Beige', 450, 1561.0, false, 5);
INSERT INTO public.moon VALUES (7, 'Ganymede', 'Brownish-Gray', 450, 2634.0, false, 5);
INSERT INTO public.moon VALUES (8, 'Io', 'Brown-Green', 450, 1822.0, false, 5);
INSERT INTO public.moon VALUES (9, 'Dione', 'Steel-Blue', 400, 561.0, false, 6);
INSERT INTO public.moon VALUES (10, 'Enceladus', 'Silver', 100, 252.0, false, 6);
INSERT INTO public.moon VALUES (11, 'Hyperion', 'Reddish', 450, 135.0, false, 6);
INSERT INTO public.moon VALUES (12, 'Iapetus', 'Dark', 456, 734.0, false, 6);
INSERT INTO public.moon VALUES (13, 'Mimas', 'Yellow-Gray', 450, 198.0, false, 6);
INSERT INTO public.moon VALUES (14, 'Phoebe', 'Dark', 450, 107.0, false, 6);
INSERT INTO public.moon VALUES (15, 'Rhea', 'Reddish', 400, 764.0, false, 6);
INSERT INTO public.moon VALUES (16, 'Tethys', 'Yellowish', 456, 531.0, false, 6);
INSERT INTO public.moon VALUES (17, 'Titan', 'Orange', 100, 2575.0, false, 6);
INSERT INTO public.moon VALUES (18, 'Ariel', 'Neutral', 100, 587.0, false, 7);
INSERT INTO public.moon VALUES (19, 'Miranda', 'Gray', 100, 258.0, false, 7);
INSERT INTO public.moon VALUES (20, 'Triton', 'Reddish', 50, 1353.0, false, 8);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 'Slate-Grey', 450, 2439.0, false, 7);
INSERT INTO public.planet VALUES (2, 'Venus', 'Yellow-White', 450, 6051.0, false, 7);
INSERT INTO public.planet VALUES (3, 'Earth', 'Blue-Marble', 454, 6371.0, true, 7);
INSERT INTO public.planet VALUES (4, 'Mars', 'Reddish', 460, 3390.0, false, 7);
INSERT INTO public.planet VALUES (5, 'Jupiter', 'White-Brown', 460, 69911.0, false, 7);
INSERT INTO public.planet VALUES (6, 'Saturn', 'Yellowish-Brown', 450, 58232.0, false, 7);
INSERT INTO public.planet VALUES (7, 'Uranus', 'Blue-Green', 450, 25362.0, false, 7);
INSERT INTO public.planet VALUES (8, 'Neptune', 'Blueish-Green', 450, 24622.0, false, 7);
INSERT INTO public.planet VALUES (9, 'Pluto', 'Brownish-Red', 450, 1188.0, false, 7);
INSERT INTO public.planet VALUES (10, 'Titania', 'Neutral-grey', 450, 789.0, false, 7);
INSERT INTO public.planet VALUES (11, 'Umbriel', 'Blue', 450, 585.0, false, 7);
INSERT INTO public.planet VALUES (12, 'Oberon', 'Red', 450, 761.0, false, 7);


--
-- Data for Name: project; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.project VALUES (1, NULL, 1);
INSERT INTO public.project VALUES (2, NULL, 2);
INSERT INTO public.project VALUES (3, NULL, 3);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (7, 'Sun', 'Orange', 460, 696340.0, 2);
INSERT INTO public.star VALUES (8, 'Alpha Centauri', 'Yellowish', 4850, 170280.0, 2);
INSERT INTO public.star VALUES (9, 'Sirius', 'Blue-White', 230, 1711.0, 2);
INSERT INTO public.star VALUES (10, 'Proxima Centauri', 'Red', 4850, 107280.0, 2);
INSERT INTO public.star VALUES (11, 'Barnards Star', 'Red', 12000, 136360.0, 2);
INSERT INTO public.star VALUES (12, 'Betelgeuse', 'Red', 1010, 617100000.0, 2);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 7, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: project_fill_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.project_fill_seq', 1, false);


--
-- Name: project_project_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.project_project_id_seq', 3, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 12, true);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: project project_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.project
    ADD CONSTRAINT project_name_key UNIQUE (name);


--
-- Name: project project_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.project
    ADD CONSTRAINT project_pkey PRIMARY KEY (project_id);


--
-- Name: project project_project_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.project
    ADD CONSTRAINT project_project_id_key UNIQUE (project_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

