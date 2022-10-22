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

DROP DATABASE number_guessing_game;
--
-- Name: number_guessing_game; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guessing_game WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guessing_game OWNER TO freecodecamp;

\connect number_guessing_game

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
    tries integer NOT NULL,
    user_id integer
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
-- Name: usernames; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.usernames (
    user_id integer NOT NULL,
    username character varying(23)
);


ALTER TABLE public.usernames OWNER TO freecodecamp;

--
-- Name: usernames_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.usernames_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.usernames_user_id_seq OWNER TO freecodecamp;

--
-- Name: usernames_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.usernames_user_id_seq OWNED BY public.usernames.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: usernames user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.usernames ALTER COLUMN user_id SET DEFAULT nextval('public.usernames_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 280, 18);
INSERT INTO public.games VALUES (2, 265, 18);
INSERT INTO public.games VALUES (3, 177, 19);
INSERT INTO public.games VALUES (4, 407, 19);
INSERT INTO public.games VALUES (5, 149, 18);
INSERT INTO public.games VALUES (6, 237, 18);
INSERT INTO public.games VALUES (7, 850, 18);
INSERT INTO public.games VALUES (8, 2, 3);
INSERT INTO public.games VALUES (9, 160, 20);
INSERT INTO public.games VALUES (10, 625, 20);
INSERT INTO public.games VALUES (11, 153, 21);
INSERT INTO public.games VALUES (12, 44, 21);
INSERT INTO public.games VALUES (13, 505, 20);
INSERT INTO public.games VALUES (14, 818, 20);
INSERT INTO public.games VALUES (15, 265, 20);
INSERT INTO public.games VALUES (16, 1, 3);
INSERT INTO public.games VALUES (17, 1, 3);
INSERT INTO public.games VALUES (18, 410, 22);
INSERT INTO public.games VALUES (19, 834, 22);
INSERT INTO public.games VALUES (20, 537, 23);
INSERT INTO public.games VALUES (21, 471, 23);
INSERT INTO public.games VALUES (22, 480, 22);
INSERT INTO public.games VALUES (23, 333, 22);
INSERT INTO public.games VALUES (24, 348, 22);
INSERT INTO public.games VALUES (25, 1, 3);
INSERT INTO public.games VALUES (26, 442, 24);
INSERT INTO public.games VALUES (27, 723, 24);
INSERT INTO public.games VALUES (28, 45, 25);
INSERT INTO public.games VALUES (29, 392, 25);
INSERT INTO public.games VALUES (30, 127, 24);
INSERT INTO public.games VALUES (31, 627, 24);
INSERT INTO public.games VALUES (32, 230, 24);
INSERT INTO public.games VALUES (33, 890, 26);
INSERT INTO public.games VALUES (34, 387, 26);
INSERT INTO public.games VALUES (35, 313, 27);
INSERT INTO public.games VALUES (36, 914, 27);
INSERT INTO public.games VALUES (37, 63, 26);
INSERT INTO public.games VALUES (38, 173, 26);
INSERT INTO public.games VALUES (39, 596, 26);
INSERT INTO public.games VALUES (40, 788, 28);
INSERT INTO public.games VALUES (41, 971, 28);
INSERT INTO public.games VALUES (42, 152, 29);
INSERT INTO public.games VALUES (43, 557, 29);
INSERT INTO public.games VALUES (44, 702, 28);
INSERT INTO public.games VALUES (45, 297, 28);
INSERT INTO public.games VALUES (46, 91, 28);
INSERT INTO public.games VALUES (47, 453, 30);
INSERT INTO public.games VALUES (48, 798, 30);
INSERT INTO public.games VALUES (49, 407, 31);
INSERT INTO public.games VALUES (50, 687, 31);
INSERT INTO public.games VALUES (51, 607, 30);
INSERT INTO public.games VALUES (52, 54, 30);
INSERT INTO public.games VALUES (53, 732, 30);
INSERT INTO public.games VALUES (54, 480, 32);
INSERT INTO public.games VALUES (55, 355, 32);
INSERT INTO public.games VALUES (56, 695, 33);
INSERT INTO public.games VALUES (57, 243, 33);
INSERT INTO public.games VALUES (58, 343, 32);
INSERT INTO public.games VALUES (59, 393, 32);
INSERT INTO public.games VALUES (60, 101, 32);
INSERT INTO public.games VALUES (61, 405, 34);
INSERT INTO public.games VALUES (62, 645, 34);
INSERT INTO public.games VALUES (63, 622, 35);
INSERT INTO public.games VALUES (64, 726, 35);
INSERT INTO public.games VALUES (65, 230, 34);
INSERT INTO public.games VALUES (66, 472, 34);
INSERT INTO public.games VALUES (67, 743, 34);
INSERT INTO public.games VALUES (68, 168, 36);
INSERT INTO public.games VALUES (69, 524, 36);
INSERT INTO public.games VALUES (70, 957, 37);
INSERT INTO public.games VALUES (71, 466, 37);
INSERT INTO public.games VALUES (72, 294, 36);
INSERT INTO public.games VALUES (73, 18, 36);
INSERT INTO public.games VALUES (74, 200, 36);
INSERT INTO public.games VALUES (75, 15, 38);
INSERT INTO public.games VALUES (76, 101, 39);
INSERT INTO public.games VALUES (77, 689, 39);
INSERT INTO public.games VALUES (78, 383, 40);
INSERT INTO public.games VALUES (79, 490, 40);
INSERT INTO public.games VALUES (80, 289, 39);
INSERT INTO public.games VALUES (81, 460, 39);
INSERT INTO public.games VALUES (82, 258, 39);
INSERT INTO public.games VALUES (83, 568, 41);
INSERT INTO public.games VALUES (84, 382, 41);
INSERT INTO public.games VALUES (85, 350, 42);
INSERT INTO public.games VALUES (86, 145, 42);
INSERT INTO public.games VALUES (87, 279, 41);
INSERT INTO public.games VALUES (88, 536, 41);
INSERT INTO public.games VALUES (89, 465, 41);
INSERT INTO public.games VALUES (90, 798, 43);
INSERT INTO public.games VALUES (91, 943, 43);
INSERT INTO public.games VALUES (92, 975, 44);
INSERT INTO public.games VALUES (93, 51, 44);
INSERT INTO public.games VALUES (94, 18, 43);
INSERT INTO public.games VALUES (95, 445, 43);
INSERT INTO public.games VALUES (96, 658, 43);
INSERT INTO public.games VALUES (97, 490, 45);
INSERT INTO public.games VALUES (98, 957, 45);
INSERT INTO public.games VALUES (99, 460, 46);
INSERT INTO public.games VALUES (100, 581, 46);
INSERT INTO public.games VALUES (101, 349, 45);
INSERT INTO public.games VALUES (102, 872, 45);
INSERT INTO public.games VALUES (103, 712, 45);
INSERT INTO public.games VALUES (104, 285, 47);
INSERT INTO public.games VALUES (105, 864, 47);
INSERT INTO public.games VALUES (106, 211, 48);
INSERT INTO public.games VALUES (107, 144, 48);
INSERT INTO public.games VALUES (108, 297, 47);
INSERT INTO public.games VALUES (109, 85, 47);
INSERT INTO public.games VALUES (110, 801, 47);
INSERT INTO public.games VALUES (111, 632, 49);
INSERT INTO public.games VALUES (112, 732, 49);
INSERT INTO public.games VALUES (113, 165, 50);
INSERT INTO public.games VALUES (114, 385, 50);
INSERT INTO public.games VALUES (115, 979, 49);
INSERT INTO public.games VALUES (116, 297, 49);
INSERT INTO public.games VALUES (117, 186, 49);
INSERT INTO public.games VALUES (118, 658, 51);
INSERT INTO public.games VALUES (119, 174, 51);
INSERT INTO public.games VALUES (120, 272, 52);
INSERT INTO public.games VALUES (121, 851, 52);
INSERT INTO public.games VALUES (122, 995, 51);
INSERT INTO public.games VALUES (123, 107, 51);
INSERT INTO public.games VALUES (124, 691, 51);
INSERT INTO public.games VALUES (125, 6, 53);
INSERT INTO public.games VALUES (126, 718, 53);
INSERT INTO public.games VALUES (127, 732, 54);
INSERT INTO public.games VALUES (128, 225, 54);
INSERT INTO public.games VALUES (129, 798, 53);
INSERT INTO public.games VALUES (130, 572, 53);
INSERT INTO public.games VALUES (131, 536, 53);


--
-- Data for Name: usernames; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.usernames VALUES (1, 'user_1666411164056');
INSERT INTO public.usernames VALUES (2, 'user_1666411164055');
INSERT INTO public.usernames VALUES (3, 'alex');
INSERT INTO public.usernames VALUES (4, 'al');
INSERT INTO public.usernames VALUES (5, 'user_1666412067096');
INSERT INTO public.usernames VALUES (6, 'user_1666412067095');
INSERT INTO public.usernames VALUES (7, 'user_1666412095659');
INSERT INTO public.usernames VALUES (8, 'user_1666412095658');
INSERT INTO public.usernames VALUES (9, 'user_1666412156915');
INSERT INTO public.usernames VALUES (10, 'user_1666412156914');
INSERT INTO public.usernames VALUES (11, 'a');
INSERT INTO public.usernames VALUES (12, 'user_1666412212677');
INSERT INTO public.usernames VALUES (13, 'user_1666412212676');
INSERT INTO public.usernames VALUES (14, 'user_1666418993993');
INSERT INTO public.usernames VALUES (15, 'user_1666418993992');
INSERT INTO public.usernames VALUES (16, 'user_1666419011575');
INSERT INTO public.usernames VALUES (17, 'user_1666419011574');
INSERT INTO public.usernames VALUES (18, 'user_1666419465792');
INSERT INTO public.usernames VALUES (19, 'user_1666419465791');
INSERT INTO public.usernames VALUES (20, 'user_1666419513333');
INSERT INTO public.usernames VALUES (21, 'user_1666419513332');
INSERT INTO public.usernames VALUES (22, 'user_1666419728458');
INSERT INTO public.usernames VALUES (23, 'user_1666419728457');
INSERT INTO public.usernames VALUES (24, 'user_1666419802144');
INSERT INTO public.usernames VALUES (25, 'user_1666419802143');
INSERT INTO public.usernames VALUES (26, 'user_1666419886085');
INSERT INTO public.usernames VALUES (27, 'user_1666419886084');
INSERT INTO public.usernames VALUES (28, 'user_1666419932788');
INSERT INTO public.usernames VALUES (29, 'user_1666419932787');
INSERT INTO public.usernames VALUES (30, 'user_1666419976387');
INSERT INTO public.usernames VALUES (31, 'user_1666419976386');
INSERT INTO public.usernames VALUES (32, 'user_1666420002226');
INSERT INTO public.usernames VALUES (33, 'user_1666420002225');
INSERT INTO public.usernames VALUES (34, 'user_1666420014390');
INSERT INTO public.usernames VALUES (35, 'user_1666420014389');
INSERT INTO public.usernames VALUES (36, 'user_1666420022445');
INSERT INTO public.usernames VALUES (37, 'user_1666420022444');
INSERT INTO public.usernames VALUES (38, 'az');
INSERT INTO public.usernames VALUES (39, 'user_1666420080750');
INSERT INTO public.usernames VALUES (40, 'user_1666420080749');
INSERT INTO public.usernames VALUES (41, 'user_1666420135157');
INSERT INTO public.usernames VALUES (42, 'user_1666420135156');
INSERT INTO public.usernames VALUES (43, 'user_1666420154924');
INSERT INTO public.usernames VALUES (44, 'user_1666420154923');
INSERT INTO public.usernames VALUES (45, 'user_1666420189265');
INSERT INTO public.usernames VALUES (46, 'user_1666420189264');
INSERT INTO public.usernames VALUES (47, 'user_1666420211409');
INSERT INTO public.usernames VALUES (48, 'user_1666420211408');
INSERT INTO public.usernames VALUES (49, 'user_1666420217423');
INSERT INTO public.usernames VALUES (50, 'user_1666420217422');
INSERT INTO public.usernames VALUES (51, 'user_1666420224206');
INSERT INTO public.usernames VALUES (52, 'user_1666420224205');
INSERT INTO public.usernames VALUES (53, 'user_1666420237808');
INSERT INTO public.usernames VALUES (54, 'user_1666420237807');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 131, true);


--
-- Name: usernames_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.usernames_user_id_seq', 54, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: usernames usernames_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.usernames
    ADD CONSTRAINT usernames_pkey PRIMARY KEY (user_id);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.usernames(user_id);


--
-- PostgreSQL database dump complete
--

