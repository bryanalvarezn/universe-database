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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(40) NOT NULL,
    description text NOT NULL,
    galaxi_types text,
    age_in_million_years numeric,
    star_id integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxi_galaxi_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxi_galaxi_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxi_galaxi_id_seq OWNER TO freecodecamp;

--
-- Name: galaxi_galaxi_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxi_galaxi_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(40) NOT NULL,
    description text NOT NULL,
    is_spherical boolean,
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
    name character varying(40) NOT NULL,
    description text NOT NULL,
    has_life boolean,
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
-- Name: planet_types; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet_types (
    planet_types_id integer NOT NULL,
    name character varying(40) NOT NULL,
    description text NOT NULL
);


ALTER TABLE public.planet_types OWNER TO freecodecamp;

--
-- Name: planet_types_planet_types_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_types_planet_types_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_types_planet_types_id_seq OWNER TO freecodecamp;

--
-- Name: planet_types_planet_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_types_planet_types_id_seq OWNED BY public.planet_types.planet_types_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(40) NOT NULL,
    description text NOT NULL,
    distance_from_earth integer,
    age_in_million_of_years integer,
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

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxi_galaxi_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: planet_types planet_types_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_types ALTER COLUMN planet_types_id SET DEFAULT nextval('public.planet_types_planet_types_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Galaxia donde se encuentra el sistema solar', 'Espiral barrada', 13600, NULL);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'Gran galaxia vecina de la Via Lactea', 'Espiral', 10000, NULL);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 'Galaxia del grupo local', 'Espiral', 10000, NULL);
INSERT INTO public.galaxy VALUES (4, 'Large magellanic Cloud', 'Galaxia satelite de la Via Lactea', 'Irregular barrada', 13000, NULL);
INSERT INTO public.galaxy VALUES (5, 'Small Magellanic Cloud', 'Pequena galaxia satelite', 'Irregular enana', 12000, NULL);
INSERT INTO public.galaxy VALUES (6, 'Messier 87', 'Galaxia gigante del cumulo de Virgo', 'Eliptica', 13000, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 'Earths natural satellite', true, 1);
INSERT INTO public.moon VALUES (2, 'Phobos', 'Inner moon of Mars', false, 2);
INSERT INTO public.moon VALUES (3, 'Deimos', 'Outher moon of Mars', true, 3);
INSERT INTO public.moon VALUES (4, 'Io', 'Volcanic moon of Jupiter', true, 4);
INSERT INTO public.moon VALUES (5, 'Europa', 'Icy moon of Jupiter', true, 5);
INSERT INTO public.moon VALUES (6, 'Ganymede', 'Largest moon in the solar system', true, 6);
INSERT INTO public.moon VALUES (7, 'Callisto', 'Heavily cratered moon', true, 7);
INSERT INTO public.moon VALUES (8, 'Amalthea', 'Small irregular moon of Jupiter', false, 8);
INSERT INTO public.moon VALUES (9, 'Enceladus', 'Icy moon of Saturn', true, 9);
INSERT INTO public.moon VALUES (10, 'Titan', 'Moon with thick atmosphere', true, 10);
INSERT INTO public.moon VALUES (11, 'Rhea', 'Icy moon of Saturn', true, 11);
INSERT INTO public.moon VALUES (12, 'Iapetus', 'Two-toned moon of Saturn', true, 12);
INSERT INTO public.moon VALUES (13, 'Mimas', 'Small cratered moon of Saturn', true, 12);
INSERT INTO public.moon VALUES (14, 'Hyperion', 'Porous irregular moon', false, 12);
INSERT INTO public.moon VALUES (15, 'Miranda', 'Moon of Uranus', true, 12);
INSERT INTO public.moon VALUES (16, 'Ariel', 'Icy moon of Uranus', true, 12);
INSERT INTO public.moon VALUES (17, 'Titania', 'Largest moon of Uranus', true, 12);
INSERT INTO public.moon VALUES (18, 'Oberon', 'Outer moon of Uranus', true, 12);
INSERT INTO public.moon VALUES (19, 'Triton', 'Retrograde moon of Neptune', true, 12);
INSERT INTO public.moon VALUES (20, 'Proteus', 'Irregular moon of Neptune', false, 12);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 'Smallest planet', true, 1);
INSERT INTO public.planet VALUES (2, 'Venus', 'Hottest planet', false, 1);
INSERT INTO public.planet VALUES (3, 'Earth', 'Our home planet', true, 2);
INSERT INTO public.planet VALUES (4, 'Mars', 'The red planet', false, 2);
INSERT INTO public.planet VALUES (5, 'Jupiter', 'Largest planet', false, 3);
INSERT INTO public.planet VALUES (6, 'Saturn', 'Planet with rings', false, 3);
INSERT INTO public.planet VALUES (7, 'Uranus', 'Ice giant', false, 4);
INSERT INTO public.planet VALUES (8, 'Neptune', 'Distant ice giant', false, 4);
INSERT INTO public.planet VALUES (9, 'Kepler-22b', 'Possible ocean world', false, 5);
INSERT INTO public.planet VALUES (10, 'Proxima Centauri b', 'Nearby exoplanet', false, 5);
INSERT INTO public.planet VALUES (11, 'TRAPPIST-1e', 'Rocky exoplanet', false, 6);
INSERT INTO public.planet VALUES (12, '51 Pegasi b', 'First discovered hot Jupiter', false, 6);


--
-- Data for Name: planet_types; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet_types VALUES (1, 'Terrestrial', 'Rocky planet with a solid surface');
INSERT INTO public.planet_types VALUES (2, 'Gas Giant', 'Large planet composed mainly of gas');
INSERT INTO public.planet_types VALUES (3, 'Ice Giant', 'Planet rich in water, ammonia and metano');
INSERT INTO public.planet_types VALUES (4, 'Dwarf Planet', 'Small planetary body orgiting the Sun');
INSERT INTO public.planet_types VALUES (5, 'Super-Earth', 'Rocky planet larger than Earth');
INSERT INTO public.planet_types VALUES (6, 'Mini-Neptune', 'Small planet with a thick gaseous environment');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 'Estrella central del sistema solar', 0, 4600, 1);
INSERT INTO public.star VALUES (2, 'Sirus', 'Una de las estrellas brillantes del cielo', 9, 242, 2);
INSERT INTO public.star VALUES (3, 'Alpha Centauri A', 'Estrella similar al sol', 4, 5500, 3);
INSERT INTO public.star VALUES (4, 'Betelgeuse', 'Supergigante roja de Orion', 700, 10, 4);
INSERT INTO public.star VALUES (5, 'Antares', 'Supergigante roja de Escorpio', 554, 11, 5);
INSERT INTO public.star VALUES (6, 'Tau Ceti', 'Estrella cercana similar al sol', 12, 5800, 6);


--
-- Name: galaxi_galaxi_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxi_galaxi_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: planet_types_planet_types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_types_planet_types_id_seq', 6, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 8, true);


--
-- Name: galaxy galaxi_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxi_name_key UNIQUE (name);


--
-- Name: galaxy galaxi_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxi_pkey PRIMARY KEY (galaxy_id);


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
-- Name: planet_types planet_types_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_types
    ADD CONSTRAINT planet_types_name_key UNIQUE (name);


--
-- Name: planet_types planet_types_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_types
    ADD CONSTRAINT planet_types_pkey PRIMARY KEY (planet_types_id);


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
-- Name: star star_galaxi_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxi_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

