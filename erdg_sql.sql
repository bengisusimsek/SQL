--
-- PostgreSQL database dump
--

-- Dumped from database version 15.1
-- Dumped by pg_dump version 15.1

-- Started on 2022-11-25 16:13:08

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
-- TOC entry 260 (class 1259 OID 16699)
-- Name: adresses; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.adresses (
    id integer NOT NULL,
    title character varying NOT NULL,
    door_no integer NOT NULL,
    customerid integer NOT NULL,
    streetid integer NOT NULL
);


ALTER TABLE public.adresses OWNER TO postgres;

--
-- TOC entry 259 (class 1259 OID 16698)
-- Name: adresses_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.adresses ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.adresses_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 256 (class 1259 OID 16665)
-- Name: baskets; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.baskets (
    id integer NOT NULL,
    total_price money NOT NULL,
    quantity integer NOT NULL,
    productid integer NOT NULL,
    customerid integer NOT NULL
);


ALTER TABLE public.baskets OWNER TO postgres;

--
-- TOC entry 255 (class 1259 OID 16664)
-- Name: baskets_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.baskets ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.baskets_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 223 (class 1259 OID 16478)
-- Name: brands; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.brands (
    id integer NOT NULL,
    name character varying NOT NULL
);


ALTER TABLE public.brands OWNER TO postgres;

--
-- TOC entry 222 (class 1259 OID 16477)
-- Name: brands_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.brands ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.brands_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 215 (class 1259 OID 16408)
-- Name: categories; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.categories (
    id integer NOT NULL,
    name character varying NOT NULL,
    type character varying NOT NULL,
    category_typeid integer NOT NULL
);


ALTER TABLE public.categories OWNER TO postgres;

--
-- TOC entry 214 (class 1259 OID 16407)
-- Name: categories_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.categories ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 221 (class 1259 OID 16443)
-- Name: categories_type_brands; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.categories_type_brands (
    category_type_id integer NOT NULL,
    brandsid integer NOT NULL
);


ALTER TABLE public.categories_type_brands OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 16441)
-- Name: categories_type_brands_category_type_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.categories_type_brands ALTER COLUMN category_type_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.categories_type_brands_category_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 219 (class 1259 OID 16429)
-- Name: category_type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.category_type (
    id integer NOT NULL,
    name character varying NOT NULL,
    size character varying NOT NULL,
    color character varying,
    price_range money NOT NULL,
    details character varying
);


ALTER TABLE public.category_type OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 16428)
-- Name: category_type_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.category_type ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.category_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 264 (class 1259 OID 16715)
-- Name: cities; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cities (
    id integer NOT NULL,
    countryid integer NOT NULL
);


ALTER TABLE public.cities OWNER TO postgres;

--
-- TOC entry 263 (class 1259 OID 16714)
-- Name: cities_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.cities ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.cities_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 235 (class 1259 OID 16536)
-- Name: color; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.color (
    id integer NOT NULL,
    name character varying NOT NULL
);


ALTER TABLE public.color OWNER TO postgres;

--
-- TOC entry 234 (class 1259 OID 16535)
-- Name: color_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.color ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.color_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 262 (class 1259 OID 16707)
-- Name: countries; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.countries (
    id integer NOT NULL,
    name character varying NOT NULL
);


ALTER TABLE public.countries OWNER TO postgres;

--
-- TOC entry 261 (class 1259 OID 16706)
-- Name: countries_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.countries ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.countries_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 258 (class 1259 OID 16671)
-- Name: customers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.customers (
    id integer NOT NULL,
    name character varying NOT NULL,
    surname character varying NOT NULL,
    email character varying NOT NULL,
    paymentid integer NOT NULL,
    phone_number integer NOT NULL
);


ALTER TABLE public.customers OWNER TO postgres;

--
-- TOC entry 257 (class 1259 OID 16670)
-- Name: customers_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.customers ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.customers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 266 (class 1259 OID 16721)
-- Name: districts; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.districts (
    id integer NOT NULL,
    citiesid integer NOT NULL
);


ALTER TABLE public.districts OWNER TO postgres;

