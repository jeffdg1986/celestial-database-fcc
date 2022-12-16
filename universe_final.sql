--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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
-- Name: cities; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.cities (
    cities_id bigint NOT NULL,
    population_in_millions integer,
    contains_central_bank boolean NOT NULL,
    visited_by_me boolean NOT NULL,
    name character varying(30) NOT NULL,
    planet_id integer
);


ALTER TABLE public.cities OWNER TO freecodecamp;

--
-- Name: cities_cities_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.cities_cities_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cities_cities_id_seq OWNER TO freecodecamp;

--
-- Name: cities_cities_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.cities_cities_id_seq OWNED BY public.cities.cities_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id bigint NOT NULL,
    age_in_millions_of_years numeric,
    type text,
    distance_from_earth_in_mly numeric,
    name character varying(30) NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_name_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_name_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_name_seq OWNER TO freecodecamp;

--
-- Name: galaxy_name_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_name_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id bigint NOT NULL,
    planet_id integer,
    name character varying(30) NOT NULL,
    distance_from_earth_in_m_km numeric,
    number_of_inhabitants integer NOT NULL,
    contains_human_artifacts boolean NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
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
    planet_id bigint NOT NULL,
    star_id integer,
    name character varying(30) NOT NULL,
    billions_of_inhabitants integer NOT NULL,
    contains_human_artifacts boolean NOT NULL,
    distance_from_earth_in_m_km numeric
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
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
    star_id bigint NOT NULL,
    galaxy_id integer,
    type text,
    number_of_inhabitants integer NOT NULL,
    contains_human_artifacts boolean NOT NULL,
    name character varying(30) NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
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
-- Name: cities cities_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.cities ALTER COLUMN cities_id SET DEFAULT nextval('public.cities_cities_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_name_seq'::regclass);


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
-- Data for Name: cities; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.cities VALUES (1, 3, true, true, 'Saint Louis', 3);
INSERT INTO public.cities VALUES (2, 3, true, true, 'Cleveland', 3);
INSERT INTO public.cities VALUES (3, 9, true, false, 'London', 3);
INSERT INTO public.cities VALUES (4, 6, false, true, 'Miami', 3);
INSERT INTO public.cities VALUES (5, 11, true, false, 'Lagos', 3);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (2, 13000, 'spiral', 0, 'Milky Way');
INSERT INTO public.galaxy VALUES (3, 10000, 'spiral', 2.5, 'Andromeda');
INSERT INTO public.galaxy VALUES (4, NULL, 'eliptical', 2100, 'Hercules A');
INSERT INTO public.galaxy VALUES (5, NULL, 'starburst', 12, 'Messier 82');
INSERT INTO public.galaxy VALUES (6, 12500, 'starburst', NULL, 'Baby Boom');
INSERT INTO public.galaxy VALUES (7, NULL, 'lenticular ring', 500, 'Cartwheel');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 3, 'Moon', 0.25, 24, true);
INSERT INTO public.moon VALUES (2, 4, 'Deimos', 77.5, 0, true);
INSERT INTO public.moon VALUES (3, 4, 'Phobus', 77.3, 0, false);
INSERT INTO public.moon VALUES (4, 5, 'Adrastea', 712, 0, false);
INSERT INTO public.moon VALUES (5, 5, 'Aoede', 712, 0, false);
INSERT INTO public.moon VALUES (6, 5, 'Callisto', 712, 0, false);
INSERT INTO public.moon VALUES (7, 5, 'Dia', 712, 0, false);
INSERT INTO public.moon VALUES (8, 5, 'Europa', 712, 0, false);
INSERT INTO public.moon VALUES (9, 5, 'Ganymede', 712, 0, false);
INSERT INTO public.moon VALUES (10, 5, 'Io', 712, 0, false);
INSERT INTO public.moon VALUES (11, 6, 'Calypso', 1547, 0, false);
INSERT INTO public.moon VALUES (12, 6, 'Hyperion', 1547, 0, false);
INSERT INTO public.moon VALUES (13, 6, 'Iapetus', 1547, 0, false);
INSERT INTO public.moon VALUES (14, 6, 'Rhea', 1547, 0, false);
INSERT INTO public.moon VALUES (15, 6, 'Titan', 1547, 0, false);
INSERT INTO public.moon VALUES (16, 8, 'Ariel', 2826, 0, false);
INSERT INTO public.moon VALUES (17, 8, 'Oberon', 2826, 0, false);
INSERT INTO public.moon VALUES (18, 8, 'Rosalind', 2826, 0, false);
INSERT INTO public.moon VALUES (19, 8, 'Titania', 2826, 0, false);
INSERT INTO public.moon VALUES (20, 8, 'Umbriel', 2826, 0, false);
INSERT INTO public.moon VALUES (21, 7, 'Triton', 4476, 0, false);
INSERT INTO public.moon VALUES (22, 9, 'Charon', 5308, 0, false);
INSERT INTO public.moon VALUES (23, 13, 'Vanth', NULL, 0, false);
INSERT INTO public.moon VALUES (24, 14, 'Namaka', NULL, 0, false);
INSERT INTO public.moon VALUES (25, 15, 'Dysnomia', NULL, 0, false);
INSERT INTO public.moon VALUES (26, 17, 'Xiangliu', NULL, 0, false);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 6, 'Mercury', 0, false, 77);
INSERT INTO public.planet VALUES (2, 6, 'Venus', 0, true, 40);
INSERT INTO public.planet VALUES (3, 6, 'Earth', 8, true, 0);
INSERT INTO public.planet VALUES (4, 6, 'Mars', 0, true, 225);
INSERT INTO public.planet VALUES (5, 6, 'Jupiter', 0, false, 712);
INSERT INTO public.planet VALUES (6, 6, 'Saturn', 0, false, 1547);
INSERT INTO public.planet VALUES (7, 6, 'Neptune', 0, false, 4476);
INSERT INTO public.planet VALUES (8, 6, 'Uranus', 0, false, 2826);
INSERT INTO public.planet VALUES (9, 6, 'Pluto', 0, false, 5308);
INSERT INTO public.planet VALUES (10, 6, 'Ceres', 0, false, NULL);
INSERT INTO public.planet VALUES (11, 6, 'Quaoar', 0, false, NULL);
INSERT INTO public.planet VALUES (12, 6, 'Sedna', 0, false, NULL);
INSERT INTO public.planet VALUES (13, 6, 'Orcus', 0, false, NULL);
INSERT INTO public.planet VALUES (14, 6, 'Haumea', 0, false, NULL);
INSERT INTO public.planet VALUES (15, 6, 'Eris', 0, false, NULL);
INSERT INTO public.planet VALUES (16, 6, 'Makemake', 0, false, NULL);
INSERT INTO public.planet VALUES (17, 6, 'Gonggong', 0, false, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 3, 'red giant', 0, false, 'Adhil');
INSERT INTO public.star VALUES (2, 3, 'bright giant', 0, false, 'Almach');
INSERT INTO public.star VALUES (3, 3, 'binary', 0, false, 'Alpheratz');
INSERT INTO public.star VALUES (4, 2, 'Yellow supergiant', 0, false, 'Polaris');
INSERT INTO public.star VALUES (5, 2, 'Red giant', 0, false, 'Kochab');
INSERT INTO public.star VALUES (6, 2, 'main sequence', 0, true, 'Sun');


--
-- Name: cities_cities_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.cities_cities_id_seq', 5, true);


--
-- Name: galaxy_name_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_name_seq', 7, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 26, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 17, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: cities cities_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.cities
    ADD CONSTRAINT cities_name_key UNIQUE (name);


--
-- Name: cities cities_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.cities
    ADD CONSTRAINT cities_pkey PRIMARY KEY (cities_id);


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
-- Name: cities cities_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.cities
    ADD CONSTRAINT cities_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


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

