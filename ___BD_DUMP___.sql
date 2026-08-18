--
-- PostgreSQL database dump
--

\restrict Hg7AX62DlNbxC56lb3DinSjSgUzL0V2ahrpcKcJ4J5xR3Yf2bmGdQYaG1AYE5dp

-- Dumped from database version 16.14 (Ubuntu 16.14-0ubuntu0.24.04.1)
-- Dumped by pg_dump version 18.3

-- Started on 2026-08-18 14:21:16

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
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
-- TOC entry 232 (class 1259 OID 57433)
-- Name: action_text_rich_texts; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.action_text_rich_texts (
    id bigint NOT NULL,
    name character varying NOT NULL,
    body text,
    record_type character varying NOT NULL,
    record_id bigint NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.action_text_rich_texts OWNER TO admin;

--
-- TOC entry 231 (class 1259 OID 57432)
-- Name: action_text_rich_texts_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.action_text_rich_texts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.action_text_rich_texts_id_seq OWNER TO admin;

--
-- TOC entry 3653 (class 0 OID 0)
-- Dependencies: 231
-- Name: action_text_rich_texts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.action_text_rich_texts_id_seq OWNED BY public.action_text_rich_texts.id;


--
-- TOC entry 222 (class 1259 OID 57355)
-- Name: active_storage_attachments; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.active_storage_attachments (
    id bigint NOT NULL,
    name character varying NOT NULL,
    record_type character varying NOT NULL,
    record_id bigint NOT NULL,
    blob_id bigint NOT NULL,
    created_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.active_storage_attachments OWNER TO admin;

--
-- TOC entry 221 (class 1259 OID 57354)
-- Name: active_storage_attachments_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.active_storage_attachments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.active_storage_attachments_id_seq OWNER TO admin;

--
-- TOC entry 3654 (class 0 OID 0)
-- Dependencies: 221
-- Name: active_storage_attachments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.active_storage_attachments_id_seq OWNED BY public.active_storage_attachments.id;


--
-- TOC entry 220 (class 1259 OID 57345)
-- Name: active_storage_blobs; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.active_storage_blobs (
    id bigint NOT NULL,
    key character varying NOT NULL,
    filename character varying NOT NULL,
    content_type character varying,
    metadata text,
    service_name character varying NOT NULL,
    byte_size bigint NOT NULL,
    checksum character varying,
    created_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.active_storage_blobs OWNER TO admin;

--
-- TOC entry 219 (class 1259 OID 57344)
-- Name: active_storage_blobs_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.active_storage_blobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.active_storage_blobs_id_seq OWNER TO admin;

--
-- TOC entry 3655 (class 0 OID 0)
-- Dependencies: 219
-- Name: active_storage_blobs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.active_storage_blobs_id_seq OWNED BY public.active_storage_blobs.id;


--
-- TOC entry 224 (class 1259 OID 57371)
-- Name: active_storage_variant_records; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.active_storage_variant_records (
    id bigint NOT NULL,
    blob_id bigint NOT NULL,
    variation_digest character varying NOT NULL
);


ALTER TABLE public.active_storage_variant_records OWNER TO admin;

--
-- TOC entry 223 (class 1259 OID 57370)
-- Name: active_storage_variant_records_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.active_storage_variant_records_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.active_storage_variant_records_id_seq OWNER TO admin;

--
-- TOC entry 3656 (class 0 OID 0)
-- Dependencies: 223
-- Name: active_storage_variant_records_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.active_storage_variant_records_id_seq OWNED BY public.active_storage_variant_records.id;


--
-- TOC entry 243 (class 1259 OID 81953)
-- Name: administrators; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.administrators (
    id bigint NOT NULL,
    email character varying,
    password_digest character varying,
    first_name character varying,
    last_name character varying,
    remember_token character varying,
    remember_token_expires_at timestamp(6) without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.administrators OWNER TO admin;

--
-- TOC entry 242 (class 1259 OID 81952)
-- Name: administrators_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.administrators_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.administrators_id_seq OWNER TO admin;

--
-- TOC entry 3657 (class 0 OID 0)
-- Dependencies: 242
-- Name: administrators_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.administrators_id_seq OWNED BY public.administrators.id;


--
-- TOC entry 216 (class 1259 OID 49161)
-- Name: ar_internal_metadata; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.ar_internal_metadata OWNER TO admin;

--
-- TOC entry 226 (class 1259 OID 57386)
-- Name: categories; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.categories (
    id bigint NOT NULL,
    name character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.categories OWNER TO admin;

--
-- TOC entry 225 (class 1259 OID 57385)
-- Name: categories_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.categories_id_seq OWNER TO admin;

--
-- TOC entry 3658 (class 0 OID 0)
-- Dependencies: 225
-- Name: categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.categories_id_seq OWNED BY public.categories.id;


--
-- TOC entry 249 (class 1259 OID 98305)
-- Name: comments; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.comments (
    id bigint NOT NULL,
    content text,
    user_id bigint NOT NULL,
    order_id uuid NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.comments OWNER TO admin;

--
-- TOC entry 248 (class 1259 OID 98304)
-- Name: comments_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.comments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.comments_id_seq OWNER TO admin;

--
-- TOC entry 3659 (class 0 OID 0)
-- Dependencies: 248
-- Name: comments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.comments_id_seq OWNED BY public.comments.id;


--
-- TOC entry 245 (class 1259 OID 90113)
-- Name: conversations; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.conversations (
    id bigint NOT NULL,
    sender_id bigint,
    receiver_id bigint,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.conversations OWNER TO admin;

--
-- TOC entry 244 (class 1259 OID 90112)
-- Name: conversations_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.conversations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.conversations_id_seq OWNER TO admin;

--
-- TOC entry 3660 (class 0 OID 0)
-- Dependencies: 244
-- Name: conversations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.conversations_id_seq OWNED BY public.conversations.id;


--
-- TOC entry 228 (class 1259 OID 57395)
-- Name: gigs; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.gigs (
    id bigint NOT NULL,
    title character varying,
    video character varying,
    active boolean DEFAULT false,
    has_single_pricing boolean DEFAULT false,
    user_id bigint NOT NULL,
    category_id bigint NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.gigs OWNER TO admin;

--
-- TOC entry 227 (class 1259 OID 57394)
-- Name: gigs_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.gigs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.gigs_id_seq OWNER TO admin;

--
-- TOC entry 3661 (class 0 OID 0)
-- Dependencies: 227
-- Name: gigs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.gigs_id_seq OWNED BY public.gigs.id;


--
-- TOC entry 247 (class 1259 OID 90132)
-- Name: messages; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.messages (
    id bigint NOT NULL,
    content text,
    user_id bigint NOT NULL,
    conversation_id bigint NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.messages OWNER TO admin;

--
-- TOC entry 246 (class 1259 OID 90131)
-- Name: messages_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.messages_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.messages_id_seq OWNER TO admin;

--
-- TOC entry 3662 (class 0 OID 0)
-- Dependencies: 246
-- Name: messages_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.messages_id_seq OWNED BY public.messages.id;


--
-- TOC entry 237 (class 1259 OID 65585)
-- Name: offers; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.offers (
    id bigint NOT NULL,
    note text,
    amount integer,
    days integer,
    status integer DEFAULT 0,
    request_id bigint NOT NULL,
    user_id bigint NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.offers OWNER TO admin;

--
-- TOC entry 236 (class 1259 OID 65584)
-- Name: offers_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.offers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.offers_id_seq OWNER TO admin;

--
-- TOC entry 3663 (class 0 OID 0)
-- Dependencies: 236
-- Name: offers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.offers_id_seq OWNED BY public.offers.id;


--
-- TOC entry 233 (class 1259 OID 65536)
-- Name: orders; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.orders (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    due_date date,
    title character varying,
    amount double precision,
    status integer DEFAULT 0,
    seller_name character varying,
    buyer_name character varying,
    gig_id bigint,
    buyer_id bigint,
    seller_id bigint,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    request_id bigint
);


ALTER TABLE public.orders OWNER TO admin;

--
-- TOC entry 230 (class 1259 OID 57418)
-- Name: pricings; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.pricings (
    id bigint NOT NULL,
    title character varying,
    description text,
    delivery_time integer,
    price integer,
    pricing_type integer,
    gig_id bigint NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.pricings OWNER TO admin;

--
-- TOC entry 229 (class 1259 OID 57417)
-- Name: pricings_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.pricings_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.pricings_id_seq OWNER TO admin;

--
-- TOC entry 3664 (class 0 OID 0)
-- Dependencies: 229
-- Name: pricings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.pricings_id_seq OWNED BY public.pricings.id;


--
-- TOC entry 235 (class 1259 OID 65564)
-- Name: requests; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.requests (
    id bigint NOT NULL,
    description text,
    title character varying,
    budget integer,
    delivery integer,
    user_id bigint NOT NULL,
    category_id bigint NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.requests OWNER TO admin;

--
-- TOC entry 234 (class 1259 OID 65563)
-- Name: requests_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.requests_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.requests_id_seq OWNER TO admin;

--
-- TOC entry 3665 (class 0 OID 0)
-- Dependencies: 234
-- Name: requests_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.requests_id_seq OWNED BY public.requests.id;


--
-- TOC entry 239 (class 1259 OID 65613)
-- Name: reviews; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.reviews (
    id bigint NOT NULL,
    review text,
    stars integer DEFAULT 1,
    order_id uuid NOT NULL,
    gig_id bigint,
    buyer_id bigint,
    seller_id bigint,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.reviews OWNER TO admin;

--
-- TOC entry 238 (class 1259 OID 65612)
-- Name: reviews_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.reviews_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.reviews_id_seq OWNER TO admin;

--
-- TOC entry 3666 (class 0 OID 0)
-- Dependencies: 238
-- Name: reviews_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.reviews_id_seq OWNED BY public.reviews.id;


--
-- TOC entry 215 (class 1259 OID 49154)
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO admin;

--
-- TOC entry 251 (class 1259 OID 106497)
-- Name: subscriptions; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.subscriptions (
    id bigint NOT NULL,
    plan_id character varying,
    sub_id character varying,
    status integer DEFAULT 0,
    expired_at date,
    user_id bigint NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.subscriptions OWNER TO admin;

--
-- TOC entry 250 (class 1259 OID 106496)
-- Name: subscriptions_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.subscriptions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.subscriptions_id_seq OWNER TO admin;

--
-- TOC entry 3667 (class 0 OID 0)
-- Dependencies: 250
-- Name: subscriptions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.subscriptions_id_seq OWNED BY public.subscriptions.id;


--
-- TOC entry 241 (class 1259 OID 81922)
-- Name: transactions; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.transactions (
    id bigint NOT NULL,
    status integer,
    transaction_type integer,
    amount double precision,
    source_type integer,
    request_id bigint,
    gig_id bigint,
    buyer_id bigint,
    seller_id bigint,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.transactions OWNER TO admin;

--
-- TOC entry 240 (class 1259 OID 81921)
-- Name: transactions_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.transactions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.transactions_id_seq OWNER TO admin;

--
-- TOC entry 3668 (class 0 OID 0)
-- Dependencies: 240
-- Name: transactions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.transactions_id_seq OWNED BY public.transactions.id;


--
-- TOC entry 218 (class 1259 OID 49169)
-- Name: users; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.users (
    id bigint NOT NULL,
    email character varying DEFAULT ''::character varying NOT NULL,
    encrypted_password character varying DEFAULT ''::character varying NOT NULL,
    reset_password_token character varying,
    reset_password_sent_at timestamp(6) without time zone,
    remember_created_at timestamp(6) without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    full_name character varying,
    "from" character varying,
    about text,
    language character varying,
    status boolean,
    provider character varying,
    uid character varying,
    image character varying,
    phone character varying,
    stripe_last_4 character varying,
    stripe_id character varying,
    paypal character varying,
    wallet double precision DEFAULT 0.0,
    active boolean DEFAULT true
);


ALTER TABLE public.users OWNER TO admin;

--
-- TOC entry 217 (class 1259 OID 49168)
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.users_id_seq OWNER TO admin;

--
-- TOC entry 3669 (class 0 OID 0)
-- Dependencies: 217
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- TOC entry 3352 (class 2604 OID 57436)
-- Name: action_text_rich_texts id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.action_text_rich_texts ALTER COLUMN id SET DEFAULT nextval('public.action_text_rich_texts_id_seq'::regclass);


--
-- TOC entry 3345 (class 2604 OID 57358)
-- Name: active_storage_attachments id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.active_storage_attachments ALTER COLUMN id SET DEFAULT nextval('public.active_storage_attachments_id_seq'::regclass);


--
-- TOC entry 3344 (class 2604 OID 57348)
-- Name: active_storage_blobs id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.active_storage_blobs ALTER COLUMN id SET DEFAULT nextval('public.active_storage_blobs_id_seq'::regclass);


--
-- TOC entry 3346 (class 2604 OID 57374)
-- Name: active_storage_variant_records id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.active_storage_variant_records ALTER COLUMN id SET DEFAULT nextval('public.active_storage_variant_records_id_seq'::regclass);


--
-- TOC entry 3361 (class 2604 OID 81956)
-- Name: administrators id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.administrators ALTER COLUMN id SET DEFAULT nextval('public.administrators_id_seq'::regclass);


--
-- TOC entry 3347 (class 2604 OID 57389)
-- Name: categories id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.categories ALTER COLUMN id SET DEFAULT nextval('public.categories_id_seq'::regclass);


--
-- TOC entry 3364 (class 2604 OID 98308)
-- Name: comments id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.comments ALTER COLUMN id SET DEFAULT nextval('public.comments_id_seq'::regclass);


--
-- TOC entry 3362 (class 2604 OID 90116)
-- Name: conversations id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.conversations ALTER COLUMN id SET DEFAULT nextval('public.conversations_id_seq'::regclass);


--
-- TOC entry 3348 (class 2604 OID 57398)
-- Name: gigs id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.gigs ALTER COLUMN id SET DEFAULT nextval('public.gigs_id_seq'::regclass);


--
-- TOC entry 3363 (class 2604 OID 90135)
-- Name: messages id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.messages ALTER COLUMN id SET DEFAULT nextval('public.messages_id_seq'::regclass);


--
-- TOC entry 3356 (class 2604 OID 65588)
-- Name: offers id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.offers ALTER COLUMN id SET DEFAULT nextval('public.offers_id_seq'::regclass);


--
-- TOC entry 3351 (class 2604 OID 57421)
-- Name: pricings id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.pricings ALTER COLUMN id SET DEFAULT nextval('public.pricings_id_seq'::regclass);


--
-- TOC entry 3355 (class 2604 OID 65567)
-- Name: requests id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.requests ALTER COLUMN id SET DEFAULT nextval('public.requests_id_seq'::regclass);


--
-- TOC entry 3358 (class 2604 OID 65616)
-- Name: reviews id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.reviews ALTER COLUMN id SET DEFAULT nextval('public.reviews_id_seq'::regclass);


--
-- TOC entry 3365 (class 2604 OID 106500)
-- Name: subscriptions id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.subscriptions ALTER COLUMN id SET DEFAULT nextval('public.subscriptions_id_seq'::regclass);


--
-- TOC entry 3360 (class 2604 OID 81925)
-- Name: transactions id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.transactions ALTER COLUMN id SET DEFAULT nextval('public.transactions_id_seq'::regclass);


--
-- TOC entry 3339 (class 2604 OID 49172)
-- Name: users id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- TOC entry 3628 (class 0 OID 57433)
-- Dependencies: 232
-- Data for Name: action_text_rich_texts; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.action_text_rich_texts (id, name, body, record_type, record_id, created_at, updated_at) FROM stdin;
1	description	<div>Tworzę nowoczesne strony internetowe, sklepy i proste systemy dla firm. Najpierw przygotowuję darmowy projekt do wglądu, a Ty decydujesz, czy chcesz go kupić. Bez ryzyka, bez zobowiązań. <strong>Ruby on Rails with AI</strong> is the definitive beginner-to-practitioner guide for developers who want to master Rails and immediately apply it in the era of modern AI. Written for 2026, this book takes you from Ruby fundamentals all the way to shipping real-world, AI-powered web applications used by companies like GitHub, Shopify, and Basecamp.<br><br>Author Thomas Scott delivers a structured, hands-on journey that builds genuine engineering skills — not just code-along tutorials. Every concept is grounded in how professional Rails developers actually work.</div>	Gig	1	2026-08-11 08:35:11.454114	2026-08-11 11:09:40.367954
2	description	I hope to see Ruby help every programmer in the world to be productive, and to enjoy programming, and to be happy. That is the primary purpose of Ruby language.	Gig	2	2026-08-13 07:57:59.343384	2026-08-13 07:57:59.343384
3	description	Language designers want to design the perfect language. They want to be able to say, 'My language is perfect. It can do everything.' But it's just plain impossible to design a perfect language, because there are two ways to look at a language. One way is by looking at what can be done with that language. The other is by looking at how we feel using that language-how we feel while programming.	Gig	3	2026-08-13 07:57:59.542013	2026-08-13 07:57:59.542013
4	description	Everyone has an individual background. Someone may come from Python, someone else may come from Perl, and they may be surprised by different aspects of the language. Then they come up to me and say, 'I was surprised by this feature of the language, so therefore Ruby violates the principle of least surprise.' Wait. Wait. The principle of least surprise is not for you only.	Gig	4	2026-08-13 07:57:59.68893	2026-08-13 07:57:59.68893
5	description	Ruby inherited the Perl philosophy of having more than one way to do the same thing. I inherited that philosophy from Larry Wall, who is my hero actually. I want to make Ruby users free. I want to give them the freedom to choose.	Gig	5	2026-08-13 07:57:59.791491	2026-08-13 07:57:59.791491
6	description	Man is driven to create; I know I really love to create things. And while I'm not good at painting, drawing, or music, I can write software.	Gig	6	2026-08-13 07:57:59.902117	2026-08-13 07:57:59.902117
7	description	I believe consistency and orthogonality are tools of design, not the primary goal in design.	Gig	7	2026-08-13 07:58:00.012537	2026-08-13 07:58:00.012537
8	description	Sometimes people jot down pseudo-code on paper. If that pseudo-code runs directly on their computers, its best, isn't it? Ruby tries to be like that, like pseudo-code that runs. Python people say that too.	Gig	8	2026-08-13 07:58:00.17053	2026-08-13 07:58:00.17053
9	description	Sometimes people jot down pseudo-code on paper. If that pseudo-code runs directly on their computers, its best, isn't it? Ruby tries to be like that, like pseudo-code that runs. Python people say that too.	Gig	9	2026-08-13 07:58:00.27323	2026-08-13 07:58:00.27323
10	description	Language designers want to design the perfect language. They want to be able to say, 'My language is perfect. It can do everything.' But it's just plain impossible to design a perfect language, because there are two ways to look at a language. One way is by looking at what can be done with that language. The other is by looking at how we feel using that language-how we feel while programming.	Gig	10	2026-08-13 07:58:00.355454	2026-08-13 07:58:00.355454
11	description	Man is driven to create; I know I really love to create things. And while I'm not good at painting, drawing, or music, I can write software.	Gig	11	2026-08-13 07:58:00.447159	2026-08-13 07:58:00.447159
12	description	It is not the responsibility of the language to force good looking code, but the language should make good looking code possible.	Gig	12	2026-08-13 07:58:00.534779	2026-08-13 07:58:00.534779
13	description	Language designers want to design the perfect language. They want to be able to say, 'My language is perfect. It can do everything.' But it's just plain impossible to design a perfect language, because there are two ways to look at a language. One way is by looking at what can be done with that language. The other is by looking at how we feel using that language-how we feel while programming.	Gig	13	2026-08-13 07:58:00.635997	2026-08-13 07:58:00.635997
14	description	Man is driven to create; I know I really love to create things. And while I'm not good at painting, drawing, or music, I can write software.	Gig	14	2026-08-13 07:58:00.738763	2026-08-13 07:58:00.738763
15	description	Sometimes people jot down pseudo-code on paper. If that pseudo-code runs directly on their computers, its best, isn't it? Ruby tries to be like that, like pseudo-code that runs. Python people say that too.	Gig	15	2026-08-13 07:58:00.829834	2026-08-13 07:58:00.829834
16	description	Language designers want to design the perfect language. They want to be able to say, 'My language is perfect. It can do everything.' But it's just plain impossible to design a perfect language, because there are two ways to look at a language. One way is by looking at what can be done with that language. The other is by looking at how we feel using that language-how we feel while programming.	Gig	16	2026-08-13 07:58:00.919424	2026-08-13 07:58:00.919424
17	description	I believe that the purpose of life is, at least in part, to be happy. Based on this belief, Ruby is designed to make programming not only easy but also fun. It allows you to concentrate on the creative side of programming, with less stress.	Gig	17	2026-08-13 08:10:50.448843	2026-08-13 08:10:50.448843
18	description	From the viewpoint of what you can do, therefore, languages do differ - but the differences are limited. For example, Python and Ruby provide almost the same power to the programmer.	Gig	18	2026-08-13 08:10:50.618861	2026-08-13 08:10:50.618861
19	description	Sometimes people jot down pseudo-code on paper. If that pseudo-code runs directly on their computers, its best, isn't it? Ruby tries to be like that, like pseudo-code that runs. Python people say that too.	Gig	19	2026-08-13 08:10:50.775441	2026-08-13 08:10:50.775441
20	description	Everyone has an individual background. Someone may come from Python, someone else may come from Perl, and they may be surprised by different aspects of the language. Then they come up to me and say, 'I was surprised by this feature of the language, so therefore Ruby violates the principle of least surprise.' Wait. Wait. The principle of least surprise is not for you only.	Gig	20	2026-08-13 08:10:50.880052	2026-08-13 08:10:50.880052
21	description	I didn't work hard to make Ruby perfect for everyone, because you feel differently from me. No language can be perfect for everyone. I tried to make Ruby perfect for me, but maybe it's not perfect for you. The perfect language for Guido van Rossum is probably Python.	Gig	21	2026-08-13 08:10:50.99091	2026-08-13 08:10:50.99091
22	description	I believe consistency and orthogonality are tools of design, not the primary goal in design.	Gig	22	2026-08-13 08:10:51.096191	2026-08-13 08:10:51.096191
23	description	People are different. People choose different criteria. But if there is a better way among many alternatives, I want to encourage that way by making it comfortable. So that's what I've tried to do.	Gig	23	2026-08-13 08:10:51.255904	2026-08-13 08:10:51.255904
24	description	In our daily lives as programmers, we process text strings a lot. So I tried to work hard on text processing, namely the string class and regular expressions. Regular expressions are built into the language and are very tuned up for use.	Gig	24	2026-08-13 08:10:51.36568	2026-08-13 08:10:51.36568
25	description	I believe consistency and orthogonality are tools of design, not the primary goal in design.	Gig	25	2026-08-13 08:10:51.457989	2026-08-13 08:10:51.457989
26	description	I didn't work hard to make Ruby perfect for everyone, because you feel differently from me. No language can be perfect for everyone. I tried to make Ruby perfect for me, but maybe it's not perfect for you. The perfect language for Guido van Rossum is probably Python.	Gig	26	2026-08-13 08:10:51.545147	2026-08-13 08:10:51.545147
27	description	It is not the responsibility of the language to force good looking code, but the language should make good looking code possible.	Gig	27	2026-08-13 08:10:51.635613	2026-08-13 08:10:51.635613
28	description	People are different. People choose different criteria. But if there is a better way among many alternatives, I want to encourage that way by making it comfortable. So that's what I've tried to do.	Gig	28	2026-08-13 08:10:51.740756	2026-08-13 08:10:51.740756
29	description	Everyone has an individual background. Someone may come from Python, someone else may come from Perl, and they may be surprised by different aspects of the language. Then they come up to me and say, 'I was surprised by this feature of the language, so therefore Ruby violates the principle of least surprise.' Wait. Wait. The principle of least surprise is not for you only.	Gig	29	2026-08-13 08:10:51.849679	2026-08-13 08:10:51.849679
30	description	Actually, I didn't make the claim that Ruby follows the principle of least surprise. Someone felt the design of Ruby follows that philosophy, so they started saying that. I didn't bring that up, actually.	Gig	30	2026-08-13 08:10:51.939143	2026-08-13 08:10:51.939143
31	description	Actually, I didn't make the claim that Ruby follows the principle of least surprise. Someone felt the design of Ruby follows that philosophy, so they started saying that. I didn't bring that up, actually.	Gig	31	2026-08-13 08:10:52.027671	2026-08-13 08:10:52.027671
\.


--
-- TOC entry 3618 (class 0 OID 57355)
-- Dependencies: 222
-- Data for Name: active_storage_attachments; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.active_storage_attachments (id, name, record_type, record_id, blob_id, created_at) FROM stdin;
1	avatar	User	1	1	2026-08-10 09:46:10.046439
2	avatar	User	2	2	2026-08-11 06:06:06.534317
3	avatar	User	3	3	2026-08-11 06:06:07.130828
4	avatar	User	4	4	2026-08-11 06:06:07.682293
5	avatar	User	5	5	2026-08-11 06:06:08.316659
6	avatar	User	6	6	2026-08-11 06:06:08.928732
11	photos	Gig	1	11	2026-08-11 10:51:44.957426
12	photos	Gig	1	12	2026-08-11 10:51:50.811571
14	photos	Gig	1	14	2026-08-11 10:52:04.253434
15	photos	Gig	1	15	2026-08-11 10:52:13.395901
17	attachment_file	Request	2	17	2026-08-12 10:42:51.302654
18	attachment_file	Request	3	18	2026-08-12 10:45:19.56391
19	photos	Gig	2	19	2026-08-13 07:57:59.416725
20	photos	Gig	3	20	2026-08-13 07:57:59.61796
21	photos	Gig	4	21	2026-08-13 07:57:59.716826
22	photos	Gig	5	22	2026-08-13 07:57:59.819622
23	photos	Gig	6	23	2026-08-13 07:57:59.928037
24	photos	Gig	7	24	2026-08-13 07:58:00.039695
25	photos	Gig	8	25	2026-08-13 07:58:00.19654
26	photos	Gig	9	26	2026-08-13 07:58:00.295535
27	photos	Gig	10	27	2026-08-13 07:58:00.381108
28	photos	Gig	11	28	2026-08-13 07:58:00.470377
29	photos	Gig	12	29	2026-08-13 07:58:00.5598
30	photos	Gig	13	30	2026-08-13 07:58:00.660505
31	photos	Gig	14	31	2026-08-13 07:58:00.767669
32	photos	Gig	15	32	2026-08-13 07:58:00.852858
33	photos	Gig	16	33	2026-08-13 07:58:00.940774
34	photos	Gig	17	34	2026-08-13 08:10:50.512707
35	photos	Gig	18	35	2026-08-13 08:10:50.702413
36	photos	Gig	19	36	2026-08-13 08:10:50.80445
37	photos	Gig	20	37	2026-08-13 08:10:50.910982
38	photos	Gig	21	38	2026-08-13 08:10:51.01836
39	photos	Gig	22	39	2026-08-13 08:10:51.124792
40	photos	Gig	23	40	2026-08-13 08:10:51.281694
41	photos	Gig	24	41	2026-08-13 08:10:51.39158
42	photos	Gig	25	42	2026-08-13 08:10:51.480912
43	photos	Gig	26	43	2026-08-13 08:10:51.56902
44	photos	Gig	27	44	2026-08-13 08:10:51.662789
45	photos	Gig	28	45	2026-08-13 08:10:51.768052
46	photos	Gig	29	46	2026-08-13 08:10:51.874529
47	photos	Gig	30	47	2026-08-13 08:10:51.963359
48	photos	Gig	31	48	2026-08-13 08:10:52.053508
49	attachment_file	Comment	14	49	2026-08-17 14:28:25.979979
\.


--
-- TOC entry 3616 (class 0 OID 57345)
-- Dependencies: 220
-- Data for Name: active_storage_blobs; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.active_storage_blobs (id, key, filename, content_type, metadata, service_name, byte_size, checksum, created_at) FROM stdin;
1	i1ndx0iw3m0knuiu5bac4cg1usgg	icon_default_avatar.png	image/png	{"identified":true,"analyzed":true}	local	122862	MM81Y3XSUKyZr5tIE0B3Xg==	2026-08-10 09:46:10.0406
2	n6mn7dexqc17aia8c7ke9bkzlfgo	avatar2.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	13597	aNwRB0C+7WRdb6EWck92Nw==	2026-08-11 06:06:06.528777
3	ao96su0ieir4d8xcwhmu0284pig7	avatar3.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	13149	Qu6UxU+4IDQva/F+6GInPQ==	2026-08-11 06:06:07.127478
4	gbes9ofbx28oy8d8ap6dnsdyb53v	avatar4.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	19954	6b8BM4zd7u/Q8mRdo3esCg==	2026-08-11 06:06:07.678714
5	h2rx3ls3ajwr0l5hd0czrfq309zh	avatar5.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	20852	XNKhMia8yh2QKGTLEGTNYA==	2026-08-11 06:06:08.278787
6	cv2wca6jbxze63v4qrrj0i6ymj8l	avatar6.jpg	image/jpeg	{"identified":true}	local	17607	Et8jrkWOqXITjDfZhq15Iw==	2026-08-11 06:06:08.924914
22	bzho0f0nod367yo88tw4pygz9o3d	gig_cover_2.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	74295	3PFziXlCz7hnYud/uz2vkw==	2026-08-13 07:57:59.815186
23	10lwt88w30c8372gbi7ycgnfrac7	gig_cover_2.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	74295	3PFziXlCz7hnYud/uz2vkw==	2026-08-13 07:57:59.92427
11	gpidsidfx9sfs9ge22mxk8pv13bh	Untitled-1.png	image/png	{"identified":true,"analyzed":true}	local	22056	4yerFiFp2cT+om7S7H64nQ==	2026-08-11 10:51:44.952058
12	ppmd5w30jnl0bjfoag2fbpaxero0	web.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	24677	Txkk294v3rEasARGctlItg==	2026-08-11 10:51:50.804954
24	9w5sv2mqqmdobqv7e4ee5j7jcq2z	gig_cover_1.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	198800	Mea1aCPAz2onLfXOvufVKw==	2026-08-13 07:58:00.036214
14	xqpu3k3j36bw3zt770qpm2kf6sgq	mobile.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	30861	QJFeO1iMjHhECX/IhdAH+w==	2026-08-11 10:52:04.24619
15	28y2m7q4g6t2sudvxejz7oo3dcx8	node.png	image/png	{"identified":true,"analyzed":true}	local	9794	6wrLym+7WCaPOHVU6+HTEQ==	2026-08-11 10:52:13.388625
17	7hxzsalt1jqe6w6g1swwjc289hgc	efa184962b13d6208fc8f3a099108d1c.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	13271	uOfgbczSNCKZRlwORusioA==	2026-08-12 10:42:51.294727
18	tdxwcf5ead8ar7vws2w4o9gh9xap	efa184962b13d6208fc8f3a099108d1c.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	13271	uOfgbczSNCKZRlwORusioA==	2026-08-12 10:45:19.558585
19	yaj9xx90hym1rvq9ioiidji53qhu	gig_cover_2.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	74295	3PFziXlCz7hnYud/uz2vkw==	2026-08-13 07:57:59.411086
20	64l9qflo3kgswp9z0pxop0qgn6t5	gig_cover_1.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	198800	Mea1aCPAz2onLfXOvufVKw==	2026-08-13 07:57:59.61522
21	f7iq90agwmx6nvnx8ycso9o2vnqj	gig_cover_1.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	198800	Mea1aCPAz2onLfXOvufVKw==	2026-08-13 07:57:59.71326
25	anqm8250n5lpui33kbbfe65xlbvi	gig_cover_3.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	154006	gCIgz8czTFw6UAUV+nJb7Q==	2026-08-13 07:58:00.192977
26	kd484yag5q5my484aylrsu075j8q	gig_cover_3.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	154006	gCIgz8czTFw6UAUV+nJb7Q==	2026-08-13 07:58:00.29259
27	2yc6e5o4jzzm1mdbt70amhewfz2x	gig_cover_1.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	198800	Mea1aCPAz2onLfXOvufVKw==	2026-08-13 07:58:00.378284
28	aqburzokzke9s2qtcotrdorhs420	gig_cover_2.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	74295	3PFziXlCz7hnYud/uz2vkw==	2026-08-13 07:58:00.46758
29	fneua2hinojnw40byw6110v155m1	gig_cover_3.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	154006	gCIgz8czTFw6UAUV+nJb7Q==	2026-08-13 07:58:00.55553
30	3w4vdwaxct1o775jm8d5e58pdtnc	gig_cover_3.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	154006	gCIgz8czTFw6UAUV+nJb7Q==	2026-08-13 07:58:00.657601
31	5srxe351l6atv2dnaves6pi7pr6n	gig_cover_3.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	154006	gCIgz8czTFw6UAUV+nJb7Q==	2026-08-13 07:58:00.764229
32	5xk6npa467cyxzunh3jpnhc6fxiq	gig_cover_1.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	198800	Mea1aCPAz2onLfXOvufVKw==	2026-08-13 07:58:00.850167
33	6kdfcgcesr1a7swvhe7ycznhmict	gig_cover_1.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	198800	Mea1aCPAz2onLfXOvufVKw==	2026-08-13 07:58:00.937521
34	3i15z5gi4bo3pr4um8aw8315afm2	gig_cover_1.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	198800	Mea1aCPAz2onLfXOvufVKw==	2026-08-13 08:10:50.508016
35	f0at0z4s6p22jbfouniolj2kbpkd	gig_cover_3.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	154006	gCIgz8czTFw6UAUV+nJb7Q==	2026-08-13 08:10:50.697655
36	ukqrietpvjhuagwtdkcmzvir08w0	gig_cover_2.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	74295	3PFziXlCz7hnYud/uz2vkw==	2026-08-13 08:10:50.800643
37	tpt7ibmvqlj6nxgyzxtt5vc9lrrj	gig_cover_1.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	198800	Mea1aCPAz2onLfXOvufVKw==	2026-08-13 08:10:50.906999
38	ff4t31n82negyy6w3mt1swdcu699	gig_cover_2.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	74295	3PFziXlCz7hnYud/uz2vkw==	2026-08-13 08:10:51.014853
39	zrl9ahy1vwul00kt62bnz4qtwwet	gig_cover_2.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	74295	3PFziXlCz7hnYud/uz2vkw==	2026-08-13 08:10:51.12049
40	9ayjqfh9uyoi7npmgbhdvf4ssand	gig_cover_1.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	198800	Mea1aCPAz2onLfXOvufVKw==	2026-08-13 08:10:51.278698
41	3v69k01cjtpqtktd963ale3lu07f	gig_cover_2.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	74295	3PFziXlCz7hnYud/uz2vkw==	2026-08-13 08:10:51.388182
42	oi1j6kzfjzi90nmr9p0851qtvs8d	gig_cover_2.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	74295	3PFziXlCz7hnYud/uz2vkw==	2026-08-13 08:10:51.477904
43	lhqovscwcnsucdhp1180kg077206	gig_cover_3.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	154006	gCIgz8czTFw6UAUV+nJb7Q==	2026-08-13 08:10:51.565441
44	utclxcpfkf0hog4yip9y8w7rfj0l	gig_cover_3.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	154006	gCIgz8czTFw6UAUV+nJb7Q==	2026-08-13 08:10:51.658598
45	vdlkt3dg4t7ploppnj5e483o9mzh	gig_cover_1.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	198800	Mea1aCPAz2onLfXOvufVKw==	2026-08-13 08:10:51.764163
46	b0m8rqjlfs5e8369gvebjhqmiczx	gig_cover_1.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	198800	Mea1aCPAz2onLfXOvufVKw==	2026-08-13 08:10:51.871345
47	e9z3u5y8u4d6k87qg4epdi27ytqc	gig_cover_3.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	154006	gCIgz8czTFw6UAUV+nJb7Q==	2026-08-13 08:10:51.959921
48	esa7f6zd158k41d1uq9ur5iwbg3e	gig_cover_3.jpg	image/jpeg	{"identified":true,"analyzed":true}	local	154006	gCIgz8czTFw6UAUV+nJb7Q==	2026-08-13 08:10:52.049411
49	v7s4udh7hug279mzmlzgkmxl361h	hamster-540188.png	image/png	{"identified":true,"analyzed":true}	local	266300	Pw1D5v0us7Ds+bkM1IelrQ==	2026-08-17 14:28:25.968137
\.


--
-- TOC entry 3620 (class 0 OID 57371)
-- Dependencies: 224
-- Data for Name: active_storage_variant_records; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.active_storage_variant_records (id, blob_id, variation_digest) FROM stdin;
\.


--
-- TOC entry 3639 (class 0 OID 81953)
-- Dependencies: 243
-- Data for Name: administrators; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.administrators (id, email, password_digest, first_name, last_name, remember_token, remember_token_expires_at, created_at, updated_at) FROM stdin;
1	admin@admin.com	$2a$12$LPn6NxTggPFdQVHcxrQjK.pXoPCBm.9WWmAmYt40bUl4e5A.VtKm6	Максимушка	The Great	\N	\N	2026-08-14 11:24:26.202488	2026-08-14 11:24:26.202488
\.


--
-- TOC entry 3612 (class 0 OID 49161)
-- Dependencies: 216
-- Data for Name: ar_internal_metadata; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
environment	development	2026-08-07 07:16:31.837518	2026-08-07 07:16:31.837524
\.


--
-- TOC entry 3622 (class 0 OID 57386)
-- Dependencies: 226
-- Data for Name: categories; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.categories (id, name, created_at, updated_at) FROM stdin;
1	Mining	2026-08-11 06:04:38.203245	2026-08-11 06:04:38.203245
2	IT	2026-08-11 06:04:38.2205	2026-08-11 06:04:38.2205
3	Advertising	2026-08-11 06:04:38.228238	2026-08-11 06:04:38.228238
4	Government	2026-08-11 06:04:38.236458	2026-08-11 06:04:38.236458
5	Legal	2026-08-11 06:04:38.244567	2026-08-11 06:04:38.244567
7	Marketing	2026-08-11 06:04:38.260432	2026-08-11 06:04:38.260432
8	Design	2026-08-11 06:04:38.267989	2026-08-11 06:04:38.267989
9	Sales	2026-08-11 06:04:38.276056	2026-08-11 06:04:38.276056
10	Manufacturing	2026-08-11 06:04:38.28455	2026-08-11 06:04:38.28455
11	Banking	2026-08-11 06:05:23.762014	2026-08-11 06:05:23.762014
12	Consulting	2026-08-11 06:05:23.771719	2026-08-11 06:05:23.771719
13	Marketing	2026-08-11 06:05:23.778565	2026-08-11 06:05:23.778565
\.


--
-- TOC entry 3645 (class 0 OID 98305)
-- Dependencies: 249
-- Data for Name: comments; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.comments (id, content, user_id, order_id, created_at, updated_at) FROM stdin;
1	I have a question!	1	255d3976-52e5-4020-b3c3-2c4dc9f5dd48	2026-08-17 12:50:43.646598	2026-08-17 12:50:43.646598
2	Victory!	1	255d3976-52e5-4020-b3c3-2c4dc9f5dd48	2026-08-17 13:32:11.018025	2026-08-17 13:32:11.018025
3	Victory!	1	255d3976-52e5-4020-b3c3-2c4dc9f5dd48	2026-08-17 13:33:21.970502	2026-08-17 13:33:21.970502
4	Ogo!	1	255d3976-52e5-4020-b3c3-2c4dc9f5dd48	2026-08-17 13:37:51.981043	2026-08-17 13:37:51.981043
5	Hey!	1	255d3976-52e5-4020-b3c3-2c4dc9f5dd48	2026-08-17 13:38:19.282858	2026-08-17 13:38:19.282858
6	ou!	1	255d3976-52e5-4020-b3c3-2c4dc9f5dd48	2026-08-17 13:42:01.649142	2026-08-17 13:42:01.649142
7	Hi1	1	255d3976-52e5-4020-b3c3-2c4dc9f5dd48	2026-08-17 13:44:50.611885	2026-08-17 13:44:50.611885
8	Hi2	1	255d3976-52e5-4020-b3c3-2c4dc9f5dd48	2026-08-17 13:48:29.790568	2026-08-17 13:48:29.790568
9	Hi3	1	255d3976-52e5-4020-b3c3-2c4dc9f5dd48	2026-08-17 13:52:10.848016	2026-08-17 13:52:10.848016
10	Hi3	1	255d3976-52e5-4020-b3c3-2c4dc9f5dd48	2026-08-17 13:52:11.841785	2026-08-17 13:52:11.841785
11	H4	1	255d3976-52e5-4020-b3c3-2c4dc9f5dd48	2026-08-17 13:56:35.346687	2026-08-17 13:56:35.346687
12	Super!	1	255d3976-52e5-4020-b3c3-2c4dc9f5dd48	2026-08-17 14:08:51.426814	2026-08-17 14:08:51.426814
13	Super!	2	255d3976-52e5-4020-b3c3-2c4dc9f5dd48	2026-08-17 14:10:29.503392	2026-08-17 14:10:29.503392
14	Hamster!	1	255d3976-52e5-4020-b3c3-2c4dc9f5dd48	2026-08-17 14:28:25.945804	2026-08-17 14:28:26.172952
\.


--
-- TOC entry 3641 (class 0 OID 90113)
-- Dependencies: 245
-- Data for Name: conversations; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.conversations (id, sender_id, receiver_id, created_at, updated_at) FROM stdin;
2	3	1	2026-08-16 19:36:46.111612	2026-08-16 19:36:46.111612
4	5	1	2026-08-16 19:38:12.179547	2026-08-16 19:38:12.179547
3	4	1	2026-08-16 19:37:36.33266	2026-08-17 11:20:37.81463
1	2	1	2026-08-16 19:11:34.664035	2026-08-17 11:27:59.816347
\.


--
-- TOC entry 3624 (class 0 OID 57395)
-- Dependencies: 228
-- Data for Name: gigs; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.gigs (id, title, video, active, has_single_pricing, user_id, category_id, created_at, updated_at) FROM stdin;
22	Product Advertising Officer	\N	t	f	3	10	2026-08-13 08:10:51.093135	2026-08-13 08:10:51.175638
9	Consulting Officer	\N	f	f	5	10	2026-08-13 07:58:00.269943	2026-08-13 07:58:00.334219
10	Future Design Strategist	\N	t	f	2	4	2026-08-13 07:58:00.352549	2026-08-13 07:58:00.421656
23	Legal Developer	\N	f	f	4	9	2026-08-13 08:10:51.252731	2026-08-13 08:10:51.335024
24	IT Supervisor	\N	t	f	2	11	2026-08-13 08:10:51.363065	2026-08-13 08:10:51.434892
12	Consulting Agent	\N	t	f	3	13	2026-08-13 07:58:00.532406	2026-08-13 07:58:00.598228
13	Global Accounting Executive	\N	f	f	6	8	2026-08-13 07:58:00.621649	2026-08-13 07:58:00.705196
25	Forward Education Executive	\N	f	f	5	5	2026-08-13 08:10:51.454469	2026-08-13 08:10:51.520832
15	Human Healthcare Engineer	\N	t	f	5	7	2026-08-13 07:58:00.826744	2026-08-13 07:58:00.895853
26	Future Strategist	\N	f	f	6	3	2026-08-13 08:10:51.542541	2026-08-13 08:10:51.612649
16	National Legal Director	\N	f	f	5	7	2026-08-13 07:58:00.916898	2026-08-13 07:58:00.986398
1	I`m a GURU of Ruby on Rails	https://www.youtube.com/watch?v=kFwboIy4Qzg	t	f	2	7	2026-08-11 06:09:27.228946	2026-08-11 11:44:07.142798
3	Senior Technician	\N	f	f	2	12	2026-08-13 07:57:59.535086	2026-08-13 07:57:59.663524
6	Future Banking Analyst	\N	t	f	2	9	2026-08-13 07:57:59.8993	2026-08-13 07:57:59.985155
2	Investor Hospitality Engineer	\N	f	f	4	7	2026-08-13 07:57:59.3293	2026-08-13 07:57:59.572773
7	Corporate Sales Supervisor	\N	t	f	2	4	2026-08-13 07:58:00.00986	2026-08-13 07:58:00.090926
11	Retail Technician	\N	f	f	2	1	2026-08-13 07:58:00.443911	2026-08-13 07:58:00.51178
14	Human Officer	\N	f	f	2	7	2026-08-13 07:58:00.734659	2026-08-13 07:58:00.806347
4	Real-Estate Engineer	\N	t	f	4	7	2026-08-13 07:57:59.686277	2026-08-13 07:57:59.762697
27	Government Consultant	\N	f	f	4	2	2026-08-13 08:10:51.633071	2026-08-13 08:10:51.703615
5	Community-Services Agent	\N	f	f	3	5	2026-08-13 07:57:59.788591	2026-08-13 07:57:59.874262
28	Central Legal Strategist	\N	f	f	1	7	2026-08-13 08:10:51.737761	2026-08-13 08:10:51.817543
17	Design Analyst	\N	t	f	1	4	2026-08-13 08:10:50.4436	2026-08-13 08:10:50.682848
18	Dynamic Education Coordinator	\N	f	f	3	4	2026-08-13 08:10:50.615766	2026-08-13 08:10:50.748792
19	Community-Services Developer	\N	f	f	6	1	2026-08-13 08:10:50.772048	2026-08-13 08:10:50.853411
29	Internal Technology Manager	\N	f	f	5	2	2026-08-13 08:10:51.846683	2026-08-13 08:10:51.914172
20	National Supervisor	\N	f	f	1	2	2026-08-13 08:10:50.877236	2026-08-13 08:10:50.963255
30	Future Director	\N	t	f	6	8	2026-08-13 08:10:51.936323	2026-08-13 08:10:52.006061
31	Retail Specialist	\N	t	f	3	1	2026-08-13 08:10:52.024889	2026-08-13 08:10:52.095848
8	National Technician	\N	t	f	6	8	2026-08-13 07:58:00.167907	2026-08-14 12:48:53.120768
21	Senior Technology Liaison	\N	t	f	4	4	2026-08-13 08:10:50.987824	2026-08-14 12:48:55.928422
\.


--
-- TOC entry 3643 (class 0 OID 90132)
-- Dependencies: 247
-- Data for Name: messages; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.messages (id, content, user_id, conversation_id, created_at, updated_at) FROM stdin;
1	Hello, dear!	2	1	2026-08-16 19:11:34.690188	2026-08-16 19:11:34.690188
2	Hello man!	3	2	2026-08-16 19:36:46.150717	2026-08-16 19:36:46.150717
3	The best RoR developer!	4	3	2026-08-16 19:37:36.360993	2026-08-16 19:37:36.360993
4	We luv U!	5	4	2026-08-16 19:38:12.211027	2026-08-16 19:38:12.211027
5	Dzięki nim zapewniamy prawidłowe działanie strony internetowej, a także możemy lepiej dostosować ją do preferencji użytkowników. Pliki cookies umożliwiają nam analizę zachowania użytkowników na stronie, a także pozwalają na odpowiednie dopasowanie treści reklamowych, również przy współpracy z wybranymi partnerami. Możesz zarządzać plikami cookies, przechodząc do Ustawień. Informujemy, że zgodę można wycofać w dowolnym momencie. Więcej informacji znajdziesz w naszej Polityce Cookies.	4	3	2026-08-17 06:17:52.747249	2026-08-17 06:17:52.747249
6	Hello, man!	1	1	2026-08-17 06:23:57.147566	2026-08-17 06:23:57.147566
7	Приветики, конфетики!	4	3	2026-08-17 08:05:50.711567	2026-08-17 08:05:50.711567
8	Hello, man!	1	3	2026-08-17 08:06:13.798073	2026-08-17 08:06:13.798073
9	Heyye!	1	3	2026-08-17 08:13:09.03266	2026-08-17 08:13:09.03266
10	My name is Max	4	3	2026-08-17 08:18:30.42311	2026-08-17 08:18:30.42311
11	Great!	1	3	2026-08-17 08:19:01.022239	2026-08-17 08:19:01.022239
12	Not Bad!	1	3	2026-08-17 08:20:26.189493	2026-08-17 08:20:26.189493
13	Yahoo!	4	3	2026-08-17 08:20:38.946342	2026-08-17 08:20:38.946342
14	Hello!	1	3	2026-08-17 08:23:45.823391	2026-08-17 08:23:45.823391
15	Ku!	4	3	2026-08-17 08:25:12.3397	2026-08-17 08:25:12.3397
16	Hello, man!	1	3	2026-08-17 08:25:23.97682	2026-08-17 08:25:23.97682
17	Hey!	4	3	2026-08-17 08:36:28.5005	2026-08-17 08:36:28.5005
18	To 2 Hey!	1	3	2026-08-17 08:36:47.107463	2026-08-17 08:36:47.107463
19	Vfrcbveirf	4	3	2026-08-17 08:41:47.439065	2026-08-17 08:41:47.439065
20	Dzięki nim zapewniamy prawidłowe działanie strony internetowej, a także możemy lepiej dostosować ją do preferencji użytkowników. Pliki cookies umożliwiają nam analizę zachowania użytkowników na stronie, a także pozwalają na odpowiednie dopasowanie treści reklamowych, również przy współpracy z wybranymi partnerami. Możesz zarządzać plikami cookies, przechodząc do Ustawień. Informujemy, że zgodę można wycofać w dowolnym momencie. Więcej informacji znajdziesz w naszej Polityce Cookies. 	4	3	2026-08-17 08:46:25.120354	2026-08-17 08:46:25.120354
21	Kuku2	4	3	2026-08-17 08:47:29.838358	2026-08-17 08:47:29.838358
22	Куку 3	4	3	2026-08-17 08:51:19.644242	2026-08-17 08:51:19.644242
23	Kuku4	4	3	2026-08-17 09:11:58.452612	2026-08-17 09:11:58.452612
24	hehe	4	3	2026-08-17 09:26:37.440794	2026-08-17 09:26:37.440794
25	Dzięki nim zapewniamy prawidłowe działanie strony internetowej, a także możemy lepiej dostosować ją do preferencji użytkowników. Pliki cookies umożliwiają nam analizę zachowania użytkowników na stronie, a także pozwalają na odpowiednie dopasowanie treści reklamowych, również przy współpracy z wybranymi partnerami. Możesz zarządzać plikami cookies, przechodząc do Ustawień. Informujemy, że zgodę można wycofać w dowolnym momencie. Więcej informacji znajdziesz w naszej Polityce Cookies. 	4	3	2026-08-17 10:02:31.044109	2026-08-17 10:02:31.044109
26	########################################################################################################################	4	3	2026-08-17 10:03:16.780628	2026-08-17 10:03:16.780628
27	ну почему?	4	3	2026-08-17 10:04:40.844637	2026-08-17 10:04:40.844637
28	test	4	3	2026-08-17 10:08:33.576339	2026-08-17 10:08:33.576339
29	hi	4	3	2026-08-17 10:46:49.747053	2026-08-17 10:46:49.747053
30	Hi!	4	3	2026-08-17 10:47:37.798862	2026-08-17 10:47:37.798862
31	Kuku	1	3	2026-08-17 10:50:53.359353	2026-08-17 10:50:53.359353
32	Hi!	1	3	2026-08-17 10:51:48.947709	2026-08-17 10:51:48.947709
33	Май нейм из	1	3	2026-08-17 10:52:36.338816	2026-08-17 10:52:36.338816
34	What?	1	3	2026-08-17 10:57:40.801362	2026-08-17 10:57:40.801362
35	Victory	1	3	2026-08-17 10:59:46.245031	2026-08-17 10:59:46.245031
36	Victory 2	1	3	2026-08-17 11:00:05.213794	2026-08-17 11:00:05.213794
37	Victory 3	1	3	2026-08-17 11:00:31.27614	2026-08-17 11:00:31.27614
38	Victory 4	1	3	2026-08-17 11:01:19.058109	2026-08-17 11:01:19.058109
39	Victory 5	1	3	2026-08-17 11:04:31.654516	2026-08-17 11:04:31.654516
40	Victory 6	1	3	2026-08-17 11:16:36.1963	2026-08-17 11:16:36.1963
41	Victory 7	1	3	2026-08-17 11:18:07.33834	2026-08-17 11:18:07.33834
42	Victory 8	1	3	2026-08-17 11:20:37.794021	2026-08-17 11:20:37.794021
43	Приветик!	2	1	2026-08-17 11:22:08.050621	2026-08-17 11:22:08.050621
44	Как поживаешь?	2	1	2026-08-17 11:25:13.392489	2026-08-17 11:25:13.392489
45	Отлично	1	1	2026-08-17 11:25:27.15973	2026-08-17 11:25:27.15973
46	Мы обожаем тебя	1	1	2026-08-17 11:27:50.822331	2026-08-17 11:27:50.822331
47	Это приятно	2	1	2026-08-17 11:27:59.780035	2026-08-17 11:27:59.780035
\.


--
-- TOC entry 3633 (class 0 OID 65585)
-- Dependencies: 237
-- Data for Name: offers; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.offers (id, note, amount, days, status, request_id, user_id, created_at, updated_at) FROM stdin;
1	I`ll do it.	34	13	0	6	1	2026-08-12 13:14:20.939854	2026-08-12 13:14:20.939854
\.


--
-- TOC entry 3629 (class 0 OID 65536)
-- Dependencies: 233
-- Data for Name: orders; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.orders (id, due_date, title, amount, status, seller_name, buyer_name, gig_id, buyer_id, seller_id, created_at, updated_at, request_id) FROM stdin;
255d3976-52e5-4020-b3c3-2c4dc9f5dd48	2026-08-27	I`m a GURU of Ruby on Rails	5	0	Максимушка The Great	Максимушка The Great	1	1	1	2026-08-12 06:19:47.092881	2026-08-12 06:19:47.092881	\N
97dd310e-827b-42dd-9017-d4d9677f6332	2026-08-22	I`m a GURU of Ruby on Rails	7	0	Максимушка The Great	Максимушка The Great	1	1	1	2026-08-12 06:42:29.454905	2026-08-12 06:42:29.454905	\N
4cb7f16f-0fad-4722-965b-76a6cc1c781d	2026-08-17	I`m a GURU of Ruby on Rails	12	1	Максимушка The Great	Максимушка The Great	1	1	1	2026-08-12 06:42:31.332534	2026-08-12 06:54:31.625329	\N
339b50aa-2f98-4b16-a214-168c2c978d88	2026-08-27	I`m a GURU of Ruby on Rails	5	0	Максимушка The Great	Максимушка The Great	1	1	1	2026-08-12 07:10:33.050581	2026-08-12 07:10:33.050581	\N
c1282dc6-cf1a-40f6-a77d-b31b36962ee3	2026-08-17	I`m a GURU of Ruby on Rails	12	0	Максимушка The Great	Максимушка The Great	1	1	1	2026-08-12 07:10:35.379027	2026-08-12 07:10:35.379027	\N
0d4a5875-a765-41d5-b0df-183a6124de82	2026-08-22	I`m a GURU of Ruby on Rails	7	0	Максимушка The Great	Максимушка The Great	1	1	1	2026-08-12 07:10:37.042017	2026-08-12 07:10:37.042017	\N
44aefc5b-3309-4314-84ec-06dfca401335	2026-08-27	I`m a GURU of Ruby on Rails	5	0	Максимушка The Great	Максимушка The Great	1	1	1	2026-08-12 07:10:37.243034	2026-08-12 07:10:37.243034	\N
6f958941-b91e-40a2-8dd8-ae93890e9aaf	2026-08-27	I`m a GURU of Ruby on Rails	5	0	Максимушка The Great	Максимушка The Great	1	1	1	2026-08-12 07:10:37.565703	2026-08-12 07:10:37.565703	\N
692bb555-cd48-4f86-8584-a6b9101cb6a6	2026-08-27	I`m a GURU of Ruby on Rails	5	0	Максимушка The Great	Максимушка The Great	1	1	1	2026-08-12 07:10:38.037585	2026-08-12 07:10:38.037585	\N
2eca6368-8875-4369-a7f6-e03603f62cdf	2026-08-27	I`m a GURU of Ruby on Rails	5	1	Максимушка The Great	Максимушка The Great	1	1	1	2026-08-12 07:10:37.894266	2026-08-12 07:10:46.445131	\N
\.


--
-- TOC entry 3626 (class 0 OID 57418)
-- Dependencies: 230
-- Data for Name: pricings; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.pricings (id, title, description, delivery_time, price, pricing_type, gig_id, created_at, updated_at) FROM stdin;
1	Pikachu	This is a cheap price	15	5	0	1	2026-08-11 06:09:27.261192	2026-08-11 08:32:12.809819
2	Kong	Advanced	10	7	1	1	2026-08-11 06:09:27.272603	2026-08-11 08:32:12.813397
3	Godzilla	Premiun price	5	12	2	1	2026-08-11 06:09:27.281692	2026-08-11 08:32:12.815992
4	Chief Government Orchestrator	I didn't work hard to make Ruby perfect for everyone, because you feel differently from me. No language can be perfect for everyone. I tried to make Ruby perfect for me, but maybe it's not perfect for you. The perfect language for Guido van Rossum is probably Python.	21	3	0	2	2026-08-13 07:57:59.487654	2026-08-13 07:57:59.487654
5	Internal Retail Representative	Often people, especially computer engineers, focus on the machines. But in fact we need to focus on humans, on how humans care about doing programming or operating the application of the machines.	10	13	1	2	2026-08-13 07:57:59.500284	2026-08-13 07:57:59.500284
6	Farming Administrator	Everyone has an individual background. Someone may come from Python, someone else may come from Perl, and they may be surprised by different aspects of the language. Then they come up to me and say, 'I was surprised by this feature of the language, so therefore Ruby violates the principle of least surprise.' Wait. Wait. The principle of least surprise is not for you only.	10	28	2	2	2026-08-13 07:57:59.509475	2026-08-13 07:57:59.509475
7	International Technology Facilitator	I didn't work hard to make Ruby perfect for everyone, because you feel differently from me. No language can be perfect for everyone. I tried to make Ruby perfect for me, but maybe it's not perfect for you. The perfect language for Guido van Rossum is probably Python.	26	6	0	3	2026-08-13 07:57:59.635048	2026-08-13 07:57:59.635048
8	National Technology Associate	I believe consistency and orthogonality are tools of design, not the primary goal in design.	10	17	1	3	2026-08-13 07:57:59.647232	2026-08-13 07:57:59.647232
9	Internal Technician	Smart people underestimate the ordinarity of ordinary people.	3	35	2	3	2026-08-13 07:57:59.6611	2026-08-13 07:57:59.6611
10	Education Producer	The orthogonal features, when combined, can explode into complexity.	26	9	0	4	2026-08-13 07:57:59.73125	2026-08-13 07:57:59.73125
11	Chief Real-Estate Producer	Sometimes people jot down pseudo-code on paper. If that pseudo-code runs directly on their computers, its best, isn't it? Ruby tries to be like that, like pseudo-code that runs. Python people say that too.	15	10	1	4	2026-08-13 07:57:59.744503	2026-08-13 07:57:59.744503
12	Consulting Producer	In our daily lives as programmers, we process text strings a lot. So I tried to work hard on text processing, namely the string class and regular expressions. Regular expressions are built into the language and are very tuned up for use.	2	30	2	4	2026-08-13 07:57:59.758879	2026-08-13 07:57:59.758879
13	Legacy Mining Specialist	People are different. People choose different criteria. But if there is a better way among many alternatives, I want to encourage that way by making it comfortable. So that's what I've tried to do.	21	7	0	5	2026-08-13 07:57:59.837574	2026-08-13 07:57:59.837574
14	National Advertising Executive	From the viewpoint of what you can do, therefore, languages do differ - but the differences are limited. For example, Python and Ruby provide almost the same power to the programmer.	12	11	1	5	2026-08-13 07:57:59.848282	2026-08-13 07:57:59.848282
15	Lead Advertising Facilitator	Man is driven to create; I know I really love to create things. And while I'm not good at painting, drawing, or music, I can write software.	1	27	2	5	2026-08-13 07:57:59.866072	2026-08-13 07:57:59.866072
16	Investor Design Analyst	Everyone has an individual background. Someone may come from Python, someone else may come from Perl, and they may be surprised by different aspects of the language. Then they come up to me and say, 'I was surprised by this feature of the language, so therefore Ruby violates the principle of least surprise.' Wait. Wait. The principle of least surprise is not for you only.	21	2	0	6	2026-08-13 07:57:59.94669	2026-08-13 07:57:59.94669
17	Mining Administrator	Sometimes people jot down pseudo-code on paper. If that pseudo-code runs directly on their computers, its best, isn't it? Ruby tries to be like that, like pseudo-code that runs. Python people say that too.	17	13	1	6	2026-08-13 07:57:59.957289	2026-08-13 07:57:59.957289
18	Senior Marketing Manager	Most of the tasks we do are for humans. For example, a tax calculation is counting numbers so the government can pull money out from my wallet, but government consists of humans.	8	20	2	6	2026-08-13 07:57:59.975632	2026-08-13 07:57:59.975632
19	Internal Consulting Assistant	The orthogonal features, when combined, can explode into complexity.	23	6	0	7	2026-08-13 07:58:00.055324	2026-08-13 07:58:00.055324
20	Senior Education Architect	Actually, I didn't make the claim that Ruby follows the principle of least surprise. Someone felt the design of Ruby follows that philosophy, so they started saying that. I didn't bring that up, actually.	14	13	1	7	2026-08-13 07:58:00.064727	2026-08-13 07:58:00.064727
21	Dynamic Community-Services Designer	People are different. People choose different criteria. But if there is a better way among many alternatives, I want to encourage that way by making it comfortable. So that's what I've tried to do.	1	35	2	7	2026-08-13 07:58:00.080975	2026-08-13 07:58:00.080975
22	Administration Designer	It is not the responsibility of the language to force good looking code, but the language should make good looking code possible.	25	1	0	8	2026-08-13 07:58:00.211189	2026-08-13 07:58:00.211189
23	Hospitality Associate	People are different. People choose different criteria. But if there is a better way among many alternatives, I want to encourage that way by making it comfortable. So that's what I've tried to do.	12	14	1	8	2026-08-13 07:58:00.220003	2026-08-13 07:58:00.220003
24	Farming Associate	In our daily lives as programmers, we process text strings a lot. So I tried to work hard on text processing, namely the string class and regular expressions. Regular expressions are built into the language and are very tuned up for use.	9	25	2	8	2026-08-13 07:58:00.236829	2026-08-13 07:58:00.236829
25	Marketing Assistant	You want to enjoy life, don't you? If you get your job done quickly and your job is fun, that's good isn't it? That's the purpose of life, partly. Your life is better.	27	9	0	9	2026-08-13 07:58:00.308806	2026-08-13 07:58:00.308806
26	Hospitality Designer	Plant a memory, plant a tree, do it today for tomorrow.	15	13	1	9	2026-08-13 07:58:00.319319	2026-08-13 07:58:00.319319
27	Design Administrator	Most programs are not write-once. They are reworked and rewritten again and again in their lived. Bugs must be debugged. Changing requirements and the need for increased functionality mean the program itself may be modified on an ongoing basis. During this process, human beings must be able to read and understand the original code. It is therefore more important by far for humans to be able to understand the program than it is for the computer.	8	22	2	9	2026-08-13 07:58:00.331031	2026-08-13 07:58:00.331031
28	Customer Marketing Supervisor	You want to enjoy life, don't you? If you get your job done quickly and your job is fun, that's good isn't it? That's the purpose of life, partly. Your life is better.	28	4	0	10	2026-08-13 07:58:00.396226	2026-08-13 07:58:00.396226
29	Product Marketing Technician	Smart people underestimate the ordinarity of ordinary people.	12	12	1	10	2026-08-13 07:58:00.407032	2026-08-13 07:58:00.407032
30	Lead Associate	From the viewpoint of what you can do, therefore, languages do differ - but the differences are limited. For example, Python and Ruby provide almost the same power to the programmer.	9	25	2	10	2026-08-13 07:58:00.419171	2026-08-13 07:58:00.419171
31	Chief Designer	Ruby inherited the Perl philosophy of having more than one way to do the same thing. I inherited that philosophy from Larry Wall, who is my hero actually. I want to make Ruby users free. I want to give them the freedom to choose.	27	7	0	11	2026-08-13 07:58:00.482816	2026-08-13 07:58:00.482816
32	Consulting Agent	I believe consistency and orthogonality are tools of design, not the primary goal in design.	17	15	1	11	2026-08-13 07:58:00.491755	2026-08-13 07:58:00.491755
33	Investor Coordinator	Often people, especially computer engineers, focus on the machines. But in fact we need to focus on humans, on how humans care about doing programming or operating the application of the machines.	3	28	2	11	2026-08-13 07:58:00.503707	2026-08-13 07:58:00.503707
34	Regional Manufacturing Associate	Language designers want to design the perfect language. They want to be able to say, 'My language is perfect. It can do everything.' But it's just plain impossible to design a perfect language, because there are two ways to look at a language. One way is by looking at what can be done with that language. The other is by looking at how we feel using that language-how we feel while programming.	25	7	0	12	2026-08-13 07:58:00.574527	2026-08-13 07:58:00.574527
35	Legal Architect	From the viewpoint of what you can do, therefore, languages do differ - but the differences are limited. For example, Python and Ruby provide almost the same power to the programmer.	18	12	1	12	2026-08-13 07:58:00.586967	2026-08-13 07:58:00.586967
36	Lead Accounting Manager	Most of the tasks we do are for humans. For example, a tax calculation is counting numbers so the government can pull money out from my wallet, but government consists of humans.	6	30	2	12	2026-08-13 07:58:00.600475	2026-08-13 07:58:00.600475
37	District IT Analyst	I believe consistency and orthogonality are tools of design, not the primary goal in design.	30	7	0	13	2026-08-13 07:58:00.675083	2026-08-13 07:58:00.675083
38	Dynamic Liaison	Plant a memory, plant a tree, do it today for tomorrow.	17	12	1	13	2026-08-13 07:58:00.686694	2026-08-13 07:58:00.686694
39	IT Agent	Smart people underestimate the ordinarity of ordinary people.	3	31	2	13	2026-08-13 07:58:00.701796	2026-08-13 07:58:00.701796
40	Chief Retail Liaison	Most programs are not write-once. They are reworked and rewritten again and again in their lived. Bugs must be debugged. Changing requirements and the need for increased functionality mean the program itself may be modified on an ongoing basis. During this process, human beings must be able to read and understand the original code. It is therefore more important by far for humans to be able to understand the program than it is for the computer.	23	3	0	14	2026-08-13 07:58:00.781782	2026-08-13 07:58:00.781782
41	Corporate Liaison	Smart people underestimate the ordinarity of ordinary people.	12	11	1	14	2026-08-13 07:58:00.792753	2026-08-13 07:58:00.792753
42	Dynamic Orchestrator	Because of the Turing completeness theory, everything one Turing-complete language can do can theoretically be done by another Turing-complete language, but at a different cost. You can do everything in assembler, but no one wants to program in assembler anymore.	10	23	2	14	2026-08-13 07:58:00.803613	2026-08-13 07:58:00.803613
43	Forward Engineer	You want to enjoy life, don't you? If you get your job done quickly and your job is fun, that's good isn't it? That's the purpose of life, partly. Your life is better.	27	6	0	15	2026-08-13 07:58:00.866759	2026-08-13 07:58:00.866759
44	Administration Facilitator	Imagine you are writing an email. You are in front of the computer. You are operating the computer, clicking a mouse and typing on a keyboard, but the message will be sent to a human over the internet. So you are working before the computer, but with a human behind the computer.	14	12	1	15	2026-08-13 07:58:00.876265	2026-08-13 07:58:00.876265
45	Construction Orchestrator	Smart people underestimate the ordinarity of ordinary people.	4	26	2	15	2026-08-13 07:58:00.890465	2026-08-13 07:58:00.890465
46	Internal Producer	I didn't work hard to make Ruby perfect for everyone, because you feel differently from me. No language can be perfect for everyone. I tried to make Ruby perfect for me, but maybe it's not perfect for you. The perfect language for Guido van Rossum is probably Python.	24	1	0	16	2026-08-13 07:58:00.955241	2026-08-13 07:58:00.955241
47	Corporate Real-Estate Agent	It is not the responsibility of the language to force good looking code, but the language should make good looking code possible.	19	18	1	16	2026-08-13 07:58:00.964455	2026-08-13 07:58:00.964455
48	Technology Manager	Most of the tasks we do are for humans. For example, a tax calculation is counting numbers so the government can pull money out from my wallet, but government consists of humans.	10	35	2	16	2026-08-13 07:58:00.978886	2026-08-13 07:58:00.978886
49	International Community-Services Engineer	In our daily lives as programmers, we process text strings a lot. So I tried to work hard on text processing, namely the string class and regular expressions. Regular expressions are built into the language and are very tuned up for use.	23	7	0	17	2026-08-13 08:10:50.572291	2026-08-13 08:10:50.572291
50	Central Accounting Officer	People are different. People choose different criteria. But if there is a better way among many alternatives, I want to encourage that way by making it comfortable. So that's what I've tried to do.	10	13	1	17	2026-08-13 08:10:50.582263	2026-08-13 08:10:50.582263
51	Corporate Real-Estate Designer	Imagine you are writing an email. You are in front of the computer. You are operating the computer, clicking a mouse and typing on a keyboard, but the message will be sent to a human over the internet. So you are working before the computer, but with a human behind the computer.	6	32	2	17	2026-08-13 08:10:50.59108	2026-08-13 08:10:50.59108
52	Dynamic Assistant	Ruby inherited the Perl philosophy of having more than one way to do the same thing. I inherited that philosophy from Larry Wall, who is my hero actually. I want to make Ruby users free. I want to give them the freedom to choose.	22	4	0	18	2026-08-13 08:10:50.718	2026-08-13 08:10:50.718
53	Forward Planner	From the viewpoint of what you can do, therefore, languages do differ - but the differences are limited. For example, Python and Ruby provide almost the same power to the programmer.	17	14	1	18	2026-08-13 08:10:50.728135	2026-08-13 08:10:50.728135
54	Global Education Consultant	Smart people underestimate the ordinarity of ordinary people.	1	31	2	18	2026-08-13 08:10:50.741629	2026-08-13 08:10:50.741629
55	District Representative	Often people, especially computer engineers, focus on the machines. But in fact we need to focus on humans, on how humans care about doing programming or operating the application of the machines.	30	9	0	19	2026-08-13 08:10:50.819679	2026-08-13 08:10:50.819679
82	Human IT Developer	Plant a memory, plant a tree, do it today for tomorrow.	27	6	0	28	2026-08-13 08:10:51.781857	2026-08-13 08:10:51.781857
56	Internal Architect	Most programs are not write-once. They are reworked and rewritten again and again in their lived. Bugs must be debugged. Changing requirements and the need for increased functionality mean the program itself may be modified on an ongoing basis. During this process, human beings must be able to read and understand the original code. It is therefore more important by far for humans to be able to understand the program than it is for the computer.	17	19	1	19	2026-08-13 08:10:50.829663	2026-08-13 08:10:50.829663
57	Retail Officer	Man is driven to create; I know I really love to create things. And while I'm not good at painting, drawing, or music, I can write software.	2	23	2	19	2026-08-13 08:10:50.844288	2026-08-13 08:10:50.844288
58	Real-Estate Officer	You want to enjoy life, don't you? If you get your job done quickly and your job is fun, that's good isn't it? That's the purpose of life, partly. Your life is better.	20	2	0	20	2026-08-13 08:10:50.926095	2026-08-13 08:10:50.926095
59	Investor Hospitality Supervisor	It is not the responsibility of the language to force good looking code, but the language should make good looking code possible.	13	11	1	20	2026-08-13 08:10:50.936288	2026-08-13 08:10:50.936288
60	Legal Technician	Plant a memory, plant a tree, do it today for tomorrow.	10	31	2	20	2026-08-13 08:10:50.953946	2026-08-13 08:10:50.953946
61	Legacy Government Liaison	Because of the Turing completeness theory, everything one Turing-complete language can do can theoretically be done by another Turing-complete language, but at a different cost. You can do everything in assembler, but no one wants to program in assembler anymore.	20	6	0	21	2026-08-13 08:10:51.034535	2026-08-13 08:10:51.034535
62	Community-Services Liaison	I believe that the purpose of life is, at least in part, to be happy. Based on this belief, Ruby is designed to make programming not only easy but also fun. It allows you to concentrate on the creative side of programming, with less stress.	10	18	1	21	2026-08-13 08:10:51.044674	2026-08-13 08:10:51.044674
63	Dynamic Legal Associate	People are different. People choose different criteria. But if there is a better way among many alternatives, I want to encourage that way by making it comfortable. So that's what I've tried to do.	7	27	2	21	2026-08-13 08:10:51.059741	2026-08-13 08:10:51.059741
64	Internal Liaison	The orthogonal features, when combined, can explode into complexity.	25	9	0	22	2026-08-13 08:10:51.14051	2026-08-13 08:10:51.14051
65	Dynamic Mining Agent	People are different. People choose different criteria. But if there is a better way among many alternatives, I want to encourage that way by making it comfortable. So that's what I've tried to do.	11	19	1	22	2026-08-13 08:10:51.154363	2026-08-13 08:10:51.154363
66	Forward Hospitality Administrator	From the viewpoint of what you can do, therefore, languages do differ - but the differences are limited. For example, Python and Ruby provide almost the same power to the programmer.	3	30	2	22	2026-08-13 08:10:51.170772	2026-08-13 08:10:51.170772
67	District Mining Designer	Everyone has an individual background. Someone may come from Python, someone else may come from Perl, and they may be surprised by different aspects of the language. Then they come up to me and say, 'I was surprised by this feature of the language, so therefore Ruby violates the principle of least surprise.' Wait. Wait. The principle of least surprise is not for you only.	22	1	0	23	2026-08-13 08:10:51.298	2026-08-13 08:10:51.298
68	Product Designer	Most programs are not write-once. They are reworked and rewritten again and again in their lived. Bugs must be debugged. Changing requirements and the need for increased functionality mean the program itself may be modified on an ongoing basis. During this process, human beings must be able to read and understand the original code. It is therefore more important by far for humans to be able to understand the program than it is for the computer.	16	11	1	23	2026-08-13 08:10:51.306572	2026-08-13 08:10:51.306572
69	Direct Mining Strategist	Sometimes people jot down pseudo-code on paper. If that pseudo-code runs directly on their computers, its best, isn't it? Ruby tries to be like that, like pseudo-code that runs. Python people say that too.	6	20	2	23	2026-08-13 08:10:51.326546	2026-08-13 08:10:51.326546
70	Internal Accounting Designer	Because of the Turing completeness theory, everything one Turing-complete language can do can theoretically be done by another Turing-complete language, but at a different cost. You can do everything in assembler, but no one wants to program in assembler anymore.	23	1	0	24	2026-08-13 08:10:51.406057	2026-08-13 08:10:51.406057
71	Hospitality Developer	People are different. People choose different criteria. But if there is a better way among many alternatives, I want to encourage that way by making it comfortable. So that's what I've tried to do.	17	19	1	24	2026-08-13 08:10:51.413977	2026-08-13 08:10:51.413977
72	Education Technician	It is not the responsibility of the language to force good looking code, but the language should make good looking code possible.	8	24	2	24	2026-08-13 08:10:51.427514	2026-08-13 08:10:51.427514
73	Future Advertising Executive	Plant a memory, plant a tree, do it today for tomorrow.	30	2	0	25	2026-08-13 08:10:51.493324	2026-08-13 08:10:51.493324
74	Regional Technology Facilitator	Everyone has an individual background. Someone may come from Python, someone else may come from Perl, and they may be surprised by different aspects of the language. Then they come up to me and say, 'I was surprised by this feature of the language, so therefore Ruby violates the principle of least surprise.' Wait. Wait. The principle of least surprise is not for you only.	17	16	1	25	2026-08-13 08:10:51.504758	2026-08-13 08:10:51.504758
75	Lead Accounting Engineer	Most of the tasks we do are for humans. For example, a tax calculation is counting numbers so the government can pull money out from my wallet, but government consists of humans.	3	25	2	25	2026-08-13 08:10:51.518404	2026-08-13 08:10:51.518404
76	Chief Construction Analyst	Ruby inherited the Perl philosophy of having more than one way to do the same thing. I inherited that philosophy from Larry Wall, who is my hero actually. I want to make Ruby users free. I want to give them the freedom to choose.	25	6	0	26	2026-08-13 08:10:51.582974	2026-08-13 08:10:51.582974
77	Sales Director	Smart people underestimate the ordinarity of ordinary people.	11	10	1	26	2026-08-13 08:10:51.592013	2026-08-13 08:10:51.592013
78	Product Orchestrator	People are different. People choose different criteria. But if there is a better way among many alternatives, I want to encourage that way by making it comfortable. So that's what I've tried to do.	4	29	2	26	2026-08-13 08:10:51.605194	2026-08-13 08:10:51.605194
79	Hospitality Architect	Because of the Turing completeness theory, everything one Turing-complete language can do can theoretically be done by another Turing-complete language, but at a different cost. You can do everything in assembler, but no one wants to program in assembler anymore.	23	4	0	27	2026-08-13 08:10:51.677342	2026-08-13 08:10:51.677342
80	Accounting Administrator	Actually, I didn't make the claim that Ruby follows the principle of least surprise. Someone felt the design of Ruby follows that philosophy, so they started saying that. I didn't bring that up, actually.	14	11	1	27	2026-08-13 08:10:51.689487	2026-08-13 08:10:51.689487
81	Human Farming Planner	From the viewpoint of what you can do, therefore, languages do differ - but the differences are limited. For example, Python and Ruby provide almost the same power to the programmer.	7	23	2	27	2026-08-13 08:10:51.701163	2026-08-13 08:10:51.701163
83	Lead Healthcare Strategist	I hope to see Ruby help every programmer in the world to be productive, and to enjoy programming, and to be happy. That is the primary purpose of Ruby language.	13	18	1	28	2026-08-13 08:10:51.794545	2026-08-13 08:10:51.794545
84	Internal Mining Representative	Smart people underestimate the ordinarity of ordinary people.	6	20	2	28	2026-08-13 08:10:51.813641	2026-08-13 08:10:51.813641
85	Investor Design Executive	Man is driven to create; I know I really love to create things. And while I'm not good at painting, drawing, or music, I can write software.	20	7	0	29	2026-08-13 08:10:51.888731	2026-08-13 08:10:51.888731
86	Senior Director	You want to enjoy life, don't you? If you get your job done quickly and your job is fun, that's good isn't it? That's the purpose of life, partly. Your life is better.	14	10	1	29	2026-08-13 08:10:51.899734	2026-08-13 08:10:51.899734
87	Lead Technology Representative	Everyone has an individual background. Someone may come from Python, someone else may come from Perl, and they may be surprised by different aspects of the language. Then they come up to me and say, 'I was surprised by this feature of the language, so therefore Ruby violates the principle of least surprise.' Wait. Wait. The principle of least surprise is not for you only.	2	35	2	29	2026-08-13 08:10:51.910727	2026-08-13 08:10:51.910727
88	District Sales Executive	The orthogonal features, when combined, can explode into complexity.	29	5	0	30	2026-08-13 08:10:51.979431	2026-08-13 08:10:51.979431
89	Advertising Developer	Smart people underestimate the ordinarity of ordinary people.	19	13	1	30	2026-08-13 08:10:51.988007	2026-08-13 08:10:51.988007
90	Dynamic Community-Services Engineer	Everyone has an individual background. Someone may come from Python, someone else may come from Perl, and they may be surprised by different aspects of the language. Then they come up to me and say, 'I was surprised by this feature of the language, so therefore Ruby violates the principle of least surprise.' Wait. Wait. The principle of least surprise is not for you only.	1	30	2	30	2026-08-13 08:10:51.999735	2026-08-13 08:10:51.999735
91	IT Representative	The orthogonal features, when combined, can explode into complexity.	30	8	0	31	2026-08-13 08:10:52.067915	2026-08-13 08:10:52.067915
92	Regional Engineer	Plant a memory, plant a tree, do it today for tomorrow.	15	13	1	31	2026-08-13 08:10:52.079702	2026-08-13 08:10:52.079702
93	Consulting Orchestrator	From the viewpoint of what you can do, therefore, languages do differ - but the differences are limited. For example, Python and Ruby provide almost the same power to the programmer.	3	23	2	31	2026-08-13 08:10:52.092924	2026-08-13 08:10:52.092924
\.


--
-- TOC entry 3631 (class 0 OID 65564)
-- Dependencies: 235
-- Data for Name: requests; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.requests (id, description, title, budget, delivery, user_id, category_id, created_at, updated_at) FROM stdin;
2	W naszym serwisie używamy plików cookies (tzw. ciasteczek), które zapisują się w przeglądarce internetowej Twojego urządzenia.\r\n\r\nDzięki nim zapewniamy prawidłowe działanie strony internetowej, a także możemy lepiej dostosować ją do preferencji użytkowników. Pliki cookies umożliwiają nam analizę zachowania użytkowników na stronie, a także pozwalają na odpowiednie dopasowanie treści reklamowych, również przy współpracy z wybranymi partnerami. Możesz zarządzać plikami cookies, przechodząc do Ustawień. Informujemy, że zgodę można wycofać w dowolnym momencie. Więcej informacji znajdziesz w naszej Polityce Cookies.	I`m looking e GURU of Ruby on Rails	444	4	1	2	2026-08-12 10:42:51.258511	2026-08-12 10:42:51.414623
3	Siedzibą Akors Piotr Sroka jest Wałbrzych w województwie dolnośląskim. Działalność firmy koncentruje się na branży Salony i gabinety kosmetyczne.\r\nNiestety nie dysponujemy szczegółowymi danymi na temat oferty firmy.\r\nKontaktując się z jej przedstawicielem w drodze mailowej: piosro@op.pl lub telefonicznej (74) 840... możesz uzyskać więcej informacji na temat oferowanych przez nią produktów i usług.\r\nAdres wykonywania działalności przez Akors Piotr Sroka to Proletariacka 3A lok. 10 58-309 Wałbrzych. Chcąc spotkać się osobiście, z właścicielem firmy możesz posłużyć się współrzędnymi GPS adresu jej siedziby: [kopiuj]\r\nZakres działalności większości przedsiębiorstw z branży obejmuje m.in:\r\nkosmetyczka	I`m looking e GURU of Ruby on Rails	322	4	1	2	2026-08-12 10:45:19.544025	2026-08-12 10:45:19.621617
4	Plant a memory, plant a tree, do it today for tomorrow.	Hospitality Planner	50	1	1	2	2026-08-12 10:48:35.630885	2026-08-12 10:48:35.630885
5	Often people, especially computer engineers, focus on the machines. But in fact we need to focus on humans, on how humans care about doing programming or operating the application of the machines.	Direct Mining Representative	32	3	4	13	2026-08-12 10:48:35.655351	2026-08-12 10:48:35.655351
6	The orthogonal features, when combined, can explode into complexity.	Human Healthcare Engineer	11	5	5	7	2026-08-12 10:48:35.676314	2026-08-12 10:48:35.676314
7	Most of the tasks we do are for humans. For example, a tax calculation is counting numbers so the government can pull money out from my wallet, but government consists of humans.	Chief Hospitality Strategist	15	8	2	12	2026-08-12 10:48:35.697722	2026-08-12 10:48:35.697722
8	Man is driven to create; I know I really love to create things. And while I'm not good at painting, drawing, or music, I can write software.	Accounting Coordinator	27	4	2	1	2026-08-12 10:48:35.721345	2026-08-12 10:48:35.721345
9	Most programs are not write-once. They are reworked and rewritten again and again in their lived. Bugs must be debugged. Changing requirements and the need for increased functionality mean the program itself may be modified on an ongoing basis. During this process, human beings must be able to read and understand the original code. It is therefore more important by far for humans to be able to understand the program than it is for the computer.	National Construction Technician	45	3	6	1	2026-08-12 10:48:35.742619	2026-08-12 10:48:35.742619
10	Plant a memory, plant a tree, do it today for tomorrow.	Direct Community-Services Executive	21	10	1	1	2026-08-12 10:48:35.762717	2026-08-12 10:48:35.762717
11	Man is driven to create; I know I really love to create things. And while I'm not good at painting, drawing, or music, I can write software.	Corporate Healthcare Engineer	37	2	1	3	2026-08-12 10:48:35.788146	2026-08-12 10:48:35.788146
12	I believe consistency and orthogonality are tools of design, not the primary goal in design.	Central Architect	23	6	1	12	2026-08-12 10:48:35.807958	2026-08-12 10:48:35.807958
13	Man is driven to create; I know I really love to create things. And while I'm not good at painting, drawing, or music, I can write software.	IT Executive	23	1	1	3	2026-08-12 10:48:35.826932	2026-08-12 10:48:35.826932
14	You want to enjoy life, don't you? If you get your job done quickly and your job is fun, that's good isn't it? That's the purpose of life, partly. Your life is better.	Dynamic IT Orchestrator	26	8	5	10	2026-08-12 10:48:35.846577	2026-08-12 10:48:35.846577
15	From the viewpoint of what you can do, therefore, languages do differ - but the differences are limited. For example, Python and Ruby provide almost the same power to the programmer.	International Design Planner	39	6	2	7	2026-08-12 10:48:35.86669	2026-08-12 10:48:35.86669
16	Everyone has an individual background. Someone may come from Python, someone else may come from Perl, and they may be surprised by different aspects of the language. Then they come up to me and say, 'I was surprised by this feature of the language, so therefore Ruby violates the principle of least surprise.' Wait. Wait. The principle of least surprise is not for you only.	District Analyst	26	2	2	2	2026-08-12 10:48:35.886725	2026-08-12 10:48:35.886725
17	You want to enjoy life, don't you? If you get your job done quickly and your job is fun, that's good isn't it? That's the purpose of life, partly. Your life is better.	Government Executive	29	10	1	4	2026-08-12 10:48:35.907437	2026-08-12 10:48:35.907437
18	Ruby inherited the Perl philosophy of having more than one way to do the same thing. I inherited that philosophy from Larry Wall, who is my hero actually. I want to make Ruby users free. I want to give them the freedom to choose.	Construction Producer	37	3	6	10	2026-08-12 10:48:35.927411	2026-08-12 10:48:35.927411
19	Actually, I didn't make the claim that Ruby follows the principle of least surprise. Someone felt the design of Ruby follows that philosophy, so they started saying that. I didn't bring that up, actually.	Advertising Designer	10	7	3	12	2026-08-12 10:48:35.947507	2026-08-12 10:48:35.947507
20	People are different. People choose different criteria. But if there is a better way among many alternatives, I want to encourage that way by making it comfortable. So that's what I've tried to do.	Retail Agent	19	5	2	8	2026-08-12 10:48:35.967836	2026-08-12 10:48:35.967836
21	Most of the tasks we do are for humans. For example, a tax calculation is counting numbers so the government can pull money out from my wallet, but government consists of humans.	Forward Community-Services Associate	15	8	1	5	2026-08-12 10:48:35.988654	2026-08-12 10:48:35.988654
22	I believe that the purpose of life is, at least in part, to be happy. Based on this belief, Ruby is designed to make programming not only easy but also fun. It allows you to concentrate on the creative side of programming, with less stress.	Hospitality Officer	21	9	3	9	2026-08-12 10:48:36.010639	2026-08-12 10:48:36.010639
23	I didn't work hard to make Ruby perfect for everyone, because you feel differently from me. No language can be perfect for everyone. I tried to make Ruby perfect for me, but maybe it's not perfect for you. The perfect language for Guido van Rossum is probably Python.	Senior Architect	35	3	5	7	2026-08-12 10:48:36.03168	2026-08-12 10:48:36.03168
24	Because of the Turing completeness theory, everything one Turing-complete language can do can theoretically be done by another Turing-complete language, but at a different cost. You can do everything in assembler, but no one wants to program in assembler anymore.	Human Education Director	36	4	1	13	2026-08-12 11:01:10.326321	2026-08-12 11:01:10.326321
25	Because of the Turing completeness theory, everything one Turing-complete language can do can theoretically be done by another Turing-complete language, but at a different cost. You can do everything in assembler, but no one wants to program in assembler anymore.	Real-Estate Planner	31	8	2	3	2026-08-12 11:01:10.352595	2026-08-12 11:01:10.352595
26	It is not the responsibility of the language to force good looking code, but the language should make good looking code possible.	Human Architect	13	6	2	8	2026-08-12 11:01:10.375868	2026-08-12 11:01:10.375868
27	The orthogonal features, when combined, can explode into complexity.	District Mining Consultant	45	8	2	7	2026-08-12 11:01:10.3966	2026-08-12 11:01:10.3966
28	Often people, especially computer engineers, focus on the machines. But in fact we need to focus on humans, on how humans care about doing programming or operating the application of the machines.	Future Manager	32	9	5	3	2026-08-12 11:01:10.419955	2026-08-12 11:01:10.419955
29	Smart people underestimate the ordinarity of ordinary people.	Chief Community-Services Representative	39	8	3	2	2026-08-12 11:01:10.444863	2026-08-12 11:01:10.444863
30	The orthogonal features, when combined, can explode into complexity.	Construction Developer	18	9	1	9	2026-08-12 11:01:10.469849	2026-08-12 11:01:10.469849
31	Most programs are not write-once. They are reworked and rewritten again and again in their lived. Bugs must be debugged. Changing requirements and the need for increased functionality mean the program itself may be modified on an ongoing basis. During this process, human beings must be able to read and understand the original code. It is therefore more important by far for humans to be able to understand the program than it is for the computer.	Corporate Education Coordinator	34	4	5	10	2026-08-12 11:01:10.491282	2026-08-12 11:01:10.491282
32	Plant a memory, plant a tree, do it today for tomorrow.	Legacy Healthcare Engineer	13	2	5	12	2026-08-12 11:01:10.51464	2026-08-12 11:01:10.51464
33	From the viewpoint of what you can do, therefore, languages do differ - but the differences are limited. For example, Python and Ruby provide almost the same power to the programmer.	Direct Sales Consultant	29	9	1	4	2026-08-12 11:01:10.537063	2026-08-12 11:01:10.537063
34	It is not the responsibility of the language to force good looking code, but the language should make good looking code possible.	Senior Education Coordinator	46	10	5	11	2026-08-12 11:01:10.557133	2026-08-12 11:01:10.557133
35	Smart people underestimate the ordinarity of ordinary people.	Central Sales Analyst	6	10	1	11	2026-08-12 11:01:10.581103	2026-08-12 11:01:10.581103
36	I hope to see Ruby help every programmer in the world to be productive, and to enjoy programming, and to be happy. That is the primary purpose of Ruby language.	Direct Facilitator	23	3	3	11	2026-08-12 11:01:10.60375	2026-08-12 11:01:10.60375
37	In our daily lives as programmers, we process text strings a lot. So I tried to work hard on text processing, namely the string class and regular expressions. Regular expressions are built into the language and are very tuned up for use.	Forward Liaison	17	10	4	7	2026-08-12 11:01:10.625303	2026-08-12 11:01:10.625303
38	Everyone has an individual background. Someone may come from Python, someone else may come from Perl, and they may be surprised by different aspects of the language. Then they come up to me and say, 'I was surprised by this feature of the language, so therefore Ruby violates the principle of least surprise.' Wait. Wait. The principle of least surprise is not for you only.	Mining Orchestrator	35	2	5	2	2026-08-12 11:01:10.647878	2026-08-12 11:01:10.647878
39	I didn't work hard to make Ruby perfect for everyone, because you feel differently from me. No language can be perfect for everyone. I tried to make Ruby perfect for me, but maybe it's not perfect for you. The perfect language for Guido van Rossum is probably Python.	Investor Advertising Consultant	37	9	5	8	2026-08-12 11:01:10.671771	2026-08-12 11:01:10.671771
40	People are different. People choose different criteria. But if there is a better way among many alternatives, I want to encourage that way by making it comfortable. So that's what I've tried to do.	District Agent	8	1	4	7	2026-08-12 11:01:10.694256	2026-08-12 11:01:10.694256
41	From the viewpoint of what you can do, therefore, languages do differ - but the differences are limited. For example, Python and Ruby provide almost the same power to the programmer.	Construction Engineer	37	3	5	5	2026-08-12 11:01:10.717742	2026-08-12 11:01:10.717742
42	I hope to see Ruby help every programmer in the world to be productive, and to enjoy programming, and to be happy. That is the primary purpose of Ruby language.	Legacy Liaison	32	6	4	8	2026-08-12 11:01:10.738431	2026-08-12 11:01:10.738431
43	Most of the tasks we do are for humans. For example, a tax calculation is counting numbers so the government can pull money out from my wallet, but government consists of humans.	Accounting Representative	32	9	4	10	2026-08-12 11:01:10.758895	2026-08-12 11:01:10.758895
\.


--
-- TOC entry 3635 (class 0 OID 65613)
-- Dependencies: 239
-- Data for Name: reviews; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.reviews (id, review, stars, order_id, gig_id, buyer_id, seller_id, created_at, updated_at) FROM stdin;
1	My great Review!	3	4cb7f16f-0fad-4722-965b-76a6cc1c781d	1	1	1	2026-08-13 07:02:18.940873	2026-08-13 07:02:18.940873
2	Great!	3	2eca6368-8875-4369-a7f6-e03603f62cdf	1	1	1	2026-08-13 07:03:24.018573	2026-08-13 07:03:24.018573
\.


--
-- TOC entry 3611 (class 0 OID 49154)
-- Dependencies: 215
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.schema_migrations (version) FROM stdin;
20260807095446
20260807113527
20260807141257
20260810090935
20260810135926
20260810140200
20260810140650
20260810140728
20260812054630
20260812055419
20260812072828
20260812125214
20260812141523
20260812142943
20260813125508
20260813140523
20260814062554
20260814085745
20260814090016
20260814112053
20260814120446
20260816181617
20260816181903
20260817114441
20260818082002
\.


--
-- TOC entry 3647 (class 0 OID 106497)
-- Dependencies: 251
-- Data for Name: subscriptions; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.subscriptions (id, plan_id, sub_id, status, expired_at, user_id, created_at, updated_at) FROM stdin;
\.


--
-- TOC entry 3637 (class 0 OID 81922)
-- Dependencies: 241
-- Data for Name: transactions; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.transactions (id, status, transaction_type, amount, source_type, request_id, gig_id, buyer_id, seller_id, created_at, updated_at) FROM stdin;
\.


--
-- TOC entry 3614 (class 0 OID 49169)
-- Dependencies: 218
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.users (id, email, encrypted_password, reset_password_token, reset_password_sent_at, remember_created_at, created_at, updated_at, full_name, "from", about, language, status, provider, uid, image, phone, stripe_last_4, stripe_id, paypal, wallet, active) FROM stdin;
5	edwin@reinger-breitenberg.test	$2a$12$e5nDArjtZpHKHP9CGIDmweXIq1vApj/hIvv/.lukDx3VxMJtLKe36	\N	\N	\N	2026-08-11 00:00:00	2026-08-11 06:06:08.364975	Ilse Koch	Guyana	Most of the tasks we do are for humans. For example, a tax calculation is counting numbers so the government can pull money out from my wallet, but government consists of humans.	Romanian	\N	\N	\N	\N	\N	\N	\N	\N	0	t
6	felix_wisoky@stoltenberg.test	$2a$12$5CktVIRWpMWKEvneGZGCweTPtLm47vULTVSLE85eewYWkFACf8CFe	\N	\N	\N	2026-08-11 00:00:00	2026-08-11 06:06:08.932496	Hiram Lakin	Mauritius	You want to enjoy life, don't you? If you get your job done quickly and your job is fun, that's good isn't it? That's the purpose of life, partly. Your life is better.	Romanian	\N	\N	\N	\N	\N	\N	\N	\N	0	t
1	admin@admin.com	$2a$12$FYJWspDnaNPddGWOB7oz7u9c0gmrb6NNecuc57FQuj9NSo1Uuh8zi	\N	\N	\N	2026-08-07 10:07:30.167477	2026-08-10 10:16:00.812425	Максимушка The Great	California	After the Iran-backed Houthi militant group claimed to have carried out a “large-scale” military operation targeting Saudi troops on Thursday, the health minister of Yemen’s internationally recognized government said that at least two civilians were killed and 14 others injured in Houthi strikes on the eastern Marib province.	English	t	\N	\N	\N	\N	\N	\N	\N	0	t
2	roger.okon@hermann-mueller.test	$2a$12$Gzp.27R4MwIOz58aTYxJ4.I.NCwM6KIUI04oUnOqSs52Venu6ikem	\N	\N	\N	2026-08-11 00:00:00	2026-08-11 06:06:06.64778	Van Leffler PhD	Guam	People are different. People choose different criteria. But if there is a better way among many alternatives, I want to encourage that way by making it comfortable. So that's what I've tried to do.	Marathi	\N	\N	\N	\N	\N	\N	\N	\N	0	t
3	elayne@powlowski.example	$2a$12$XMUuFEW1mxVjxTy6y4ge6OuNFlw4rzydWAprMrbsHZu8Yny2pKSCu	\N	\N	\N	2026-08-11 00:00:00	2026-08-11 06:06:07.163178	Millicent Jenkins IV	North Macedonia	Everyone has an individual background. Someone may come from Python, someone else may come from Perl, and they may be surprised by different aspects of the language. Then they come up to me and say, 'I was surprised by this feature of the language, so therefore Ruby violates the principle of least surprise.' Wait. Wait. The principle of least surprise is not for you only.	Italian	\N	\N	\N	\N	\N	\N	\N	\N	0	t
4	carita_medhurst@wilderman-beier.test	$2a$12$EGpiaz90Q7WitL/zvH/XXezp61SmR5LipSjmdlX734lFVwoEHtaIK	\N	\N	\N	2026-08-11 00:00:00	2026-08-11 06:06:07.71541	Cinthia Goyette Ret.	Liechtenstein	Because of the Turing completeness theory, everything one Turing-complete language can do can theoretically be done by another Turing-complete language, but at a different cost. You can do everything in assembler, but no one wants to program in assembler anymore.	Swedish	\N	\N	\N	\N	\N	\N	\N	\N	0	t
\.


--
-- TOC entry 3670 (class 0 OID 0)
-- Dependencies: 231
-- Name: action_text_rich_texts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.action_text_rich_texts_id_seq', 31, true);


--
-- TOC entry 3671 (class 0 OID 0)
-- Dependencies: 221
-- Name: active_storage_attachments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.active_storage_attachments_id_seq', 49, true);


--
-- TOC entry 3672 (class 0 OID 0)
-- Dependencies: 219
-- Name: active_storage_blobs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.active_storage_blobs_id_seq', 49, true);


--
-- TOC entry 3673 (class 0 OID 0)
-- Dependencies: 223
-- Name: active_storage_variant_records_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.active_storage_variant_records_id_seq', 1, false);


--
-- TOC entry 3674 (class 0 OID 0)
-- Dependencies: 242
-- Name: administrators_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.administrators_id_seq', 1, true);


--
-- TOC entry 3675 (class 0 OID 0)
-- Dependencies: 225
-- Name: categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.categories_id_seq', 30, true);


--
-- TOC entry 3676 (class 0 OID 0)
-- Dependencies: 248
-- Name: comments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.comments_id_seq', 14, true);


--
-- TOC entry 3677 (class 0 OID 0)
-- Dependencies: 244
-- Name: conversations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.conversations_id_seq', 4, true);


--
-- TOC entry 3678 (class 0 OID 0)
-- Dependencies: 227
-- Name: gigs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.gigs_id_seq', 31, true);


--
-- TOC entry 3679 (class 0 OID 0)
-- Dependencies: 246
-- Name: messages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.messages_id_seq', 47, true);


--
-- TOC entry 3680 (class 0 OID 0)
-- Dependencies: 236
-- Name: offers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.offers_id_seq', 1, true);


--
-- TOC entry 3681 (class 0 OID 0)
-- Dependencies: 229
-- Name: pricings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.pricings_id_seq', 93, true);


--
-- TOC entry 3682 (class 0 OID 0)
-- Dependencies: 234
-- Name: requests_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.requests_id_seq', 43, true);


--
-- TOC entry 3683 (class 0 OID 0)
-- Dependencies: 238
-- Name: reviews_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.reviews_id_seq', 2, true);


--
-- TOC entry 3684 (class 0 OID 0)
-- Dependencies: 250
-- Name: subscriptions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.subscriptions_id_seq', 1, false);


--
-- TOC entry 3685 (class 0 OID 0)
-- Dependencies: 240
-- Name: transactions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.transactions_id_seq', 1, false);


--
-- TOC entry 3686 (class 0 OID 0)
-- Dependencies: 217
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.users_id_seq', 6, true);


--
-- TOC entry 3395 (class 2606 OID 57440)
-- Name: action_text_rich_texts action_text_rich_texts_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.action_text_rich_texts
    ADD CONSTRAINT action_text_rich_texts_pkey PRIMARY KEY (id);


--
-- TOC entry 3379 (class 2606 OID 57362)
-- Name: active_storage_attachments active_storage_attachments_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.active_storage_attachments
    ADD CONSTRAINT active_storage_attachments_pkey PRIMARY KEY (id);


--
-- TOC entry 3376 (class 2606 OID 57352)
-- Name: active_storage_blobs active_storage_blobs_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.active_storage_blobs
    ADD CONSTRAINT active_storage_blobs_pkey PRIMARY KEY (id);


--
-- TOC entry 3383 (class 2606 OID 57378)
-- Name: active_storage_variant_records active_storage_variant_records_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.active_storage_variant_records
    ADD CONSTRAINT active_storage_variant_records_pkey PRIMARY KEY (id);


--
-- TOC entry 3424 (class 2606 OID 81960)
-- Name: administrators administrators_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.administrators
    ADD CONSTRAINT administrators_pkey PRIMARY KEY (id);


--
-- TOC entry 3370 (class 2606 OID 49167)
-- Name: ar_internal_metadata ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- TOC entry 3386 (class 2606 OID 57393)
-- Name: categories categories_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (id);


--
-- TOC entry 3434 (class 2606 OID 98312)
-- Name: comments comments_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.comments
    ADD CONSTRAINT comments_pkey PRIMARY KEY (id);


--
-- TOC entry 3426 (class 2606 OID 90118)
-- Name: conversations conversations_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.conversations
    ADD CONSTRAINT conversations_pkey PRIMARY KEY (id);


--
-- TOC entry 3388 (class 2606 OID 57404)
-- Name: gigs gigs_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.gigs
    ADD CONSTRAINT gigs_pkey PRIMARY KEY (id);


--
-- TOC entry 3432 (class 2606 OID 90139)
-- Name: messages messages_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.messages
    ADD CONSTRAINT messages_pkey PRIMARY KEY (id);


--
-- TOC entry 3410 (class 2606 OID 65593)
-- Name: offers offers_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.offers
    ADD CONSTRAINT offers_pkey PRIMARY KEY (id);


--
-- TOC entry 3402 (class 2606 OID 65544)
-- Name: orders orders_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (id);


--
-- TOC entry 3393 (class 2606 OID 57425)
-- Name: pricings pricings_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.pricings
    ADD CONSTRAINT pricings_pkey PRIMARY KEY (id);


--
-- TOC entry 3406 (class 2606 OID 65571)
-- Name: requests requests_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.requests
    ADD CONSTRAINT requests_pkey PRIMARY KEY (id);


--
-- TOC entry 3416 (class 2606 OID 65621)
-- Name: reviews reviews_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.reviews
    ADD CONSTRAINT reviews_pkey PRIMARY KEY (id);


--
-- TOC entry 3368 (class 2606 OID 49160)
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- TOC entry 3439 (class 2606 OID 106505)
-- Name: subscriptions subscriptions_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.subscriptions
    ADD CONSTRAINT subscriptions_pkey PRIMARY KEY (id);


--
-- TOC entry 3422 (class 2606 OID 81927)
-- Name: transactions transactions_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.transactions
    ADD CONSTRAINT transactions_pkey PRIMARY KEY (id);


--
-- TOC entry 3374 (class 2606 OID 49178)
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- TOC entry 3396 (class 1259 OID 57441)
-- Name: index_action_text_rich_texts_uniqueness; Type: INDEX; Schema: public; Owner: admin
--

CREATE UNIQUE INDEX index_action_text_rich_texts_uniqueness ON public.action_text_rich_texts USING btree (record_type, record_id, name);


--
-- TOC entry 3380 (class 1259 OID 57368)
-- Name: index_active_storage_attachments_on_blob_id; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX index_active_storage_attachments_on_blob_id ON public.active_storage_attachments USING btree (blob_id);


--
-- TOC entry 3381 (class 1259 OID 57369)
-- Name: index_active_storage_attachments_uniqueness; Type: INDEX; Schema: public; Owner: admin
--

CREATE UNIQUE INDEX index_active_storage_attachments_uniqueness ON public.active_storage_attachments USING btree (record_type, record_id, name, blob_id);


--
-- TOC entry 3377 (class 1259 OID 57353)
-- Name: index_active_storage_blobs_on_key; Type: INDEX; Schema: public; Owner: admin
--

CREATE UNIQUE INDEX index_active_storage_blobs_on_key ON public.active_storage_blobs USING btree (key);


--
-- TOC entry 3384 (class 1259 OID 57384)
-- Name: index_active_storage_variant_records_uniqueness; Type: INDEX; Schema: public; Owner: admin
--

CREATE UNIQUE INDEX index_active_storage_variant_records_uniqueness ON public.active_storage_variant_records USING btree (blob_id, variation_digest);


--
-- TOC entry 3435 (class 1259 OID 98324)
-- Name: index_comments_on_order_id; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX index_comments_on_order_id ON public.comments USING btree (order_id);


--
-- TOC entry 3436 (class 1259 OID 98323)
-- Name: index_comments_on_user_id; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX index_comments_on_user_id ON public.comments USING btree (user_id);


--
-- TOC entry 3427 (class 1259 OID 90130)
-- Name: index_conversations_on_receiver_id; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX index_conversations_on_receiver_id ON public.conversations USING btree (receiver_id);


--
-- TOC entry 3428 (class 1259 OID 90129)
-- Name: index_conversations_on_sender_id; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX index_conversations_on_sender_id ON public.conversations USING btree (sender_id);


--
-- TOC entry 3389 (class 1259 OID 57416)
-- Name: index_gigs_on_category_id; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX index_gigs_on_category_id ON public.gigs USING btree (category_id);


--
-- TOC entry 3390 (class 1259 OID 57415)
-- Name: index_gigs_on_user_id; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX index_gigs_on_user_id ON public.gigs USING btree (user_id);


--
-- TOC entry 3429 (class 1259 OID 90151)
-- Name: index_messages_on_conversation_id; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX index_messages_on_conversation_id ON public.messages USING btree (conversation_id);


--
-- TOC entry 3430 (class 1259 OID 90150)
-- Name: index_messages_on_user_id; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX index_messages_on_user_id ON public.messages USING btree (user_id);


--
-- TOC entry 3407 (class 1259 OID 65604)
-- Name: index_offers_on_request_id; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX index_offers_on_request_id ON public.offers USING btree (request_id);


--
-- TOC entry 3408 (class 1259 OID 65605)
-- Name: index_offers_on_user_id; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX index_offers_on_user_id ON public.offers USING btree (user_id);


--
-- TOC entry 3397 (class 1259 OID 65561)
-- Name: index_orders_on_buyer_id; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX index_orders_on_buyer_id ON public.orders USING btree (buyer_id);


--
-- TOC entry 3398 (class 1259 OID 65560)
-- Name: index_orders_on_gig_id; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX index_orders_on_gig_id ON public.orders USING btree (gig_id);


--
-- TOC entry 3399 (class 1259 OID 65606)
-- Name: index_orders_on_request_id; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX index_orders_on_request_id ON public.orders USING btree (request_id);


--
-- TOC entry 3400 (class 1259 OID 65562)
-- Name: index_orders_on_seller_id; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX index_orders_on_seller_id ON public.orders USING btree (seller_id);


--
-- TOC entry 3391 (class 1259 OID 57431)
-- Name: index_pricings_on_gig_id; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX index_pricings_on_gig_id ON public.pricings USING btree (gig_id);


--
-- TOC entry 3403 (class 1259 OID 65583)
-- Name: index_requests_on_category_id; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX index_requests_on_category_id ON public.requests USING btree (category_id);


--
-- TOC entry 3404 (class 1259 OID 65582)
-- Name: index_requests_on_user_id; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX index_requests_on_user_id ON public.requests USING btree (user_id);


--
-- TOC entry 3411 (class 1259 OID 65644)
-- Name: index_reviews_on_buyer_id; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX index_reviews_on_buyer_id ON public.reviews USING btree (buyer_id);


--
-- TOC entry 3412 (class 1259 OID 65643)
-- Name: index_reviews_on_gig_id; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX index_reviews_on_gig_id ON public.reviews USING btree (gig_id);


--
-- TOC entry 3413 (class 1259 OID 65642)
-- Name: index_reviews_on_order_id; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX index_reviews_on_order_id ON public.reviews USING btree (order_id);


--
-- TOC entry 3414 (class 1259 OID 65645)
-- Name: index_reviews_on_seller_id; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX index_reviews_on_seller_id ON public.reviews USING btree (seller_id);


--
-- TOC entry 3437 (class 1259 OID 106511)
-- Name: index_subscriptions_on_user_id; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX index_subscriptions_on_user_id ON public.subscriptions USING btree (user_id);


--
-- TOC entry 3417 (class 1259 OID 81950)
-- Name: index_transactions_on_buyer_id; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX index_transactions_on_buyer_id ON public.transactions USING btree (buyer_id);


--
-- TOC entry 3418 (class 1259 OID 81949)
-- Name: index_transactions_on_gig_id; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX index_transactions_on_gig_id ON public.transactions USING btree (gig_id);


--
-- TOC entry 3419 (class 1259 OID 81948)
-- Name: index_transactions_on_request_id; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX index_transactions_on_request_id ON public.transactions USING btree (request_id);


--
-- TOC entry 3420 (class 1259 OID 81951)
-- Name: index_transactions_on_seller_id; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX index_transactions_on_seller_id ON public.transactions USING btree (seller_id);


--
-- TOC entry 3371 (class 1259 OID 49179)
-- Name: index_users_on_email; Type: INDEX; Schema: public; Owner: admin
--

CREATE UNIQUE INDEX index_users_on_email ON public.users USING btree (email);


--
-- TOC entry 3372 (class 1259 OID 49180)
-- Name: index_users_on_reset_password_token; Type: INDEX; Schema: public; Owner: admin
--

CREATE UNIQUE INDEX index_users_on_reset_password_token ON public.users USING btree (reset_password_token);


--
-- TOC entry 3465 (class 2606 OID 98313)
-- Name: comments fk_rails_03de2dc08c; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.comments
    ADD CONSTRAINT fk_rails_03de2dc08c FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- TOC entry 3457 (class 2606 OID 81938)
-- Name: transactions fk_rails_0b24a7fcc3; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.transactions
    ADD CONSTRAINT fk_rails_0b24a7fcc3 FOREIGN KEY (buyer_id) REFERENCES public.users(id);


--
-- TOC entry 3463 (class 2606 OID 90140)
-- Name: messages fk_rails_273a25a7a6; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.messages
    ADD CONSTRAINT fk_rails_273a25a7a6 FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- TOC entry 3461 (class 2606 OID 90119)
-- Name: conversations fk_rails_2855ab3029; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.conversations
    ADD CONSTRAINT fk_rails_2855ab3029 FOREIGN KEY (sender_id) REFERENCES public.users(id);


--
-- TOC entry 3449 (class 2606 OID 65577)
-- Name: requests fk_rails_320a1ce6f0; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.requests
    ADD CONSTRAINT fk_rails_320a1ce6f0 FOREIGN KEY (category_id) REFERENCES public.categories(id);


--
-- TOC entry 3466 (class 2606 OID 98318)
-- Name: comments fk_rails_453b7b85cf; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.comments
    ADD CONSTRAINT fk_rails_453b7b85cf FOREIGN KEY (order_id) REFERENCES public.orders(id);


--
-- TOC entry 3458 (class 2606 OID 81943)
-- Name: transactions fk_rails_458bde2e92; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.transactions
    ADD CONSTRAINT fk_rails_458bde2e92 FOREIGN KEY (seller_id) REFERENCES public.users(id);


--
-- TOC entry 3444 (class 2606 OID 57426)
-- Name: pricings fk_rails_47132a4f4a; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.pricings
    ADD CONSTRAINT fk_rails_47132a4f4a FOREIGN KEY (gig_id) REFERENCES public.gigs(id);


--
-- TOC entry 3453 (class 2606 OID 65627)
-- Name: reviews fk_rails_544c610a1f; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.reviews
    ADD CONSTRAINT fk_rails_544c610a1f FOREIGN KEY (gig_id) REFERENCES public.gigs(id);


--
-- TOC entry 3451 (class 2606 OID 65594)
-- Name: offers fk_rails_5ff5bafd22; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.offers
    ADD CONSTRAINT fk_rails_5ff5bafd22 FOREIGN KEY (request_id) REFERENCES public.requests(id);


--
-- TOC entry 3442 (class 2606 OID 57410)
-- Name: gigs fk_rails_601286f7a1; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.gigs
    ADD CONSTRAINT fk_rails_601286f7a1 FOREIGN KEY (category_id) REFERENCES public.categories(id);


--
-- TOC entry 3445 (class 2606 OID 65545)
-- Name: orders fk_rails_6ad35d81ff; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT fk_rails_6ad35d81ff FOREIGN KEY (gig_id) REFERENCES public.gigs(id);


--
-- TOC entry 3459 (class 2606 OID 81933)
-- Name: transactions fk_rails_74e2bf86d1; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.transactions
    ADD CONSTRAINT fk_rails_74e2bf86d1 FOREIGN KEY (gig_id) REFERENCES public.gigs(id);


--
-- TOC entry 3464 (class 2606 OID 90145)
-- Name: messages fk_rails_7f927086d2; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.messages
    ADD CONSTRAINT fk_rails_7f927086d2 FOREIGN KEY (conversation_id) REFERENCES public.conversations(id);


--
-- TOC entry 3450 (class 2606 OID 65572)
-- Name: requests fk_rails_8ead8b1e6b; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.requests
    ADD CONSTRAINT fk_rails_8ead8b1e6b FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- TOC entry 3467 (class 2606 OID 106506)
-- Name: subscriptions fk_rails_933bdff476; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.subscriptions
    ADD CONSTRAINT fk_rails_933bdff476 FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- TOC entry 3441 (class 2606 OID 57379)
-- Name: active_storage_variant_records fk_rails_993965df05; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.active_storage_variant_records
    ADD CONSTRAINT fk_rails_993965df05 FOREIGN KEY (blob_id) REFERENCES public.active_storage_blobs(id);


--
-- TOC entry 3454 (class 2606 OID 65637)
-- Name: reviews fk_rails_9c9b72d3b5; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.reviews
    ADD CONSTRAINT fk_rails_9c9b72d3b5 FOREIGN KEY (seller_id) REFERENCES public.users(id);


--
-- TOC entry 3446 (class 2606 OID 65607)
-- Name: orders fk_rails_b3cb052e93; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT fk_rails_b3cb052e93 FOREIGN KEY (request_id) REFERENCES public.requests(id);


--
-- TOC entry 3440 (class 2606 OID 57363)
-- Name: active_storage_attachments fk_rails_c3b3935057; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.active_storage_attachments
    ADD CONSTRAINT fk_rails_c3b3935057 FOREIGN KEY (blob_id) REFERENCES public.active_storage_blobs(id);


--
-- TOC entry 3455 (class 2606 OID 65632)
-- Name: reviews fk_rails_c7b3e20248; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.reviews
    ADD CONSTRAINT fk_rails_c7b3e20248 FOREIGN KEY (buyer_id) REFERENCES public.users(id);


--
-- TOC entry 3447 (class 2606 OID 65550)
-- Name: orders fk_rails_d3775977e3; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT fk_rails_d3775977e3 FOREIGN KEY (buyer_id) REFERENCES public.users(id);


--
-- TOC entry 3443 (class 2606 OID 57405)
-- Name: gigs fk_rails_d872f8ccad; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.gigs
    ADD CONSTRAINT fk_rails_d872f8ccad FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- TOC entry 3452 (class 2606 OID 65599)
-- Name: offers fk_rails_e6095d6211; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.offers
    ADD CONSTRAINT fk_rails_e6095d6211 FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- TOC entry 3456 (class 2606 OID 65622)
-- Name: reviews fk_rails_eadb6874f1; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.reviews
    ADD CONSTRAINT fk_rails_eadb6874f1 FOREIGN KEY (order_id) REFERENCES public.orders(id);


--
-- TOC entry 3462 (class 2606 OID 90124)
-- Name: conversations fk_rails_f4e4d987ce; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.conversations
    ADD CONSTRAINT fk_rails_f4e4d987ce FOREIGN KEY (receiver_id) REFERENCES public.users(id);


--
-- TOC entry 3448 (class 2606 OID 65555)
-- Name: orders fk_rails_f569184c98; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT fk_rails_f569184c98 FOREIGN KEY (seller_id) REFERENCES public.users(id);


--
-- TOC entry 3460 (class 2606 OID 81928)
-- Name: transactions fk_rails_f693e29525; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.transactions
    ADD CONSTRAINT fk_rails_f693e29525 FOREIGN KEY (request_id) REFERENCES public.requests(id);


-- Completed on 2026-08-18 14:21:19

--
-- PostgreSQL database dump complete
--

\unrestrict Hg7AX62DlNbxC56lb3DinSjSgUzL0V2ahrpcKcJ4J5xR3Yf2bmGdQYaG1AYE5dp