--
-- TOC entry 265 (class 1259 OID 16720)
-- Name: districts_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.districts ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.districts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 242 (class 1259 OID 16580)
-- Name: order_details; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.order_details (
    id integer NOT NULL,
    unit_price money NOT NULL,
    quantity integer NOT NULL,
    productid integer NOT NULL,
    shipperid integer NOT NULL,
    orderid integer NOT NULL
);


ALTER TABLE public.order_details OWNER TO postgres;

--
-- TOC entry 241 (class 1259 OID 16579)
-- Name: order_details_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.order_details ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.order_details_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 246 (class 1259 OID 16594)
-- Name: orders; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.orders (
    "id " integer NOT NULL,
    paymentid integer NOT NULL,
    order_date date NOT NULL,
    customerid integer NOT NULL,
    adressesid integer NOT NULL
);


ALTER TABLE public.orders OWNER TO postgres;

--
-- TOC entry 245 (class 1259 OID 16593)
-- Name: orders_id _seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.orders ALTER COLUMN "id " ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."orders_id _seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 250 (class 1259 OID 16623)
-- Name: payment_type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.payment_type (
    id integer NOT NULL,
    name character varying NOT NULL,
    paymentid integer NOT NULL
);


ALTER TABLE public.payment_type OWNER TO postgres;

--
-- TOC entry 249 (class 1259 OID 16622)
-- Name: payment_type_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.payment_type ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.payment_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 248 (class 1259 OID 16615)
-- Name: payments; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.payments (
    id integer NOT NULL,
    payment_type character varying NOT NULL,
    payment_date date NOT NULL,
    amount integer NOT NULL
);


ALTER TABLE public.payments OWNER TO postgres;

--
-- TOC entry 247 (class 1259 OID 16614)
-- Name: payments_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.payments ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.payments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 226 (class 1259 OID 16492)
-- Name: product_size; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.product_size (
    productid integer NOT NULL,
    sizeid integer NOT NULL
);


ALTER TABLE public.product_size OWNER TO postgres;

--
-- TOC entry 224 (class 1259 OID 16490)
-- Name: product_size_productid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.product_size ALTER COLUMN productid ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.product_size_productid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 225 (class 1259 OID 16491)
-- Name: product_size_sizeid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.product_size ALTER COLUMN sizeid ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.product_size_sizeid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 217 (class 1259 OID 16416)
-- Name: products; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.products (
    id integer NOT NULL,
    name character varying NOT NULL,
    unit_prices money NOT NULL,
    stock integer NOT NULL,
    categoryid integer NOT NULL
);


ALTER TABLE public.products OWNER TO postgres;

--
-- TOC entry 233 (class 1259 OID 16530)
-- Name: products_color; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.products_color (
    productid integer NOT NULL,
    colorid integer NOT NULL
);


ALTER TABLE public.products_color OWNER TO postgres;

--
-- TOC entry 232 (class 1259 OID 16529)
-- Name: products_color_colorid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.products_color ALTER COLUMN colorid ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.products_color_colorid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 231 (class 1259 OID 16528)
-- Name: products_color_productid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.products_color ALTER COLUMN productid ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.products_color_productid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 216 (class 1259 OID 16415)
-- Name: products_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.products ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.products_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 230 (class 1259 OID 16516)
-- Name: products_pictures; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.products_pictures (
    id integer NOT NULL,
    category_pictures character varying NOT NULL,
    url character varying NOT NULL,
    productid integer NOT NULL
);


ALTER TABLE public.products_pictures OWNER TO postgres;

--
-- TOC entry 229 (class 1259 OID 16515)
-- Name: products_pictures_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.products_pictures ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.products_pictures_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 238 (class 1259 OID 16555)
-- Name: products_sellers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.products_sellers (
    productid integer NOT NULL,
    sellersid integer NOT NULL
);


ALTER TABLE public.products_sellers OWNER TO postgres;

