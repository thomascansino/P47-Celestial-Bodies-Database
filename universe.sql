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
-- Name: comet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.comet (
    comet_id integer NOT NULL,
    name character varying NOT NULL,
    discovered integer,
    galaxy_id integer
);


ALTER TABLE public.comet OWNER TO freecodecamp;

--
-- Name: comet_unique_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.comet_unique_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.comet_unique_id_seq OWNER TO freecodecamp;

--
-- Name: comet_unique_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.comet_unique_id_seq OWNED BY public.comet.comet_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying NOT NULL,
    discovered integer,
    age_in_millions_of_years integer,
    galaxy_types text
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_unique_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_unique_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_unique_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_unique_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_unique_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying NOT NULL,
    discovered integer,
    have_water boolean,
    distance_from_earth_light_years numeric(6,2),
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_unique_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_unique_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_unique_id_seq OWNER TO freecodecamp;

--
-- Name: moon_unique_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_unique_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying NOT NULL,
    discovered integer,
    size_million_km_squared numeric(6,1),
    have_water boolean,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_unique_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_unique_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_unique_id_seq OWNER TO freecodecamp;

--
-- Name: planet_unique_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_unique_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying NOT NULL,
    discovered integer,
    description text,
    distance_from_earth_light_years numeric(6,2),
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_unique_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_unique_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_unique_id_seq OWNER TO freecodecamp;

--
-- Name: star_unique_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_unique_id_seq OWNED BY public.star.star_id;


--
-- Name: comet comet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet ALTER COLUMN comet_id SET DEFAULT nextval('public.comet_unique_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_unique_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_unique_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_unique_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_unique_id_seq'::regclass);


