--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'SQL_ASCII';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: tokens; Type: TABLE; Schema: public; Owner: owoapi; Tablespace: 
--

CREATE TABLE tokens (
    user_id uuid,
    token uuid
);


ALTER TABLE tokens OWNER TO owoapi;

--
-- Name: users; Type: TABLE; Schema: public; Owner: owoapi; Tablespace: 
--

CREATE TABLE users (
    id uuid,
    username text,
    email text,
    is_admin boolean,
    is_blocked boolean
);


ALTER TABLE users OWNER TO owoapi;

--
-- Data for Name: tokens; Type: TABLE DATA; Schema: public; Owner: owoapi
--

COPY tokens (user_id, token) FROM stdin;
e369ad35-d124-4994-b334-451c62698069	b28c5418-5084-47fe-b245-8b91e2adea76
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: owoapi
--

COPY users (id, username, email, is_admin, is_blocked) FROM stdin;
e369ad35-d124-4994-b334-451c62698069	admin	admin@localhost	t	f
\.


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- Name: tokens; Type: ACL; Schema: public; Owner: owoapi
--

REVOKE ALL ON TABLE tokens FROM PUBLIC;
REVOKE ALL ON TABLE tokens FROM owoapi;
GRANT ALL ON TABLE tokens TO owoapi;
GRANT ALL ON TABLE tokens TO postgres;


--
-- Name: users; Type: ACL; Schema: public; Owner: owoapi
--

REVOKE ALL ON TABLE users FROM PUBLIC;
REVOKE ALL ON TABLE users FROM owoapi;
GRANT ALL ON TABLE users TO owoapi;
GRANT ALL ON TABLE users TO postgres;


--
-- PostgreSQL database dump complete
--