--
-- TOC entry 236 (class 1259 OID 16553)
-- Name: products_sellers_productid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.products_sellers ALTER COLUMN productid ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.products_sellers_productid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 237 (class 1259 OID 16554)
-- Name: products_sellers_sellersid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.products_sellers ALTER COLUMN sellersid ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.products_sellers_sellersid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 254 (class 1259 OID 16649)
-- Name: return_details; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.return_details (
    id integer NOT NULL,
    returnid integer NOT NULL,
    order_detailsid integer NOT NULL,
    quantity integer NOT NULL,
    total_price money NOT NULL
);


ALTER TABLE public.return_details OWNER TO postgres;

--
-- TOC entry 253 (class 1259 OID 16648)
-- Name: return_details_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.return_details ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.return_details_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 252 (class 1259 OID 16641)
-- Name: returns; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.returns (
    id integer NOT NULL,
    total_return_price money NOT NULL,
    return_reason character varying NOT NULL
);


ALTER TABLE public.returns OWNER TO postgres;

--
-- TOC entry 251 (class 1259 OID 16640)
-- Name: returns_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.returns ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.returns_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 240 (class 1259 OID 16561)
-- Name: sellers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sellers (
    id integer NOT NULL,
    name character varying NOT NULL,
    rating character varying NOT NULL,
    followercount integer
);


ALTER TABLE public.sellers OWNER TO postgres;

--
-- TOC entry 239 (class 1259 OID 16560)
-- Name: sellers_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.sellers ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.sellers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 244 (class 1259 OID 16586)
-- Name: shippers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.shippers (
    id integer NOT NULL,
    company_name character varying NOT NULL,
    phone integer NOT NULL,
    ship_date date NOT NULL
);


ALTER TABLE public.shippers OWNER TO postgres;

--
-- TOC entry 243 (class 1259 OID 16585)
-- Name: shippers_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.shippers ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.shippers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 228 (class 1259 OID 16498)
-- Name: size; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.size (
    id integer NOT NULL,
    name character varying,
    number integer
);


ALTER TABLE public.size OWNER TO postgres;

--
-- TOC entry 227 (class 1259 OID 16497)
-- Name: size_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.size ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.size_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 268 (class 1259 OID 16727)
-- Name: streets; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.streets (
    id integer NOT NULL,
    distcritid integer NOT NULL
);


ALTER TABLE public.streets OWNER TO postgres;

--
-- TOC entry 267 (class 1259 OID 16726)
-- Name: streets_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.streets ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.streets_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 3567 (class 0 OID 16699)
-- Dependencies: 260
-- Data for Name: adresses; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3563 (class 0 OID 16665)
-- Dependencies: 256
-- Data for Name: baskets; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3530 (class 0 OID 16478)
-- Dependencies: 223
-- Data for Name: brands; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3522 (class 0 OID 16408)
-- Dependencies: 215
-- Data for Name: categories; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3528 (class 0 OID 16443)
-- Dependencies: 221
-- Data for Name: categories_type_brands; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3526 (class 0 OID 16429)
-- Dependencies: 219
-- Data for Name: category_type; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3571 (class 0 OID 16715)
-- Dependencies: 264
-- Data for Name: cities; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3542 (class 0 OID 16536)
-- Dependencies: 235
-- Data for Name: color; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3569 (class 0 OID 16707)
-- Dependencies: 262
-- Data for Name: countries; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3565 (class 0 OID 16671)
-- Dependencies: 258
-- Data for Name: customers; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3573 (class 0 OID 16721)
-- Dependencies: 266
-- Data for Name: districts; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3549 (class 0 OID 16580)
-- Dependencies: 242
-- Data for Name: order_details; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3553 (class 0 OID 16594)
-- Dependencies: 246
-- Data for Name: orders; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3557 (class 0 OID 16623)
-- Dependencies: 250
-- Data for Name: payment_type; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3555 (class 0 OID 16615)
-- Dependencies: 248
-- Data for Name: payments; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3533 (class 0 OID 16492)
-- Dependencies: 226
-- Data for Name: product_size; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3524 (class 0 OID 16416)
-- Dependencies: 217
-- Data for Name: products; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3540 (class 0 OID 16530)
-- Dependencies: 233
-- Data for Name: products_color; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3537 (class 0 OID 16516)
-- Dependencies: 230
-- Data for Name: products_pictures; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3545 (class 0 OID 16555)
-- Dependencies: 238
-- Data for Name: products_sellers; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3561 (class 0 OID 16649)
-- Dependencies: 254
-- Data for Name: return_details; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3559 (class 0 OID 16641)
-- Dependencies: 252
-- Data for Name: returns; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3547 (class 0 OID 16561)
-- Dependencies: 240
-- Data for Name: sellers; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3551 (class 0 OID 16586)
-- Dependencies: 244
-- Data for Name: shippers; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3535 (class 0 OID 16498)
-- Dependencies: 228
-- Data for Name: size; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3575 (class 0 OID 16727)
-- Dependencies: 268
-- Data for Name: streets; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3581 (class 0 OID 0)
-- Dependencies: 259
-- Name: adresses_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.adresses_id_seq', 1, false);


