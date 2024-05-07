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
-- Name: constellation; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.constellation (
    constellation_id integer NOT NULL,
    name character varying(255) NOT NULL,
    description text,
    num_stars integer,
    visible boolean
);


ALTER TABLE public.constellation OWNER TO freecodecamp;

--
-- Name: constellation_constellation_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.constellation_constellation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.constellation_constellation_id_seq OWNER TO freecodecamp;

--
-- Name: constellation_constellation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.constellation_constellation_id_seq OWNED BY public.constellation.constellation_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(255) NOT NULL,
    description text,
    age_in_millions_of_years integer,
    galaxy_type character varying(50),
    has_life boolean
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
    planet_id integer,
    diameter_in_km integer,
    surface_type character varying(50),
    is_in_habitable_zone boolean
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
    star_id integer,
    planet_type character varying(50),
    distance_from_earth numeric,
    has_atmosphere boolean
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
    name character varying(255) NOT NULL,
    galaxy_id integer,
    spectral_type character varying(50),
    distance_from_earth numeric,
    is_spherical boolean
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
-- Name: constellation constellation_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation ALTER COLUMN constellation_id SET DEFAULT nextval('public.constellation_constellation_id_seq'::regclass);


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
-- Data for Name: constellation; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.constellation VALUES (1, 'Orion', 'Orion is one of the most recognizable constellations in the night sky.', 7, true);
INSERT INTO public.constellation VALUES (2, 'Ursa Major', 'Ursa Major, also known as the Great Bear, is a prominent constellation.', 7, true);
INSERT INTO public.constellation VALUES (3, 'Cassiopeia', 'Cassiopeia is named after the queen Cassiopeia in Greek mythology.', 5, true);
INSERT INTO public.constellation VALUES (4, 'Leo', 'Leo is one of the constellations of the zodiac, lying between Cancer to the west and Virgo to the east.', 10, true);
INSERT INTO public.constellation VALUES (5, 'Taurus', 'Taurus is one of the oldest constellations, dating back to the Early Bronze Age when it marked the location of the Sun during the spring equinox.', 7, true);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Description of Milky Way', 13000, 'Spiral', true);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'Description of Andromeda', 14000, 'Spiral', true);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 'Description of Triangulum', 12000, 'Spiral', false);
INSERT INTO public.galaxy VALUES (4, 'Messier 87', 'Description of Messier 87', 12000, 'Elliptical', false);
INSERT INTO public.galaxy VALUES (5, 'NGC 1300', 'Description of NGC 1300', 11000, 'Barred Spiral', true);
INSERT INTO public.galaxy VALUES (6, 'Whirlpool Galaxy', 'Description of Whirlpool Galaxy', 13000, 'Spiral', true);
INSERT INTO public.galaxy VALUES (7, 'Pinwheel Galaxy', 'Description of Pinwheel Galaxy', 13000, 'Spiral', true);
INSERT INTO public.galaxy VALUES (8, 'Sombrero Galaxy', 'Description of Sombrero Galaxy', 13000, 'Spiral', false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 1, 3474, 'Rocky', false);
INSERT INTO public.moon VALUES (2, 'Phobos', 2, 22, 'Rocky', false);
INSERT INTO public.moon VALUES (3, 'Deimos', 2, 12, 'Rocky', false);
INSERT INTO public.moon VALUES (4, 'Ganymede', 3, 5262, 'Icy', false);
INSERT INTO public.moon VALUES (5, 'Europa', 3, 3121, 'Icy', true);
INSERT INTO public.moon VALUES (6, 'Callisto', 3, 4820, 'Icy', false);
INSERT INTO public.moon VALUES (7, 'Proxima Centauri b', 4, 12103, 'Rocky', true);
INSERT INTO public.moon VALUES (8, 'Alpha Centauri Bb', 5, 13563, 'Rocky', false);
INSERT INTO public.moon VALUES (9, 'Archean', 7, 4000, 'Rocky', true);
INSERT INTO public.moon VALUES (10, 'TrES-2b I', 1, 587, 'Rocky', false);
INSERT INTO public.moon VALUES (11, 'TrES-2b II', 1, 1200, 'Rocky', false);
INSERT INTO public.moon VALUES (12, 'TrES-2b III', 1, 1200, 'Rocky', false);
INSERT INTO public.moon VALUES (13, 'TrES-2b IV', 1, 1200, 'Rocky', false);
INSERT INTO public.moon VALUES (14, 'TrES-2b V', 1, 1200, 'Rocky', false);
INSERT INTO public.moon VALUES (15, 'TrES-2b VI', 1, 1200, 'Rocky', false);
INSERT INTO public.moon VALUES (16, 'TrES-2b VII', 1, 1200, 'Rocky', false);
INSERT INTO public.moon VALUES (17, 'TrES-2b VIII', 1, 1200, 'Rocky', false);
INSERT INTO public.moon VALUES (18, 'TrES-2b IX', 1, 1200, 'Rocky', false);
INSERT INTO public.moon VALUES (19, 'TrES-2b X', 1, 1200, 'Rocky', false);
INSERT INTO public.moon VALUES (20, 'TrES-2b XI', 1, 1200, 'Rocky', false);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 1, 'Terrestrial', 1, true);
INSERT INTO public.planet VALUES (2, 'Mars', 1, 'Terrestrial', 1.5, false);
INSERT INTO public.planet VALUES (3, 'Jupiter', 1, 'Gas Giant', 5.2, false);
INSERT INTO public.planet VALUES (4, 'Proxima b', 4, 'Terrestrial', 4.24, true);
INSERT INTO public.planet VALUES (5, 'Alpha Centauri Bb', 3, 'Super-Earth', 4.37, false);
INSERT INTO public.planet VALUES (6, 'HD 209458 b', 5, 'Gas Giant', 153, false);
INSERT INTO public.planet VALUES (7, 'Kepler-186f', 6, 'Terrestrial', 490, true);
INSERT INTO public.planet VALUES (8, 'Kepler-22b', 7, 'Super-Earth', 587, true);
INSERT INTO public.planet VALUES (9, 'Kepler-62e', 7, 'Super-Earth', 1200, true);
INSERT INTO public.planet VALUES (10, 'Kepler-62f', 7, 'Super-Earth', 1200, true);
INSERT INTO public.planet VALUES (11, 'Kepler-62c', 7, 'Super-Earth', 1200, false);
INSERT INTO public.planet VALUES (12, 'Kepler-62d', 7, 'Super-Earth', 1200, false);
INSERT INTO public.planet VALUES (13, 'TrES-2b', 7, 'Hot Jupiter', 1797, false);
INSERT INTO public.planet VALUES (14, 'TrES-4b', 7, 'Hot Jupiter', 1435, false);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 1, 'G2V', 8.3, true);
INSERT INTO public.star VALUES (2, 'Alpha Centauri A', 1, 'G2V', 4.37, true);
INSERT INTO public.star VALUES (3, 'Alpha Centauri B', 1, 'K1V', 4.37, true);
INSERT INTO public.star VALUES (4, 'Proxima Centauri', 1, 'M5.5Ve', 4.24, false);
INSERT INTO public.star VALUES (5, 'Sirius', 2, 'A1V', 8.6, true);
INSERT INTO public.star VALUES (6, 'Vega', 3, 'A0V', 25.3, true);
INSERT INTO public.star VALUES (7, 'Betelgeuse', 1, 'M1-2Ia-Iab', 643, false);
INSERT INTO public.star VALUES (8, 'Rigel', 1, 'B8Ia', 860, false);
INSERT INTO public.star VALUES (9, 'Aldebaran', 1, 'K5III', 65.23, false);
INSERT INTO public.star VALUES (10, 'Antares', 1, 'M1Iab', 550, false);
INSERT INTO public.star VALUES (11, 'Polaris', 1, 'F7Ib', 433, false);
INSERT INTO public.star VALUES (12, 'Alnitak', 1, 'O9.7Ib', 800, false);
INSERT INTO public.star VALUES (13, 'Deneb', 1, 'A2Ia', 2600, false);


--
-- Name: constellation_constellation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.constellation_constellation_id_seq', 5, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 8, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 14, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 13, true);


--
-- Name: constellation constellation_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation
    ADD CONSTRAINT constellation_name_key UNIQUE (name);


--
-- Name: constellation constellation_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation
    ADD CONSTRAINT constellation_pkey PRIMARY KEY (constellation_id);


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
-- Name: moon moon_name_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_planet_id_key UNIQUE (name, planet_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_star_id_key UNIQUE (name, star_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_galaxy_id_key UNIQUE (name, galaxy_id);


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