--
-- Data for Name: comet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.comet VALUES (1, 'Halleys Comet', 1986, 2);
INSERT INTO public.comet VALUES (2, 'Comet Hale-Bopp', 1995, 2);
INSERT INTO public.comet VALUES (3, 'Comet Hyakutake', 1996, 2);
INSERT INTO public.comet VALUES (4, 'Comet Shoemaker-Levy 9', 1993, 2);
INSERT INTO public.comet VALUES (5, 'Comet Lovejoy', 2011, 2);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda', 1612, 2250, 'Spiral');
INSERT INTO public.galaxy VALUES (2, 'Milky Way', 1920, 13000, 'Spiral');
INSERT INTO public.galaxy VALUES (3, 'Whirlpool', 1773, 300, 'Spiral');
INSERT INTO public.galaxy VALUES (4, 'Triangulum', 1784, 400, 'Spiral');
INSERT INTO public.galaxy VALUES (5, 'Sombrero', 1781, 290, 'Spiral');
INSERT INTO public.galaxy VALUES (6, 'Pinwheel', 1781, 300, 'Spiral');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Europa', 1610, true, 628.30, 6);
INSERT INTO public.moon VALUES (2, 'Titan', 1655, true, 1222.00, 7);
INSERT INTO public.moon VALUES (3, 'Ganymede', 1610, true, 390.40, 6);
INSERT INTO public.moon VALUES (4, 'Callisto', 1610, true, 384.80, 6);
INSERT INTO public.moon VALUES (5, 'Enceladus', 1789, true, 1272.00, 7);
INSERT INTO public.moon VALUES (6, 'Triton', 1846, true, 2700.00, 9);
INSERT INTO public.moon VALUES (7, 'Dione', 1684, true, 1248.00, 7);
INSERT INTO public.moon VALUES (8, 'Tethys', 1684, true, 1097.00, 7);
INSERT INTO public.moon VALUES (9, 'Rhea', 1672, true, 1527.00, 7);
INSERT INTO public.moon VALUES (10, 'Iapetus', 1671, true, 3560.00, 7);
INSERT INTO public.moon VALUES (11, 'Mimas', 1789, true, 1239.00, 7);
INSERT INTO public.moon VALUES (12, 'Miranda', 1948, true, 1299.00, 8);
INSERT INTO public.moon VALUES (13, 'Ariel', 1851, true, 1270.00, 8);
INSERT INTO public.moon VALUES (14, 'Umbriel', 1851, true, 1690.00, 8);
INSERT INTO public.moon VALUES (15, 'Oberon', 1787, true, 1445.00, 8);
INSERT INTO public.moon VALUES (16, 'Titania', 1787, true, 1436.00, 8);
INSERT INTO public.moon VALUES (17, 'Charon', 1978, true, 4563.00, 10);
INSERT INTO public.moon VALUES (18, 'Phoebe', 1898, true, 8132.00, 7);
INSERT INTO public.moon VALUES (19, 'Hyperion', 1848, true, 1481.00, 7);
INSERT INTO public.moon VALUES (20, 'Proteus', 1989, true, 117.60, 9);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', -4000, 510.1, true, 3);
INSERT INTO public.planet VALUES (2, 'Mars', -3000, 144.8, false, 3);
INSERT INTO public.planet VALUES (4, 'Mercury', -3000, 74.8, false, 3);
INSERT INTO public.planet VALUES (5, 'Venus', -1600, 460.2, false, 3);
INSERT INTO public.planet VALUES (6, 'Jupiter', 1610, 61420.0, NULL, 3);
INSERT INTO public.planet VALUES (7, 'Saturn', 1610, 42700.0, NULL, 3);
INSERT INTO public.planet VALUES (8, 'Uranus', 1781, 8118.0, NULL, 3);
INSERT INTO public.planet VALUES (9, 'Neptune', 1846, 7618.0, NULL, 3);
INSERT INTO public.planet VALUES (10, 'Pluto', 1930, 16.7, false, 3);
INSERT INTO public.planet VALUES (11, 'Io', 1610, 4.0, NULL, 3);
INSERT INTO public.planet VALUES (12, 'Enceladus', 1789, 0.8, true, 3);
INSERT INTO public.planet VALUES (13, 'Europa', 1610, 1568.0, true, 3);
INSERT INTO public.planet VALUES (3, 'Kepler-186f', 2014, 8.5, NULL, 5);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Proxima Centauri', 1915, 'Closest known star to the Sun', 4.24, 2);
INSERT INTO public.star VALUES (2, 'Alpha Centauri', 1689, 'Closest star system to the Sun', 4.37, 2);
INSERT INTO public.star VALUES (4, 'Sirius', NULL, 'Brightest star in the night sky', 8.60, 2);
INSERT INTO public.star VALUES (5, 'Betelgeuse', NULL, 'Red supergiant star in Orion constellation', 643.00, 2);
INSERT INTO public.star VALUES (6, 'Procyon', 1848, 'Brightest star in the constellation Canis Minor', 11.46, 2);
INSERT INTO public.star VALUES (3, 'Sun', 1600, 'Star of our Mother Earth', NULL, 2);


--
-- Name: comet_unique_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.comet_unique_id_seq', 5, true);


--
-- Name: galaxy_unique_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_unique_id_seq', 6, true);


--
-- Name: moon_unique_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_unique_id_seq', 20, true);


--
-- Name: planet_unique_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_unique_id_seq', 13, true);


--
-- Name: star_unique_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_unique_id_seq', 26, true);


--
-- Name: comet comet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet
    ADD CONSTRAINT comet_pkey PRIMARY KEY (comet_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: comet uq_comet_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet
    ADD CONSTRAINT uq_comet_name UNIQUE (name);


--
-- Name: galaxy uq_galaxy_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT uq_galaxy_name UNIQUE (name);


--
-- Name: moon uq_moon_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT uq_moon_name UNIQUE (name);


--
-- Name: planet uq_planet_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT uq_planet_name UNIQUE (name);


--
-- Name: star uq_star_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT uq_star_name UNIQUE (name);


--
-- Name: comet comet_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet
    ADD CONSTRAINT comet_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


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