--
-- TOC entry 3582 (class 0 OID 0)
-- Dependencies: 255
-- Name: baskets_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.baskets_id_seq', 1, false);


--
-- TOC entry 3583 (class 0 OID 0)
-- Dependencies: 222
-- Name: brands_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.brands_id_seq', 1, false);


--
-- TOC entry 3584 (class 0 OID 0)
-- Dependencies: 214
-- Name: categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.categories_id_seq', 1, true);


--
-- TOC entry 3585 (class 0 OID 0)
-- Dependencies: 220
-- Name: categories_type_brands_category_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.categories_type_brands_category_type_id_seq', 1, false);


--
-- TOC entry 3586 (class 0 OID 0)
-- Dependencies: 218
-- Name: category_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.category_type_id_seq', 1, false);


--
-- TOC entry 3587 (class 0 OID 0)
-- Dependencies: 263
-- Name: cities_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cities_id_seq', 1, false);


--
-- TOC entry 3588 (class 0 OID 0)
-- Dependencies: 234
-- Name: color_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.color_id_seq', 1, false);


--
-- TOC entry 3589 (class 0 OID 0)
-- Dependencies: 261
-- Name: countries_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.countries_id_seq', 1, false);


--
-- TOC entry 3590 (class 0 OID 0)
-- Dependencies: 257
-- Name: customers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.customers_id_seq', 1, false);


--
-- TOC entry 3591 (class 0 OID 0)
-- Dependencies: 265
-- Name: districts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.districts_id_seq', 1, false);


--
-- TOC entry 3592 (class 0 OID 0)
-- Dependencies: 241
-- Name: order_details_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.order_details_id_seq', 1, false);


--
-- TOC entry 3593 (class 0 OID 0)
-- Dependencies: 245
-- Name: orders_id _seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."orders_id _seq"', 1, false);


--
-- TOC entry 3594 (class 0 OID 0)
-- Dependencies: 249
-- Name: payment_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.payment_type_id_seq', 1, false);


--
-- TOC entry 3595 (class 0 OID 0)
-- Dependencies: 247
-- Name: payments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.payments_id_seq', 1, false);


--
-- TOC entry 3596 (class 0 OID 0)
-- Dependencies: 224
-- Name: product_size_productid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.product_size_productid_seq', 1, false);


--
-- TOC entry 3597 (class 0 OID 0)
-- Dependencies: 225
-- Name: product_size_sizeid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.product_size_sizeid_seq', 1, false);


--
-- TOC entry 3598 (class 0 OID 0)
-- Dependencies: 232
-- Name: products_color_colorid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.products_color_colorid_seq', 1, false);


--
-- TOC entry 3599 (class 0 OID 0)
-- Dependencies: 231
-- Name: products_color_productid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.products_color_productid_seq', 1, false);


--
-- TOC entry 3600 (class 0 OID 0)
-- Dependencies: 216
-- Name: products_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.products_id_seq', 1, false);


--
-- TOC entry 3601 (class 0 OID 0)
-- Dependencies: 229
-- Name: products_pictures_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.products_pictures_id_seq', 1, false);


--
-- TOC entry 3602 (class 0 OID 0)
-- Dependencies: 236
-- Name: products_sellers_productid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.products_sellers_productid_seq', 1, false);


