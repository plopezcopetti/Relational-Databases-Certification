--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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
    name character varying(255) NOT NULL,
    orbital_period_years integer NOT NULL,
    is_periodic boolean NOT NULL,
    discovery_year integer,
    brightness numeric(5,2)
);


ALTER TABLE public.comet OWNER TO freecodecamp;

--
-- Name: comet_comet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.comet_comet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.comet_comet_id_seq OWNER TO freecodecamp;

--
-- Name: comet_comet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.comet_comet_id_seq OWNED BY public.comet.comet_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(255) NOT NULL,
    galaxy_type text NOT NULL,
    age_in_millions_of_years integer NOT NULL,
    has_black_hole boolean NOT NULL,
    distance_from_earth numeric(15,2)
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
    moon_type text NOT NULL,
    diameter_km integer NOT NULL,
    is_spherical boolean NOT NULL,
    surface_temperature numeric(10,2),
    planet_id integer NOT NULL
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
    planet_type text NOT NULL,
    number_of_moons integer NOT NULL,
    has_atmosphere boolean NOT NULL,
    orbital_period_days numeric(10,2),
    star_id integer NOT NULL
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
    star_type text NOT NULL,
    temperature_kelvin integer NOT NULL,
    is_visible boolean NOT NULL,
    mass_solar_units numeric(10,2),
    galaxy_id integer NOT NULL
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
-- Name: comet comet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet ALTER COLUMN comet_id SET DEFAULT nextval('public.comet_comet_id_seq'::regclass);


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
-- Data for Name: comet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.comet VALUES (1, 'Halley', 76, true, 1758, 3.50);
INSERT INTO public.comet VALUES (2, 'Hale-Bopp', 2533, true, 1995, 2.80);
INSERT INTO public.comet VALUES (3, 'NEOWISE', 6800, true, 2020, 1.00);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Spiral', 13600, true, 0.00);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'Spiral', 10010, true, 2537000.00);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 'Spiral', 12000, false, 3000000.00);
INSERT INTO public.galaxy VALUES (4, 'Whirlpool', 'Spiral', 400, true, 23000000.00);
INSERT INTO public.galaxy VALUES (5, 'Sombrero', 'Elliptical', 13250, true, 29350000.00);
INSERT INTO public.galaxy VALUES (6, 'Cartwheel', 'Lenticular', 200, false, 500000000.00);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 'Rocky', 3474, true, -23.00, 3);
INSERT INTO public.moon VALUES (2, 'Phobos', 'Rocky', 22, false, -40.00, 4);
INSERT INTO public.moon VALUES (3, 'Deimos', 'Rocky', 12, false, -40.00, 4);
INSERT INTO public.moon VALUES (4, 'Io', 'Volcanic', 3643, true, -143.00, 5);
INSERT INTO public.moon VALUES (5, 'Europa', 'Icy', 3122, true, -160.00, 5);
INSERT INTO public.moon VALUES (6, 'Ganymede', 'Icy', 5268, true, -163.00, 5);
INSERT INTO public.moon VALUES (7, 'Callisto', 'Icy', 4821, true, -139.00, 5);
INSERT INTO public.moon VALUES (8, 'Titan', 'Icy', 5150, true, -179.00, 6);
INSERT INTO public.moon VALUES (9, 'Rhea', 'Icy', 1528, true, -174.00, 6);
INSERT INTO public.moon VALUES (10, 'Iapetus', 'Icy', 1469, true, -173.00, 6);
INSERT INTO public.moon VALUES (11, 'Dione', 'Icy', 1123, true, -186.00, 6);
INSERT INTO public.moon VALUES (12, 'Tethys', 'Icy', 1062, true, -187.00, 6);
INSERT INTO public.moon VALUES (13, 'Enceladus', 'Icy', 504, true, -198.00, 6);
INSERT INTO public.moon VALUES (14, 'Miranda', 'Icy', 472, true, -213.00, 7);
INSERT INTO public.moon VALUES (15, 'Ariel', 'Icy', 1158, true, -213.00, 7);
INSERT INTO public.moon VALUES (16, 'Umbriel', 'Icy', 1169, true, -198.00, 7);
INSERT INTO public.moon VALUES (17, 'Titania', 'Icy', 1578, true, -203.00, 7);
INSERT INTO public.moon VALUES (18, 'Oberon', 'Icy', 1523, true, -198.00, 7);
INSERT INTO public.moon VALUES (19, 'Triton', 'Icy', 2707, true, -235.00, 8);
INSERT INTO public.moon VALUES (20, 'Nereid', 'Rocky', 340, false, -220.00, 8);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 'Terrestrial', 0, false, 88.00, 1);
INSERT INTO public.planet VALUES (2, 'Venus', 'Terrestrial', 0, true, 225.00, 1);
INSERT INTO public.planet VALUES (3, 'Earth', 'Terrestrial', 1, true, 365.25, 1);
INSERT INTO public.planet VALUES (4, 'Mars', 'Terrestrial', 2, true, 687.00, 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', 'Gas Giant', 79, true, 4333.00, 1);
INSERT INTO public.planet VALUES (6, 'Saturn', 'Gas Giant', 82, true, 10759.00, 1);
INSERT INTO public.planet VALUES (7, 'Uranus', 'Ice Giant', 27, true, 30687.00, 1);
INSERT INTO public.planet VALUES (8, 'Neptune', 'Ice Giant', 14, true, 60190.00, 1);
INSERT INTO public.planet VALUES (9, 'Sirius b1', 'Hot Jupiter', 0, true, 2.50, 2);
INSERT INTO public.planet VALUES (10, 'Betelgeuse Prime', 'Super Earth', 3, true, 120.00, 3);
INSERT INTO public.planet VALUES (11, 'Proxima b', 'Terrestrial', 0, true, 11.19, 4);
INSERT INTO public.planet VALUES (12, 'Andromedae I', 'Gas Giant', 15, true, 890.00, 5);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 'G-type', 5778, true, 1.00, 1);
INSERT INTO public.star VALUES (2, 'Sirius', 'A-type', 9940, true, 2.02, 1);
INSERT INTO public.star VALUES (3, 'Betelgeuse', 'M-type', 3500, true, 18.00, 1);
INSERT INTO public.star VALUES (4, 'Proxima Centauri', 'M-type', 3042, false, 0.12, 1);
INSERT INTO public.star VALUES (5, 'Alpha Andromedae', 'B-type', 13800, true, 3.80, 2);
INSERT INTO public.star VALUES (6, 'Beta Trianguli', 'A-type', 8100, true, 1.70, 3);


--
-- Name: comet_comet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.comet_comet_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: comet comet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet
    ADD CONSTRAINT comet_name_key UNIQUE (name);


--
-- Name: comet comet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet
    ADD CONSTRAINT comet_pkey PRIMARY KEY (comet_id);


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

