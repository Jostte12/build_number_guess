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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    guesses integer,
    player_id integer
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
-- Name: players; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.players (
    player_id integer NOT NULL,
    name character varying(22) NOT NULL
);


ALTER TABLE public.players OWNER TO freecodecamp;

--
-- Name: players_player_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.players_player_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.players_player_id_seq OWNER TO freecodecamp;

--
-- Name: players_player_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.players_player_id_seq OWNED BY public.players.player_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: players player_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.players ALTER COLUMN player_id SET DEFAULT nextval('public.players_player_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 9, 1);
INSERT INTO public.games VALUES (2, 16, 1);
INSERT INTO public.games VALUES (3, 524, 2);
INSERT INTO public.games VALUES (4, 849, 2);
INSERT INTO public.games VALUES (5, 730, 3);
INSERT INTO public.games VALUES (6, 453, 3);
INSERT INTO public.games VALUES (7, 724, 2);
INSERT INTO public.games VALUES (8, 522, 2);
INSERT INTO public.games VALUES (9, 343, 2);
INSERT INTO public.games VALUES (10, 14, 1);
INSERT INTO public.games VALUES (11, 362, 4);
INSERT INTO public.games VALUES (12, 40, 4);
INSERT INTO public.games VALUES (13, 442, 5);
INSERT INTO public.games VALUES (14, 469, 5);
INSERT INTO public.games VALUES (15, 714, 4);
INSERT INTO public.games VALUES (16, 608, 4);
INSERT INTO public.games VALUES (17, 133, 4);
INSERT INTO public.games VALUES (18, 11, 6);
INSERT INTO public.games VALUES (19, 473, 7);
INSERT INTO public.games VALUES (20, 100, 7);
INSERT INTO public.games VALUES (21, 390, 8);
INSERT INTO public.games VALUES (22, 326, 8);
INSERT INTO public.games VALUES (23, 489, 7);
INSERT INTO public.games VALUES (24, 318, 7);
INSERT INTO public.games VALUES (25, 238, 7);
INSERT INTO public.games VALUES (26, 12, 6);
INSERT INTO public.games VALUES (27, 9, 6);
INSERT INTO public.games VALUES (28, 388, 9);
INSERT INTO public.games VALUES (29, 601, 9);
INSERT INTO public.games VALUES (30, 201, 10);
INSERT INTO public.games VALUES (31, 397, 10);
INSERT INTO public.games VALUES (32, 603, 9);
INSERT INTO public.games VALUES (33, 478, 9);
INSERT INTO public.games VALUES (34, 63, 9);
INSERT INTO public.games VALUES (35, 867, 11);
INSERT INTO public.games VALUES (36, 477, 11);
INSERT INTO public.games VALUES (37, 769, 12);
INSERT INTO public.games VALUES (38, 971, 12);
INSERT INTO public.games VALUES (39, 754, 11);
INSERT INTO public.games VALUES (40, 163, 11);
INSERT INTO public.games VALUES (41, 573, 11);
INSERT INTO public.games VALUES (42, 696, 13);
INSERT INTO public.games VALUES (43, 420, 13);
INSERT INTO public.games VALUES (44, 464, 14);
INSERT INTO public.games VALUES (45, 79, 14);
INSERT INTO public.games VALUES (46, 770, 13);
INSERT INTO public.games VALUES (47, 144, 13);
INSERT INTO public.games VALUES (48, 350, 13);
INSERT INTO public.games VALUES (49, 18, 15);
INSERT INTO public.games VALUES (50, 936, 16);
INSERT INTO public.games VALUES (51, 476, 16);
INSERT INTO public.games VALUES (52, 634, 17);
INSERT INTO public.games VALUES (53, 939, 17);
INSERT INTO public.games VALUES (54, 606, 16);
INSERT INTO public.games VALUES (55, 439, 16);
INSERT INTO public.games VALUES (56, 205, 16);
INSERT INTO public.games VALUES (57, 10, 15);
INSERT INTO public.games VALUES (58, 376, 18);
INSERT INTO public.games VALUES (59, 837, 18);
INSERT INTO public.games VALUES (60, 470, 19);
INSERT INTO public.games VALUES (61, 624, 19);
INSERT INTO public.games VALUES (62, 547, 18);
INSERT INTO public.games VALUES (63, 415, 18);
INSERT INTO public.games VALUES (64, 719, 18);
INSERT INTO public.games VALUES (65, 659, 20);
INSERT INTO public.games VALUES (66, 314, 20);
INSERT INTO public.games VALUES (67, 611, 21);
INSERT INTO public.games VALUES (68, 482, 21);
INSERT INTO public.games VALUES (69, 708, 20);
INSERT INTO public.games VALUES (70, 66, 20);
INSERT INTO public.games VALUES (71, 741, 20);


--
-- Data for Name: players; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.players VALUES (1, 'Josette');
INSERT INTO public.players VALUES (2, 'user_1686567668790');
INSERT INTO public.players VALUES (3, 'user_1686567668789');
INSERT INTO public.players VALUES (4, 'user_1686568012752');
INSERT INTO public.players VALUES (5, 'user_1686568012751');
INSERT INTO public.players VALUES (6, 'Rakoto');
INSERT INTO public.players VALUES (7, 'user_1686568210606');
INSERT INTO public.players VALUES (8, 'user_1686568210605');
INSERT INTO public.players VALUES (9, 'user_1686568396445');
INSERT INTO public.players VALUES (10, 'user_1686568396444');
INSERT INTO public.players VALUES (11, 'user_1686568520907');
INSERT INTO public.players VALUES (12, 'user_1686568520906');
INSERT INTO public.players VALUES (13, 'user_1686568608542');
INSERT INTO public.players VALUES (14, 'user_1686568608541');
INSERT INTO public.players VALUES (15, 'Sarah');
INSERT INTO public.players VALUES (16, 'user_1686568747032');
INSERT INTO public.players VALUES (17, 'user_1686568747031');
INSERT INTO public.players VALUES (18, 'user_1686568916842');
INSERT INTO public.players VALUES (19, 'user_1686568916841');
INSERT INTO public.players VALUES (20, 'user_1686569057792');
INSERT INTO public.players VALUES (21, 'user_1686569057791');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 71, true);


--
-- Name: players_player_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.players_player_id_seq', 21, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: players players_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.players
    ADD CONSTRAINT players_name_key UNIQUE (name);


--
-- Name: players players_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.players
    ADD CONSTRAINT players_pkey PRIMARY KEY (player_id);


--
-- Name: games games_player_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_player_id_fkey FOREIGN KEY (player_id) REFERENCES public.players(player_id);


--
-- PostgreSQL database dump complete
--