--
-- TOC entry 3603 (class 0 OID 0)
-- Dependencies: 237
-- Name: products_sellers_sellersid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.products_sellers_sellersid_seq', 1, false);


--
-- TOC entry 3604 (class 0 OID 0)
-- Dependencies: 253
-- Name: return_details_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.return_details_id_seq', 1, false);


--
-- TOC entry 3605 (class 0 OID 0)
-- Dependencies: 251
-- Name: returns_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.returns_id_seq', 1, false);


--
-- TOC entry 3606 (class 0 OID 0)
-- Dependencies: 239
-- Name: sellers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.sellers_id_seq', 1, false);


--
-- TOC entry 3607 (class 0 OID 0)
-- Dependencies: 243
-- Name: shippers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.shippers_id_seq', 1, false);


--
-- TOC entry 3608 (class 0 OID 0)
-- Dependencies: 227
-- Name: size_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.size_id_seq', 1, false);


--
-- TOC entry 3609 (class 0 OID 0)
-- Dependencies: 267
-- Name: streets_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.streets_id_seq', 1, false);


--
-- TOC entry 3342 (class 2606 OID 16705)
-- Name: adresses adresses_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.adresses
    ADD CONSTRAINT adresses_pkey PRIMARY KEY (id);


--
-- TOC entry 3338 (class 2606 OID 16669)
-- Name: baskets baskets_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.baskets
    ADD CONSTRAINT baskets_pkey PRIMARY KEY (id);


--
-- TOC entry 3308 (class 2606 OID 16484)
-- Name: brands brands_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.brands
    ADD CONSTRAINT brands_pkey PRIMARY KEY (id);


--
-- TOC entry 3302 (class 2606 OID 16414)
-- Name: categories categories_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (id);


--
-- TOC entry 3306 (class 2606 OID 16435)
-- Name: category_type category_type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.category_type
    ADD CONSTRAINT category_type_pkey PRIMARY KEY (id);


--
-- TOC entry 3346 (class 2606 OID 16719)
-- Name: cities cities_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cities
    ADD CONSTRAINT cities_pkey PRIMARY KEY (id);


--
-- TOC entry 3318 (class 2606 OID 16542)
-- Name: color color_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.color
    ADD CONSTRAINT color_pkey PRIMARY KEY (id);


--
-- TOC entry 3344 (class 2606 OID 16713)
-- Name: countries countries_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.countries
    ADD CONSTRAINT countries_pkey PRIMARY KEY (id);


--
-- TOC entry 3340 (class 2606 OID 16677)
-- Name: customers customers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customers
    ADD CONSTRAINT customers_pkey PRIMARY KEY (id);


--
-- TOC entry 3348 (class 2606 OID 16725)
-- Name: districts districts_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.districts
    ADD CONSTRAINT districts_pkey PRIMARY KEY (id);


--
-- TOC entry 3324 (class 2606 OID 16584)
-- Name: order_details order_details_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.order_details
    ADD CONSTRAINT order_details_pkey PRIMARY KEY (id);


--
-- TOC entry 3328 (class 2606 OID 16598)
-- Name: orders orders_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY ("id ");


--
-- TOC entry 3332 (class 2606 OID 16629)
-- Name: payment_type payment_type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.payment_type
    ADD CONSTRAINT payment_type_pkey PRIMARY KEY (id);


--
-- TOC entry 3330 (class 2606 OID 16621)
-- Name: payments payments_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.payments
    ADD CONSTRAINT payments_pkey PRIMARY KEY (id);


--
-- TOC entry 3310 (class 2606 OID 16496)
-- Name: product_size product_size_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_size
    ADD CONSTRAINT product_size_pkey PRIMARY KEY (productid, sizeid);


--
-- TOC entry 3316 (class 2606 OID 16534)
-- Name: products_color products_color_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products_color
    ADD CONSTRAINT products_color_pkey PRIMARY KEY (productid, colorid);


--
-- TOC entry 3314 (class 2606 OID 16522)
-- Name: products_pictures products_pictures_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products_pictures
    ADD CONSTRAINT products_pictures_pkey PRIMARY KEY (id);


