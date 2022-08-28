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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    year integer NOT NULL,
    round character varying NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: games_opponent_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_opponent_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_opponent_id_seq OWNER TO freecodecamp;

--
-- Name: games_opponent_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_opponent_id_seq OWNED BY public.games.opponent_id;


--
-- Name: games_winner_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_winner_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_winner_id_seq OWNER TO freecodecamp;

--
-- Name: games_winner_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_winner_id_seq OWNED BY public.games.winner_id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(50) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: games winner_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN winner_id SET DEFAULT nextval('public.games_winner_id_seq'::regclass);


--
-- Name: games opponent_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN opponent_id SET DEFAULT nextval('public.games_opponent_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (65, 2018, 'Final', 259, 260, 4, 2);
INSERT INTO public.games VALUES (66, 2018, 'Third Place', 261, 262, 2, 0);
INSERT INTO public.games VALUES (67, 2018, 'Semi-Final', 260, 262, 2, 1);
INSERT INTO public.games VALUES (68, 2018, 'Semi-Final', 259, 261, 1, 0);
INSERT INTO public.games VALUES (69, 2018, 'Quarter-Final', 260, 263, 3, 2);
INSERT INTO public.games VALUES (70, 2018, 'Quarter-Final', 262, 264, 2, 0);
INSERT INTO public.games VALUES (71, 2018, 'Quarter-Final', 261, 265, 2, 1);
INSERT INTO public.games VALUES (72, 2018, 'Quarter-Final', 259, 266, 2, 0);
INSERT INTO public.games VALUES (73, 2018, 'Eighth-Final', 262, 267, 2, 1);
INSERT INTO public.games VALUES (74, 2018, 'Eighth-Final', 264, 268, 1, 0);
INSERT INTO public.games VALUES (75, 2018, 'Eighth-Final', 261, 269, 3, 2);
INSERT INTO public.games VALUES (76, 2018, 'Eighth-Final', 265, 270, 2, 0);
INSERT INTO public.games VALUES (77, 2018, 'Eighth-Final', 260, 271, 2, 1);
INSERT INTO public.games VALUES (78, 2018, 'Eighth-Final', 263, 272, 2, 1);
INSERT INTO public.games VALUES (79, 2018, 'Eighth-Final', 266, 273, 2, 1);
INSERT INTO public.games VALUES (80, 2018, 'Eighth-Final', 259, 274, 4, 3);
INSERT INTO public.games VALUES (81, 2014, 'Final', 275, 274, 1, 0);
INSERT INTO public.games VALUES (82, 2014, 'Third Place', 276, 265, 3, 0);
INSERT INTO public.games VALUES (83, 2014, 'Semi-Final', 274, 276, 1, 0);
INSERT INTO public.games VALUES (84, 2014, 'Semi-Final', 275, 265, 7, 1);
INSERT INTO public.games VALUES (85, 2014, 'Quarter-Final', 276, 277, 1, 0);
INSERT INTO public.games VALUES (86, 2014, 'Quarter-Final', 274, 261, 1, 0);
INSERT INTO public.games VALUES (87, 2014, 'Quarter-Final', 265, 267, 2, 1);
INSERT INTO public.games VALUES (88, 2014, 'Quarter-Final', 275, 259, 1, 0);
INSERT INTO public.games VALUES (89, 2014, 'Eighth-Final', 265, 278, 2, 1);
INSERT INTO public.games VALUES (90, 2014, 'Eighth-Final', 267, 266, 2, 0);
INSERT INTO public.games VALUES (91, 2014, 'Eighth-Final', 259, 279, 2, 0);
INSERT INTO public.games VALUES (92, 2014, 'Eighth-Final', 275, 280, 2, 1);
INSERT INTO public.games VALUES (93, 2014, 'Eighth-Final', 276, 270, 2, 1);
INSERT INTO public.games VALUES (94, 2014, 'Eighth-Final', 277, 281, 2, 1);
INSERT INTO public.games VALUES (95, 2014, 'Eighth-Final', 274, 268, 1, 0);
INSERT INTO public.games VALUES (96, 2014, 'Eighth-Final', 261, 282, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (259, 'France');
INSERT INTO public.teams VALUES (260, 'Croatia');
INSERT INTO public.teams VALUES (261, 'Belgium');
INSERT INTO public.teams VALUES (262, 'England');
INSERT INTO public.teams VALUES (263, 'Russia');
INSERT INTO public.teams VALUES (264, 'Sweden');
INSERT INTO public.teams VALUES (265, 'Brazil');
INSERT INTO public.teams VALUES (266, 'Uruguay');
INSERT INTO public.teams VALUES (267, 'Colombia');
INSERT INTO public.teams VALUES (268, 'Switzerland');
INSERT INTO public.teams VALUES (269, 'Japan');
INSERT INTO public.teams VALUES (270, 'Mexico');
INSERT INTO public.teams VALUES (271, 'Denmark');
INSERT INTO public.teams VALUES (272, 'Spain');
INSERT INTO public.teams VALUES (273, 'Portugal');
INSERT INTO public.teams VALUES (274, 'Argentina');
INSERT INTO public.teams VALUES (275, 'Germany');
INSERT INTO public.teams VALUES (276, 'Netherlands');
INSERT INTO public.teams VALUES (277, 'Costa Rica');
INSERT INTO public.teams VALUES (278, 'Chile');
INSERT INTO public.teams VALUES (279, 'Nigeria');
INSERT INTO public.teams VALUES (280, 'Algeria');
INSERT INTO public.teams VALUES (281, 'Greece');
INSERT INTO public.teams VALUES (282, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 96, true);


--
-- Name: games_opponent_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_opponent_id_seq', 64, true);


--
-- Name: games_winner_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_winner_id_seq', 64, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 282, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

