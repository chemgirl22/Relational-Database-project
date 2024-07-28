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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: number_guess; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.number_guess (
    username character varying(22),
    games_played integer,
    games_won integer
);


ALTER TABLE public.number_guess OWNER TO freecodecamp;

--
-- Data for Name: number_guess; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.number_guess VALUES ('sid', 1, 12);
INSERT INTO public.number_guess VALUES ('user_1722193271330', 1, 520);
INSERT INTO public.number_guess VALUES ('user_1722193271330', 1, 520);
INSERT INTO public.number_guess VALUES ('user_1722193271331', 1, 323);
INSERT INTO public.number_guess VALUES ('user_1722193271331', 1, 323);
INSERT INTO public.number_guess VALUES ('user_1722193271331', 1, 323);
INSERT INTO public.number_guess VALUES ('user_1722193271331', 1, 323);
INSERT INTO public.number_guess VALUES ('user_1722193271331', 1, 323);
INSERT INTO public.number_guess VALUES ('d', 1, NULL);
INSERT INTO public.number_guess VALUES ('user_1722193321381', 1, 474);
INSERT INTO public.number_guess VALUES ('user_1722193321381', 1, 474);
INSERT INTO public.number_guess VALUES ('user_1722193321382', 1, 71);
INSERT INTO public.number_guess VALUES ('user_1722193321382', 1, 71);
INSERT INTO public.number_guess VALUES ('user_1722193321382', 1, 71);
INSERT INTO public.number_guess VALUES ('user_1722193321382', 1, 71);
INSERT INTO public.number_guess VALUES ('user_1722193321382', 1, 71);


--
-- PostgreSQL database dump complete
--