--
-- TOC entry 3304 (class 2606 OID 16422)
-- Name: products products_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (id);


--
-- TOC entry 3320 (class 2606 OID 16559)
-- Name: products_sellers products_sellers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products_sellers
    ADD CONSTRAINT products_sellers_pkey PRIMARY KEY (productid, sellersid);


--
-- TOC entry 3336 (class 2606 OID 16653)
-- Name: return_details return_details_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.return_details
    ADD CONSTRAINT return_details_pkey PRIMARY KEY (id);


--
-- TOC entry 3334 (class 2606 OID 16647)
-- Name: returns returns_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.returns
    ADD CONSTRAINT returns_pkey PRIMARY KEY (id);


--
-- TOC entry 3322 (class 2606 OID 16567)
-- Name: sellers sellers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sellers
    ADD CONSTRAINT sellers_pkey PRIMARY KEY (id);


--
-- TOC entry 3326 (class 2606 OID 16592)
-- Name: shippers shippers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.shippers
    ADD CONSTRAINT shippers_pkey PRIMARY KEY (id);


--
-- TOC entry 3312 (class 2606 OID 16504)
-- Name: size size_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.size
    ADD CONSTRAINT size_pkey PRIMARY KEY (id);


--
-- TOC entry 3350 (class 2606 OID 16731)
-- Name: streets streets_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.streets
    ADD CONSTRAINT streets_pkey PRIMARY KEY (id);


--
-- TOC entry 3365 (class 2606 OID 16742)
-- Name: orders adresses_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT adresses_fk FOREIGN KEY (adressesid) REFERENCES public.adresses(id) NOT VALID;


--
-- TOC entry 3353 (class 2606 OID 16485)
-- Name: categories_type_brands brandsid_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categories_type_brands
    ADD CONSTRAINT brandsid_fk FOREIGN KEY (brandsid) REFERENCES public.brands(id) NOT VALID;


--
-- TOC entry 3351 (class 2606 OID 16436)
-- Name: categories category_typeid_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categories
    ADD CONSTRAINT category_typeid_fk FOREIGN KEY (category_typeid) REFERENCES public.category_type(id) NOT VALID;


--
-- TOC entry 3354 (class 2606 OID 16448)
-- Name: categories_type_brands categorytype_brands_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categories_type_brands
    ADD CONSTRAINT categorytype_brands_fk FOREIGN KEY (category_type_id) REFERENCES public.category_type(id);


--
-- TOC entry 3377 (class 2606 OID 16752)
-- Name: districts cities_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.districts
    ADD CONSTRAINT cities_fk FOREIGN KEY (citiesid) REFERENCES public.cities(id) NOT VALID;


--
-- TOC entry 3358 (class 2606 OID 16548)
-- Name: products_color color_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products_color
    ADD CONSTRAINT color_fk FOREIGN KEY (colorid) REFERENCES public.color(id) NOT VALID;


--
-- TOC entry 3376 (class 2606 OID 16747)
-- Name: cities country_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cities
    ADD CONSTRAINT country_fk FOREIGN KEY (countryid) REFERENCES public.countries(id) NOT VALID;


--
-- TOC entry 3374 (class 2606 OID 16732)
-- Name: adresses customer_adresses_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.adresses
    ADD CONSTRAINT customer_adresses_fk FOREIGN KEY (customerid) REFERENCES public.customers(id) NOT VALID;


--
-- TOC entry 3371 (class 2606 OID 16683)
-- Name: baskets customer_basket_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.baskets
    ADD CONSTRAINT customer_basket_fk FOREIGN KEY (customerid) REFERENCES public.customers(id) NOT VALID;


--
-- TOC entry 3366 (class 2606 OID 16693)
-- Name: orders customer_order_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT customer_order_fk FOREIGN KEY (customerid) REFERENCES public.customers(id) NOT VALID;


--
-- TOC entry 3373 (class 2606 OID 16688)
-- Name: customers customer_payment_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customers
    ADD CONSTRAINT customer_payment_fk FOREIGN KEY (paymentid) REFERENCES public.payments(id) NOT VALID;


--
-- TOC entry 3378 (class 2606 OID 16757)
-- Name: streets districts_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.streets
    ADD CONSTRAINT districts_fk FOREIGN KEY (distcritid) REFERENCES public.districts(id) NOT VALID;


--
-- TOC entry 3362 (class 2606 OID 16609)
-- Name: order_details order_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.order_details
    ADD CONSTRAINT order_fk FOREIGN KEY (orderid) REFERENCES public.orders("id ") NOT VALID;


--
-- TOC entry 3368 (class 2606 OID 16630)
-- Name: payment_type payment_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.payment_type
    ADD CONSTRAINT payment_fk FOREIGN KEY (paymentid) REFERENCES public.payments(id);


--
-- TOC entry 3367 (class 2606 OID 16635)
-- Name: orders payment_order_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT payment_order_fk FOREIGN KEY (paymentid) REFERENCES public.payments(id) NOT VALID;


--
-- TOC entry 3372 (class 2606 OID 16678)
-- Name: baskets product_basket_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.baskets
    ADD CONSTRAINT product_basket_fk FOREIGN KEY (productid) REFERENCES public.products(id) NOT VALID;


--
-- TOC entry 3359 (class 2606 OID 16543)
-- Name: products_color product_color_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products_color
    ADD CONSTRAINT product_color_fk FOREIGN KEY (productid) REFERENCES public.products(id) NOT VALID;


--
-- TOC entry 3352 (class 2606 OID 16423)
-- Name: products product_fk_category; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT product_fk_category FOREIGN KEY (categoryid) REFERENCES public.categories(id);


--
-- TOC entry 3363 (class 2606 OID 16599)
-- Name: order_details product_orderdt_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.order_details
    ADD CONSTRAINT product_orderdt_fk FOREIGN KEY (productid) REFERENCES public.products(id) NOT VALID;


--
-- TOC entry 3357 (class 2606 OID 16523)
-- Name: products_pictures product_pictures_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products_pictures
    ADD CONSTRAINT product_pictures_fk FOREIGN KEY (productid) REFERENCES public.products(id);


--
-- TOC entry 3355 (class 2606 OID 16505)
-- Name: product_size product_size_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_size
    ADD CONSTRAINT product_size_fk FOREIGN KEY (productid) REFERENCES public.products(id) NOT VALID;


--
-- TOC entry 3360 (class 2606 OID 16569)
-- Name: products_sellers productsellers_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products_sellers
    ADD CONSTRAINT productsellers_fk FOREIGN KEY (productid) REFERENCES public.products(id) NOT VALID;


--
-- TOC entry 3369 (class 2606 OID 16659)
-- Name: return_details return_details_od_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.return_details
    ADD CONSTRAINT return_details_od_fk FOREIGN KEY (order_detailsid) REFERENCES public.order_details(id);


--
-- TOC entry 3370 (class 2606 OID 16654)
-- Name: return_details return_dt_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.return_details
    ADD CONSTRAINT return_dt_fk FOREIGN KEY (returnid) REFERENCES public.returns(id);


--
-- TOC entry 3361 (class 2606 OID 16574)
-- Name: products_sellers sellers_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products_sellers
    ADD CONSTRAINT sellers_fk FOREIGN KEY (sellersid) REFERENCES public.sellers(id) NOT VALID;


--
-- TOC entry 3364 (class 2606 OID 16604)
-- Name: order_details shipper_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.order_details
    ADD CONSTRAINT shipper_fk FOREIGN KEY (shipperid) REFERENCES public.shippers(id) NOT VALID;


--
-- TOC entry 3356 (class 2606 OID 16510)
-- Name: product_size size_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_size
    ADD CONSTRAINT size_fk FOREIGN KEY (sizeid) REFERENCES public.size(id) NOT VALID;


--
-- TOC entry 3375 (class 2606 OID 16737)
-- Name: adresses streets_adress_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.adresses
    ADD CONSTRAINT streets_adress_fk FOREIGN KEY (streetid) REFERENCES public.streets(id) NOT VALID;


-- Completed on 2022-11-25 16:13:09

--
-- PostgreSQL database dump complete
--

