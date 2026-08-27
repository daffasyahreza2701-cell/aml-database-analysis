--
-- PostgreSQL database dump
--

\restrict aTJGqI2KS7ZVYYzYaQhmf3OWU6MsWuQoYW1cNFc9GPacpOfecXrECliFh6f41ug

-- Dumped from database version 18.3
-- Dumped by pg_dump version 18.4

-- Started on 2026-08-24 16:53:07

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
-- TOC entry 220 (class 1259 OID 16420)
-- Name: customers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.customers (
    customer_id character varying(20) NOT NULL,
    country character varying(100),
    currency character varying(10),
    age integer,
    occupation character varying(20),
    years_working integer
);


ALTER TABLE public.customers OWNER TO postgres;

--
-- TOC entry 222 (class 1259 OID 16433)
-- Name: funding_source; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.funding_source (
    source_of_fund character varying(20),
    customer_id character varying(20) NOT NULL
);


ALTER TABLE public.funding_source OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 16423)
-- Name: income_cust; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.income_cust (
    annual_income_local numeric,
    annual_income_usd numeric,
    monthly_savings_rate numeric,
    estimated_savings_local numeric,
    estimated_savings_usd numeric,
    inheritance_flag integer,
    inheritance_amount_local numeric,
    net_worth_local numeric,
    net_worth_usd numeric,
    customer_id character varying(20) NOT NULL
);


ALTER TABLE public.income_cust OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 16436)
-- Name: insurance_info; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.insurance_info (
    policy_type character varying(20),
    annual_premium_local numeric,
    annual_premium_usd numeric,
    premium_to_income_ratio numeric,
    customer_id character varying(20) NOT NULL
);


ALTER TABLE public.insurance_info OWNER TO postgres;

--
-- TOC entry 224 (class 1259 OID 16441)
-- Name: payment_behavior; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.payment_behavior (
    payment_method character varying(20),
    third_party_flag boolean,
    large_cash_payment_flag boolean,
    customer_id character varying(20) NOT NULL
);


ALTER TABLE public.payment_behavior OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 16415)
-- Name: stg_customers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.stg_customers (
    customer_id text,
    country text,
    currency text,
    fx_to_usd text,
    age text,
    occupation text,
    years_working text,
    annual_income_local text,
    annual_income_usd text,
    monthly_savings_rate text,
    estimated_savings_local text,
    estimated_savings_usd text,
    inheritance_flag text,
    inheritance_amount_local text,
    net_worth_local text,
    net_worth_usd text,
    source_of_funds text,
    policy_type text,
    annual_premium_local text,
    annual_premium_usd text,
    premium_to_income_ratio text,
    payment_method text,
    third_party_payer_flag text,
    large_cash_payment_flag text,
    multiple_policy_flag text,
    policy_count text,
    rapid_policy_purchase_flag text,
    early_surrender_flag text,
    high_risk_country_flag text,
    pep_match_flag text,
    sanction_match_flag text,
    terror_watchlist_match_flag text,
    name_screening_score text,
    dob_match_flag text,
    aml_pattern_type text,
    wealth_inconsistency_flag text,
    is_suspicious text
);


ALTER TABLE public.stg_customers OWNER TO postgres;

--
-- TOC entry 5037 (class 0 OID 16420)
-- Dependencies: 220
-- Data for Name: customers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.customers (customer_id, country, currency, age, occupation, years_working) FROM stdin;
CUST00000	United States	USD	29	director	8
CUST00001	Singapore	SGD	36	director	7
CUST00002	Indonesia	IDR	32	employee	5
CUST00003	Malaysia	MYR	60	employee	35
CUST00004	Indonesia	IDR	24	consultant	1
CUST00005	Singapore	SGD	64	director	39
CUST00006	United States	USD	57	consultant	33
CUST00007	United Kingdom	GBP	42	entrepreneur	18
CUST00008	Singapore	SGD	30	entrepreneur	1
CUST00009	United Arab Emirates	AED	55	director	30
CUST00010	Singapore	SGD	51	director	30
CUST00011	Singapore	SGD	45	consultant	22
CUST00012	Malaysia	MYR	37	employee	16
CUST00013	Singapore	SGD	38	entrepreneur	9
CUST00014	United Kingdom	GBP	50	entrepreneur	28
CUST00015	Indonesia	IDR	36	freelancer	14
CUST00016	Singapore	SGD	52	freelancer	25
CUST00017	Malaysia	MYR	28	consultant	4
CUST00018	United Kingdom	GBP	28	entrepreneur	7
CUST00019	United Arab Emirates	AED	25	consultant	2
CUST00020	Singapore	SGD	25	freelancer	1
CUST00021	Singapore	SGD	26	entrepreneur	1
CUST00022	United Kingdom	GBP	55	entrepreneur	29
CUST00023	Indonesia	IDR	22	director	1
CUST00024	Singapore	SGD	45	director	20
CUST00025	Singapore	SGD	38	entrepreneur	16
CUST00026	Malaysia	MYR	25	entrepreneur	3
CUST00027	United Arab Emirates	AED	57	director	36
CUST00028	Malaysia	MYR	24	freelancer	1
CUST00029	Singapore	SGD	48	entrepreneur	27
CUST00030	Indonesia	IDR	52	entrepreneur	28
CUST00031	Indonesia	IDR	39	employee	13
CUST00032	Malaysia	MYR	24	employee	2
CUST00033	United Arab Emirates	AED	22	consultant	1
CUST00034	United States	USD	48	freelancer	22
CUST00035	Indonesia	IDR	41	freelancer	16
CUST00036	United States	USD	32	consultant	10
CUST00037	Singapore	SGD	52	entrepreneur	22
CUST00038	United States	USD	22	director	1
CUST00039	Indonesia	IDR	51	director	28
CUST00040	United Arab Emirates	AED	50	freelancer	25
CUST00041	Malaysia	MYR	37	entrepreneur	12
CUST00042	United Arab Emirates	AED	43	director	14
CUST00043	Malaysia	MYR	41	freelancer	14
CUST00044	United Arab Emirates	AED	43	director	16
CUST00045	Indonesia	IDR	27	entrepreneur	1
CUST00046	United Arab Emirates	AED	39	employee	12
CUST00047	United States	USD	24	entrepreneur	3
CUST00048	United Arab Emirates	AED	38	consultant	12
CUST00049	United Arab Emirates	AED	47	director	23
CUST00050	United States	USD	45	employee	23
CUST00051	United Arab Emirates	AED	33	freelancer	4
CUST00052	Indonesia	IDR	39	consultant	11
CUST00053	Singapore	SGD	44	entrepreneur	19
CUST00054	Singapore	SGD	52	entrepreneur	24
CUST00055	Malaysia	MYR	49	entrepreneur	20
CUST00056	United Kingdom	GBP	33	director	9
CUST00057	Malaysia	MYR	33	director	8
CUST00058	Indonesia	IDR	58	consultant	33
CUST00059	Indonesia	IDR	58	entrepreneur	37
CUST00060	United Kingdom	GBP	36	consultant	7
CUST00061	Malaysia	MYR	64	freelancer	42
CUST00062	Malaysia	MYR	40	director	12
CUST00063	United States	USD	31	director	6
CUST00064	Malaysia	MYR	47	freelancer	22
CUST00065	United States	USD	58	freelancer	28
CUST00066	United Arab Emirates	AED	62	employee	34
CUST00067	Malaysia	MYR	64	employee	37
CUST00068	Indonesia	IDR	34	entrepreneur	5
CUST00069	United States	USD	53	director	31
CUST00070	Indonesia	IDR	51	director	29
CUST00071	Singapore	SGD	51	employee	22
CUST00072	United Kingdom	GBP	39	freelancer	18
CUST00073	Malaysia	MYR	57	entrepreneur	28
CUST00074	United States	USD	52	entrepreneur	25
CUST00075	United Arab Emirates	AED	22	consultant	1
CUST00076	United Kingdom	GBP	46	director	20
CUST00077	United States	USD	27	consultant	1
CUST00078	Malaysia	MYR	44	entrepreneur	18
CUST00079	United Arab Emirates	AED	61	consultant	37
CUST00080	United Arab Emirates	AED	40	freelancer	11
CUST00081	United Arab Emirates	AED	52	consultant	30
CUST00082	United States	USD	25	director	1
CUST00083	United States	USD	64	employee	41
CUST00084	Malaysia	MYR	48	director	25
CUST00085	United Arab Emirates	AED	40	freelancer	14
CUST00086	United Kingdom	GBP	29	consultant	1
CUST00087	United Kingdom	GBP	42	freelancer	12
CUST00088	Malaysia	MYR	53	consultant	31
CUST00089	United Arab Emirates	AED	61	entrepreneur	34
CUST00090	United States	USD	44	employee	23
CUST00091	Singapore	SGD	30	entrepreneur	1
CUST00092	Singapore	SGD	30	entrepreneur	1
CUST00093	Singapore	SGD	48	director	19
CUST00094	United Kingdom	GBP	24	freelancer	1
CUST00095	United Arab Emirates	AED	26	director	4
CUST00096	United Arab Emirates	AED	54	director	24
CUST00097	United Arab Emirates	AED	43	consultant	15
CUST00098	Indonesia	IDR	27	employee	1
CUST00099	United States	USD	49	entrepreneur	28
CUST00100	Malaysia	MYR	57	director	31
CUST00101	United States	USD	41	employee	15
CUST00102	Singapore	SGD	46	director	19
CUST00103	United Kingdom	GBP	25	freelancer	3
CUST00104	United Arab Emirates	AED	29	entrepreneur	4
CUST00105	Singapore	SGD	30	entrepreneur	5
CUST00106	United Kingdom	GBP	57	employee	31
CUST00107	United States	USD	48	freelancer	23
CUST00108	Singapore	SGD	49	consultant	19
CUST00109	United States	USD	29	entrepreneur	1
CUST00110	Singapore	SGD	60	freelancer	37
CUST00111	United Kingdom	GBP	42	consultant	16
CUST00112	United Arab Emirates	AED	50	director	29
CUST00113	United States	USD	24	entrepreneur	1
CUST00114	Malaysia	MYR	27	director	1
CUST00115	United Arab Emirates	AED	48	director	22
CUST00116	United States	USD	60	freelancer	37
CUST00117	United States	USD	43	freelancer	20
CUST00118	Singapore	SGD	43	employee	15
CUST00119	United Arab Emirates	AED	31	freelancer	8
CUST00120	United States	USD	50	consultant	26
CUST00121	United Kingdom	GBP	55	freelancer	28
CUST00122	Malaysia	MYR	27	entrepreneur	4
CUST00123	United Arab Emirates	AED	54	consultant	28
CUST00124	Malaysia	MYR	52	consultant	29
CUST00125	United Kingdom	GBP	55	entrepreneur	28
CUST00126	United Arab Emirates	AED	60	freelancer	31
CUST00127	Singapore	SGD	64	director	42
CUST00128	United Arab Emirates	AED	45	employee	20
CUST00129	Malaysia	MYR	63	employee	40
CUST00130	Singapore	SGD	24	entrepreneur	1
CUST00131	Malaysia	MYR	39	consultant	17
CUST00132	United Kingdom	GBP	39	employee	17
CUST00133	United Kingdom	GBP	49	director	26
CUST00134	United States	USD	47	director	21
CUST00135	United States	USD	45	freelancer	19
CUST00136	United Kingdom	GBP	30	employee	1
CUST00137	United Kingdom	GBP	29	freelancer	4
CUST00138	United Arab Emirates	AED	33	employee	5
CUST00139	United States	USD	62	entrepreneur	39
CUST00140	United Kingdom	GBP	45	freelancer	17
CUST00141	Malaysia	MYR	63	director	41
CUST00142	Indonesia	IDR	29	entrepreneur	1
CUST00143	United States	USD	57	entrepreneur	32
CUST00144	United Kingdom	GBP	43	director	13
CUST00145	United States	USD	23	freelancer	1
CUST00146	Singapore	SGD	50	consultant	23
CUST00147	United Kingdom	GBP	57	entrepreneur	35
CUST00148	United Kingdom	GBP	48	entrepreneur	24
CUST00149	United Arab Emirates	AED	23	employee	1
CUST00150	United States	USD	65	consultant	37
CUST00151	United Kingdom	GBP	57	director	33
CUST00152	United Arab Emirates	AED	45	freelancer	19
CUST00153	Malaysia	MYR	52	consultant	23
CUST00154	Malaysia	MYR	59	consultant	33
CUST00155	Indonesia	IDR	48	director	18
CUST00156	United Kingdom	GBP	62	employee	32
CUST00157	Singapore	SGD	48	employee	24
CUST00158	United States	USD	52	consultant	23
CUST00159	Singapore	SGD	39	entrepreneur	10
CUST00160	United States	USD	39	consultant	14
CUST00161	United States	USD	27	consultant	1
CUST00162	United Kingdom	GBP	37	employee	13
CUST00163	Indonesia	IDR	65	freelancer	42
CUST00164	Indonesia	IDR	27	freelancer	1
CUST00165	Singapore	SGD	40	consultant	19
CUST00166	United Arab Emirates	AED	39	consultant	15
CUST00167	United Kingdom	GBP	65	consultant	41
CUST00168	Singapore	SGD	52	consultant	26
CUST00169	United States	USD	37	director	16
CUST00170	Singapore	SGD	36	freelancer	13
CUST00171	Indonesia	IDR	55	employee	27
CUST00172	United Kingdom	GBP	50	freelancer	28
CUST00173	United Arab Emirates	AED	58	consultant	37
CUST00174	United Arab Emirates	AED	44	employee	22
CUST00175	United States	USD	63	freelancer	36
CUST00176	United Kingdom	GBP	47	consultant	18
CUST00177	Singapore	SGD	37	freelancer	9
CUST00178	United Kingdom	GBP	24	freelancer	1
CUST00179	Indonesia	IDR	30	consultant	1
CUST00180	United Kingdom	GBP	36	entrepreneur	9
CUST00181	United States	USD	64	freelancer	37
CUST00182	Malaysia	MYR	31	freelancer	3
CUST00183	Indonesia	IDR	50	director	24
CUST00184	United Kingdom	GBP	64	entrepreneur	35
CUST00185	United States	USD	60	freelancer	36
CUST00186	United Kingdom	GBP	53	entrepreneur	25
CUST00187	Singapore	SGD	31	consultant	10
CUST00188	United Kingdom	GBP	37	freelancer	9
CUST00189	United States	USD	56	director	28
CUST00190	United Arab Emirates	AED	30	consultant	6
CUST00191	United Kingdom	GBP	57	employee	30
CUST00192	United Kingdom	GBP	31	employee	7
CUST00193	United States	USD	36	employee	11
CUST00194	United Arab Emirates	AED	25	consultant	4
CUST00195	United States	USD	58	director	30
CUST00196	Singapore	SGD	59	entrepreneur	36
CUST00197	United States	USD	30	entrepreneur	8
CUST00198	United Kingdom	GBP	47	director	21
CUST00199	United States	USD	46	consultant	24
CUST00200	Malaysia	MYR	45	employee	23
CUST00201	United Kingdom	GBP	57	director	28
CUST00202	United Arab Emirates	AED	27	entrepreneur	1
CUST00203	Indonesia	IDR	32	consultant	5
CUST00204	United Arab Emirates	AED	28	freelancer	5
CUST00205	United States	USD	60	freelancer	37
CUST00206	Singapore	SGD	42	entrepreneur	15
CUST00207	Singapore	SGD	50	consultant	25
CUST00208	United Arab Emirates	AED	26	freelancer	1
CUST00209	Indonesia	IDR	28	director	4
CUST00210	Indonesia	IDR	38	entrepreneur	14
CUST00211	United States	USD	59	freelancer	30
CUST00212	Malaysia	MYR	51	freelancer	27
CUST00213	United States	USD	29	entrepreneur	8
CUST00214	United Arab Emirates	AED	36	director	9
CUST00215	Indonesia	IDR	35	entrepreneur	11
CUST00216	Malaysia	MYR	64	freelancer	36
CUST00217	United Kingdom	GBP	33	consultant	8
CUST00218	United Kingdom	GBP	46	director	19
CUST00219	Singapore	SGD	42	entrepreneur	14
CUST00220	United Arab Emirates	AED	48	director	20
CUST00221	Singapore	SGD	56	director	31
CUST00222	Malaysia	MYR	56	entrepreneur	35
CUST00223	Indonesia	IDR	50	director	28
CUST00224	Singapore	SGD	35	consultant	14
CUST00225	United Kingdom	GBP	65	entrepreneur	43
CUST00226	Singapore	SGD	65	freelancer	38
CUST00227	Malaysia	MYR	45	employee	17
CUST00228	United Arab Emirates	AED	35	director	8
CUST00229	Indonesia	IDR	24	freelancer	2
CUST00230	United States	USD	30	consultant	5
CUST00231	United States	USD	41	employee	17
CUST00232	Indonesia	IDR	22	employee	1
CUST00233	Indonesia	IDR	28	entrepreneur	2
CUST00234	United Arab Emirates	AED	44	entrepreneur	20
CUST00235	United Kingdom	GBP	46	entrepreneur	20
CUST00236	United Kingdom	GBP	54	freelancer	30
CUST00237	United Kingdom	GBP	26	freelancer	1
CUST00238	Indonesia	IDR	23	freelancer	1
CUST00239	Indonesia	IDR	62	director	33
CUST00240	United Kingdom	GBP	62	freelancer	40
CUST00241	Malaysia	MYR	64	freelancer	41
CUST00242	United States	USD	39	director	17
CUST00243	United Arab Emirates	AED	51	consultant	22
CUST00244	Indonesia	IDR	24	entrepreneur	3
CUST00245	United Arab Emirates	AED	42	employee	17
CUST00246	United Arab Emirates	AED	26	freelancer	1
CUST00247	Malaysia	MYR	61	director	37
CUST00248	Indonesia	IDR	36	freelancer	7
CUST00249	Singapore	SGD	48	employee	20
CUST00250	United States	USD	27	employee	1
CUST00251	Malaysia	MYR	47	entrepreneur	21
CUST00252	United Arab Emirates	AED	42	consultant	15
CUST00253	Malaysia	MYR	60	entrepreneur	39
CUST00254	Malaysia	MYR	38	entrepreneur	15
CUST00255	Singapore	SGD	29	consultant	8
CUST00256	Indonesia	IDR	34	employee	6
CUST00257	United Arab Emirates	AED	65	entrepreneur	38
CUST00258	United Kingdom	GBP	52	entrepreneur	31
CUST00259	United Arab Emirates	AED	44	director	14
CUST00260	United Arab Emirates	AED	55	entrepreneur	29
CUST00261	United States	USD	25	entrepreneur	1
CUST00262	Indonesia	IDR	44	director	14
CUST00263	Indonesia	IDR	36	entrepreneur	6
CUST00264	Malaysia	MYR	25	consultant	4
CUST00265	Malaysia	MYR	41	consultant	15
CUST00266	Singapore	SGD	46	director	21
CUST00267	United Kingdom	GBP	36	entrepreneur	6
CUST00268	Indonesia	IDR	64	consultant	38
CUST00269	United Arab Emirates	AED	48	employee	25
CUST00270	Indonesia	IDR	40	freelancer	19
CUST00271	Indonesia	IDR	43	entrepreneur	13
CUST00272	Singapore	SGD	34	consultant	7
CUST00273	United Kingdom	GBP	53	director	30
CUST00274	Singapore	SGD	62	freelancer	37
CUST00275	Malaysia	MYR	46	entrepreneur	20
CUST00276	United States	USD	28	entrepreneur	6
CUST00277	United Kingdom	GBP	65	employee	37
CUST00278	Singapore	SGD	35	entrepreneur	11
CUST00279	United Kingdom	GBP	47	director	18
CUST00280	United Kingdom	GBP	59	director	29
CUST00281	United Arab Emirates	AED	58	director	28
CUST00282	Malaysia	MYR	37	consultant	16
CUST00283	Singapore	SGD	30	director	5
CUST00284	United Arab Emirates	AED	53	consultant	24
CUST00285	Indonesia	IDR	33	consultant	9
CUST00286	United Kingdom	GBP	47	freelancer	25
CUST00287	Malaysia	MYR	27	entrepreneur	2
CUST00288	United Kingdom	GBP	23	entrepreneur	2
CUST00289	United Arab Emirates	AED	44	freelancer	16
CUST00290	Malaysia	MYR	57	consultant	27
CUST00291	United States	USD	41	freelancer	17
CUST00292	Malaysia	MYR	38	entrepreneur	11
CUST00293	United Arab Emirates	AED	64	entrepreneur	38
CUST00294	Malaysia	MYR	57	consultant	34
CUST00295	Malaysia	MYR	51	employee	29
CUST00296	United States	USD	46	consultant	17
CUST00297	United States	USD	33	employee	11
CUST00298	Singapore	SGD	58	freelancer	35
CUST00299	Indonesia	IDR	56	entrepreneur	32
CUST00300	Malaysia	MYR	41	employee	18
CUST00301	United Kingdom	GBP	55	consultant	29
CUST00302	Singapore	SGD	30	employee	6
CUST00303	United Kingdom	GBP	25	employee	3
CUST00304	United States	USD	62	director	41
CUST00305	United Kingdom	GBP	29	consultant	4
CUST00306	Indonesia	IDR	57	employee	29
CUST00307	Singapore	SGD	27	entrepreneur	1
CUST00308	Indonesia	IDR	33	employee	12
CUST00309	Singapore	SGD	43	consultant	17
CUST00310	United Arab Emirates	AED	39	employee	12
CUST00311	United Kingdom	GBP	52	employee	22
CUST00312	United Arab Emirates	AED	50	director	29
CUST00313	United States	USD	61	freelancer	39
CUST00314	Singapore	SGD	54	entrepreneur	26
CUST00315	United Kingdom	GBP	63	freelancer	36
CUST00316	United Arab Emirates	AED	63	employee	42
CUST00317	Malaysia	MYR	25	freelancer	1
CUST00318	Malaysia	MYR	62	freelancer	37
CUST00319	Singapore	SGD	34	freelancer	12
CUST00320	United Kingdom	GBP	54	director	31
CUST00321	Singapore	SGD	28	freelancer	1
CUST00322	Malaysia	MYR	50	director	27
CUST00323	United States	USD	40	consultant	14
CUST00324	United Kingdom	GBP	64	employee	37
CUST00325	Indonesia	IDR	34	consultant	9
CUST00326	Indonesia	IDR	61	consultant	32
CUST00327	United States	USD	42	entrepreneur	13
CUST00328	Singapore	SGD	65	freelancer	43
CUST00329	Malaysia	MYR	22	director	1
CUST00330	United Kingdom	GBP	44	entrepreneur	22
CUST00331	Singapore	SGD	64	director	38
CUST00332	United Arab Emirates	AED	37	freelancer	7
CUST00333	Malaysia	MYR	23	consultant	1
CUST00334	Indonesia	IDR	32	entrepreneur	3
CUST00335	United States	USD	49	employee	27
CUST00336	Malaysia	MYR	57	freelancer	35
CUST00337	Indonesia	IDR	56	employee	35
CUST00338	United States	USD	41	employee	11
CUST00339	United States	USD	47	consultant	18
CUST00340	United Kingdom	GBP	60	consultant	33
CUST00341	Singapore	SGD	36	employee	6
CUST00342	Malaysia	MYR	28	entrepreneur	4
CUST00343	Singapore	SGD	42	director	14
CUST00344	Malaysia	MYR	37	consultant	13
CUST00345	Malaysia	MYR	53	director	24
CUST00346	Indonesia	IDR	54	director	33
CUST00347	Singapore	SGD	59	director	34
CUST00348	United Kingdom	GBP	30	freelancer	2
CUST00349	Singapore	SGD	26	freelancer	1
CUST00350	United States	USD	42	director	20
CUST00351	United States	USD	26	consultant	1
CUST00352	Singapore	SGD	50	entrepreneur	27
CUST00353	Malaysia	MYR	29	freelancer	1
CUST00354	United Kingdom	GBP	32	consultant	9
CUST00355	United States	USD	23	entrepreneur	1
CUST00356	Singapore	SGD	61	director	32
CUST00357	Indonesia	IDR	23	director	1
CUST00358	United Kingdom	GBP	24	director	1
CUST00359	Indonesia	IDR	55	consultant	28
CUST00360	Singapore	SGD	27	employee	2
CUST00361	United States	USD	42	consultant	15
CUST00362	United States	USD	47	director	23
CUST00363	United States	USD	47	entrepreneur	24
CUST00364	Malaysia	MYR	57	employee	27
CUST00365	United Arab Emirates	AED	27	freelancer	5
CUST00366	Singapore	SGD	62	director	34
CUST00367	United States	USD	22	freelancer	1
CUST00368	United Kingdom	GBP	40	freelancer	11
CUST00369	United Kingdom	GBP	28	consultant	1
CUST00370	Singapore	SGD	43	employee	15
CUST00371	Singapore	SGD	65	consultant	41
CUST00372	United States	USD	43	director	21
CUST00373	Singapore	SGD	37	consultant	13
CUST00374	United States	USD	64	consultant	36
CUST00375	United Arab Emirates	AED	33	freelancer	4
CUST00376	United States	USD	33	employee	5
CUST00377	Malaysia	MYR	61	consultant	36
CUST00378	United Arab Emirates	AED	45	director	19
CUST00379	United Kingdom	GBP	49	entrepreneur	22
CUST00380	United States	USD	55	director	26
CUST00381	Indonesia	IDR	35	consultant	10
CUST00382	Malaysia	MYR	44	director	23
CUST00383	United Kingdom	GBP	53	entrepreneur	25
CUST00384	Indonesia	IDR	27	freelancer	4
CUST00385	United Kingdom	GBP	50	consultant	23
CUST00386	Indonesia	IDR	26	employee	1
CUST00387	United Arab Emirates	AED	41	director	17
CUST00388	Malaysia	MYR	52	director	24
CUST00389	United States	USD	62	freelancer	33
CUST00390	Malaysia	MYR	22	director	1
CUST00391	United Arab Emirates	AED	40	director	10
CUST00392	United States	USD	63	entrepreneur	36
CUST00393	United Arab Emirates	AED	34	freelancer	12
CUST00394	Singapore	SGD	25	freelancer	1
CUST00395	United Arab Emirates	AED	35	employee	9
CUST00396	United Arab Emirates	AED	26	employee	1
CUST00397	Indonesia	IDR	34	consultant	6
CUST00398	United Kingdom	GBP	55	entrepreneur	33
CUST00399	Singapore	SGD	39	director	9
CUST00400	Singapore	SGD	32	employee	4
CUST00401	Indonesia	IDR	30	freelancer	2
CUST00402	Singapore	SGD	38	freelancer	17
CUST00403	United States	USD	51	entrepreneur	26
CUST00404	United Arab Emirates	AED	22	director	1
CUST00405	United Kingdom	GBP	46	consultant	22
CUST00406	United States	USD	26	employee	5
CUST00407	United States	USD	46	entrepreneur	18
CUST00408	Indonesia	IDR	51	employee	30
CUST00409	Indonesia	IDR	35	entrepreneur	6
CUST00410	United Arab Emirates	AED	28	entrepreneur	1
CUST00411	United Kingdom	GBP	50	freelancer	24
CUST00412	United Arab Emirates	AED	57	employee	32
CUST00413	Malaysia	MYR	22	consultant	1
CUST00414	Singapore	SGD	30	employee	5
CUST00415	United Arab Emirates	AED	33	director	5
CUST00416	Indonesia	IDR	43	director	17
CUST00417	Indonesia	IDR	42	employee	13
CUST00418	Indonesia	IDR	36	freelancer	9
CUST00419	United Kingdom	GBP	49	director	26
CUST00420	United Arab Emirates	AED	42	entrepreneur	12
CUST00421	Malaysia	MYR	32	employee	6
CUST00422	United States	USD	27	employee	5
CUST00423	Indonesia	IDR	43	director	19
CUST00424	United States	USD	55	director	34
CUST00425	Indonesia	IDR	26	consultant	1
CUST00426	United States	USD	28	director	2
CUST00427	United Kingdom	GBP	41	consultant	15
CUST00428	Indonesia	IDR	62	entrepreneur	37
CUST00429	Indonesia	IDR	46	entrepreneur	17
CUST00430	United Kingdom	GBP	30	entrepreneur	6
CUST00431	Singapore	SGD	63	employee	33
CUST00432	Malaysia	MYR	48	employee	21
CUST00433	United Kingdom	GBP	61	employee	36
CUST00434	United Kingdom	GBP	52	entrepreneur	26
CUST00435	Indonesia	IDR	39	entrepreneur	12
CUST00436	Singapore	SGD	49	director	22
CUST00437	Indonesia	IDR	37	employee	8
CUST00438	Malaysia	MYR	40	freelancer	12
CUST00439	United Kingdom	GBP	56	director	33
CUST00440	United States	USD	63	consultant	40
CUST00441	Singapore	SGD	46	entrepreneur	17
CUST00442	Indonesia	IDR	48	employee	23
CUST00443	Malaysia	MYR	22	freelancer	1
CUST00444	United Arab Emirates	AED	48	consultant	20
CUST00445	United States	USD	44	consultant	23
CUST00446	Singapore	SGD	32	freelancer	7
CUST00447	Malaysia	MYR	45	entrepreneur	18
CUST00448	United Kingdom	GBP	35	director	11
CUST00449	United States	USD	40	consultant	13
CUST00450	United Arab Emirates	AED	53	employee	30
CUST00451	Singapore	SGD	61	entrepreneur	34
CUST00452	Indonesia	IDR	41	consultant	16
CUST00453	Malaysia	MYR	65	freelancer	37
CUST00454	Indonesia	IDR	55	entrepreneur	30
CUST00455	Malaysia	MYR	23	entrepreneur	1
CUST00456	Malaysia	MYR	48	entrepreneur	26
CUST00457	Indonesia	IDR	34	entrepreneur	12
CUST00458	Malaysia	MYR	31	freelancer	9
CUST00459	Indonesia	IDR	65	consultant	35
CUST00460	Singapore	SGD	40	entrepreneur	15
CUST00461	United Kingdom	GBP	57	entrepreneur	28
CUST00462	United Kingdom	GBP	43	employee	14
CUST00463	United Arab Emirates	AED	33	consultant	3
CUST00464	Indonesia	IDR	51	entrepreneur	29
CUST00465	United States	USD	43	freelancer	17
CUST00466	United Kingdom	GBP	58	employee	35
CUST00467	Singapore	SGD	61	entrepreneur	37
CUST00468	United Kingdom	GBP	37	director	14
CUST00469	United Arab Emirates	AED	33	freelancer	8
CUST00470	Singapore	SGD	59	freelancer	38
CUST00471	Malaysia	MYR	41	employee	11
CUST00472	Indonesia	IDR	45	employee	16
CUST00473	United Kingdom	GBP	47	entrepreneur	21
CUST00474	Malaysia	MYR	48	employee	25
CUST00475	Singapore	SGD	27	director	4
CUST00476	United Kingdom	GBP	50	freelancer	23
CUST00477	United Kingdom	GBP	45	employee	24
CUST00478	United Kingdom	GBP	61	director	39
CUST00479	Indonesia	IDR	52	consultant	24
CUST00480	United States	USD	58	consultant	33
CUST00481	United Kingdom	GBP	26	employee	1
CUST00482	United States	USD	50	employee	24
CUST00483	Singapore	SGD	53	entrepreneur	26
CUST00484	Indonesia	IDR	25	entrepreneur	2
CUST00485	United Kingdom	GBP	49	director	28
CUST00486	United Arab Emirates	AED	61	freelancer	36
CUST00487	United Kingdom	GBP	43	freelancer	20
CUST00488	United States	USD	40	entrepreneur	15
CUST00489	Singapore	SGD	46	consultant	16
CUST00490	Malaysia	MYR	49	freelancer	23
CUST00491	Malaysia	MYR	33	freelancer	5
CUST00492	Singapore	SGD	61	director	39
CUST00493	Singapore	SGD	63	director	42
CUST00494	United States	USD	26	consultant	1
CUST00495	United States	USD	27	consultant	1
CUST00496	United Arab Emirates	AED	64	freelancer	40
CUST00497	Singapore	SGD	23	consultant	1
CUST00498	Indonesia	IDR	43	director	22
CUST00499	Singapore	SGD	53	entrepreneur	32
CUST00500	Indonesia	IDR	51	employee	21
CUST00501	United Arab Emirates	AED	43	entrepreneur	16
CUST00502	Malaysia	MYR	31	director	4
CUST00503	United States	USD	61	entrepreneur	34
CUST00504	United Arab Emirates	AED	30	entrepreneur	6
CUST00505	Indonesia	IDR	62	director	37
CUST00506	United Arab Emirates	AED	62	freelancer	38
CUST00507	Indonesia	IDR	25	employee	1
CUST00508	Indonesia	IDR	53	director	24
CUST00509	Malaysia	MYR	36	freelancer	14
CUST00510	Indonesia	IDR	49	entrepreneur	26
CUST00511	Singapore	SGD	43	freelancer	20
CUST00512	Singapore	SGD	40	entrepreneur	10
CUST00513	Singapore	SGD	59	entrepreneur	31
CUST00514	United Kingdom	GBP	31	director	1
CUST00515	United States	USD	28	freelancer	1
CUST00516	United States	USD	27	director	6
CUST00517	United States	USD	47	employee	24
CUST00518	United Arab Emirates	AED	39	director	9
CUST00519	United States	USD	45	consultant	24
CUST00520	Singapore	SGD	30	entrepreneur	4
CUST00521	United Kingdom	GBP	65	director	38
CUST00522	United Kingdom	GBP	40	employee	12
CUST00523	Indonesia	IDR	28	director	5
CUST00524	United Kingdom	GBP	30	employee	2
CUST00525	United States	USD	63	freelancer	37
CUST00526	Malaysia	MYR	36	freelancer	8
CUST00527	Singapore	SGD	64	entrepreneur	41
CUST00528	United Kingdom	GBP	24	director	1
CUST00529	United Arab Emirates	AED	31	consultant	3
CUST00530	United Kingdom	GBP	50	employee	24
CUST00531	Singapore	SGD	50	consultant	24
CUST00532	United Arab Emirates	AED	65	director	43
CUST00533	United Arab Emirates	AED	45	director	18
CUST00534	United Arab Emirates	AED	50	entrepreneur	25
CUST00535	United Kingdom	GBP	43	freelancer	21
CUST00536	Singapore	SGD	34	director	11
CUST00537	Singapore	SGD	23	consultant	2
CUST00538	United States	USD	37	director	16
CUST00539	Malaysia	MYR	62	consultant	34
CUST00540	United States	USD	30	employee	4
CUST00541	Indonesia	IDR	54	director	30
CUST00542	United States	USD	45	consultant	23
CUST00543	Singapore	SGD	28	director	4
CUST00544	Indonesia	IDR	30	director	9
CUST00545	Indonesia	IDR	36	employee	13
CUST00546	United Arab Emirates	AED	49	employee	28
CUST00547	Indonesia	IDR	28	employee	6
CUST00548	Malaysia	MYR	44	employee	21
CUST00549	Singapore	SGD	56	freelancer	35
CUST00550	Indonesia	IDR	33	consultant	7
CUST00551	United Arab Emirates	AED	45	freelancer	20
CUST00552	United States	USD	50	freelancer	26
CUST00553	United Arab Emirates	AED	65	freelancer	43
CUST00554	Singapore	SGD	43	freelancer	19
CUST00555	United States	USD	60	employee	33
CUST00556	Singapore	SGD	23	entrepreneur	1
CUST00557	United Kingdom	GBP	28	consultant	6
CUST00558	Malaysia	MYR	56	freelancer	27
CUST00559	Indonesia	IDR	24	freelancer	1
CUST00560	United Arab Emirates	AED	29	freelancer	1
CUST00561	Malaysia	MYR	53	director	23
CUST00562	United States	USD	59	consultant	38
CUST00563	Singapore	SGD	37	consultant	13
CUST00564	Malaysia	MYR	24	consultant	1
CUST00565	Malaysia	MYR	46	entrepreneur	16
CUST00566	United States	USD	43	employee	20
CUST00567	United Kingdom	GBP	47	employee	23
CUST00568	United Kingdom	GBP	52	director	25
CUST00569	United Arab Emirates	AED	47	director	22
CUST00570	United States	USD	51	employee	26
CUST00571	Singapore	SGD	65	consultant	40
CUST00572	Singapore	SGD	29	freelancer	6
CUST00573	Singapore	SGD	23	freelancer	1
CUST00574	Malaysia	MYR	26	entrepreneur	1
CUST00575	Indonesia	IDR	55	consultant	25
CUST00576	Singapore	SGD	31	director	9
CUST00577	Indonesia	IDR	42	consultant	13
CUST00578	United Kingdom	GBP	24	consultant	3
CUST00579	United Arab Emirates	AED	38	freelancer	13
CUST00580	Indonesia	IDR	53	entrepreneur	25
CUST00581	United States	USD	57	freelancer	31
CUST00582	Malaysia	MYR	42	entrepreneur	12
CUST00583	United States	USD	30	employee	5
CUST00584	United Arab Emirates	AED	58	entrepreneur	34
CUST00585	Singapore	SGD	25	entrepreneur	1
CUST00586	United Arab Emirates	AED	65	consultant	37
CUST00587	Singapore	SGD	60	entrepreneur	36
CUST00588	United Arab Emirates	AED	37	entrepreneur	11
CUST00589	United States	USD	49	entrepreneur	19
CUST00590	United Kingdom	GBP	24	consultant	3
CUST00591	Singapore	SGD	54	director	26
CUST00592	Indonesia	IDR	30	director	2
CUST00593	Malaysia	MYR	53	employee	30
CUST00594	Singapore	SGD	51	director	24
CUST00595	United States	USD	31	director	9
CUST00596	Indonesia	IDR	55	employee	25
CUST00597	United States	USD	29	employee	2
CUST00598	Malaysia	MYR	60	director	39
CUST00599	Malaysia	MYR	42	entrepreneur	21
CUST00600	Singapore	SGD	32	freelancer	5
CUST00601	Malaysia	MYR	54	director	30
CUST00602	United Kingdom	GBP	33	entrepreneur	6
CUST00603	United Kingdom	GBP	27	consultant	2
CUST00604	United Kingdom	GBP	26	director	5
CUST00605	United Kingdom	GBP	23	employee	1
CUST00606	United Arab Emirates	AED	64	entrepreneur	36
CUST00607	United States	USD	28	freelancer	1
CUST00608	Malaysia	MYR	61	entrepreneur	31
CUST00609	Indonesia	IDR	34	director	13
CUST00610	Singapore	SGD	52	freelancer	25
CUST00611	Singapore	SGD	40	freelancer	10
CUST00612	United Kingdom	GBP	40	freelancer	19
CUST00613	United Kingdom	GBP	42	freelancer	13
CUST00614	Malaysia	MYR	34	consultant	6
CUST00615	United Arab Emirates	AED	48	employee	22
CUST00616	United Kingdom	GBP	53	director	31
CUST00617	Malaysia	MYR	65	consultant	42
CUST00618	United Kingdom	GBP	36	consultant	8
CUST00619	United Arab Emirates	AED	51	director	29
CUST00620	Malaysia	MYR	32	entrepreneur	7
CUST00621	Singapore	SGD	50	consultant	23
CUST00622	United States	USD	48	freelancer	22
CUST00623	United Arab Emirates	AED	51	director	22
CUST00624	Singapore	SGD	49	director	28
CUST00625	United States	USD	57	director	32
CUST00626	United Kingdom	GBP	61	freelancer	31
CUST00627	Malaysia	MYR	46	director	23
CUST00628	United Kingdom	GBP	59	employee	34
CUST00629	Malaysia	MYR	29	employee	8
CUST00630	United Kingdom	GBP	58	director	29
CUST00631	Indonesia	IDR	42	freelancer	13
CUST00632	Singapore	SGD	52	director	28
CUST00633	United Arab Emirates	AED	50	freelancer	22
CUST00634	Indonesia	IDR	35	employee	7
CUST00635	Malaysia	MYR	24	consultant	1
CUST00636	United Kingdom	GBP	48	freelancer	27
CUST00637	Indonesia	IDR	48	freelancer	20
CUST00638	United Arab Emirates	AED	64	director	36
CUST00639	Malaysia	MYR	56	employee	35
CUST00640	United Kingdom	GBP	56	employee	26
CUST00641	Singapore	SGD	37	director	7
CUST00642	Singapore	SGD	48	director	27
CUST00643	Indonesia	IDR	31	entrepreneur	6
CUST00644	Malaysia	MYR	31	director	4
CUST00645	United Arab Emirates	AED	29	employee	4
CUST00646	United Kingdom	GBP	65	freelancer	43
CUST00647	Singapore	SGD	37	freelancer	8
CUST00648	United Arab Emirates	AED	39	entrepreneur	9
CUST00649	United Kingdom	GBP	26	director	1
CUST00650	Malaysia	MYR	65	consultant	39
CUST00651	Malaysia	MYR	23	entrepreneur	1
CUST00652	United States	USD	63	freelancer	41
CUST00653	United States	USD	22	employee	1
CUST00654	United Kingdom	GBP	62	consultant	37
CUST00655	United States	USD	47	director	25
CUST00656	Indonesia	IDR	30	employee	5
CUST00657	United States	USD	65	director	44
CUST00658	Indonesia	IDR	36	freelancer	15
CUST00659	Indonesia	IDR	36	employee	9
CUST00660	Indonesia	IDR	59	employee	33
CUST00661	United Kingdom	GBP	50	employee	28
CUST00662	Indonesia	IDR	50	employee	29
CUST00663	United Kingdom	GBP	48	freelancer	24
CUST00664	Malaysia	MYR	59	director	35
CUST00665	United States	USD	61	director	33
CUST00666	United Kingdom	GBP	31	director	8
CUST00667	United Kingdom	GBP	25	employee	1
CUST00668	United Arab Emirates	AED	60	consultant	34
CUST00669	Indonesia	IDR	53	entrepreneur	29
CUST00670	Singapore	SGD	22	freelancer	1
CUST00671	Singapore	SGD	34	entrepreneur	9
CUST00672	Malaysia	MYR	28	consultant	7
CUST00673	United States	USD	32	employee	3
CUST00674	United Arab Emirates	AED	45	director	19
CUST00675	Indonesia	IDR	62	employee	37
CUST00676	United States	USD	54	freelancer	28
CUST00677	United States	USD	59	freelancer	38
CUST00678	United Kingdom	GBP	32	freelancer	6
CUST00679	United Kingdom	GBP	61	consultant	35
CUST00680	Singapore	SGD	38	employee	16
CUST00681	Malaysia	MYR	24	consultant	1
CUST00682	Indonesia	IDR	41	employee	16
CUST00683	United States	USD	35	freelancer	7
CUST00684	United Arab Emirates	AED	48	director	24
CUST00685	United States	USD	44	director	18
CUST00686	Indonesia	IDR	30	entrepreneur	7
CUST00687	United Arab Emirates	AED	28	director	2
CUST00688	Singapore	SGD	34	employee	12
CUST00689	Singapore	SGD	42	freelancer	15
CUST00690	Singapore	SGD	41	consultant	14
CUST00691	Singapore	SGD	50	freelancer	28
CUST00692	Indonesia	IDR	40	freelancer	12
CUST00693	United Arab Emirates	AED	46	entrepreneur	23
CUST00694	Indonesia	IDR	35	employee	7
CUST00695	Malaysia	MYR	35	freelancer	6
CUST00696	United Arab Emirates	AED	24	freelancer	3
CUST00697	United States	USD	37	employee	9
CUST00698	United States	USD	47	freelancer	24
CUST00699	United States	USD	56	employee	32
CUST00700	Indonesia	IDR	25	employee	1
CUST00701	Malaysia	MYR	34	entrepreneur	12
CUST00702	Malaysia	MYR	42	freelancer	13
CUST00703	Malaysia	MYR	33	entrepreneur	12
CUST00704	Indonesia	IDR	35	director	8
CUST00705	United States	USD	46	freelancer	23
CUST00706	United Kingdom	GBP	50	employee	23
CUST00707	Indonesia	IDR	41	freelancer	17
CUST00708	United States	USD	24	employee	1
CUST00709	United States	USD	43	entrepreneur	17
CUST00710	Indonesia	IDR	26	entrepreneur	1
CUST00711	Singapore	SGD	37	entrepreneur	8
CUST00712	Malaysia	MYR	40	employee	10
CUST00713	United Arab Emirates	AED	49	employee	20
CUST00714	Malaysia	MYR	60	consultant	31
CUST00715	United Arab Emirates	AED	26	employee	1
CUST00716	United Arab Emirates	AED	47	employee	21
CUST00717	Malaysia	MYR	44	freelancer	15
CUST00718	Malaysia	MYR	62	entrepreneur	41
CUST00719	United States	USD	32	employee	11
CUST00720	Malaysia	MYR	41	freelancer	12
CUST00721	Malaysia	MYR	31	entrepreneur	6
CUST00722	United States	USD	48	entrepreneur	19
CUST00723	Indonesia	IDR	50	consultant	20
CUST00724	United States	USD	32	employee	10
CUST00725	Indonesia	IDR	22	employee	1
CUST00726	Malaysia	MYR	53	consultant	25
CUST00727	Indonesia	IDR	44	employee	18
CUST00728	United Kingdom	GBP	65	consultant	37
CUST00729	United States	USD	42	consultant	14
CUST00730	Malaysia	MYR	60	director	36
CUST00731	Malaysia	MYR	65	director	36
CUST00732	United States	USD	27	freelancer	5
CUST00733	United States	USD	29	consultant	6
CUST00734	United States	USD	46	employee	17
CUST00735	Singapore	SGD	29	employee	1
CUST00736	United Arab Emirates	AED	49	director	23
CUST00737	United Arab Emirates	AED	42	entrepreneur	19
CUST00738	Malaysia	MYR	54	freelancer	32
CUST00739	Malaysia	MYR	31	freelancer	7
CUST00740	United Kingdom	GBP	47	employee	21
CUST00741	United Kingdom	GBP	47	consultant	25
CUST00742	United States	USD	52	consultant	27
CUST00743	United Arab Emirates	AED	65	employee	42
CUST00744	United Arab Emirates	AED	37	entrepreneur	16
CUST00745	United States	USD	46	employee	21
CUST00746	United Kingdom	GBP	58	freelancer	28
CUST00747	Indonesia	IDR	42	director	20
CUST00748	United Kingdom	GBP	63	entrepreneur	41
CUST00749	Singapore	SGD	58	employee	34
CUST00750	Singapore	SGD	49	entrepreneur	28
CUST00751	Malaysia	MYR	60	entrepreneur	31
CUST00752	Singapore	SGD	30	director	1
CUST00753	United Arab Emirates	AED	63	entrepreneur	40
CUST00754	United States	USD	63	entrepreneur	39
CUST00755	United Kingdom	GBP	37	employee	15
CUST00756	Singapore	SGD	39	employee	18
CUST00757	United Arab Emirates	AED	28	employee	1
CUST00758	United Arab Emirates	AED	33	freelancer	7
CUST00759	United States	USD	31	consultant	8
CUST00760	Malaysia	MYR	51	entrepreneur	22
CUST00761	Malaysia	MYR	27	employee	5
CUST00762	United Arab Emirates	AED	65	director	36
CUST00763	United States	USD	22	director	1
CUST00764	United Kingdom	GBP	36	freelancer	13
CUST00765	Indonesia	IDR	43	consultant	19
CUST00766	United Kingdom	GBP	47	freelancer	23
CUST00767	United Arab Emirates	AED	43	employee	18
CUST00768	United Kingdom	GBP	31	consultant	4
CUST00769	Malaysia	MYR	49	freelancer	26
CUST00770	Indonesia	IDR	44	consultant	20
CUST00771	United States	USD	39	entrepreneur	17
CUST00772	United States	USD	46	director	23
CUST00773	Malaysia	MYR	49	freelancer	19
CUST00774	Malaysia	MYR	29	employee	4
CUST00775	Singapore	SGD	36	freelancer	14
CUST00776	United Arab Emirates	AED	48	freelancer	19
CUST00777	Malaysia	MYR	45	entrepreneur	20
CUST00778	Malaysia	MYR	35	freelancer	10
CUST00779	United States	USD	22	director	1
CUST00780	United Arab Emirates	AED	27	entrepreneur	5
CUST00781	United Kingdom	GBP	61	employee	35
CUST00782	Malaysia	MYR	57	freelancer	31
CUST00783	United States	USD	30	entrepreneur	5
CUST00784	Indonesia	IDR	32	entrepreneur	4
CUST00785	United Kingdom	GBP	22	consultant	1
CUST00786	United Kingdom	GBP	37	employee	12
CUST00787	United States	USD	44	freelancer	14
CUST00788	Indonesia	IDR	44	employee	20
CUST00789	United Arab Emirates	AED	36	freelancer	10
CUST00790	Singapore	SGD	51	entrepreneur	28
CUST00791	Singapore	SGD	47	freelancer	17
CUST00792	United Arab Emirates	AED	46	consultant	25
CUST00793	Indonesia	IDR	56	entrepreneur	30
CUST00794	Indonesia	IDR	56	employee	31
CUST00795	Indonesia	IDR	36	freelancer	9
CUST00796	Singapore	SGD	28	employee	3
CUST00797	United Kingdom	GBP	33	consultant	6
CUST00798	Malaysia	MYR	26	freelancer	5
CUST00799	United States	USD	39	consultant	16
CUST00800	United Arab Emirates	AED	60	freelancer	34
CUST00801	United States	USD	48	consultant	19
CUST00802	United Arab Emirates	AED	30	consultant	8
CUST00803	United Arab Emirates	AED	37	entrepreneur	13
CUST00804	United States	USD	28	entrepreneur	1
CUST00805	United Arab Emirates	AED	31	freelancer	8
CUST00806	United States	USD	22	director	1
CUST00807	United States	USD	51	entrepreneur	22
CUST00808	United Kingdom	GBP	46	director	23
CUST00809	United States	USD	47	consultant	20
CUST00810	Malaysia	MYR	23	employee	1
CUST00811	Indonesia	IDR	37	employee	12
CUST00812	Indonesia	IDR	44	consultant	19
CUST00813	United States	USD	54	freelancer	32
CUST00814	United Arab Emirates	AED	27	director	5
CUST00815	Malaysia	MYR	61	director	34
CUST00816	United Arab Emirates	AED	28	freelancer	7
CUST00817	Malaysia	MYR	32	freelancer	10
CUST00818	United Arab Emirates	AED	63	freelancer	40
CUST00819	United Kingdom	GBP	42	employee	16
CUST00820	Indonesia	IDR	40	employee	13
CUST00821	United Arab Emirates	AED	28	freelancer	6
CUST00822	United Kingdom	GBP	53	freelancer	29
CUST00823	United Kingdom	GBP	46	employee	25
CUST00824	Indonesia	IDR	31	freelancer	9
CUST00825	Indonesia	IDR	49	freelancer	23
CUST00826	United Kingdom	GBP	46	director	25
CUST00827	United Arab Emirates	AED	31	employee	3
CUST00828	United Kingdom	GBP	28	entrepreneur	7
CUST00829	Singapore	SGD	65	director	35
CUST00830	Malaysia	MYR	44	freelancer	15
CUST00831	Singapore	SGD	56	director	29
CUST00832	Indonesia	IDR	61	director	34
CUST00833	United Arab Emirates	AED	57	freelancer	30
CUST00834	Singapore	SGD	54	entrepreneur	29
CUST00835	Singapore	SGD	45	freelancer	16
CUST00836	United Arab Emirates	AED	25	freelancer	1
CUST00837	United States	USD	30	consultant	1
CUST00838	Indonesia	IDR	49	director	28
CUST00839	Singapore	SGD	51	entrepreneur	25
CUST00840	Singapore	SGD	62	employee	41
CUST00841	Singapore	SGD	27	employee	5
CUST00842	Indonesia	IDR	35	consultant	8
CUST00843	Indonesia	IDR	29	consultant	3
CUST00844	Indonesia	IDR	55	employee	26
CUST00845	United States	USD	30	consultant	5
CUST00846	United Arab Emirates	AED	34	director	9
CUST00847	United Arab Emirates	AED	49	freelancer	21
CUST00848	United States	USD	26	consultant	1
CUST00849	Malaysia	MYR	49	entrepreneur	26
CUST00850	Indonesia	IDR	43	employee	19
CUST00851	Singapore	SGD	28	freelancer	1
CUST00852	Indonesia	IDR	53	entrepreneur	25
CUST00853	Malaysia	MYR	23	employee	1
CUST00854	Indonesia	IDR	48	freelancer	23
CUST00855	United Arab Emirates	AED	53	employee	31
CUST00856	United States	USD	49	employee	25
CUST00857	Malaysia	MYR	26	entrepreneur	1
CUST00858	Singapore	SGD	59	director	32
CUST00859	United States	USD	52	entrepreneur	28
CUST00860	Indonesia	IDR	64	entrepreneur	40
CUST00861	United Kingdom	GBP	28	director	5
CUST00862	United Arab Emirates	AED	32	employee	7
CUST00863	Indonesia	IDR	52	consultant	23
CUST00864	United Arab Emirates	AED	54	freelancer	28
CUST00865	Singapore	SGD	60	employee	35
CUST00866	Indonesia	IDR	58	freelancer	33
CUST00867	United States	USD	39	director	11
CUST00868	United States	USD	61	employee	33
CUST00869	Singapore	SGD	22	entrepreneur	1
CUST00870	United Arab Emirates	AED	37	entrepreneur	9
CUST00871	United States	USD	43	consultant	15
CUST00872	Malaysia	MYR	43	director	14
CUST00873	United States	USD	31	consultant	5
CUST00874	United Arab Emirates	AED	62	director	40
CUST00875	United Arab Emirates	AED	59	consultant	32
CUST00876	Malaysia	MYR	40	director	18
CUST00877	Indonesia	IDR	40	employee	19
CUST00878	United States	USD	22	director	1
CUST00879	United States	USD	34	consultant	7
CUST00880	Indonesia	IDR	38	director	13
CUST00881	United Kingdom	GBP	34	director	9
CUST00882	United Kingdom	GBP	50	freelancer	24
CUST00883	United Kingdom	GBP	23	director	1
CUST00884	United Kingdom	GBP	40	freelancer	19
CUST00885	United States	USD	28	consultant	2
CUST00886	United States	USD	25	entrepreneur	1
CUST00887	United Kingdom	GBP	34	entrepreneur	12
CUST00888	United Arab Emirates	AED	47	director	26
CUST00889	Singapore	SGD	62	director	41
CUST00890	United States	USD	28	employee	1
CUST00891	Malaysia	MYR	51	director	29
CUST00892	United Arab Emirates	AED	51	entrepreneur	26
CUST00893	United States	USD	31	consultant	5
CUST00894	United States	USD	52	director	25
CUST00895	United Kingdom	GBP	44	entrepreneur	14
CUST00896	United States	USD	52	freelancer	26
CUST00897	Indonesia	IDR	24	employee	2
CUST00898	United Kingdom	GBP	57	entrepreneur	33
CUST00899	Singapore	SGD	27	employee	1
CUST00900	Indonesia	IDR	43	freelancer	20
CUST00901	Singapore	SGD	26	director	1
CUST00902	Indonesia	IDR	60	freelancer	31
CUST00903	Indonesia	IDR	56	employee	26
CUST00904	Indonesia	IDR	43	consultant	16
CUST00905	United Kingdom	GBP	61	entrepreneur	40
CUST00906	United Kingdom	GBP	36	employee	10
CUST00907	Indonesia	IDR	46	freelancer	19
CUST00908	United Arab Emirates	AED	25	director	1
CUST00909	Indonesia	IDR	25	entrepreneur	2
CUST00910	United States	USD	29	consultant	7
CUST00911	United Kingdom	GBP	40	employee	16
CUST00912	United Kingdom	GBP	53	entrepreneur	28
CUST00913	Singapore	SGD	24	freelancer	1
CUST00914	Malaysia	MYR	27	freelancer	6
CUST00915	Singapore	SGD	64	employee	37
CUST00916	Indonesia	IDR	43	freelancer	13
CUST00917	United Kingdom	GBP	55	entrepreneur	30
CUST00918	Singapore	SGD	56	consultant	31
CUST00919	United States	USD	42	employee	17
CUST00920	Indonesia	IDR	59	freelancer	37
CUST00921	United Arab Emirates	AED	30	employee	6
CUST00922	United Kingdom	GBP	36	director	15
CUST00923	United Kingdom	GBP	50	freelancer	28
CUST00924	Malaysia	MYR	60	director	34
CUST00925	Singapore	SGD	59	director	38
CUST00926	Indonesia	IDR	64	director	41
CUST00927	United Kingdom	GBP	52	consultant	23
CUST00928	Malaysia	MYR	36	freelancer	8
CUST00929	Indonesia	IDR	45	director	17
CUST00930	United Kingdom	GBP	38	entrepreneur	13
CUST00931	Indonesia	IDR	32	employee	10
CUST00932	Singapore	SGD	54	director	25
CUST00933	Malaysia	MYR	59	freelancer	29
CUST00934	United Arab Emirates	AED	30	director	7
CUST00935	Singapore	SGD	54	consultant	24
CUST00936	Malaysia	MYR	33	director	10
CUST00937	Indonesia	IDR	40	director	15
CUST00938	Singapore	SGD	57	director	28
CUST00939	Indonesia	IDR	45	entrepreneur	21
CUST00940	Indonesia	IDR	50	employee	23
CUST00941	Malaysia	MYR	32	consultant	3
CUST00942	United Kingdom	GBP	42	employee	18
CUST00943	Singapore	SGD	65	freelancer	41
CUST00944	Indonesia	IDR	55	entrepreneur	31
CUST00945	United States	USD	59	consultant	35
CUST00946	United States	USD	47	consultant	17
CUST00947	United Arab Emirates	AED	29	entrepreneur	6
CUST00948	Singapore	SGD	23	consultant	1
CUST00949	United Arab Emirates	AED	47	consultant	22
CUST00950	Singapore	SGD	56	employee	32
CUST00951	Malaysia	MYR	44	entrepreneur	15
CUST00952	Singapore	SGD	45	employee	19
CUST00953	Malaysia	MYR	41	employee	20
CUST00954	Malaysia	MYR	27	director	5
CUST00955	Singapore	SGD	60	consultant	35
CUST00956	United States	USD	58	consultant	30
CUST00957	United Arab Emirates	AED	23	employee	1
CUST00958	United Arab Emirates	AED	36	entrepreneur	8
CUST00959	United Arab Emirates	AED	59	entrepreneur	35
CUST00960	United States	USD	43	consultant	20
CUST00961	United States	USD	37	employee	11
CUST00962	Indonesia	IDR	32	employee	3
CUST00963	United Kingdom	GBP	53	consultant	30
CUST00964	United Kingdom	GBP	63	consultant	40
CUST00965	Malaysia	MYR	30	entrepreneur	7
CUST00966	Indonesia	IDR	41	employee	17
CUST00967	United Kingdom	GBP	36	director	10
CUST00968	Malaysia	MYR	57	entrepreneur	28
CUST00969	Singapore	SGD	55	director	25
CUST00970	Singapore	SGD	35	consultant	13
CUST00971	United Arab Emirates	AED	49	freelancer	21
CUST00972	United Kingdom	GBP	42	consultant	13
CUST00973	United States	USD	38	freelancer	16
CUST00974	Singapore	SGD	46	director	20
CUST00975	Indonesia	IDR	45	freelancer	20
CUST00976	Indonesia	IDR	58	director	37
CUST00977	United States	USD	31	employee	8
CUST00978	Singapore	SGD	63	director	33
CUST00979	United States	USD	64	employee	43
CUST00980	Singapore	SGD	54	consultant	27
CUST00981	United States	USD	27	entrepreneur	1
CUST00982	Singapore	SGD	62	entrepreneur	36
CUST00983	Malaysia	MYR	33	consultant	8
CUST00984	United Arab Emirates	AED	38	director	16
CUST00985	United Kingdom	GBP	46	consultant	23
CUST00986	United States	USD	39	employee	17
CUST00987	United Kingdom	GBP	42	consultant	16
CUST00988	Malaysia	MYR	63	entrepreneur	41
CUST00989	United Kingdom	GBP	49	consultant	22
CUST00990	Singapore	SGD	54	director	32
CUST00991	Malaysia	MYR	60	consultant	31
CUST00992	Singapore	SGD	44	entrepreneur	16
CUST00993	Singapore	SGD	49	employee	27
CUST00994	United Kingdom	GBP	65	entrepreneur	38
CUST00995	Singapore	SGD	47	employee	21
CUST00996	United Kingdom	GBP	33	director	9
CUST00997	Singapore	SGD	24	freelancer	1
CUST00998	United Arab Emirates	AED	24	freelancer	1
CUST00999	United Arab Emirates	AED	22	employee	1
\.


--
-- TOC entry 5039 (class 0 OID 16433)
-- Dependencies: 222
-- Data for Name: funding_source; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.funding_source (source_of_fund, customer_id) FROM stdin;
salary	CUST00000
grant	CUST00001
inheritance	CUST00002
gift	CUST00003
gift	CUST00004
business_income	CUST00005
salary	CUST00006
business_income	CUST00007
business_income	CUST00008
salary	CUST00009
business_income	CUST00010
savings	CUST00011
gift	CUST00012
grant	CUST00013
savings	CUST00014
inheritance	CUST00015
gift	CUST00016
business_income	CUST00017
business_income	CUST00018
gift	CUST00019
savings	CUST00020
savings	CUST00021
gift	CUST00022
business_income	CUST00023
savings	CUST00024
savings	CUST00025
inheritance	CUST00026
inheritance	CUST00027
savings	CUST00028
gift	CUST00029
business_income	CUST00030
salary	CUST00031
savings	CUST00032
salary	CUST00033
grant	CUST00034
inheritance	CUST00035
business_income	CUST00036
savings	CUST00037
grant	CUST00038
gift	CUST00039
savings	CUST00040
business_income	CUST00041
gift	CUST00042
business_income	CUST00043
savings	CUST00044
inheritance	CUST00045
savings	CUST00046
business_income	CUST00047
business_income	CUST00048
inheritance	CUST00049
gift	CUST00050
gift	CUST00051
gift	CUST00052
savings	CUST00053
gift	CUST00054
inheritance	CUST00055
savings	CUST00056
salary	CUST00057
salary	CUST00058
salary	CUST00059
gift	CUST00060
salary	CUST00061
grant	CUST00062
inheritance	CUST00063
salary	CUST00064
business_income	CUST00065
grant	CUST00066
inheritance	CUST00067
salary	CUST00068
inheritance	CUST00069
inheritance	CUST00070
business_income	CUST00071
grant	CUST00072
grant	CUST00073
salary	CUST00074
inheritance	CUST00075
salary	CUST00076
grant	CUST00077
grant	CUST00078
grant	CUST00079
inheritance	CUST00080
grant	CUST00081
business_income	CUST00082
gift	CUST00083
inheritance	CUST00084
business_income	CUST00085
grant	CUST00086
inheritance	CUST00087
gift	CUST00088
gift	CUST00089
gift	CUST00090
business_income	CUST00091
inheritance	CUST00092
inheritance	CUST00093
gift	CUST00094
savings	CUST00095
grant	CUST00096
inheritance	CUST00097
savings	CUST00098
savings	CUST00099
gift	CUST00100
gift	CUST00101
inheritance	CUST00102
gift	CUST00103
salary	CUST00104
gift	CUST00105
gift	CUST00106
savings	CUST00107
grant	CUST00108
grant	CUST00109
grant	CUST00110
inheritance	CUST00111
salary	CUST00112
savings	CUST00113
gift	CUST00114
salary	CUST00115
inheritance	CUST00116
grant	CUST00117
inheritance	CUST00118
salary	CUST00119
business_income	CUST00120
salary	CUST00121
salary	CUST00122
salary	CUST00123
salary	CUST00124
salary	CUST00125
inheritance	CUST00126
savings	CUST00127
grant	CUST00128
business_income	CUST00129
salary	CUST00130
gift	CUST00131
inheritance	CUST00132
inheritance	CUST00133
business_income	CUST00134
grant	CUST00135
salary	CUST00136
inheritance	CUST00137
grant	CUST00138
business_income	CUST00139
gift	CUST00140
savings	CUST00141
grant	CUST00142
grant	CUST00143
grant	CUST00144
grant	CUST00145
inheritance	CUST00146
business_income	CUST00147
business_income	CUST00148
inheritance	CUST00149
inheritance	CUST00150
gift	CUST00151
savings	CUST00152
savings	CUST00153
savings	CUST00154
inheritance	CUST00155
grant	CUST00156
grant	CUST00157
savings	CUST00158
grant	CUST00159
gift	CUST00160
savings	CUST00161
business_income	CUST00162
gift	CUST00163
business_income	CUST00164
inheritance	CUST00165
grant	CUST00166
savings	CUST00167
inheritance	CUST00168
grant	CUST00169
savings	CUST00170
salary	CUST00171
savings	CUST00172
gift	CUST00173
gift	CUST00174
gift	CUST00175
salary	CUST00176
grant	CUST00177
salary	CUST00178
savings	CUST00179
grant	CUST00180
inheritance	CUST00181
business_income	CUST00182
gift	CUST00183
salary	CUST00184
inheritance	CUST00185
inheritance	CUST00186
gift	CUST00187
gift	CUST00188
salary	CUST00189
gift	CUST00190
inheritance	CUST00191
gift	CUST00192
grant	CUST00193
grant	CUST00194
inheritance	CUST00195
inheritance	CUST00196
gift	CUST00197
inheritance	CUST00198
salary	CUST00199
inheritance	CUST00200
salary	CUST00201
business_income	CUST00202
inheritance	CUST00203
savings	CUST00204
business_income	CUST00205
savings	CUST00206
business_income	CUST00207
grant	CUST00208
salary	CUST00209
savings	CUST00210
inheritance	CUST00211
grant	CUST00212
grant	CUST00213
grant	CUST00214
savings	CUST00215
savings	CUST00216
business_income	CUST00217
gift	CUST00218
gift	CUST00219
salary	CUST00220
gift	CUST00221
grant	CUST00222
grant	CUST00223
business_income	CUST00224
inheritance	CUST00225
gift	CUST00226
grant	CUST00227
inheritance	CUST00228
business_income	CUST00229
inheritance	CUST00230
gift	CUST00231
gift	CUST00232
business_income	CUST00233
gift	CUST00234
salary	CUST00235
business_income	CUST00236
savings	CUST00237
salary	CUST00238
salary	CUST00239
salary	CUST00240
business_income	CUST00241
inheritance	CUST00242
business_income	CUST00243
business_income	CUST00244
grant	CUST00245
savings	CUST00246
business_income	CUST00247
salary	CUST00248
salary	CUST00249
savings	CUST00250
business_income	CUST00251
gift	CUST00252
grant	CUST00253
savings	CUST00254
gift	CUST00255
gift	CUST00256
gift	CUST00257
savings	CUST00258
inheritance	CUST00259
salary	CUST00260
business_income	CUST00261
gift	CUST00262
savings	CUST00263
savings	CUST00264
gift	CUST00265
grant	CUST00266
salary	CUST00267
salary	CUST00268
gift	CUST00269
business_income	CUST00270
grant	CUST00271
inheritance	CUST00272
grant	CUST00273
gift	CUST00274
inheritance	CUST00275
savings	CUST00276
gift	CUST00277
grant	CUST00278
salary	CUST00279
inheritance	CUST00280
savings	CUST00281
inheritance	CUST00282
gift	CUST00283
salary	CUST00284
salary	CUST00285
business_income	CUST00286
business_income	CUST00287
salary	CUST00288
savings	CUST00289
inheritance	CUST00290
savings	CUST00291
savings	CUST00292
savings	CUST00293
business_income	CUST00294
savings	CUST00295
business_income	CUST00296
salary	CUST00297
gift	CUST00298
savings	CUST00299
salary	CUST00300
gift	CUST00301
inheritance	CUST00302
gift	CUST00303
inheritance	CUST00304
business_income	CUST00305
salary	CUST00306
grant	CUST00307
salary	CUST00308
salary	CUST00309
business_income	CUST00310
savings	CUST00311
grant	CUST00312
grant	CUST00313
inheritance	CUST00314
savings	CUST00315
salary	CUST00316
inheritance	CUST00317
business_income	CUST00318
salary	CUST00319
gift	CUST00320
gift	CUST00321
grant	CUST00322
grant	CUST00323
savings	CUST00324
salary	CUST00325
savings	CUST00326
gift	CUST00327
salary	CUST00328
inheritance	CUST00329
savings	CUST00330
savings	CUST00331
inheritance	CUST00332
salary	CUST00333
grant	CUST00334
inheritance	CUST00335
gift	CUST00336
savings	CUST00337
grant	CUST00338
grant	CUST00339
grant	CUST00340
savings	CUST00341
grant	CUST00342
business_income	CUST00343
grant	CUST00344
business_income	CUST00345
salary	CUST00346
inheritance	CUST00347
business_income	CUST00348
inheritance	CUST00349
inheritance	CUST00350
inheritance	CUST00351
business_income	CUST00352
grant	CUST00353
business_income	CUST00354
business_income	CUST00355
savings	CUST00356
business_income	CUST00357
business_income	CUST00358
gift	CUST00359
salary	CUST00360
inheritance	CUST00361
inheritance	CUST00362
grant	CUST00363
grant	CUST00364
grant	CUST00365
salary	CUST00366
gift	CUST00367
business_income	CUST00368
savings	CUST00369
gift	CUST00370
salary	CUST00371
business_income	CUST00372
savings	CUST00373
gift	CUST00374
savings	CUST00375
salary	CUST00376
savings	CUST00377
business_income	CUST00378
salary	CUST00379
savings	CUST00380
inheritance	CUST00381
grant	CUST00382
business_income	CUST00383
savings	CUST00384
business_income	CUST00385
salary	CUST00386
business_income	CUST00387
grant	CUST00388
salary	CUST00389
gift	CUST00390
gift	CUST00391
grant	CUST00392
savings	CUST00393
business_income	CUST00394
gift	CUST00395
salary	CUST00396
grant	CUST00397
salary	CUST00398
salary	CUST00399
grant	CUST00400
inheritance	CUST00401
grant	CUST00402
savings	CUST00403
inheritance	CUST00404
inheritance	CUST00405
business_income	CUST00406
inheritance	CUST00407
grant	CUST00408
business_income	CUST00409
business_income	CUST00410
grant	CUST00411
salary	CUST00412
grant	CUST00413
inheritance	CUST00414
salary	CUST00415
business_income	CUST00416
business_income	CUST00417
salary	CUST00418
grant	CUST00419
inheritance	CUST00420
gift	CUST00421
inheritance	CUST00422
inheritance	CUST00423
grant	CUST00424
salary	CUST00425
business_income	CUST00426
inheritance	CUST00427
inheritance	CUST00428
savings	CUST00429
business_income	CUST00430
grant	CUST00431
business_income	CUST00432
business_income	CUST00433
business_income	CUST00434
salary	CUST00435
gift	CUST00436
savings	CUST00437
business_income	CUST00438
gift	CUST00439
grant	CUST00440
savings	CUST00441
business_income	CUST00442
savings	CUST00443
savings	CUST00444
inheritance	CUST00445
business_income	CUST00446
gift	CUST00447
grant	CUST00448
savings	CUST00449
salary	CUST00450
grant	CUST00451
inheritance	CUST00452
grant	CUST00453
salary	CUST00454
gift	CUST00455
inheritance	CUST00456
business_income	CUST00457
salary	CUST00458
grant	CUST00459
inheritance	CUST00460
inheritance	CUST00461
grant	CUST00462
inheritance	CUST00463
business_income	CUST00464
inheritance	CUST00465
grant	CUST00466
inheritance	CUST00467
salary	CUST00468
savings	CUST00469
inheritance	CUST00470
inheritance	CUST00471
inheritance	CUST00472
grant	CUST00473
salary	CUST00474
grant	CUST00475
savings	CUST00476
gift	CUST00477
savings	CUST00478
inheritance	CUST00479
salary	CUST00480
inheritance	CUST00481
savings	CUST00482
business_income	CUST00483
savings	CUST00484
inheritance	CUST00485
savings	CUST00486
salary	CUST00487
savings	CUST00488
inheritance	CUST00489
salary	CUST00490
business_income	CUST00491
salary	CUST00492
gift	CUST00493
savings	CUST00494
gift	CUST00495
inheritance	CUST00496
grant	CUST00497
grant	CUST00498
grant	CUST00499
salary	CUST00500
inheritance	CUST00501
business_income	CUST00502
salary	CUST00503
business_income	CUST00504
salary	CUST00505
grant	CUST00506
gift	CUST00507
savings	CUST00508
business_income	CUST00509
inheritance	CUST00510
salary	CUST00511
savings	CUST00512
grant	CUST00513
gift	CUST00514
grant	CUST00515
savings	CUST00516
salary	CUST00517
salary	CUST00518
inheritance	CUST00519
savings	CUST00520
gift	CUST00521
gift	CUST00522
business_income	CUST00523
salary	CUST00524
gift	CUST00525
inheritance	CUST00526
savings	CUST00527
business_income	CUST00528
inheritance	CUST00529
savings	CUST00530
business_income	CUST00531
savings	CUST00532
gift	CUST00533
gift	CUST00534
inheritance	CUST00535
inheritance	CUST00536
grant	CUST00537
salary	CUST00538
salary	CUST00539
inheritance	CUST00540
business_income	CUST00541
savings	CUST00542
savings	CUST00543
gift	CUST00544
business_income	CUST00545
gift	CUST00546
inheritance	CUST00547
salary	CUST00548
grant	CUST00549
salary	CUST00550
salary	CUST00551
salary	CUST00552
gift	CUST00553
gift	CUST00554
salary	CUST00555
salary	CUST00556
business_income	CUST00557
salary	CUST00558
business_income	CUST00559
savings	CUST00560
salary	CUST00561
gift	CUST00562
salary	CUST00563
gift	CUST00564
salary	CUST00565
grant	CUST00566
savings	CUST00567
inheritance	CUST00568
salary	CUST00569
grant	CUST00570
inheritance	CUST00571
savings	CUST00572
salary	CUST00573
grant	CUST00574
salary	CUST00575
inheritance	CUST00576
business_income	CUST00577
grant	CUST00578
business_income	CUST00579
salary	CUST00580
business_income	CUST00581
grant	CUST00582
business_income	CUST00583
grant	CUST00584
inheritance	CUST00585
inheritance	CUST00586
gift	CUST00587
gift	CUST00588
inheritance	CUST00589
gift	CUST00590
grant	CUST00591
inheritance	CUST00592
business_income	CUST00593
inheritance	CUST00594
grant	CUST00595
grant	CUST00596
business_income	CUST00597
grant	CUST00598
inheritance	CUST00599
gift	CUST00600
savings	CUST00601
gift	CUST00602
business_income	CUST00603
gift	CUST00604
salary	CUST00605
business_income	CUST00606
business_income	CUST00607
salary	CUST00608
gift	CUST00609
gift	CUST00610
grant	CUST00611
savings	CUST00612
salary	CUST00613
grant	CUST00614
inheritance	CUST00615
business_income	CUST00616
salary	CUST00617
savings	CUST00618
salary	CUST00619
salary	CUST00620
gift	CUST00621
savings	CUST00622
salary	CUST00623
salary	CUST00624
inheritance	CUST00625
grant	CUST00626
savings	CUST00627
savings	CUST00628
grant	CUST00629
grant	CUST00630
business_income	CUST00631
savings	CUST00632
business_income	CUST00633
inheritance	CUST00634
inheritance	CUST00635
grant	CUST00636
gift	CUST00637
savings	CUST00638
business_income	CUST00639
savings	CUST00640
gift	CUST00641
salary	CUST00642
inheritance	CUST00643
savings	CUST00644
gift	CUST00645
gift	CUST00646
salary	CUST00647
grant	CUST00648
grant	CUST00649
grant	CUST00650
salary	CUST00651
inheritance	CUST00652
business_income	CUST00653
salary	CUST00654
business_income	CUST00655
grant	CUST00656
grant	CUST00657
salary	CUST00658
inheritance	CUST00659
inheritance	CUST00660
salary	CUST00661
grant	CUST00662
gift	CUST00663
business_income	CUST00664
inheritance	CUST00665
salary	CUST00666
business_income	CUST00667
gift	CUST00668
business_income	CUST00669
inheritance	CUST00670
savings	CUST00671
business_income	CUST00672
salary	CUST00673
savings	CUST00674
business_income	CUST00675
savings	CUST00676
business_income	CUST00677
inheritance	CUST00678
gift	CUST00679
grant	CUST00680
grant	CUST00681
savings	CUST00682
grant	CUST00683
business_income	CUST00684
grant	CUST00685
gift	CUST00686
salary	CUST00687
savings	CUST00688
gift	CUST00689
savings	CUST00690
savings	CUST00691
business_income	CUST00692
salary	CUST00693
inheritance	CUST00694
grant	CUST00695
grant	CUST00696
business_income	CUST00697
business_income	CUST00698
grant	CUST00699
business_income	CUST00700
grant	CUST00701
gift	CUST00702
gift	CUST00703
salary	CUST00704
grant	CUST00705
grant	CUST00706
inheritance	CUST00707
inheritance	CUST00708
grant	CUST00709
business_income	CUST00710
grant	CUST00711
gift	CUST00712
gift	CUST00713
gift	CUST00714
business_income	CUST00715
salary	CUST00716
grant	CUST00717
grant	CUST00718
savings	CUST00719
grant	CUST00720
salary	CUST00721
inheritance	CUST00722
business_income	CUST00723
inheritance	CUST00724
salary	CUST00725
inheritance	CUST00726
business_income	CUST00727
grant	CUST00728
salary	CUST00729
grant	CUST00730
gift	CUST00731
inheritance	CUST00732
grant	CUST00733
inheritance	CUST00734
savings	CUST00735
savings	CUST00736
gift	CUST00737
business_income	CUST00738
business_income	CUST00739
gift	CUST00740
grant	CUST00741
salary	CUST00742
salary	CUST00743
savings	CUST00744
salary	CUST00745
business_income	CUST00746
savings	CUST00747
savings	CUST00748
salary	CUST00749
gift	CUST00750
salary	CUST00751
grant	CUST00752
grant	CUST00753
gift	CUST00754
inheritance	CUST00755
salary	CUST00756
savings	CUST00757
gift	CUST00758
grant	CUST00759
grant	CUST00760
salary	CUST00761
grant	CUST00762
grant	CUST00763
salary	CUST00764
gift	CUST00765
salary	CUST00766
salary	CUST00767
grant	CUST00768
grant	CUST00769
gift	CUST00770
grant	CUST00771
inheritance	CUST00772
salary	CUST00773
grant	CUST00774
business_income	CUST00775
gift	CUST00776
salary	CUST00777
inheritance	CUST00778
inheritance	CUST00779
grant	CUST00780
business_income	CUST00781
salary	CUST00782
grant	CUST00783
inheritance	CUST00784
business_income	CUST00785
inheritance	CUST00786
business_income	CUST00787
savings	CUST00788
business_income	CUST00789
grant	CUST00790
gift	CUST00791
salary	CUST00792
gift	CUST00793
inheritance	CUST00794
grant	CUST00795
salary	CUST00796
inheritance	CUST00797
gift	CUST00798
gift	CUST00799
savings	CUST00800
business_income	CUST00801
business_income	CUST00802
grant	CUST00803
inheritance	CUST00804
inheritance	CUST00805
business_income	CUST00806
grant	CUST00807
business_income	CUST00808
business_income	CUST00809
savings	CUST00810
gift	CUST00811
grant	CUST00812
gift	CUST00813
business_income	CUST00814
savings	CUST00815
salary	CUST00816
business_income	CUST00817
inheritance	CUST00818
grant	CUST00819
gift	CUST00820
business_income	CUST00821
business_income	CUST00822
business_income	CUST00823
gift	CUST00824
gift	CUST00825
grant	CUST00826
grant	CUST00827
savings	CUST00828
inheritance	CUST00829
business_income	CUST00830
grant	CUST00831
gift	CUST00832
inheritance	CUST00833
gift	CUST00834
savings	CUST00835
business_income	CUST00836
grant	CUST00837
grant	CUST00838
savings	CUST00839
savings	CUST00840
gift	CUST00841
business_income	CUST00842
savings	CUST00843
business_income	CUST00844
savings	CUST00845
salary	CUST00846
savings	CUST00847
gift	CUST00848
inheritance	CUST00849
savings	CUST00850
grant	CUST00851
gift	CUST00852
gift	CUST00853
inheritance	CUST00854
salary	CUST00855
savings	CUST00856
business_income	CUST00857
business_income	CUST00858
business_income	CUST00859
inheritance	CUST00860
savings	CUST00861
grant	CUST00862
salary	CUST00863
grant	CUST00864
grant	CUST00865
savings	CUST00866
grant	CUST00867
grant	CUST00868
salary	CUST00869
inheritance	CUST00870
gift	CUST00871
grant	CUST00872
gift	CUST00873
gift	CUST00874
grant	CUST00875
business_income	CUST00876
salary	CUST00877
savings	CUST00878
gift	CUST00879
inheritance	CUST00880
gift	CUST00881
gift	CUST00882
savings	CUST00883
savings	CUST00884
grant	CUST00885
grant	CUST00886
business_income	CUST00887
business_income	CUST00888
grant	CUST00889
grant	CUST00890
grant	CUST00891
savings	CUST00892
business_income	CUST00893
savings	CUST00894
grant	CUST00895
business_income	CUST00896
inheritance	CUST00897
business_income	CUST00898
business_income	CUST00899
savings	CUST00900
business_income	CUST00901
inheritance	CUST00902
savings	CUST00903
savings	CUST00904
gift	CUST00905
salary	CUST00906
salary	CUST00907
grant	CUST00908
savings	CUST00909
grant	CUST00910
savings	CUST00911
savings	CUST00912
salary	CUST00913
gift	CUST00914
inheritance	CUST00915
savings	CUST00916
business_income	CUST00917
inheritance	CUST00918
gift	CUST00919
salary	CUST00920
grant	CUST00921
inheritance	CUST00922
inheritance	CUST00923
inheritance	CUST00924
grant	CUST00925
business_income	CUST00926
savings	CUST00927
gift	CUST00928
business_income	CUST00929
savings	CUST00930
business_income	CUST00931
grant	CUST00932
inheritance	CUST00933
salary	CUST00934
gift	CUST00935
inheritance	CUST00936
inheritance	CUST00937
savings	CUST00938
savings	CUST00939
grant	CUST00940
salary	CUST00941
grant	CUST00942
grant	CUST00943
business_income	CUST00944
business_income	CUST00945
salary	CUST00946
gift	CUST00947
inheritance	CUST00948
salary	CUST00949
savings	CUST00950
savings	CUST00951
salary	CUST00952
grant	CUST00953
grant	CUST00954
inheritance	CUST00955
savings	CUST00956
grant	CUST00957
inheritance	CUST00958
savings	CUST00959
salary	CUST00960
grant	CUST00961
salary	CUST00962
gift	CUST00963
grant	CUST00964
gift	CUST00965
salary	CUST00966
gift	CUST00967
salary	CUST00968
savings	CUST00969
salary	CUST00970
gift	CUST00971
grant	CUST00972
inheritance	CUST00973
inheritance	CUST00974
inheritance	CUST00975
gift	CUST00976
grant	CUST00977
business_income	CUST00978
inheritance	CUST00979
savings	CUST00980
salary	CUST00981
grant	CUST00982
business_income	CUST00983
grant	CUST00984
grant	CUST00985
inheritance	CUST00986
salary	CUST00987
savings	CUST00988
savings	CUST00989
gift	CUST00990
business_income	CUST00991
business_income	CUST00992
inheritance	CUST00993
grant	CUST00994
savings	CUST00995
savings	CUST00996
business_income	CUST00997
salary	CUST00998
gift	CUST00999
\.


--
-- TOC entry 5038 (class 0 OID 16423)
-- Dependencies: 221
-- Data for Name: income_cust; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.income_cust (annual_income_local, annual_income_usd, monthly_savings_rate, estimated_savings_local, estimated_savings_usd, inheritance_flag, inheritance_amount_local, net_worth_local, net_worth_usd, customer_id) FROM stdin;
224393	224393.0	0.12	107708	107708.0	0	0	2127245	2127245.0	CUST00000
187815	138983.1	0.06	123957	91728.18	0	0	1626477	1203592.98	CUST00001
790682427	51394.36	0.12	664173238	43171.26	0	0	6989632654	454326.12	CUST00002
52780	11083.8	0.23	424879	89224.59	0	0	1427699	299816.79	CUST00003
681455910	44294.63	0.3	204436773	13288.39	0	0	6337539963	411940.1	CUST00004
213977	158342.98	0.28	2336628	1729104.72	0	0	3192536	2362476.64	CUST00005
209467	209467.0	0.13	871382	871382.0	0	0	1499783	1499783.0	CUST00006
196819	249960.13	0.17	568806	722383.62	0	0	3717910	4721745.7	CUST00007
159372	117935.28	0.07	55780	41277.2	0	0	533896	395083.04	CUST00008
340049	91813.23	0.27	2754396	743686.92	0	0	3434494	927313.38	CUST00009
219292	162276.08	0.27	1539429	1139177.46	0	0	3732349	2761938.26	CUST00010
171394	126831.56	0.29	994085	735622.9	0	0	4079177	3018590.98	CUST00011
156286	32820.06	0.27	506366	106336.86	0	0	1131510	237617.1	CUST00012
189014	139870.36	0.16	393149	290930.26	0	0	1905261	1409893.14	CUST00013
89986	114282.22	0.11	247461	314275.47	0	0	1327293	1685662.11	CUST00014
127458813	8284.82	0.26	364532205	23694.59	0	0	874367457	56833.88	CUST00015
79914	59136.36	0.07	151037	111767.38	1	8311056	9660803	7148994.22	CUST00016
130448	27394.08	0.1	39134	8218.14	0	0	2126302	446523.42	CUST00017
195955	248862.85	0.3	176359	223975.93	0	0	568269	721701.63	CUST00018
248691	67146.57	0.05	12434	3357.18	0	0	3494108	943409.16	CUST00019
222869	164923.06	0.19	42345	31335.3	1	25629935	28346708	20976563.92	CUST00020
47815	35383.1	0.22	10519	7784.06	0	0	440854	326231.96	CUST00021
93358	118564.66	0.1	280074	355693.98	0	0	1400370	1778469.9	CUST00022
1393929334	90605.41	0.3	418178800	27181.62	0	0	7387825470	480208.66	CUST00023
71352	52800.48	0.16	228326	168961.24	0	0	1584014	1172170.36	CUST00024
58058	42962.92	0.24	181140	134043.6	0	0	529488	391821.12	CUST00025
362547	76134.87	0.16	58007	12181.47	0	0	3683477	773530.17	CUST00026
108654	29336.58	0.07	243384	65713.68	1	11734632	12629940	3410083.8	CUST00027
140140	29429.4	0.22	30830	6474.3	0	0	731530	153621.3	CUST00028
77018	56993.32	0.23	407425	301494.5	0	0	1331641	985414.34	CUST00029
488579384	31757.66	0.25	3297910842	214364.2	0	0	11115180986	722486.76	CUST00030
1437571546	93442.15	0.18	3622680295	235474.22	0	0	30936539669	2010875.08	CUST00031
342775	71982.75	0.16	54844	11517.24	0	0	4168144	875310.24	CUST00032
472843	127667.61	0.18	85111	22979.97	0	0	3867855	1044320.85	CUST00033
135486	135486.0	0.22	685559	685559.0	1	12193740	13692215	13692215.0	CUST00034
511363872	33238.65	0.16	1309091512	85090.95	0	0	11536368952	749863.98	CUST00035
104392	104392.0	0.18	131533	131533.0	0	0	1384237	1384237.0	CUST00036
231454	171275.96	0.07	437448	323711.52	0	0	3909258	2892850.92	CUST00037
234058	234058.0	0.16	37449	37449.0	0	0	1675855	1675855.0	CUST00038
1057813759	68757.89	0.22	6050694701	393295.16	0	0	26149156122	1699695.15	CUST00039
444147	119919.69	0.11	1221404	329779.08	0	0	5662874	1528975.98	CUST00040
206080	43276.8	0.13	321484	67511.64	0	0	4237004	889770.84	CUST00041
294278	79455.06	0.15	794550	214528.5	0	0	3148774	850168.98	CUST00042
249687	52434.27	0.18	719098	151010.58	0	0	5463151	1147261.71	CUST00043
429679	116013.33	0.09	696079	187941.33	0	0	7570943	2044154.61	CUST00044
351412420	22841.81	0.27	189762706	12334.58	1	15110734060	16354734026	1063057.71	CUST00045
182262	49210.74	0.26	663433	179126.91	0	0	3761887	1015709.49	CUST00046
94823	94823.0	0.1	9482	9482.0	0	0	199128	199128.0	CUST00047
137969	37251.63	0.2	358719	96854.13	0	0	1048564	283112.28	CUST00048
89844	24257.88	0.2	395313	106734.51	0	0	1203909	325055.43	CUST00049
162634	162634.0	0.21	683062	683062.0	0	0	1008330	1008330.0	CUST00050
391027	105577.29	0.12	375385	101353.95	0	0	7804898	2107322.46	CUST00051
583692741	37940.03	0.24	1961207609	127478.49	0	0	13635062429	886279.06	CUST00052
119217	88220.58	0.12	271814	201142.36	0	0	1463984	1083348.16	CUST00053
147486	109139.64	0.25	995530	736692.2	0	0	1585474	1173250.76	CUST00054
203429	42720.09	0.14	683521	143539.41	0	0	3938385	827060.85	CUST00055
81723	103788.21	0.23	150370	190969.9	0	0	967600	1228852.0	CUST00056
37417	7857.57	0.23	68847	14457.87	1	1347012	1790029	375906.09	CUST00057
1068022256	69421.45	0.17	5991604856	389454.32	0	0	18807871928	1222511.68	CUST00058
385831273	25079.03	0.09	1145918880	74484.73	0	0	8862544340	576065.38	CUST00059
124713	158385.51	0.16	219494	278757.38	1	9478188	11069525	14058296.75	CUST00060
112343	23592.03	0.11	481951	101209.71	0	0	2616468	549458.28	CUST00061
67318	14136.78	0.22	222149	46651.29	0	0	895329	188019.09	CUST00062
246696	246696.0	0.09	133215	133215.0	0	0	873303	873303.0	CUST00063
292391	61402.11	0.18	1157868	243152.28	0	0	5836124	1225586.04	CUST00064
35438	35438.0	0.3	350836	350836.0	0	0	705216	705216.0	CUST00065
97837	26415.99	0.17	615394	166156.38	0	0	2082949	562396.23	CUST00066
318409	66865.89	0.06	745077	156466.17	0	0	2018713	423929.73	CUST00067
836915262	54399.49	0.21	1581769845	102815.04	0	0	15809329299	1027606.4	CUST00068
37567	37567.0	0.29	305044	305044.0	0	0	643147	643147.0	CUST00069
1450945961	94311.49	0.26	9808394696	637545.66	0	0	34474476033	2240840.94	CUST00070
67917	50258.58	0.15	264876	196008.24	0	0	1487382	1100662.68	CUST00071
99144	125912.88	0.23	319243	405438.61	0	0	2302123	2923696.21	CUST00072
227766	47830.86	0.16	1166161	244893.81	0	0	3899353	818864.13	CUST00073
131208	131208.0	0.3	1062784	1062784.0	0	0	1850032	1850032.0	CUST00074
264946	71535.42	0.27	71535	19314.45	0	0	1661211	448526.97	CUST00075
189311	240424.97	0.23	914372	1161252.44	0	0	4132659	5248476.93	CUST00076
55806	55806.0	0.24	26786	26786.0	0	0	305816	305816.0	CUST00077
255803	53718.63	0.09	437423	91858.83	0	0	5041877	1058794.17	CUST00078
310920	83948.4	0.28	3134073	846199.71	0	0	4999593	1349890.11	CUST00079
132824	35862.48	0.07	139465	37655.55	0	0	1866177	503867.79	CUST00080
174364	47078.28	0.15	706174	190666.98	0	0	2972906	802684.62	CUST00081
225342	225342.0	0.17	38308	38308.0	0	0	2517070	2517070.0	CUST00082
194691	194691.0	0.07	531506	531506.0	1	19469100	20584679	20584679.0	CUST00083
135274	28407.54	0.08	248904	52269.84	0	0	2819110	592013.1	CUST00084
471649	127345.23	0.08	565978	152814.06	0	0	2452574	662194.98	CUST00085
121622	154459.94	0.22	107027	135924.29	0	0	1323247	1680523.69	CUST00086
83030	105448.1	0.21	296417	376449.59	0	0	1624897	2063619.19	CUST00087
80956	17000.76	0.11	249344	52362.24	0	0	1787508	375376.68	CUST00088
196664	53099.28	0.06	424794	114694.38	0	0	2981426	804985.02	CUST00089
134369	134369.0	0.12	306361	306361.0	0	0	978206	978206.0	CUST00090
83793	62006.82	0.07	29327	21701.98	0	0	1621394	1199831.56	CUST00091
95707	70823.18	0.25	119633	88528.42	1	3254038	3565085	2638162.9	CUST00092
59792	44246.08	0.24	330051	244237.74	0	0	1346515	996421.1	CUST00093
104070	132168.9	0.16	16651	21146.77	0	0	224791	285484.57	CUST00094
218879	59097.33	0.2	43775	11819.25	0	0	919291	248208.57	CUST00095
275548	74397.96	0.07	559362	151027.74	0	0	1937102	523017.54	CUST00096
259049	69943.23	0.15	699432	188846.64	0	0	1994677	538562.79	CUST00097
267370530	17379.08	0.24	128337854	8341.96	0	0	3604154744	234270.06	CUST00098
105400	105400.0	0.2	505920	505920.0	0	0	1876120	1876120.0	CUST00099
90232	18948.72	0.24	692981	145526.01	0	0	2497621	524500.41	CUST00100
122018	122018.0	0.05	97614	97614.0	0	0	829722	829722.0	CUST00101
148920	110200.8	0.14	437824	323989.76	0	0	2373784	1756600.16	CUST00102
96330	122339.1	0.16	15412	19573.24	0	0	1460362	1854659.74	CUST00103
405581	109506.87	0.22	356911	96365.97	1	33257642	40915011	11047052.97	CUST00104
105876	78348.24	0.13	68819	50926.06	0	0	280571	207622.54	CUST00105
43894	55745.38	0.15	210691	267577.57	0	0	342373	434813.71	CUST00106
60192	60192.0	0.15	207662	207662.0	0	0	929966	929966.0	CUST00107
134975	99881.5	0.18	583092	431488.08	0	0	2472742	1829829.08	CUST00108
163680	163680.0	0.1	65472	65472.0	0	0	2193312	2193312.0	CUST00109
229285	169670.9	0.24	1925994	1425235.56	0	0	2843134	2103919.16	CUST00110
64572	82006.44	0.16	175635	223056.45	0	0	1273359	1617165.93	CUST00111
79826	21553.02	0.14	279391	75435.57	0	0	1157477	312518.79	CUST00112
242288	242288.0	0.19	46034	46034.0	1	10660672	13614162	13614162.0	CUST00113
368756	77438.76	0.09	66376	13938.96	0	0	3385180	710887.8	CUST00114
405937	109602.99	0.2	1867310	504173.7	0	0	6738554	1819409.58	CUST00115
117388	117388.0	0.07	287600	287600.0	0	0	991928	991928.0	CUST00116
205666	205666.0	0.23	851457	851457.0	0	0	4553445	4553445.0	CUST00117
80333	59446.42	0.11	159059	117703.66	0	0	641057	474382.18	CUST00118
144815	39100.05	0.26	225911	60995.97	0	0	1239616	334696.32	CUST00119
169987	169987.0	0.11	467464	467464.0	1	20398440	23755683	23755683.0	CUST00120
67482	85702.14	0.25	506115	642766.05	0	0	911007	1156978.89	CUST00121
173021	36334.41	0.16	55366	11626.86	1	14706785	15800277	3318058.17	CUST00122
173615	46876.05	0.15	755225	203910.75	0	0	1449685	391414.95	CUST00123
399904	83979.84	0.17	1835559	385467.39	0	0	2635367	553427.07	CUST00124
54146	68765.42	0.24	389851	495110.77	0	0	877165	1113999.55	CUST00125
58616	15826.32	0.21	430827	116323.29	1	5451288	6409659	1730607.93	CUST00126
167228	123748.72	0.29	1891348	1399597.52	0	0	2560260	1894592.4	CUST00127
441809	119288.43	0.05	441809	119288.43	0	0	2209045	596442.15	CUST00128
388970	81683.7	0.17	2512746	527676.66	0	0	9125236	1916299.56	CUST00129
111284	82350.16	0.18	20031	14822.94	0	0	2134427	1579475.98	CUST00130
222948	46819.08	0.16	499403	104874.63	0	0	3620675	760341.75	CUST00131
136280	173075.6	0.07	133554	169613.58	1	13219160	14306674	18169475.98	CUST00132
141367	179536.09	0.14	474993	603241.11	0	0	899094	1141849.38	CUST00133
164502	164502.0	0.25	904761	904761.0	0	0	2056275	2056275.0	CUST00134
130362	130362.0	0.29	756099	756099.0	0	0	1147185	1147185.0	CUST00135
121193	153915.11	0.15	90894	115435.38	0	0	1302824	1654586.48	CUST00136
93233	118405.91	0.23	85774	108932.98	0	0	831638	1056180.26	CUST00137
96027	25927.29	0.25	192054	51854.58	0	0	1344378	362982.06	CUST00138
238062	238062.0	0.14	1233161	1233161.0	0	0	3375719	3375719.0	CUST00139
169610	215404.7	0.08	271376	344647.52	0	0	949816	1206266.32	CUST00140
265916	55842.36	0.17	1717817	360741.57	0	0	6504305	1365904.05	CUST00141
388598212	25258.88	0.13	202071070	13134.62	0	0	2922258554	189946.81	CUST00142
62812	62812.0	0.21	422096	422096.0	0	0	1615524	1615524.0	CUST00143
35798	45463.46	0.26	167534	212768.18	0	0	239130	303695.1	CUST00144
194407	194407.0	0.19	36937	36937.0	0	0	2175414	2175414.0	CUST00145
156943	116137.82	0.17	667007	493585.18	0	0	2550323	1887239.02	CUST00146
108654	137990.58	0.11	382462	485726.74	0	0	925732	1175679.64	CUST00147
66864	84917.28	0.25	384468	488274.36	0	0	1721748	2186619.96	CUST00148
256172	69166.44	0.18	46110	12449.7	0	0	2351658	634947.66	CUST00149
104907	104907.0	0.18	755330	755330.0	1	3461931	5790866	5790866.0	CUST00150
120033	152441.91	0.19	729800	926846.0	0	0	1209932	1536613.64	CUST00151
342464	92465.28	0.28	1917798	517805.46	0	0	3972582	1072597.14	CUST00152
269593	56614.53	0.09	655110	137573.1	0	0	5507784	1156634.64	CUST00153
295979	62155.59	0.26	2616454	549455.34	0	0	8240055	1730411.55	CUST00154
720733112	46847.65	0.25	4144215394	269374.0	0	0	5585681618	363069.31	CUST00155
124664	158323.28	0.09	415131	527216.37	0	0	1537107	1952125.89	CUST00156
137577	101806.98	0.18	569568	421480.32	0	0	2908377	2152198.98	CUST00157
128782	128782.0	0.13	452024	452024.0	0	0	1353498	1353498.0	CUST00158
108249	80104.26	0.11	166703	123360.22	0	0	1357442	1004507.08	CUST00159
61948	61948.0	0.19	164781	164781.0	0	0	1341793	1341793.0	CUST00160
145966	145966.0	0.21	61305	61305.0	0	0	2542727	2542727.0	CUST00161
38307	48649.89	0.22	101130	128435.1	0	0	790656	1004133.12	CUST00162
71127056	4623.26	0.29	825073849	53629.8	0	0	1322963241	85992.61	CUST00163
558689078	36314.79	0.18	201128068	13073.32	0	0	1877195302	122017.69	CUST00164
32429	23997.46	0.12	58372	43195.28	0	0	220517	163182.58	CUST00165
474051	127993.77	0.08	530937	143352.99	0	0	3849294	1039309.38	CUST00166
71004	90175.08	0.2	568032	721400.64	0	0	1562088	1983851.76	CUST00167
95024	70317.76	0.05	128282	94928.68	0	0	1458618	1079377.32	CUST00168
205056	205056.0	0.08	196853	196853.0	0	0	2452469	2452469.0	CUST00169
155352	114960.48	0.09	153798	113810.52	0	0	2173374	1608296.76	CUST00170
1194243138	77625.8	0.23	8240277652	535618.05	0	0	13017250204	846121.26	CUST00171
78844	100131.88	0.23	453353	575758.31	0	0	1793701	2278000.27	CUST00172
342970	92601.9	0.17	1924061	519496.47	0	0	5696731	1538117.37	CUST00173
333725	90105.75	0.3	1902232	513602.64	0	0	3237132	874025.64	CUST00174
128162	128162.0	0.3	1461046	1461046.0	1	8715016	12226654	12226654.0	CUST00175
58383	74146.41	0.23	295417	375179.59	0	0	820864	1042497.28	CUST00176
120743	89349.82	0.09	130402	96497.48	1	5312692	6046809	4474638.66	CUST00177
181705	230765.35	0.22	39975	50768.25	0	0	585090	743064.3	CUST00178
681188537	44277.25	0.11	374653695	24352.49	0	0	13998424435	909897.59	CUST00179
103774	131792.98	0.12	136981	173965.87	0	0	2108687	2678032.49	CUST00180
235993	235993.0	0.18	1656670	1656670.0	0	0	5196565	5196565.0	CUST00181
60211	12644.31	0.19	68640	14414.4	0	0	971805	204079.05	CUST00182
258564913	16806.72	0.18	1163542108	75630.24	0	0	3232061412	210083.99	CUST00183
81889	103999.03	0.17	542924	689513.48	0	0	1525592	1937501.84	CUST00184
133974	133974.0	0.28	1312945	1312945.0	0	0	3858451	3858451.0	CUST00185
50849	64578.23	0.25	355943	452047.61	1	5695088	6915464	8782639.28	CUST00186
98360	72786.4	0.19	112130	82976.2	0	0	2079330	1538704.2	CUST00187
169347	215070.69	0.21	426754	541977.58	0	0	2458918	3122825.86	CUST00188
78247	78247.0	0.28	679183	679183.0	0	0	2165876	2165876.0	CUST00189
85634	23121.18	0.23	98479	26589.33	0	0	269747	72831.69	CUST00190
28106	35694.62	0.05	44969	57110.63	0	0	326029	414056.83	CUST00191
75313	95647.51	0.2	90375	114776.25	1	3916276	4985720	6331864.4	CUST00192
209317	209317.0	0.26	598646	598646.0	0	0	1435914	1435914.0	CUST00193
418493	112993.11	0.09	37664	10169.28	0	0	7152045	1931052.15	CUST00194
101065	101065.0	0.06	200108	200108.0	0	0	604368	604368.0	CUST00195
227198	168126.52	0.26	2008430	1486238.2	0	0	5189202	3840009.48	CUST00196
161279	161279.0	0.24	193534	193534.0	0	0	2290161	2290161.0	CUST00197
32766	41612.82	0.21	151378	192250.06	0	0	675634	858055.18	CUST00198
232419	232419.0	0.2	976159	976159.0	0	0	3067930	3067930.0	CUST00199
77983	16376.43	0.05	77983	16376.43	0	0	935796	196517.16	CUST00200
131966	167596.82	0.08	337832	429046.64	0	0	865696	1099433.92	CUST00201
177266	47861.82	0.19	67361	18187.47	0	0	1308223	353220.21	CUST00202
652623604	42420.53	0.16	730938436	47511.0	0	0	11825539704	768660.08	CUST00203
209728	56626.56	0.05	31459	8493.93	0	0	2967651	801265.77	CUST00204
108757	108757.0	0.13	494844	494844.0	1	11745756	13110656	13110656.0	CUST00205
103479	76574.46	0.25	439785	325440.9	1	7243530	9028542	6681121.08	CUST00206
247915	183457.1	0.22	1363532	1009013.68	0	0	5082257	3760870.18	CUST00207
363489	98142.03	0.17	61793	16684.11	0	0	5150639	1390672.53	CUST00208
1472188783	95692.27	0.22	971644596	63156.9	0	0	11276966077	733002.8	CUST00209
1156668866	75183.48	0.24	3608806861	234572.45	0	0	25585515315	1663058.5	CUST00210
69516	69516.0	0.14	330896	330896.0	0	0	469928	469928.0	CUST00211
303214	63674.94	0.17	1340205	281443.05	0	0	6494843	1363917.03	CUST00212
119935	119935.0	0.21	100745	100745.0	0	0	940290	940290.0	CUST00213
380175	102647.25	0.1	418192	112911.84	0	0	6120817	1652620.59	CUST00214
657740964	42753.16	0.24	1578578313	102607.59	0	0	4209542169	273620.24	CUST00215
306674	64401.54	0.29	3468482	728381.22	0	0	7148570	1501199.7	CUST00216
186083	236325.41	0.2	297732	378119.64	0	0	1414230	1796072.1	CUST00217
181349	230313.23	0.08	304666	386925.82	0	0	2843552	3611311.04	CUST00218
192374	142356.76	0.06	196221	145203.54	0	0	2697083	1995841.42	CUST00219
267910	72335.7	0.23	1417243	382655.61	0	0	5703803	1540026.81	CUST00220
74094	54829.56	0.25	574228	424928.72	0	0	2056108	1521519.92	CUST00221
261403	54894.63	0.19	1539663	323329.23	0	0	5460708	1146748.68	CUST00222
568837784	36974.46	0.1	1422094460	92436.14	0	0	12798850140	831925.26	CUST00223
179441	132786.34	0.14	251217	185900.58	0	0	2045627	1513763.98	CUST00224
60543	76889.61	0.29	702298	891918.46	0	0	1610443	2045262.61	CUST00225
158308	117147.92	0.09	569908	421731.92	0	0	2152988	1593211.12	CUST00226
285875	60033.75	0.13	743275	156087.75	0	0	1315025	276155.25	CUST00227
482457	130263.39	0.1	482457	130263.39	1	26052678	32324619	8727647.13	CUST00228
1404710282	91306.17	0.25	351177570	22826.54	0	0	22826542082	1483725.24	CUST00229
71674	71674.0	0.27	96759	96759.0	0	0	813499	813499.0	CUST00230
142520	142520.0	0.21	478867	478867.0	0	0	1191467	1191467.0	CUST00231
318973181	20733.26	0.3	95691954	6219.98	0	0	4880289669	317218.83	CUST00232
849332705	55206.63	0.27	687959491	44717.37	0	0	5783955721	375957.12	CUST00233
379294	102409.38	0.24	1729580	466986.6	0	0	7418990	2003127.3	CUST00234
137561	174702.47	0.13	375541	476937.07	1	5089757	6703347	8513250.69	CUST00235
127695	162172.65	0.12	444378	564360.06	0	0	827463	1050878.01	CUST00236
28163	35767.01	0.3	8448	10728.96	0	0	346404	439933.08	CUST00237
205025099	13326.63	0.05	10251254	666.33	0	0	1650452046	107279.38	CUST00238
1214606088	78949.4	0.2	8988085051	584225.53	0	0	21134145931	1373719.49	CUST00239
106309	135012.43	0.22	865355	1099000.85	0	0	1822136	2314112.72	CUST00240
92622	19450.62	0.05	180612	37928.52	0	0	736344	154632.24	CUST00241
232225	232225.0	0.27	877810	877810.0	0	0	3664510	3664510.0	CUST00242
238808	64478.16	0.06	372540	100585.8	0	0	5148700	1390149.0	CUST00243
585170243	38036.07	0.06	35110214	2282.16	0	0	7642323373	496751.02	CUST00244
483060	130426.2	0.07	574841	155207.07	0	0	6854621	1850747.67	CUST00245
198010	53462.7	0.24	47522	12830.94	0	0	2225632	600920.64	CUST00246
273231	57378.51	0.14	1377084	289187.64	0	0	6022011	1264622.31	CUST00247
803939230	52256.05	0.21	1857099621	120711.48	0	0	3464978081	225223.58	CUST00248
45701	33818.74	0.29	304825	225570.5	0	0	579031	428482.94	CUST00249
55054	55054.0	0.18	19819	19819.0	0	0	790575	790575.0	CUST00250
196753	41318.13	0.16	692570	145439.7	0	0	2463347	517302.87	CUST00251
113300	30591.0	0.18	346698	93608.46	0	0	1253098	338336.46	CUST00252
142732	29973.72	0.26	1298861	272760.81	0	0	3011645	632445.45	CUST00253
46295	9721.95	0.29	174532	36651.72	0	0	915252	192202.92	CUST00254
46166	34162.84	0.26	48012	35528.88	0	0	463506	342994.44	CUST00255
336577745	21877.55	0.07	212043979	13782.86	0	0	4250976919	276313.5	CUST00256
140600	37962.0	0.14	787360	212587.2	0	0	1771560	478321.2	CUST00257
47995	60953.65	0.12	155503	197488.81	1	1775815	2651243	3367078.61	CUST00258
313398	84617.46	0.13	774093	209005.11	0	0	3908073	1055179.71	CUST00259
452046	122052.42	0.2	2712276	732314.52	0	0	6780690	1830786.3	CUST00260
180914	180914.0	0.26	47037	47037.0	1	12483066	14881985	14881985.0	CUST00261
1270335712	82571.82	0.09	2172274067	141197.81	0	0	12334959763	801772.38	CUST00262
529888631	34442.76	0.05	291438747	18943.52	1	42920979111	44272195120	2877692.68	CUST00263
107443	22563.03	0.2	21488	4512.48	0	0	666146	139890.66	CUST00264
101539	21323.19	0.29	471140	98939.4	0	0	1994225	418787.25	CUST00265
222412	164584.88	0.22	1027543	760381.82	1	8006832	10591259	7837531.66	CUST00266
52291	66409.57	0.28	161056	204541.12	0	0	474802	602998.54	CUST00267
1019130481	66243.48	0.05	1987304437	129174.79	0	0	10140348285	659122.64	CUST00268
267065	72107.55	0.17	1044224	281940.48	0	0	4783134	1291446.18	CUST00269
744439354	48388.56	0.12	1339990837	87099.4	0	0	5062187607	329042.19	CUST00270
1377792012	89556.48	0.27	6696069178	435244.5	0	0	9451653202	614357.46	CUST00271
212765	157446.1	0.19	363828	269232.72	0	0	4406363	3260708.62	CUST00272
39288	49895.76	0.14	154008	195590.16	0	0	743328	944026.56	CUST00273
51479	38094.46	0.17	323802	239613.48	1	1750286	2640357	1953864.18	CUST00274
127823	26842.83	0.16	429485	90191.85	0	0	1707715	358620.15	CUST00275
205149	205149.0	0.14	86162	86162.0	0	0	3983993	3983993.0	CUST00276
175133	222418.91	0.27	1891436	2402123.72	0	0	4868697	6183245.19	CUST00277
63078	46677.72	0.06	37846	28006.04	1	1892340	2876356	2128503.44	CUST00278
110492	140324.84	0.26	632014	802657.78	0	0	2620870	3328504.9	CUST00279
51267	65109.09	0.28	488061	619837.47	0	0	1513401	1922019.27	CUST00280
298012	80463.24	0.06	590063	159317.01	0	0	3570183	963949.41	CUST00281
279151	58621.71	0.28	937947	196968.87	0	0	4566910	959051.1	CUST00282
224962	166471.88	0.16	179969	133177.06	0	0	2879513	2130839.62	CUST00283
246036	66429.72	0.26	1791142	483608.34	0	0	6219790	1679343.3	CUST00284
491057467	31918.74	0.26	1021399531	66390.97	0	0	5440916734	353659.59	CUST00285
33011	41923.97	0.11	79886	101455.22	0	0	641073	814162.71	CUST00286
44391	9322.11	0.15	13317	2796.57	1	1775640	2676777	562123.17	CUST00287
149281	189586.87	0.28	41798	53083.46	0	0	1086765	1380191.55	CUST00288
182119	49172.13	0.1	346026	93427.02	0	0	2349335	634320.45	CUST00289
349317	73356.57	0.12	1341377	281689.17	0	0	3087962	648472.02	CUST00290
69303	69303.0	0.18	199592	199592.0	0	0	823319	823319.0	CUST00291
242126	50846.46	0.15	472145	99150.45	0	0	1198523	251689.83	CUST00292
315979	85314.33	0.13	1602013	432543.51	0	0	3813866	1029743.82	CUST00293
386365	81136.65	0.27	3338193	701020.53	1	39795595	44679248	9382642.08	CUST00294
276696	58106.16	0.06	431645	90645.45	0	0	5965565	1252768.65	CUST00295
108212	108212.0	0.15	340867	340867.0	0	0	990139	990139.0	CUST00296
157816	157816.0	0.13	164128	164128.0	0	0	1268840	1268840.0	CUST00297
158339	117170.86	0.25	1306296	966659.04	0	0	1939652	1435342.48	CUST00298
861229162	55979.9	0.29	7742450166	503259.26	0	0	18077200110	1175018.01	CUST00299
83848	17608.08	0.15	201235	42259.35	0	0	1878195	394420.95	CUST00300
138682	176126.14	0.27	1123324	1426621.48	0	0	1955416	2483378.32	CUST00301
222433	164600.42	0.06	66729	49379.46	0	0	4070523	3012187.02	CUST00302
196328	249336.56	0.26	51045	64827.15	1	5104528	6137213	7794260.51	CUST00303
108935	108935.0	0.16	644895	644895.0	0	0	1189570	1189570.0	CUST00304
54887	69706.49	0.25	54887	69706.49	0	0	987966	1254716.82	CUST00305
506019428	32891.26	0.22	3562376773	231554.49	0	0	12164707049	790705.96	CUST00306
49673	36758.02	0.23	22849	16908.26	0	0	271214	200698.36	CUST00307
683988271	44459.24	0.14	766066863	49794.35	1	72502756726	81476682841	5295984.38	CUST00308
144744	107110.56	0.29	755563	559116.62	0	0	2203003	1630222.22	CUST00309
411707	111160.89	0.26	1498613	404625.51	0	0	7674218	2072038.86	CUST00310
139861	177623.47	0.1	377624	479582.48	0	0	2335678	2966311.06	CUST00311
83206	22465.62	0.12	249617	67396.59	0	0	1248089	336984.03	CUST00312
143468	143468.0	0.22	1136266	1136266.0	0	0	2427478	2427478.0	CUST00313
159980	118385.2	0.27	1252643	926955.82	0	0	1892563	1400496.62	CUST00314
130716	166009.32	0.25	1241802	1577088.54	0	0	1764666	2241125.82	CUST00315
103814	28029.78	0.15	591739	159769.53	0	0	903181	243858.87	CUST00316
268267	56336.07	0.13	34874	7323.54	0	0	4595413	965036.73	CUST00317
317147	66600.87	0.18	2112199	443561.79	0	0	3697934	776566.14	CUST00318
132995	98416.3	0.1	119695	88574.3	0	0	1183655	875904.7	CUST00319
155764	197820.28	0.05	225857	286838.39	0	0	693149	880299.23	CUST00320
202365	149750.1	0.2	121419	89850.06	0	0	2549799	1886851.26	CUST00321
102446	21513.66	0.15	384172	80676.12	0	0	2228200	467922.0	CUST00322
206258	206258.0	0.08	247509	247509.0	0	0	1691315	1691315.0	CUST00323
164959	209497.93	0.12	772008	980450.16	0	0	3246393	4122919.11	CUST00324
405606114	26364.4	0.3	1095136507	71183.87	0	0	5151197647	334827.85	CUST00325
541696445	35210.27	0.24	4680257284	304216.72	0	0	14972489739	973211.83	CUST00326
44103	44103.0	0.05	37487	37487.0	1	2293356	2683667	2683667.0	CUST00327
79014	58470.36	0.29	916562	678255.88	0	0	2338814	1730722.36	CUST00328
274491	57643.11	0.23	63132	13257.72	0	0	1710078	359116.38	CUST00329
108324	137571.48	0.18	370468	470494.36	0	0	1128736	1433494.72	CUST00330
116787	86422.38	0.14	637657	471866.18	0	0	1571953	1163245.22	CUST00331
375651	101425.77	0.11	495859	133881.93	0	0	1622812	438159.24	CUST00332
226586	47583.06	0.18	40785	8564.85	0	0	4119333	865059.93	CUST00333
1205050790	78328.3	0.05	421767776	27414.91	0	0	5241970936	340728.11	CUST00334
225792	225792.0	0.22	1192181	1192181.0	0	0	1643765	1643765.0	CUST00335
331445	69603.45	0.26	2757622	579100.62	0	0	6072072	1275135.12	CUST00336
1437444861	93433.92	0.23	10248981858	666183.82	0	0	15998761302	1039919.48	CUST00337
52676	52676.0	0.12	101137	101137.0	0	0	943953	943953.0	CUST00338
107326	107326.0	0.29	684739	684739.0	0	0	1328695	1328695.0	CUST00339
165811	210579.97	0.19	1102643	1400356.61	0	0	1765887	2242676.49	CUST00340
248824	184129.76	0.11	301077	222796.98	0	0	1545197	1143445.78	CUST00341
334399	70223.79	0.17	170543	35814.03	0	0	4183331	878499.51	CUST00342
148134	109619.16	0.13	327376	242258.24	1	15405936	17362786	12848461.64	CUST00343
365983	76856.43	0.16	702687	147564.27	0	0	5460466	1146697.86	CUST00344
87059	18282.39	0.09	219388	46071.48	0	0	567624	119201.04	CUST00345
1309600317	85124.02	0.19	7215897746	469033.35	0	0	33407904086	2171513.77	CUST00346
65096	48171.04	0.17	376254	278427.96	0	0	1547982	1145506.68	CUST00347
66739	84758.53	0.09	30032	38140.64	0	0	1364812	1733311.24	CUST00348
126845	93865.3	0.11	13952	10324.48	0	0	1028712	761246.88	CUST00349
214480	214480.0	0.29	1057386	1057386.0	0	0	3202186	3202186.0	CUST00350
95951	95951.0	0.14	13433	13433.0	0	0	876992	876992.0	CUST00351
90290	66814.6	0.07	158007	116925.18	0	0	1060907	785071.18	CUST00352
384014	80642.94	0.17	261129	54837.09	0	0	3333241	699980.61	CUST00353
190030	241338.1	0.18	239437	304084.99	0	0	4040037	5130846.99	CUST00354
52478	52478.0	0.1	5247	5247.0	0	0	897373	897373.0	CUST00355
99342	73513.08	0.09	321868	238182.32	0	0	1513972	1120339.28	CUST00356
1182514062	76863.41	0.26	307453656	19984.49	0	0	21592706772	1403525.94	CUST00357
156944	199318.88	0.24	37666	47835.82	0	0	665442	845111.34	CUST00358
552817970	35933.17	0.28	4643670948	301838.61	0	0	14041576438	912702.47	CUST00359
186838	138260.12	0.27	100892	74660.08	0	0	2903462	2148561.88	CUST00360
124966	124966.0	0.08	169953	169953.0	0	0	2044443	2044443.0	CUST00361
138325	138325.0	0.19	578198	578198.0	0	0	3206373	3206373.0	CUST00362
202827	202827.0	0.08	356975	356975.0	0	0	2182418	2182418.0	CUST00363
395458	83046.18	0.22	2784024	584645.04	0	0	3970398	833783.58	CUST00364
187935	50742.45	0.11	41345	11163.15	0	0	793085	214132.95	CUST00365
145073	107354.02	0.05	268385	198604.9	0	0	2879699	2130977.26	CUST00366
52765	52765.0	0.3	15829	15829.0	1	6279035	7033574	7033574.0	CUST00367
177812	225821.24	0.14	373405	474224.35	0	0	2151525	2732436.75	CUST00368
43975	55848.25	0.18	23746	30157.42	0	0	551446	700336.42	CUST00369
208675	154419.5	0.17	638545	472523.3	0	0	4812045	3560913.3	CUST00370
239757	177420.18	0.13	1246736	922584.64	0	0	4363577	3229046.98	CUST00371
175372	175372.0	0.28	883874	883874.0	0	0	3865198	3865198.0	CUST00372
99574	73684.76	0.1	119488	88421.12	0	0	916080	677899.2	CUST00373
190911	190911.0	0.05	372276	372276.0	0	0	3999585	3999585.0	CUST00374
196940	53173.8	0.15	236328	63808.56	0	0	4175128	1127284.56	CUST00375
61553	61553.0	0.22	108333	108333.0	0	0	1093181	1093181.0	CUST00376
128121	26905.41	0.19	876347	184032.87	0	0	2029436	426181.56	CUST00377
497912	134436.24	0.15	1493736	403308.72	0	0	9460328	2554288.56	CUST00378
76396	97022.92	0.09	165015	209569.05	0	0	623391	791706.57	CUST00379
218890	218890.0	0.13	853671	853671.0	0	0	4574801	4574801.0	CUST00380
1083360614	70418.44	0.26	2816737596	183087.94	0	0	8233540666	535180.14	CUST00381
245881	51635.01	0.08	373739	78485.19	0	0	2340787	491565.27	CUST00382
45554	57853.58	0.15	191326	242984.02	0	0	692420	879373.4	CUST00383
797930127	51865.46	0.11	175544627	11410.4	1	47875807620	56828583644	3693857.94	CUST00384
68861	87453.47	0.1	172152	218633.04	0	0	309874	393539.98	CUST00385
1237752499	80453.91	0.06	74265149	4827.23	0	0	17402800135	1131182.01	CUST00386
179707	48520.89	0.23	661321	178556.67	0	0	3536633	954890.91	CUST00387
313421	65818.41	0.28	2369462	497587.02	0	0	8324461	1748136.81	CUST00388
111175	111175.0	0.28	1151773	1151773.0	0	0	3041748	3041748.0	CUST00389
304368	63917.28	0.25	76092	15979.32	0	0	1902300	399483.0	CUST00390
171223	46230.21	0.25	642086	173363.22	0	0	3895323	1051737.21	CUST00391
247167	247167.0	0.14	1314928	1314928.0	0	0	3786598	3786598.0	CUST00392
145633	39320.91	0.08	104855	28310.85	0	0	833020	224915.4	CUST00393
35801	26492.74	0.1	3580	2649.2	0	0	182585	135112.9	CUST00394
270328	72988.56	0.13	351426	94885.02	0	0	4947002	1335690.54	CUST00395
296492	80052.84	0.1	29649	8005.23	0	0	2994569	808533.63	CUST00396
261778218	17015.58	0.18	424080713	27565.25	0	0	2518306457	163689.92	CUST00397
91404	116083.08	0.17	466160	592023.2	0	0	1471604	1868937.08	CUST00398
61365	45410.1	0.15	128866	95360.84	0	0	681151	504051.74	CUST00399
53960	39930.4	0.22	83098	61492.52	0	0	730618	540657.32	CUST00400
559664967	36378.22	0.13	363782228	23645.84	0	0	10997416601	714832.08	CUST00401
157219	116342.06	0.23	470084	347862.16	0	0	3457245	2558361.3	CUST00402
247933	247933.0	0.2	1289251	1289251.0	0	0	5999978	5999978.0	CUST00403
248727	67156.29	0.23	57207	15445.89	0	0	554661	149758.47	CUST00404
162381	206223.87	0.22	750200	952754.0	0	0	3835439	4871007.53	CUST00405
248940	248940.0	0.28	69703	69703.0	0	0	1812283	1812283.0	CUST00406
167840	167840.0	0.21	740174	740174.0	0	0	4096974	4096974.0	CUST00407
835082798	54280.38	0.19	4125309022	268145.09	0	0	16651550992	1082350.81	CUST00408
268562011	17456.53	0.08	214849608	13965.22	0	0	2631907707	171074.0	CUST00409
237675	64172.25	0.22	156865	42353.55	1	25906575	29628565	7999712.55	CUST00410
107615	136671.05	0.19	511171	649187.17	1	6564515	8474681	10762844.87	CUST00411
238748	64461.96	0.29	2215581	598206.87	0	0	6035549	1629598.23	CUST00412
146332	30729.72	0.1	14633	3072.93	0	0	1770617	371829.57	CUST00413
126228	93408.72	0.27	170407	126101.18	1	6437628	7744087	5730624.38	CUST00414
482907	130384.89	0.27	1043079	281631.33	1	52636863	63338082	17101282.14	CUST00415
992661596	64523.0	0.15	2680186309	174212.11	0	0	7643494289	496827.13	CUST00416
1273141213	82754.18	0.09	1947906055	126613.89	0	0	24864447889	1616189.11	CUST00417
682304315	44349.78	0.25	1876336866	121961.9	0	0	5970162756	388060.58	CUST00418
60355	76650.85	0.17	246248	312734.96	0	0	729088	925941.76	CUST00419
96973	26182.71	0.08	131883	35608.41	0	0	1586478	428349.06	CUST00420
353077	74146.17	0.26	642600	134946.0	0	0	6291832	1321284.72	CUST00421
223876	223876.0	0.06	26865	26865.0	0	0	1370121	1370121.0	CUST00422
1215357924	78998.27	0.1	2187644263	142196.88	0	0	25279444819	1643163.91	CUST00423
96966	96966.0	0.09	261808	261808.0	0	0	1328434	1328434.0	CUST00424
1478139854	96079.09	0.12	177376782	11529.49	0	0	19393194884	1260557.67	CUST00425
157051	157051.0	0.27	127211	127211.0	0	0	3111180	3111180.0	CUST00426
153432	194858.64	0.15	368236	467659.72	1	6137280	6812380	8651722.6	CUST00427
891442501	57943.76	0.27	8905510584	578858.19	0	0	10688395586	694745.71	CUST00428
1375222902	89389.49	0.27	7797513854	506838.4	0	0	20174519972	1311343.8	CUST00429
196041	248972.07	0.08	78416	99588.32	0	0	3803195	4830057.65	CUST00430
71431	52858.94	0.13	352869	261123.06	0	0	1710058	1265442.92	CUST00431
189041	39698.61	0.16	695670	146090.7	0	0	2586080	543076.8	CUST00432
183755	233368.85	0.19	1256884	1596242.68	0	0	2910679	3696562.33	CUST00433
73228	92999.56	0.26	514060	652856.2	0	0	1758936	2233848.72	CUST00434
537931520	34965.55	0.24	1807449907	117484.24	0	0	6110902067	397208.63	CUST00435
233480	172775.2	0.06	336211	248796.14	0	0	3604931	2667648.94	CUST00436
1215065192	78979.24	0.15	2187117345	142162.63	0	0	5832312921	379100.34	CUST00437
117286	24630.06	0.16	281486	59112.06	0	0	633344	133002.24	CUST00438
128040	162610.8	0.15	595386	756140.22	0	0	2644026	3357913.02	CUST00439
218317	218317.0	0.23	1908090	1908090.0	1	6767827	9767502	9767502.0	CUST00440
129773	96032.02	0.06	163513	120999.62	0	0	1071924	793223.76	CUST00441
724685496	47104.56	0.23	3833586273	249183.11	0	0	15428554209	1002856.02	CUST00442
290900	61089.0	0.26	75634	15883.14	0	0	5602734	1176574.14	CUST00443
91631	24740.37	0.2	421502	113805.54	0	0	604764	163286.28	CUST00444
68109	68109.0	0.26	336458	336458.0	0	0	1698638	1698638.0	CUST00445
190193	140742.82	0.22	292897	216743.78	0	0	4096757	3031600.18	CUST00446
65476	13749.96	0.24	314284	65999.64	0	0	1558328	327248.88	CUST00447
185446	235516.42	0.06	111267	141309.09	0	0	3820187	4851637.49	CUST00448
189604	189604.0	0.26	739455	739455.0	0	0	2635495	2635495.0	CUST00449
369504	99766.08	0.11	1138072	307279.44	0	0	5202616	1404706.32	CUST00450
138538	102518.12	0.06	299242	221439.08	0	0	2100236	1554174.64	CUST00451
1148107688	74627.0	0.19	3490247371	226866.08	0	0	5786462747	376120.08	CUST00452
278774	58542.54	0.25	2787740	585425.4	0	0	4460384	936680.64	CUST00453
1273205077	82758.33	0.23	8785115031	571032.48	0	0	24063575955	1564132.44	CUST00454
226734	47614.14	0.21	47614	9998.94	0	0	1634752	343297.92	CUST00455
290599	61025.79	0.27	1804619	378969.99	0	0	5582406	1172305.26	CUST00456
1012997611	65844.84	0.18	1641056129	106668.65	0	0	18862015516	1226031.01	CUST00457
214180	214180.0	0.18	38552	38552.0	1	13707520	15673692	15673692.0	CUST00763
300609	63127.89	0.22	396803	83328.63	0	0	2200457	462095.97	CUST00458
246994060	16054.61	0.13	1284369112	83483.99	0	0	2025351292	131647.83	CUST00459
169532	125453.68	0.13	330587	244634.38	0	0	3043099	2251893.26	CUST00460
51837	65832.99	0.1	165878	210665.06	0	0	839759	1066493.93	CUST00461
141299	179449.73	0.06	152602	193804.54	0	0	435200	552704.0	CUST00462
360774	97408.98	0.21	606100	163647.0	0	0	6378484	1722190.68	CUST00463
1038359558	67493.37	0.13	3509655306	228127.59	0	0	20123408234	1308021.54	CUST00464
148825	148825.0	0.17	455404	455404.0	0	0	1050704	1050704.0	CUST00465
158155	200856.85	0.08	417529	530261.83	0	0	1208304	1534546.08	CUST00466
173641	128494.34	0.09	562596	416321.04	0	0	3514493	2600724.82	CUST00467
198699	252347.73	0.22	524565	666197.55	0	0	4498545	5713152.15	CUST00468
262752	70943.04	0.07	147141	39728.07	0	0	1460901	394443.27	CUST00469
228463	169062.62	0.09	699096	517331.04	0	0	2069874	1531706.76	CUST00470
386284	81119.64	0.13	803470	168728.7	0	0	6597730	1385523.3	CUST00471
174090040	11315.85	0.05	174090040	11315.85	0	0	3481800800	226317.05	CUST00472
125346	159189.42	0.15	413641	525324.07	0	0	2293831	2913165.37	CUST00473
181241	38060.61	0.3	1250562	262618.02	0	0	2338008	490981.68	CUST00474
198360	146786.4	0.25	99180	73393.2	0	0	3272940	2421975.6	CUST00475
118141	150039.07	0.11	324887	412606.49	0	0	2097002	2663192.54	CUST00476
34926	44356.02	0.19	132718	168551.86	0	0	586756	745180.12	CUST00477
89285	113391.95	0.17	546424	693958.48	0	0	903564	1147526.28	CUST00478
1160935638	75460.82	0.28	8776673423	570483.77	1	107967014334	130674915413	8493869.5	CUST00479
46100	46100.0	0.21	319473	319473.0	0	0	1241473	1241473.0	CUST00480
91073	115662.71	0.08	7285	9251.95	0	0	918015	1165879.05	CUST00481
241770	241770.0	0.09	543982	543982.0	0	0	2719912	2719912.0	CUST00482
231947	171640.78	0.15	974177	720890.98	0	0	4685329	3467143.46	CUST00483
1056464473	68670.19	0.15	158469670	10300.53	0	0	11779578873	765672.63	CUST00484
100705	127895.35	0.28	676737	859455.99	0	0	2288017	2905781.59	CUST00485
225619	60917.13	0.12	974674	263161.98	0	0	2102769	567747.63	CUST00486
107121	136043.67	0.19	366353	465268.31	0	0	580595	737355.65	CUST00487
80614	80614.0	0.06	72552	72552.0	0	0	395008	395008.0	CUST00488
240554	178009.96	0.29	1464973	1084080.02	0	0	2667743	1974129.82	CUST00489
164918	34632.78	0.09	356222	74806.62	0	0	1015894	213337.74	CUST00490
66384	13940.64	0.17	90282	18959.22	0	0	621354	130484.34	CUST00491
145757	107860.18	0.23	1206867	893081.58	0	0	1935652	1432382.48	CUST00492
39918	29539.32	0.22	333714	246948.36	1	2155572	2728794	2019307.56	CUST00493
89204	89204.0	0.05	4460	4460.0	0	0	1520928	1520928.0	CUST00494
170149	170149.0	0.26	88477	88477.0	0	0	2130265	2130265.0	CUST00495
206694	55807.38	0.22	1773434	478827.18	0	0	2806904	757864.08	CUST00496
92517	68462.58	0.17	15727	11637.98	0	0	385795	285488.3	CUST00497
930821488	60503.4	0.08	1340382942	87124.89	0	0	18095169726	1176186.03	CUST00498
153527	113609.98	0.28	1203651	890701.74	0	0	1664232	1231531.68	CUST00499
426552670	27725.92	0.26	2883496049	187427.24	0	0	4589706729	298330.94	CUST00500
219992	59397.84	0.08	316788	85532.76	1	23539144	28255772	7629058.44	CUST00501
118107	24802.47	0.22	155901	32739.21	0	0	2399934	503986.14	CUST00502
233859	233859.0	0.09	757703	757703.0	0	0	4733306	4733306.0	CUST00503
125019	33755.13	0.21	131269	35442.63	0	0	2381611	643034.97	CUST00504
807009843	52455.64	0.15	4478904628	291128.8	0	0	19812091645	1287785.96	CUST00505
194927	52630.29	0.06	432737	116838.99	0	0	1407372	379990.44	CUST00506
672171398	43691.14	0.1	67217139	4369.11	0	0	6788931119	441280.52	CUST00507
309247872	20101.11	0.07	606125829	39398.18	0	0	3389356677	220308.18	CUST00508
200987	42207.27	0.11	243194	51070.74	0	0	2052077	430936.17	CUST00509
524211149	34073.72	0.28	3522698921	228975.43	0	0	11910077305	774155.02	CUST00510
38413	28425.62	0.22	152115	112565.1	0	0	267354	197841.96	CUST00511
71101	52614.74	0.25	266628	197304.72	0	0	764335	565607.9	CUST00512
249411	184564.14	0.17	1441595	1066780.3	0	0	1940417	1435908.58	CUST00513
26331	33440.37	0.15	23697	30095.19	0	0	102690	130416.3	CUST00514
159836	159836.0	0.11	52745	52745.0	0	0	3089629	3089629.0	CUST00515
155772	155772.0	0.22	68539	68539.0	0	0	1158943	1158943.0	CUST00516
237056	237056.0	0.27	1408112	1408112.0	0	0	5201008	5201008.0	CUST00517
334392	90285.84	0.19	889482	240160.14	0	0	3564618	962446.86	CUST00518
59089	59089.0	0.15	177267	177267.0	0	0	1122691	1122691.0	CUST00519
92556	68491.44	0.18	83300	61642.0	1	9533268	11190020	8280614.8	CUST00520
97651	124016.77	0.06	234362	297639.74	0	0	1503825	1909857.75	CUST00521
187778	238478.06	0.14	394333	500802.91	0	0	1145445	1454715.15	CUST00522
652582512	42417.86	0.08	156619802	10180.29	0	0	4072114874	264687.47	CUST00523
115885	147173.95	0.16	92708	117739.16	1	13210890	13535368	17189917.36	CUST00524
157440	157440.0	0.2	1196544	1196544.0	0	0	4030464	4030464.0	CUST00525
224983	47246.43	0.29	717695	150715.95	0	0	1392644	292455.24	CUST00526
72271	53480.54	0.11	310042	229431.08	0	0	526855	389872.7	CUST00527
115137	146223.99	0.09	10362	13159.74	0	0	1852554	2352743.58	CUST00528
217886	58829.22	0.09	117658	31767.66	0	0	4257492	1149522.84	CUST00529
54442	69141.34	0.23	313041	397562.07	0	0	476367	604986.09	CUST00530
54243	40139.82	0.13	176289	130453.86	1	5261571	5871804	4345134.96	CUST00531
318324	85947.48	0.15	1909944	515684.88	0	0	7321452	1976792.04	CUST00532
245470	66276.9	0.05	245470	66276.9	0	0	3436580	927876.6	CUST00533
135873	36685.71	0.25	849206	229285.62	0	0	2887301	779571.27	CUST00534
179842	228399.34	0.24	776917	986684.59	1	5575102	6711703	8523862.81	CUST00535
248178	183651.72	0.15	335040	247929.6	0	0	5050422	3737312.28	CUST00536
70376	52078.24	0.12	8445	6249.3	0	0	1204837	891579.38	CUST00537
61288	61288.0	0.24	176509	176509.0	0	0	1218405	1218405.0	CUST00538
393984	82736.64	0.25	3644352	765313.92	1	26396928	37132992	7797928.32	CUST00539
72810	72810.0	0.06	21842	21842.0	0	0	968372	968372.0	CUST00540
1408684049	91564.46	0.1	4085183742	265536.94	0	0	11128603987	723359.26	CUST00541
170095	170095.0	0.2	680380	680380.0	0	0	1700950	1700950.0	CUST00542
70515	52181.1	0.18	38078	28177.72	0	0	602198	445626.52	CUST00543
1089757564	70834.24	0.14	762830294	49583.97	0	0	14929678626	970429.11	CUST00544
365714347	23771.43	0.22	885028719	57526.87	0	0	4907886536	319012.62	CUST00545
152944	41294.88	0.08	293652	79286.04	0	0	3046644	822593.88	CUST00546
1352338420	87902.0	0.1	405701526	26370.6	0	0	11224408886	729586.58	CUST00547
292476	61419.96	0.25	1389261	291744.81	1	28662648	32684193	6863680.53	CUST00548
220145	162907.3	0.07	477714	353508.36	0	0	2238874	1656766.76	CUST00549
875217123	56889.11	0.16	1120277917	72818.06	0	0	16874186131	1096822.1	CUST00550
342097	92366.19	0.23	1573646	424884.42	0	0	2942034	794349.18	CUST00551
175205	175205.0	0.15	657018	657018.0	0	0	3285093	3285093.0	CUST00552
257811	69608.97	0.16	1649990	445497.3	1	26812344	29493578	7963266.06	CUST00553
185965	137614.1	0.26	870316	644033.84	0	0	3473826	2570631.24	CUST00554
157017	157017.0	0.18	989207	989207.0	0	0	1931309	1931309.0	CUST00555
223409	165322.66	0.06	13404	9918.96	0	0	907040	671209.6	CUST00556
198298	251838.46	0.24	142774	181322.98	0	0	3513840	4462576.8	CUST00557
39264	8245.44	0.29	352983	74126.43	0	0	470775	98862.75	CUST00558
1255432312	81603.1	0.21	263640785	17136.65	0	0	14073396217	914770.75	CUST00559
403907	109054.89	0.17	274656	74157.12	0	0	7948889	2146200.03	CUST00560
228074	47895.54	0.2	1277214	268214.94	1	14824810	18610838	3908275.98	CUST00561
230591	230591.0	0.27	2116825	2116825.0	0	0	4883917	4883917.0	CUST00562
199891	147919.34	0.13	311829	230753.46	0	0	1111393	822430.82	CUST00563
374859	78720.39	0.27	101211	21254.31	0	0	7598391	1595662.11	CUST00564
234630	49272.3	0.13	640539	134513.19	0	0	1813689	380874.69	CUST00565
191173	191173.0	0.12	412933	412933.0	0	0	3280528	3280528.0	CUST00566
188727	239683.29	0.24	996478	1265527.06	0	0	1751386	2224260.22	CUST00567
79981	101575.87	0.14	302328	383956.56	0	0	622252	790260.04	CUST00568
377661	101968.47	0.18	1495537	403794.99	0	0	8671096	2341195.92	CUST00569
197228	197228.0	0.18	923027	923027.0	1	19328344	23209791	23209791.0	CUST00570
144134	106659.16	0.15	864804	639954.96	1	4035752	6053628	4479684.72	CUST00571
80309	59428.66	0.06	19274	14262.76	0	0	902673	667978.02	CUST00572
237007	175385.18	0.25	59251	43845.74	0	0	4562384	3376164.16	CUST00573
220544	46314.24	0.22	48519	10188.99	0	0	930695	195445.95	CUST00574
1187987561	77219.19	0.11	3920358951	254823.33	0	0	8672309195	563700.1	CUST00575
75915	56177.1	0.1	45549	33706.26	0	0	804699	595477.26	CUST00576
970063451	63054.12	0.17	2803483373	182226.42	0	0	11534054432	749713.54	CUST00577
87829	111542.83	0.11	9661	12269.47	0	0	1239267	1573869.09	CUST00578
97317	26275.59	0.28	354233	95642.91	0	0	1230086	332123.22	CUST00579
946827673	61543.8	0.28	7423128956	482503.38	0	0	18785061032	1221028.97	CUST00580
148819	148819.0	0.22	1047685	1047685.0	0	0	1494142	1494142.0	CUST00581
73113	15353.73	0.08	99433	20880.93	0	0	757450	159064.5	CUST00582
75476	75476.0	0.22	83023	83023.0	0	0	988735	988735.0	CUST00583
60870	16434.9	0.29	582525	157281.75	0	0	1739055	469544.85	CUST00584
192006	142084.44	0.16	30720	22732.8	0	0	1950780	1443577.2	CUST00585
112134	30276.18	0.11	493389	133215.03	0	0	1390461	375424.47	CUST00586
246029	182061.46	0.12	1033321	764657.54	1	26079074	29080627	21519663.98	CUST00587
355609	96014.43	0.22	938807	253477.89	0	0	6628551	1789708.77	CUST00588
97168	97168.0	0.07	163242	163242.0	0	0	2009434	2009434.0	CUST00589
91494	116197.38	0.18	16468	20914.36	0	0	1297384	1647677.68	CUST00590
118913	87995.62	0.27	931088	689005.12	0	0	1644566	1216978.84	CUST00591
663444291	43123.88	0.24	796133149	51748.65	0	0	10747797514	698606.84	CUST00592
321333	67479.93	0.26	2339304	491253.84	0	0	7480632	1570932.72	CUST00593
60415	44707.1	0.3	471237	348715.38	0	0	1498292	1108736.08	CUST00594
121646	121646.0	0.07	51091	51091.0	1	6812176	7714789	7714789.0	CUST00595
447768653	29104.96	0.15	2014958938	130972.33	1	12985290937	19030167752	1236960.9	CUST00596
127926	127926.0	0.2	102340	102340.0	0	0	741970	741970.0	CUST00597
202714	42569.94	0.29	2057547	432084.87	1	20879542	26180513	5497907.73	CUST00598
67079	14086.59	0.19	216665	45499.65	0	0	1155771	242711.91	CUST00599
234339	173410.86	0.15	246055	182080.7	0	0	1652089	1222545.86	CUST00600
286703	60207.63	0.16	1330301	279363.21	0	0	5344143	1122270.03	CUST00601
190330	241719.1	0.16	243622	309399.94	0	0	814612	1034557.24	CUST00602
147740	187629.8	0.16	47276	60040.52	0	0	2558856	3249747.12	CUST00603
159588	202676.76	0.08	12767	16214.09	0	0	2406587	3056365.49	CUST00604
198428	252003.56	0.17	33732	42839.64	0	0	1422728	1806864.56	CUST00605
377056	101805.12	0.25	3676296	992599.92	0	0	8200968	2214261.36	CUST00606
170083	170083.0	0.05	25512	25512.0	0	0	2406674	2406674.0	CUST00607
219125	46016.25	0.22	1735470	364448.7	0	0	4803220	1008676.2	CUST00608
509316892	33105.6	0.17	779254844	50651.56	0	0	3835156196	249285.15	CUST00609
35719	26432.06	0.08	77153	57093.22	0	0	291467	215685.58	CUST00610
247435	183101.9	0.26	964996	714097.04	1	6433310	10367526	7671969.24	CUST00611
152794	194048.38	0.15	343786	436608.22	0	0	3094078	3929479.06	CUST00612
41648	52892.96	0.12	84961	107900.47	1	4248096	4957777	6296376.79	CUST00613
210275	44157.75	0.16	302796	63587.16	0	0	4087746	858426.66	CUST00614
467318	126175.86	0.17	1827213	493347.51	0	0	5098439	1376578.53	CUST00615
134047	170239.69	0.29	1088461	1382345.47	0	0	3367260	4276420.2	CUST00616
121600	25536.0	0.26	1264640	265574.4	0	0	3453440	725222.4	CUST00617
92586	117584.22	0.3	305533	388026.91	0	0	1509151	1916621.77	CUST00618
105517	28489.59	0.25	685860	185182.2	0	0	1213445	327630.15	CUST00619
261482	54911.22	0.24	439289	92250.69	0	0	4884483	1025741.43	CUST00620
231646	171418.04	0.24	1389876	1028508.24	0	0	3474690	2571270.6	CUST00621
195004	195004.0	0.22	986720	986720.0	0	0	2156744	2156744.0	CUST00622
466603	125982.81	0.22	2668969	720621.63	0	0	3602175	972587.25	CUST00623
133092	98488.08	0.24	766609	567290.66	0	0	1565161	1158219.14	CUST00624
219150	219150.0	0.24	1683072	1683072.0	0	0	4532022	4532022.0	CUST00625
195927	248827.29	0.16	1128539	1433244.53	0	0	3675590	4667999.3	CUST00626
302876	63603.96	0.3	1908118	400704.78	0	0	5239754	1100348.34	CUST00627
88265	112096.55	0.26	780262	990932.74	0	0	1751177	2223994.79	CUST00628
371291	77971.11	0.29	430697	90446.37	0	0	6371353	1337984.13	CUST00629
181119	230021.13	0.11	657461	834975.47	0	0	2649770	3365207.9	CUST00630
1310628012	85190.82	0.1	2228067620	144824.4	0	0	19266231776	1252305.07	CUST00631
146959	108749.66	0.07	277752	205536.48	0	0	2923014	2163030.36	CUST00632
433630	117080.1	0.29	3143817	848830.59	0	0	6179227	1668391.29	CUST00633
1076523340	69974.02	0.06	645914004	41984.41	0	0	8181577384	531802.53	CUST00634
110375	23178.75	0.08	8830	1854.3	0	0	1222955	256820.55	CUST00635
104996	133344.92	0.27	652025	828071.75	0	0	1491993	1894831.11	CUST00636
1290635030	83891.28	0.13	3858998739	250834.92	0	0	24509159219	1593095.35	CUST00637
128109	34589.43	0.27	1348987	364226.49	0	0	2886295	779299.65	CUST00638
381505	80116.05	0.27	3193196	670571.16	0	0	7008246	1471731.66	CUST00639
38860	49352.2	0.29	349351	443675.77	1	3341960	4002191	5082782.57	CUST00640
146452	108374.48	0.07	123019	91034.06	0	0	2905607	2150149.18	CUST00641
168386	124605.64	0.13	503474	372570.76	0	0	2187334	1618627.16	CUST00642
934619472	60750.27	0.22	1233697703	80190.35	0	0	4037556119	262441.15	CUST00643
199983	41996.43	0.11	131988	27717.48	1	6999405	7731342	1623581.82	CUST00644
81788	22082.76	0.13	42529	11482.83	0	0	1596501	431055.27	CUST00645
89570	113753.9	0.24	859872	1092037.44	0	0	1397292	1774560.84	CUST00646
141084	104402.16	0.29	490972	363319.28	0	0	3171568	2346960.32	CUST00647
181538	49015.26	0.26	660798	178415.46	0	0	3202330	864629.1	CUST00648
48518	61617.86	0.15	7277	9241.79	0	0	249867	317331.09	CUST00649
363011	76232.31	0.12	1742452	365914.92	0	0	7550628	1585631.88	CUST00650
368922	77473.62	0.28	103298	21692.58	0	0	6374972	1338744.12	CUST00651
171203	171203.0	0.06	390342	390342.0	0	0	3129590	3129590.0	CUST00652
151292	151292.0	0.14	21180	21180.0	0	0	1231516	1231516.0	CUST00653
82972	105374.44	0.11	337696	428873.92	0	0	1748220	2220239.4	CUST00654
102704	102704.0	0.19	429302	429302.0	0	0	2175270	2175270.0	CUST00655
1283857987	83450.77	0.26	1669015383	108486.0	1	110411786882	124919382135	8119759.84	CUST00656
114672	114672.0	0.16	733900	733900.0	0	0	2453980	2453980.0	CUST00657
656856639	42695.68	0.28	2023118448	131502.7	0	0	14503394589	942720.65	CUST00658
219859468	14290.87	0.28	677167161	44015.87	0	0	2436042905	158342.79	CUST00659
597750246	38853.77	0.11	2235585920	145313.08	0	0	12397340102	805827.11	CUST00660
188931	239942.37	0.16	755724	959769.48	0	0	1700379	2159481.33	CUST00661
707404203	45981.27	0.2	3537021015	229906.37	0	0	14148084060	919625.46	CUST00662
182175	231362.25	0.25	1047506	1330332.62	0	0	1411856	1793057.12	CUST00663
86626	18191.46	0.08	235622	49480.62	0	0	582126	122246.46	CUST00664
78738	78738.0	0.11	311802	311802.0	0	0	548016	548016.0	CUST00665
148082	188064.14	0.13	115503	146688.81	0	0	1892487	2403458.49	CUST00666
115129	146213.83	0.1	11512	14620.24	0	0	932544	1184330.88	CUST00667
496697	134108.19	0.19	3303035	891819.45	0	0	9263399	2501117.73	CUST00668
67939403	4416.06	0.21	399483689	25966.44	0	0	1010938316	65710.99	CUST00669
32593	24118.82	0.07	2281	1687.94	1	749639	1371187	1014678.38	CUST00670
75651	55981.74	0.1	68085	50382.9	1	4009503	4607145	3409287.3	CUST00671
385180	80887.8	0.08	92443	19413.03	1	39673540	41691883	8755295.43	CUST00672
239459	239459.0	0.3	502863	502863.0	0	0	4094748	4094748.0	CUST00673
364336	98370.72	0.16	1165875	314786.25	0	0	4444899	1200122.73	CUST00674
331567628	21551.9	0.26	3189680581	207329.24	0	0	9821033141	638367.15	CUST00675
160701	160701.0	0.18	838859	838859.0	1	6749442	9516713	9516713.0	CUST00676
84316	84316.0	0.1	286674	286674.0	0	0	961202	961202.0	CUST00677
91723	116488.21	0.19	121991	154928.57	0	0	672329	853857.83	CUST00678
136700	173609.0	0.16	787392	999987.84	0	0	2837892	3604122.84	CUST00679
124134	91859.16	0.28	451847	334366.78	1	7075638	9761897	7223803.78	CUST00680
135018	28353.78	0.13	17552	3685.92	0	0	1637768	343931.28	CUST00681
804387314	52285.18	0.25	3217549256	209140.7	0	0	14478971652	941133.16	CUST00682
91269	91269.0	0.18	164284	164284.0	0	0	1898395	1898395.0	CUST00683
279995	75598.65	0.16	1030381	278202.87	0	0	6350286	1714577.22	CUST00684
89111	89111.0	0.15	253966	253966.0	0	0	1501520	1501520.0	CUST00685
769207601	49998.49	0.19	730747220	47498.57	0	0	16114899240	1047468.45	CUST00686
348589	94119.03	0.29	303272	81883.44	0	0	4137751	1117192.77	CUST00687
131159	97057.66	0.12	141651	104821.74	0	0	1322082	978340.68	CUST00688
132525	98068.5	0.09	202763	150044.62	0	0	865388	640387.12	CUST00689
244406	180860.44	0.23	899414	665566.36	0	0	5054316	3740193.84	CUST00690
246159	182157.66	0.15	923096	683091.04	0	0	3138527	2322509.98	CUST00691
804708323	52306.04	0.23	2776243714	180455.84	0	0	11628035267	755822.29	CUST00692
416226	112381.02	0.19	1660741	448400.07	0	0	7487905	2021734.35	CUST00693
943213112	61308.85	0.3	2829639335	183926.56	0	0	20750688463	1348794.75	CUST00694
53401	11214.21	0.17	90781	19064.01	0	0	304385	63920.85	CUST00695
181389	48975.03	0.08	14511	3917.97	0	0	1102845	297768.15	CUST00696
66767	66767.0	0.17	136204	136204.0	0	0	803874	803874.0	CUST00697
50338	50338.0	0.22	243635	243635.0	0	0	344311	344311.0	CUST00698
145882	145882.0	0.22	994915	994915.0	0	0	3620791	3620791.0	CUST00699
493229155	32059.9	0.28	138104163	8976.77	0	0	6550083178	425755.41	CUST00700
145641	30584.61	0.29	380123	79825.83	0	0	1108328	232748.88	CUST00701
358616	75309.36	0.1	609647	128025.87	0	0	3478575	730500.75	CUST00702
240836	50575.56	0.21	404604	84966.84	0	0	886276	186117.96	CUST00703
707539857	45990.09	0.24	1698095656	110376.22	0	0	13726273225	892207.76	CUST00704
117044	117044.0	0.09	221213	221213.0	1	13694148	15319889	15319889.0	CUST00705
158962	201881.74	0.21	834550	1059878.5	0	0	2265208	2876814.16	CUST00706
980192165	63712.49	0.24	3763937913	244655.96	0	0	7684706573	499505.93	CUST00707
220135	220135.0	0.2	44027	44027.0	1	16730260	19415907	19415907.0	CUST00708
93504	93504.0	0.1	168307	168307.0	1	2431104	3440947	3440947.0	CUST00709
210291466	13668.95	0.29	60984525	3963.99	0	0	691858923	44970.83	CUST00710
50490	37362.6	0.16	96940	71735.6	0	0	904780	669537.2	CUST00711
265023	55654.83	0.29	1152850	242098.5	0	0	3273034	687337.14	CUST00712
369498	99764.46	0.23	2039628	550699.56	0	0	4256616	1149286.32	CUST00713
110110	23123.1	0.19	732231	153768.51	0	0	1503001	315630.21	CUST00714
121647	32844.69	0.23	27978	7554.06	0	0	1001154	270311.58	CUST00715
251346	67863.42	0.17	940034	253809.18	0	0	5966954	1611077.58	CUST00716
286178	60097.38	0.21	1141850	239788.5	0	0	4862164	1021054.44	CUST00717
395675	83091.75	0.22	3220794	676366.74	1	15035650	22213194	4664770.74	CUST00718
60600	60600.0	0.24	101808	101808.0	0	0	950208	950208.0	CUST00719
309551	65005.71	0.21	1040091	218419.11	0	0	5373805	1128499.05	CUST00720
139851	29368.71	0.28	234949	49339.29	0	0	2192863	460501.23	CUST00721
139272	139272.0	0.21	672683	672683.0	0	0	2761763	2761763.0	CUST00722
516497850	33572.36	0.1	1291244625	83930.9	0	0	2840738175	184647.98	CUST00723
106841	106841.0	0.07	52352	52352.0	0	0	586557	586557.0	CUST00724
631404057	41041.26	0.24	151536973	9849.9	1	12628081140	25407699253	1651500.45	CUST00725
206700	43407.0	0.2	1157520	243079.2	0	0	3637920	763963.2	CUST00726
275129249	17883.4	0.05	261372786	16989.23	0	0	4113182272	267356.85	CUST00727
159981	203175.87	0.15	959885	1219053.95	0	0	2239733	2844460.91	CUST00728
91225	91225.0	0.2	310165	310165.0	0	0	1587315	1587315.0	CUST00729
105057	22061.97	0.27	992788	208485.48	0	0	3093928	649724.88	CUST00730
274739	57695.19	0.09	989060	207702.6	0	0	5384884	1130825.64	CUST00731
144004	144004.0	0.3	86402	86402.0	0	0	374410	374410.0	CUST00732
170127	170127.0	0.21	142906	142906.0	0	0	3035065	3035065.0	CUST00733
144547	144547.0	0.25	758871	758871.0	0	0	2059794	2059794.0	CUST00734
126400	93536.0	0.08	40448	29931.52	0	0	1557248	1152363.52	CUST00735
454373	122680.71	0.14	1526693	412207.11	0	0	4252931	1148291.37	CUST00736
477896	129031.92	0.29	2356027	636127.29	0	0	6657091	1797414.57	CUST00737
173367	36407.07	0.3	1508292	316741.32	0	0	4975632	1044882.72	CUST00738
148002	31080.42	0.23	204242	42890.82	0	0	648248	136132.08	CUST00739
135739	172388.53	0.22	656976	834359.52	0	0	2421583	3075410.41	CUST00740
59314	75328.78	0.13	169638	215440.26	1	5575516	5923096	7522331.92	CUST00741
67964	67964.0	0.1	183502	183502.0	0	0	727214	727214.0	CUST00742
79533	21473.91	0.07	222692	60126.84	0	0	1574753	425183.31	CUST00743
112286	30317.22	0.11	148217	40018.59	0	0	2057079	555411.33	CUST00744
195762	195762.0	0.21	863310	863310.0	0	0	3408216	3408216.0	CUST00745
150697	191385.19	0.12	596760	757885.2	0	0	1350245	1714811.15	CUST00746
1214296228	78929.25	0.1	2064303587	134179.73	0	0	4492896043	292038.24	CUST00747
79385	100818.95	0.29	874822	1111023.94	0	0	1271747	1615118.69	CUST00748
201085	148802.9	0.09	597222	441944.28	0	0	4417837	3269199.38	CUST00749
95100	70374.0	0.13	296712	219566.88	1	8178600	9521412	7045844.88	CUST00750
297696	62516.16	0.1	1041936	218806.56	0	0	2530416	531387.36	CUST00751
174722	129294.28	0.1	87361	64647.14	0	0	2358747	1745472.78	CUST00752
259746	70131.42	0.16	1579255	426398.85	0	0	4176715	1127713.05	CUST00753
217287	217287.0	0.14	1155966	1155966.0	1	22597848	27664980	27664980.0	CUST00754
95811	121679.97	0.08	91978	116812.06	1	3257574	5169961	6565850.47	CUST00755
55676	41200.24	0.14	109124	80751.76	0	0	610208	451553.92	CUST00756
232924	62889.48	0.23	160717	43393.59	0	0	2722881	735177.87	CUST00757
472620	127607.4	0.24	907430	245006.1	0	0	9887210	2669546.7	CUST00758
67400	67400.0	0.14	56616	56616.0	0	0	730616	730616.0	CUST00759
180376	37878.96	0.12	562773	118182.33	0	0	3268413	686366.73	CUST00760
70209	14743.89	0.23	32296	6782.16	0	0	313132	65757.72	CUST00761
433148	116949.96	0.08	1386073	374239.71	0	0	8749589	2362389.03	CUST00762
44692	56758.84	0.14	68825	87407.75	0	0	336977	427960.79	CUST00764
1217750561	79153.79	0.26	5699072625	370439.72	0	0	11787825430	766208.65	CUST00765
104906	133230.62	0.28	646220	820699.4	1	10700412	13234940	16808373.8	CUST00766
235541	63596.07	0.08	339179	91578.33	1	15074624	17062590	4606899.3	CUST00767
57464	72979.28	0.28	96539	122604.53	0	0	211467	268563.09	CUST00768
311242	65360.82	0.25	1867452	392164.92	0	0	3423662	718969.02	CUST00769
297652663	19347.42	0.1	565540059	36760.1	0	0	1458498048	94802.37	CUST00770
140387	140387.0	0.17	334121	334121.0	0	0	2720700	2720700.0	CUST00771
58765	58765.0	0.29	357878	357878.0	0	0	475408	475408.0	CUST00772
34209	7183.89	0.16	131362	27586.02	0	0	507661	106608.81	CUST00773
397502	83475.42	0.11	174900	36729.0	0	0	6137430	1288860.3	CUST00774
64680	47863.2	0.15	106722	78974.28	0	0	753522	557606.28	CUST00775
210665	56879.55	0.23	1114417	300892.59	0	0	3010402	812808.54	CUST00776
214037	44947.77	0.23	984570	206759.7	0	0	2910903	611289.63	CUST00777
277494	58273.74	0.12	332992	69928.32	0	0	1720462	361297.02	CUST00778
231972	231972.0	0.27	62632	62632.0	0	0	2846296	2846296.0	CUST00779
118411	31970.97	0.21	49732	13427.64	0	0	641787	173282.49	CUST00780
104030	132118.1	0.23	861368	1093937.36	0	0	1693608	2150882.16	CUST00781
221895	46597.95	0.16	1136102	238581.42	0	0	2245577	471571.17	CUST00782
41913	41913.0	0.29	60773	60773.0	0	0	186512	186512.0	CUST00783
1153666969	74988.35	0.15	1211350317	78737.77	0	0	17362687883	1128574.71	CUST00784
144391	183376.57	0.18	25990	33007.3	1	16171792	18796820	23871961.4	CUST00785
35247	44763.69	0.21	88822	112803.94	0	0	441292	560440.84	CUST00786
126760	126760.0	0.13	313097	313097.0	0	0	2721537	2721537.0	CUST00787
660629285	42940.9	0.09	1129676077	73428.95	0	0	2450934647	159310.75	CUST00788
190925	51549.75	0.1	210017	56704.59	0	0	2882967	778401.09	CUST00789
243804	180414.96	0.27	1711504	1266512.96	0	0	3661936	2709832.64	CUST00790
79243	58639.82	0.07	122034	90305.16	0	0	439006	324864.44	CUST00791
107690	29076.3	0.26	587987	158756.49	0	0	911057	245985.39	CUST00792
242461362	15759.99	0.1	751630222	48855.96	0	0	4873473376	316775.77	CUST00793
1407515614	91488.51	0.19	8290266966	538867.35	1	30965343508	43478157316	2826080.23	CUST00794
887603819	57694.25	0.09	878727780	57117.31	0	0	10642369789	691754.04	CUST00795
123666	91512.84	0.07	25969	19217.06	0	0	1509961	1117371.14	CUST00796
64379	81761.33	0.27	139058	176603.66	0	0	847227	1075978.29	CUST00797
107931	22665.51	0.24	25903	5439.63	0	0	673489	141432.69	CUST00798
53710	53710.0	0.13	97752	97752.0	0	0	420012	420012.0	CUST00799
122467	33066.09	0.25	1071586	289328.22	0	0	2173789	586923.03	CUST00800
181486	181486.0	0.24	1001802	1001802.0	1	20870890	23506066	23506066.0	CUST00801
81235	21933.45	0.28	113729	30706.83	0	0	1169784	315841.68	CUST00802
484017	130684.59	0.11	638902	172503.54	1	55661955	59204959	15985338.93	CUST00803
49338	49338.0	0.17	25162	25162.0	0	0	370528	370528.0	CUST00804
296292	79998.84	0.24	426660	115198.2	0	0	5759916	1555177.32	CUST00805
59167	59167.0	0.09	5325	5325.0	0	0	182826	182826.0	CUST00806
216491	216491.0	0.26	1463479	1463479.0	0	0	5793299	5793299.0	CUST00807
80538	102283.26	0.15	253694	322191.38	0	0	495308	629041.16	CUST00808
73207	73207.0	0.06	96633	96633.0	0	0	1048324	1048324.0	CUST00809
177957	37370.97	0.09	16016	3363.36	0	0	905801	190218.21	CUST00810
242620617	15770.34	0.29	844319747	54880.78	0	0	5696732087	370287.59	CUST00811
914991378	59474.44	0.18	3129270512	203402.58	0	0	14109167048	917095.86	CUST00812
161642	161642.0	0.25	1171904	1171904.0	0	0	2141756	2141756.0	CUST00813
426681	115203.87	0.11	93869	25344.63	1	20054007	22707962	6131149.74	CUST00814
50978	10705.38	0.27	495506	104056.26	0	0	1209198	253931.58	CUST00815
124775	33689.25	0.24	89838	24256.26	0	0	1462363	394838.01	CUST00816
176862	37141.02	0.19	235226	49397.46	0	0	2534432	532230.72	CUST00817
114994	31048.38	0.29	1267233	342152.91	0	0	3222131	869975.37	CUST00818
46886	59545.22	0.22	175353	222698.31	0	0	1019301	1294512.27	CUST00819
399744383	25983.38	0.19	1139271491	74052.65	0	0	2738249023	177986.19	CUST00820
144515	39019.05	0.23	99715	26923.05	0	0	2122925	573189.75	CUST00821
149838	190294.26	0.08	335637	426258.99	0	0	2733045	3470967.15	CUST00822
119763	152099.01	0.25	628755	798518.85	0	0	2664726	3384202.02	CUST00823
648207189	42133.47	0.15	583386470	37920.12	0	0	7713665549	501388.26	CUST00824
697598592	45343.91	0.09	1506812958	97942.84	0	0	10575594654	687413.65	CUST00825
172038	218488.26	0.25	903199	1147062.73	0	0	2279503	2894968.81	CUST00826
215888	58289.76	0.08	103626	27979.02	0	0	3341946	902325.42	CUST00827
82310	104533.7	0.24	59263	75264.01	0	0	717743	911533.61	CUST00828
33767	24987.58	0.14	189095	139930.3	0	0	628066	464768.84	CUST00829
253267	53186.07	0.18	866173	181896.33	0	0	3905377	820129.17	CUST00830
130024	96217.76	0.12	483689	357929.86	1	13522496	15956545	11807843.3	CUST00831
282641017	18371.67	0.17	1729763024	112434.6	0	0	7099942347	461496.25	CUST00832
110031	29708.37	0.1	352099	95066.73	0	0	2222626	600109.02	CUST00833
100152	74112.48	0.27	784190	580300.6	0	0	1785710	1321425.4	CUST00834
244967	181275.58	0.24	1175841	870122.34	0	0	4115445	3045429.3	CUST00835
274973	74242.71	0.08	21997	5939.19	0	0	3871619	1045337.13	CUST00836
61030	61030.0	0.21	64081	64081.0	0	0	918501	918501.0	CUST00837
1410539852	91685.09	0.24	8124709547	528106.12	0	0	16587948659	1078216.66	CUST00838
78904	58388.96	0.11	225665	166992.1	0	0	935801	692492.74	CUST00839
197349	146038.26	0.3	2190573	1621024.02	0	0	3177318	2351215.32	CUST00840
159563	118076.62	0.26	82972	61399.28	0	0	1359476	1006012.24	CUST00841
865852617	56280.42	0.27	2337802065	151957.13	0	0	16191443937	1052443.86	CUST00842
804712371	52306.3	0.17	547204412	35568.29	0	0	15836739461	1029388.06	CUST00843
387160581	25165.44	0.1	1161481743	75496.31	0	0	6194569296	402647.0	CUST00844
101740	101740.0	0.17	86479	86479.0	0	0	493439	493439.0	CUST00845
140680	37983.6	0.1	126612	34185.24	0	0	1533412	414021.24	CUST00846
272160	73483.2	0.2	1306368	352719.36	1	14696640	19268928	5202610.56	CUST00847
73843	73843.0	0.27	19937	19937.0	0	0	1349111	1349111.0	CUST00848
217561	45687.81	0.11	574361	120615.81	0	0	2314849	486118.29	CUST00849
1059388694	68860.27	0.19	3623109333	235502.11	0	0	16335773661	1061825.29	CUST00850
102888	76137.12	0.23	70992	52534.08	0	0	482544	357082.56	CUST00851
160484714	10431.51	0.3	1348071597	87624.65	0	0	3755342307	244097.25	CUST00852
32436	6811.56	0.28	9082	1907.22	0	0	365878	76834.38	CUST00853
649856953	42240.7	0.13	1943072289	126299.7	1	41590844992	52631914623	3421074.45	CUST00854
492014	132843.78	0.14	1928694	520747.38	0	0	4388764	1184966.28	CUST00855
74614	74614.0	0.07	125351	125351.0	1	8356768	9452101	9452101.0	CUST00856
202663	42559.23	0.22	44585	9362.85	0	0	2881867	605192.07	CUST00857
196960	145750.4	0.16	1071462	792881.88	0	0	2056262	1521633.88	CUST00858
54064	54064.0	0.12	175167	175167.0	1	3081648	3473071	3473071.0	CUST00859
1065345300	69247.44	0.25	10387116675	675162.58	0	0	18909879075	1229142.14	CUST00860
82353	104588.31	0.28	69176	87853.52	0	0	1222118	1552089.86	CUST00861
352641	95213.07	0.21	518382	139963.14	1	13400358	19560996	5281468.92	CUST00862
1032038975	67082.53	0.14	3901107325	253571.98	0	0	9061302200	588984.64	CUST00863
77869	21024.63	0.16	361312	97554.24	0	0	1373609	370874.43	CUST00864
168821	124927.54	0.2	1181747	874492.78	0	0	4220525	3123188.5	CUST00865
572748512	37228.65	0.07	1323049062	85998.19	0	0	4186791622	272141.46	CUST00866
83924	83924.0	0.09	105744	105744.0	1	3860504	5057260	5057260.0	CUST00867
223748	223748.0	0.13	1047140	1047140.0	0	0	3060872	3060872.0	CUST00868
142177	105210.98	0.13	18483	13677.42	0	0	1013722	750154.28	CUST00869
107349	28984.23	0.06	77291	20868.57	0	0	291989	78837.03	CUST00870
158624	158624.0	0.23	656703	656703.0	0	0	3670559	3670559.0	CUST00871
378094	79399.74	0.26	1769479	371590.59	0	0	8197077	1721386.17	CUST00872
160503	160503.0	0.06	57781	57781.0	0	0	3267841	3267841.0	CUST00873
193615	52276.05	0.27	1934213	522237.51	0	0	5612898	1515482.46	CUST00874
194833	52604.91	0.13	861161	232513.47	0	0	1445660	390328.2	CUST00875
34369	7217.49	0.17	87640	18404.4	0	0	293854	61709.34	CUST00876
1034653030	67252.45	0.06	931187727	60527.2	0	0	12312371057	800304.12	CUST00877
95911	95911.0	0.08	7672	7672.0	0	0	1062693	1062693.0	CUST00878
183413	183413.0	0.28	462200	462200.0	0	0	2479743	2479743.0	CUST00879
1342131052	87238.52	0.13	2268201477	147433.1	0	0	29110822517	1892203.46	CUST00880
104952	133289.04	0.07	66119	83971.13	0	0	2165159	2749751.93	CUST00881
157072	199481.44	0.28	1099504	1396370.08	0	0	3141440	3989628.8	CUST00882
48181	61189.87	0.24	11563	14685.01	0	0	541554	687773.58	CUST00883
127933	162474.91	0.08	153519	194969.13	0	0	409385	519918.95	CUST00884
185802	185802.0	0.07	39018	39018.0	0	0	2082840	2082840.0	CUST00885
165335	165335.0	0.09	14880	14880.0	0	0	2825575	2825575.0	CUST00886
42600	54102.0	0.05	19170	24345.9	0	0	232170	294855.9	CUST00887
113864	30743.28	0.12	300600	81162.0	0	0	2236288	603797.76	CUST00888
78446	58050.04	0.09	261225	193306.5	0	0	967239	715756.86	CUST00889
159227	159227.0	0.14	66875	66875.0	0	0	1659145	1659145.0	CUST00890
325808	68419.68	0.15	1270651	266836.71	1	30625952	35480491	7450903.11	CUST00891
54781	14790.87	0.3	427291	115368.57	0	0	1139444	307649.88	CUST00892
201949	201949.0	0.23	278689	278689.0	0	0	2702077	2702077.0	CUST00893
153667	153667.0	0.2	829801	829801.0	0	0	1905470	1905470.0	CUST00894
186867	237321.09	0.26	923122	1172364.94	0	0	1670590	2121649.3	CUST00895
229205	229205.0	0.11	680738	680738.0	0	0	2743583	2743583.0	CUST00896
1008175125	65531.38	0.24	241962030	15727.53	0	0	2258312280	146790.3	CUST00897
76306	96908.62	0.11	268597	341118.19	0	0	1489493	1891656.11	CUST00898
36355	26902.7	0.21	15269	11299.06	0	0	197044	145812.56	CUST00899
1439183531	93546.93	0.18	4662954640	303092.05	0	0	16176422888	1051467.49	CUST00900
142069	105131.06	0.21	29834	22077.16	0	0	598110	442601.4	CUST00901
770644861	50091.92	0.06	1618354208	105193.02	0	0	10095447679	656204.1	CUST00902
578399114	37595.94	0.26	4661896858	303023.3	0	0	15073080910	979750.26	CUST00903
620237911	40315.46	0.1	1116428239	72567.84	1	72567835587	75544977559	4910423.54	CUST00904
115661	146889.47	0.3	1249138	1586405.26	1	8443253	10155035	12896894.45	CUST00905
138119	175411.13	0.17	258282	328018.14	0	0	1501353	1906718.31	CUST00906
328945260	21381.44	0.16	1105256073	71841.64	0	0	6039434973	392563.27	CUST00907
171652	46346.04	0.07	12015	3244.05	0	0	355319	95936.13	CUST00908
1001791594	65116.45	0.1	100179159	6511.65	0	0	3105553941	201861.01	CUST00909
50022	50022.0	0.11	22009	22009.0	0	0	972427	972427.0	CUST00910
163109	207148.43	0.27	660591	838950.57	0	0	2617899	3324731.73	CUST00911
45564	57866.28	0.1	127579	162025.33	0	0	400963	509223.01	CUST00912
213066	157668.84	0.16	34090	25226.6	0	0	3443146	2547928.04	CUST00913
176324	37028.04	0.26	91688	19254.48	0	0	2560224	537647.04	CUST00914
169589	125495.86	0.06	396838	293660.12	0	0	2262317	1674114.58	CUST00915
992171128	64491.12	0.27	4821951682	313426.86	0	0	7798465066	506900.23	CUST00916
67611	85865.97	0.29	588215	747033.05	0	0	1669991	2120888.57	CUST00917
118482	87676.68	0.19	697858	516414.92	0	0	1053304	779444.96	CUST00918
76867	76867.0	0.16	209078	209078.0	0	0	362812	362812.0	CUST00919
653662546	42488.07	0.27	6000622172	390040.44	0	0	18420210546	1197313.69	CUST00920
380478	102729.06	0.09	171215	46228.05	0	0	1312649	354415.23	CUST00921
92909	117994.43	0.29	296379	376401.33	0	0	482197	612390.19	CUST00922
158964	201884.28	0.07	278187	353297.49	0	0	1549899	1968371.73	CUST00923
205629	43182.09	0.29	2087134	438298.14	0	0	4760311	999665.31	CUST00924
57848	42807.52	0.2	393366	291090.84	0	0	1087542	804781.08	CUST00925
878383813	57094.95	0.24	8221672489	534408.71	0	0	11735207741	762788.5	CUST00926
161402	204980.54	0.16	697256	885515.12	0	0	2311276	2935320.52	CUST00927
195054	40961.34	0.24	514942	108137.82	0	0	1490212	312944.52	CUST00928
1359697014	88380.31	0.11	2991333430	194436.67	0	0	23386788640	1520141.26	CUST00929
114540	145465.8	0.13	193572	245836.44	0	0	651732	827699.64	CUST00930
958991635	62334.46	0.12	805552973	52360.94	1	86309247150	103417657918	6722147.76	CUST00931
131741	97488.34	0.28	1069736	791604.64	0	0	2782369	2058953.06	CUST00932
353291	74191.11	0.08	960951	201799.71	0	0	2020824	424373.04	CUST00933
429431	115946.37	0.24	515317	139135.59	0	0	8245075	2226170.25	CUST00934
103216	76379.84	0.29	868046	642354.04	0	0	1384126	1024253.24	CUST00935
51985	10916.85	0.25	103970	21833.7	0	0	519850	109168.5	CUST00936
1105042263	71827.75	0.16	2652101431	172386.59	0	0	10387397272	675180.82	CUST00937
227883	168633.42	0.09	656303	485664.22	0	0	1339952	991564.48	CUST00938
665241468	43240.7	0.29	3858400514	250796.03	1	61867456524	75704479058	4920791.14	CUST00939
1119258226	72751.78	0.12	3357774678	218255.35	0	0	10073324034	654766.06	CUST00940
205813	43220.73	0.12	172882	36305.22	0	0	3877516	814278.36	CUST00941
171320	217576.4	0.22	640736	813734.72	0	0	1154696	1466463.92	CUST00942
99543	73661.82	0.17	676892	500900.08	0	0	2369123	1753151.02	CUST00943
66867038	4346.36	0.16	320961782	20862.52	0	0	1457701428	94750.59	CUST00944
197173	197173.0	0.14	938543	938543.0	0	0	4487657	4487657.0	CUST00945
123618	123618.0	0.19	516723	516723.0	0	0	1876521	1876521.0	CUST00946
293655	79286.85	0.29	340639	91972.53	0	0	1808914	488406.78	CUST00947
100234	74173.16	0.18	18042	13351.08	0	0	1521552	1125948.48	CUST00948
78643	21233.61	0.12	207617	56056.59	1	8886659	9802063	2646557.01	CUST00949
234354	173421.96	0.21	1525644	1128976.56	0	0	4337892	3210040.08	CUST00950
63273	13287.33	0.21	252459	53016.39	0	0	1391373	292188.33	CUST00951
138369	102393.06	0.1	276738	204786.12	0	0	1522059	1126323.66	CUST00952
150588	31623.48	0.21	505975	106254.75	0	0	1861267	390866.07	CUST00953
68739	14435.19	0.18	24746	5196.66	0	0	1055831	221724.51	CUST00954
235723	174435.02	0.13	1072539	793678.86	0	0	5315553	3933509.22	CUST00955
128718	128718.0	0.12	509723	509723.0	1	3990258	5658443	5658443.0	CUST00956
431449	116491.23	0.15	64717	17473.59	0	0	5673554	1531859.58	CUST00957
243893	65851.11	0.17	456079	123141.33	0	0	1675544	452396.88	CUST00958
93981	25374.87	0.09	287581	77646.87	0	0	1885258	509019.66	CUST00959
39570	39570.0	0.13	92593	92593.0	0	0	883993	883993.0	CUST00960
150945	150945.0	0.23	416608	416608.0	1	12830325	16114888	16114888.0	CUST00961
320871359	20856.64	0.09	202148956	13139.68	0	0	5336090700	346845.9	CUST00962
168415	213887.05	0.15	707343	898325.61	0	0	1044173	1326099.71	CUST00963
62097	78863.19	0.12	283162	359615.74	0	0	779938	990521.26	CUST00964
304925	64034.25	0.23	350663	73639.23	0	0	5534388	1162221.48	CUST00965
487923998	31715.06	0.22	1717492472	111637.01	0	0	10988048434	714223.15	CUST00966
189841	241098.07	0.05	104412	132603.24	0	0	1623140	2061387.8	CUST00967
366382	76940.22	0.21	2462087	517038.27	0	0	3927615	824799.15	CUST00968
199038	147288.12	0.24	1433073	1060474.02	0	0	3821529	2827931.46	CUST00969
240594	178039.56	0.2	481188	356079.12	1	9142572	11307918	8367859.32	CUST00970
221489	59802.03	0.13	691045	186582.15	0	0	1798490	485592.3	CUST00971
45499	57783.73	0.27	208840	265226.8	0	0	572832	727496.64	CUST00972
176251	176251.0	0.27	618641	618641.0	0	0	2909904	2909904.0	CUST00973
76925	56924.5	0.28	452319	334716.06	0	0	606169	448565.06	CUST00974
1139740499	74083.13	0.28	6382546794	414865.54	0	0	17779951784	1155696.87	CUST00975
1071055234	69618.59	0.3	10603446816	689224.04	0	0	27740330560	1803121.49	CUST00976
64510	64510.0	0.07	27094	27094.0	0	0	349644	349644.0	CUST00977
223319	165256.06	0.05	424306	313986.44	0	0	3104134	2297059.16	CUST00978
47027	47027.0	0.1	183405	183405.0	0	0	1029891	1029891.0	CUST00979
75342	55753.08	0.21	458832	339535.68	0	0	609516	451041.84	CUST00980
151374	151374.0	0.07	21192	21192.0	0	0	626688	626688.0	CUST00981
150677	111500.98	0.07	390253	288787.22	0	0	1746346	1292296.04	CUST00982
103623	21760.83	0.19	157506	33076.26	0	0	1711851	359488.71	CUST00983
306841	82847.07	0.14	558450	150781.5	0	0	4547383	1227793.41	CUST00984
166020	210845.4	0.19	662419	841272.13	1	18096180	21248899	26986101.73	CUST00985
164551	164551.0	0.24	552891	552891.0	0	0	2198401	2198401.0	CUST00986
172788	219440.76	0.14	411235	522268.45	1	16414860	17344459	22027462.93	CUST00987
128100	26901.0	0.28	1362984	286226.64	0	0	2772084	582137.64	CUST00988
149144	189412.88	0.26	930658	1181935.66	0	0	2422098	3076064.46	CUST00989
140358	103864.92	0.16	651261	481933.14	0	0	2054841	1520582.34	CUST00990
134051	28150.71	0.29	1360617	285729.57	0	0	4041637	848743.77	CUST00991
133807	99017.18	0.09	228809	169318.66	0	0	496423	367353.02	CUST00992
219827	162671.98	0.11	580343	429453.82	0	0	4757056	3520221.44	CUST00993
80703	102492.81	0.28	903873	1147918.71	0	0	2033715	2582818.05	CUST00994
104237	77135.38	0.25	573303	424244.22	0	0	2136858	1581274.92	CUST00995
121765	154641.55	0.14	136376	173197.52	0	0	2328146	2956745.42	CUST00996
109151	80771.74	0.16	17464	12923.36	0	0	1327276	982184.24	CUST00997
271111	73199.97	0.09	24399	6587.73	0	0	3819953	1031387.31	CUST00998
217261	58660.47	0.08	17380	4692.6	0	0	3928078	1060581.06	CUST00999
\.


--
-- TOC entry 5040 (class 0 OID 16436)
-- Dependencies: 223
-- Data for Name: insurance_info; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.insurance_info (policy_type, annual_premium_local, annual_premium_usd, premium_to_income_ratio, customer_id) FROM stdin;
life	13255	13255.0	0.06	CUST00000
endowment	41410	30643.4	0.22	CUST00001
life	227732083	14802.59	0.29	CUST00002
health	2900	609.0	0.05	CUST00003
endowment	178960834	11632.45	0.26	CUST00004
unit_link	40774	30172.76	0.19	CUST00005
endowment	17623	17623.0	0.08	CUST00006
health	11809	14997.43	0.06	CUST00007
endowment	41613	30793.62	0.26	CUST00008
health	71573	19324.71	0.21	CUST00009
life	64061	47405.14	0.29	CUST00010
endowment	47506	35154.44	0.28	CUST00011
unit_link	6873	1443.33	0.04	CUST00012
health	52942	39177.08	0.28	CUST00013
unit_link	2329	2957.83	0.03	CUST00014
unit_link	20898620	1358.41	0.16	CUST00015
life	9526	7049.24	0.12	CUST00016
endowment	7729	1623.09	0.06	CUST00017
endowment	57085	72497.95	0.29	CUST00018
endowment	23440	6328.8	0.09	CUST00019
unit_link	8024	5937.76	0.04	CUST00020
life	6362	4707.88	0.13	CUST00021
health	8106	10294.62	0.09	CUST00022
health	56472261	3670.7	0.04	CUST00023
life	15482	11456.68	0.22	CUST00024
health	5588	4135.12	0.1	CUST00025
health	11726	2462.46	0.03	CUST00026
unit_link	18771	5068.17	0.17	CUST00027
unit_link	16680	3502.8	0.12	CUST00028
health	18412	13624.88	0.24	CUST00029
life	57605639	3744.37	0.12	CUST00030
health	162045886	10532.98	0.11	CUST00031
endowment	48739	10235.19	0.14	CUST00032
health	57678	15573.06	0.12	CUST00033
unit_link	9987	9987.0	0.07	CUST00034
endowment	97090224	6310.86	0.19	CUST00035
unit_link	4817	4817.0	0.05	CUST00036
endowment	62057	45922.18	0.27	CUST00037
endowment	57379	57379.0	0.25	CUST00038
endowment	197522018	12838.93	0.19	CUST00039
unit_link	104120	28112.4	0.23	CUST00040
endowment	8771	1841.91	0.04	CUST00041
life	74513	20118.51	0.25	CUST00042
unit_link	60914	12791.94	0.24	CUST00043
life	119223	32190.21	0.28	CUST00044
endowment	32626453	2120.72	0.09	CUST00045
health	4634	1251.18	0.03	CUST00046
endowment	18393	18393.0	0.19	CUST00047
life	32806	8857.62	0.24	CUST00048
life	4360	1177.2	0.05	CUST00049
endowment	41940	41940.0	0.26	CUST00050
health	92634	25011.18	0.24	CUST00051
life	111422786	7242.48	0.19	CUST00052
life	20937	15493.38	0.18	CUST00053
health	15100	11174.0	0.1	CUST00054
life	19500	4095.0	0.1	CUST00055
health	18214	23131.78	0.22	CUST00056
health	1225	257.25	0.03	CUST00057
endowment	76493706	4972.09	0.07	CUST00058
life	110253284	7166.46	0.29	CUST00059
life	32530	41313.1	0.26	CUST00060
endowment	4608	967.68	0.04	CUST00061
unit_link	16196	3401.16	0.24	CUST00062
health	16395	16395.0	0.07	CUST00063
health	12433	2610.93	0.04	CUST00064
endowment	6426	6426.0	0.18	CUST00065
unit_link	11087	2993.49	0.11	CUST00066
endowment	34408	7225.68	0.11	CUST00067
health	163294259	10614.13	0.2	CUST00068
life	8217	8217.0	0.22	CUST00069
health	407923092	26515.0	0.28	CUST00070
health	15550	11507.0	0.23	CUST00071
unit_link	18081	22962.87	0.18	CUST00072
endowment	60013	12602.73	0.26	CUST00073
health	20821	20821.0	0.16	CUST00074
endowment	10850	2929.5	0.04	CUST00075
life	50028	63535.56	0.26	CUST00076
life	8048	8048.0	0.14	CUST00077
unit_link	34629	7272.09	0.14	CUST00078
endowment	26432	7136.64	0.09	CUST00079
health	39387	10634.49	0.3	CUST00080
life	31550	8518.5	0.18	CUST00081
health	53452	53452.0	0.24	CUST00082
health	20734	20734.0	0.11	CUST00083
health	35902	7539.42	0.27	CUST00084
health	28021	7565.67	0.06	CUST00085
life	22339	28370.53	0.18	CUST00086
life	22802	28958.54	0.27	CUST00087
endowment	4694	985.74	0.06	CUST00088
health	15897	4292.19	0.08	CUST00089
unit_link	38392	38392.0	0.29	CUST00090
health	6536	4836.64	0.08	CUST00091
health	5446	4030.04	0.06	CUST00092
life	8700	6438.0	0.15	CUST00093
endowment	3853	4893.31	0.04	CUST00094
health	12111	3269.97	0.06	CUST00095
unit_link	71306	19252.62	0.26	CUST00096
health	27851	7519.77	0.11	CUST00097
health	66119502	4297.77	0.25	CUST00098
unit_link	5165	5165.0	0.05	CUST00099
life	7518	1578.78	0.08	CUST00100
unit_link	21788	21788.0	0.18	CUST00101
life	15972	11819.28	0.11	CUST00102
health	15026	19083.02	0.16	CUST00103
endowment	83872	22645.44	0.21	CUST00104
unit_link	16862	12477.88	0.16	CUST00105
health	6239	7923.53	0.14	CUST00106
health	4100	4100.0	0.07	CUST00107
unit_link	35599	26343.26	0.26	CUST00108
unit_link	19364	19364.0	0.12	CUST00109
endowment	15958	11808.92	0.07	CUST00110
life	9286	11793.22	0.14	CUST00111
endowment	3311	893.97	0.04	CUST00112
life	45889	45889.0	0.19	CUST00113
unit_link	80438	16891.98	0.22	CUST00114
endowment	15610	4214.7	0.04	CUST00115
unit_link	32479	32479.0	0.28	CUST00116
health	9494	9494.0	0.05	CUST00117
life	5091	3767.34	0.06	CUST00118
health	32138	8677.26	0.22	CUST00119
endowment	46425	46425.0	0.27	CUST00120
health	17844	22661.88	0.26	CUST00121
endowment	43721	9181.41	0.25	CUST00122
life	21697	5858.19	0.12	CUST00123
unit_link	109429	22980.09	0.27	CUST00124
endowment	5648	7172.96	0.1	CUST00125
life	12965	3500.55	0.22	CUST00126
life	47986	35509.64	0.29	CUST00127
health	51490	13902.3	0.12	CUST00128
endowment	76582	16082.22	0.2	CUST00129
health	16976	12562.24	0.15	CUST00130
unit_link	50860	10680.6	0.23	CUST00131
life	23540	29895.8	0.17	CUST00132
endowment	31596	40126.92	0.22	CUST00133
endowment	47176	47176.0	0.29	CUST00134
health	24694	24694.0	0.19	CUST00135
unit_link	10894	13835.38	0.09	CUST00136
unit_link	27875	35401.25	0.3	CUST00137
health	19877	5366.79	0.21	CUST00138
unit_link	12850	12850.0	0.05	CUST00139
endowment	6514	8272.78	0.04	CUST00140
unit_link	30969	6503.49	0.12	CUST00141
health	42879873	2787.19	0.11	CUST00142
unit_link	2899	2899.0	0.05	CUST00143
health	1530	1943.1	0.04	CUST00144
health	30176	30176.0	0.16	CUST00145
health	29797	22049.78	0.19	CUST00146
life	10310	13093.7	0.09	CUST00147
endowment	14838	18844.26	0.22	CUST00148
life	20555	5549.85	0.08	CUST00149
endowment	6032	6032.0	0.06	CUST00150
health	15385	19538.95	0.13	CUST00151
life	25936	7002.72	0.08	CUST00152
unit_link	15943	3348.03	0.06	CUST00153
endowment	46515	9768.15	0.16	CUST00154
unit_link	134874169	8766.82	0.19	CUST00155
unit_link	3595	4565.65	0.03	CUST00156
unit_link	36373	26916.02	0.26	CUST00157
health	19150	19150.0	0.15	CUST00158
endowment	25539	18898.86	0.24	CUST00159
unit_link	7824	7824.0	0.13	CUST00160
health	11665	11665.0	0.08	CUST00161
life	3186	4046.22	0.08	CUST00162
unit_link	9526337	619.21	0.13	CUST00163
unit_link	154032994	10012.14	0.28	CUST00164
endowment	9079	6718.46	0.28	CUST00165
unit_link	106525	28761.75	0.22	CUST00166
life	17861	22683.47	0.25	CUST00167
health	8166	6042.84	0.09	CUST00168
health	13271	13271.0	0.06	CUST00169
unit_link	21195	15684.3	0.14	CUST00170
unit_link	330600557	21489.04	0.28	CUST00171
life	3584	4551.68	0.05	CUST00172
life	76317	20605.59	0.22	CUST00173
health	98822	26681.94	0.3	CUST00174
life	33769	33769.0	0.26	CUST00175
endowment	14814	18813.78	0.25	CUST00176
life	3504	2592.96	0.03	CUST00177
endowment	16085	20427.95	0.09	CUST00178
unit_link	74449162	4839.2	0.11	CUST00179
endowment	29636	37637.72	0.29	CUST00180
unit_link	31696	31696.0	0.13	CUST00181
unit_link	10599	2225.79	0.18	CUST00182
life	8902456	578.66	0.03	CUST00183
unit_link	8589	10908.03	0.1	CUST00184
endowment	14744	14744.0	0.11	CUST00185
health	11860	15062.2	0.23	CUST00186
unit_link	17917	13258.58	0.18	CUST00187
endowment	15588	19796.76	0.09	CUST00188
life	23262	23262.0	0.3	CUST00189
life	6957	1878.39	0.08	CUST00190
endowment	4778	6068.06	0.17	CUST00191
health	7143	9071.61	0.09	CUST00192
life	42500	42500.0	0.2	CUST00193
life	107423	29004.21	0.26	CUST00194
life	21389	21389.0	0.21	CUST00195
unit_link	63634	47089.16	0.28	CUST00196
life	5650	5650.0	0.04	CUST00197
endowment	5156	6548.12	0.16	CUST00198
unit_link	51055	51055.0	0.22	CUST00199
unit_link	11270	2366.7	0.14	CUST00200
health	15716	19959.32	0.12	CUST00201
health	37560	10141.2	0.21	CUST00202
unit_link	156072751	10144.73	0.24	CUST00203
health	23703	6399.81	0.11	CUST00204
health	16761	16761.0	0.15	CUST00205
unit_link	5369	3973.06	0.05	CUST00206
unit_link	51673	38238.02	0.21	CUST00207
life	61656	16647.12	0.17	CUST00208
endowment	296145432	19249.45	0.2	CUST00209
endowment	211144260	13724.38	0.18	CUST00210
life	10787	10787.0	0.16	CUST00211
health	14352	3013.92	0.05	CUST00212
unit_link	33627	33627.0	0.28	CUST00213
unit_link	49712	13422.24	0.13	CUST00214
health	119483522	7766.43	0.18	CUST00215
life	57394	12052.74	0.19	CUST00216
life	20039	25449.53	0.11	CUST00217
unit_link	25107	31885.89	0.14	CUST00218
unit_link	55118	40787.32	0.29	CUST00219
life	42017	11344.59	0.16	CUST00220
life	16886	12495.64	0.23	CUST00221
health	12724	2672.04	0.05	CUST00222
endowment	121138218	7873.98	0.21	CUST00223
health	33577	24846.98	0.19	CUST00224
unit_link	16785	21316.95	0.28	CUST00225
life	30994	22935.56	0.2	CUST00226
endowment	75269	15806.49	0.26	CUST00227
unit_link	121548	32817.96	0.25	CUST00228
endowment	34497968	2242.37	0.02	CUST00229
life	3306	3306.0	0.05	CUST00230
unit_link	2893	2893.0	0.02	CUST00231
unit_link	68365100	4443.73	0.21	CUST00232
life	108002755	7020.18	0.13	CUST00233
life	73014	19713.78	0.19	CUST00234
health	13419	17042.13	0.1	CUST00235
endowment	30578	38834.06	0.24	CUST00236
health	1604	2037.08	0.06	CUST00237
health	6386843	415.14	0.03	CUST00238
unit_link	52722625	3426.97	0.04	CUST00239
life	3849	4888.23	0.04	CUST00240
health	20045	4209.45	0.22	CUST00241
life	57125	57125.0	0.25	CUST00242
life	15934	4302.18	0.07	CUST00243
life	74453698	4839.49	0.13	CUST00244
unit_link	25810	6968.7	0.05	CUST00245
life	22106	5968.62	0.11	CUST00246
unit_link	81800	17178.0	0.3	CUST00247
health	230149530	14959.72	0.29	CUST00248
unit_link	10020	7414.8	0.22	CUST00249
endowment	2254	2254.0	0.04	CUST00250
life	8049	1690.29	0.04	CUST00251
life	16602	4482.54	0.15	CUST00252
health	8782	1844.22	0.06	CUST00253
life	8132	1707.72	0.18	CUST00254
life	2613	1933.62	0.06	CUST00255
unit_link	18278778	1188.12	0.05	CUST00256
life	13637	3681.99	0.1	CUST00257
life	3640	4622.8	0.08	CUST00258
unit_link	22047	5952.69	0.07	CUST00259
unit_link	132320	35726.4	0.29	CUST00260
unit_link	50992	50992.0	0.28	CUST00261
health	323014759	20995.96	0.25	CUST00262
unit_link	59816752	3888.09	0.11	CUST00263
life	25444	5343.24	0.24	CUST00264
unit_link	24543	5154.03	0.24	CUST00265
endowment	49836	36878.64	0.22	CUST00266
health	5894	7485.38	0.11	CUST00267
health	91590725	5953.4	0.09	CUST00268
endowment	31605	8533.35	0.12	CUST00269
unit_link	30355342	1973.1	0.04	CUST00270
endowment	193952516	12606.91	0.14	CUST00271
unit_link	20058	14842.92	0.09	CUST00272
endowment	1749	2221.23	0.04	CUST00273
health	12342	9133.08	0.24	CUST00274
health	18294	3841.74	0.14	CUST00275
life	27883	27883.0	0.14	CUST00276
unit_link	18157	23059.39	0.1	CUST00277
health	4827	3571.98	0.08	CUST00278
endowment	16384	20807.68	0.15	CUST00279
health	12215	15513.05	0.24	CUST00280
endowment	39585	10687.95	0.13	CUST00281
health	7164	1504.44	0.03	CUST00282
life	21469	15887.06	0.1	CUST00283
endowment	59446	16050.42	0.24	CUST00284
unit_link	14368288	933.94	0.03	CUST00285
health	6151	7811.77	0.19	CUST00286
unit_link	10580	2221.8	0.24	CUST00287
health	28112	35702.24	0.19	CUST00288
life	38174	10306.98	0.21	CUST00289
health	54104	11361.84	0.15	CUST00290
health	18844	18844.0	0.27	CUST00291
health	44368	9317.28	0.18	CUST00292
health	80694	21787.38	0.26	CUST00293
endowment	31771	6671.91	0.08	CUST00294
endowment	50493	10603.53	0.18	CUST00295
endowment	6326	6326.0	0.06	CUST00296
endowment	17005	17005.0	0.11	CUST00297
endowment	8903	6588.22	0.06	CUST00298
life	199733999	12982.71	0.23	CUST00299
health	8863	1861.23	0.11	CUST00300
unit_link	16082	20424.14	0.12	CUST00301
endowment	14973	11080.02	0.07	CUST00302
health	26837	34082.99	0.14	CUST00303
unit_link	22385	22385.0	0.21	CUST00304
unit_link	4150	5270.5	0.08	CUST00305
life	56962107	3702.54	0.11	CUST00306
endowment	13577	10046.98	0.27	CUST00307
life	95264968	6192.22	0.14	CUST00308
health	38498	28488.52	0.27	CUST00309
unit_link	83031	22418.37	0.2	CUST00310
unit_link	33310	42303.7	0.24	CUST00311
unit_link	1952	527.04	0.02	CUST00312
unit_link	22228	22228.0	0.15	CUST00313
health	36859	27275.66	0.23	CUST00314
life	19417	24659.59	0.15	CUST00315
health	18270	4932.9	0.18	CUST00316
life	59196	12431.16	0.22	CUST00317
unit_link	10408	2185.68	0.03	CUST00318
life	29352	21720.48	0.22	CUST00319
endowment	27243	34598.61	0.17	CUST00320
unit_link	32611	24132.14	0.16	CUST00321
health	10623	2230.83	0.1	CUST00322
life	33226	33226.0	0.16	CUST00323
life	40633	51603.91	0.25	CUST00324
unit_link	24741952	1608.23	0.06	CUST00325
life	69818315	4538.19	0.13	CUST00326
health	8545	8545.0	0.19	CUST00327
health	4220	3122.8	0.05	CUST00328
life	8559	1797.39	0.03	CUST00329
endowment	17956	22804.12	0.17	CUST00330
endowment	33411	24724.14	0.29	CUST00331
life	79305	21412.35	0.21	CUST00332
unit_link	32799	6887.79	0.14	CUST00333
endowment	95221683	6189.41	0.08	CUST00334
life	33548	33548.0	0.15	CUST00335
endowment	44459	9336.39	0.13	CUST00336
life	333011366	21645.74	0.23	CUST00337
endowment	6679	6679.0	0.13	CUST00338
life	11103	11103.0	0.1	CUST00339
unit_link	17462	22176.74	0.11	CUST00340
endowment	17611	13032.14	0.07	CUST00341
life	40127	8426.67	0.12	CUST00342
health	31725	23476.5	0.21	CUST00343
endowment	21082	4427.22	0.06	CUST00344
unit_link	22261	4674.81	0.26	CUST00345
health	104208815	6773.57	0.08	CUST00346
life	2952	2184.48	0.05	CUST00347
health	13657	17344.39	0.2	CUST00348
endowment	20930	15488.2	0.17	CUST00349
unit_link	54427	54427.0	0.25	CUST00350
endowment	15792	15792.0	0.16	CUST00351
health	7153	5293.22	0.08	CUST00352
life	71204	14952.84	0.19	CUST00353
unit_link	11615	14751.05	0.06	CUST00354
endowment	13793	13793.0	0.26	CUST00355
life	27642	20455.08	0.28	CUST00356
life	250247164	16266.07	0.21	CUST00357
life	24330	30899.1	0.16	CUST00358
life	133270903	8662.61	0.24	CUST00359
life	17223	12745.02	0.09	CUST00360
endowment	25298	25298.0	0.2	CUST00361
endowment	21452	21452.0	0.16	CUST00362
life	29419	29419.0	0.15	CUST00363
life	25707	5398.47	0.07	CUST00364
endowment	35806	9667.62	0.19	CUST00365
unit_link	14519	10744.06	0.1	CUST00366
unit_link	6272	6272.0	0.12	CUST00367
endowment	14822	18823.94	0.08	CUST00368
health	12540	15925.8	0.29	CUST00369
health	54540	40359.6	0.26	CUST00370
unit_link	39469	29207.06	0.16	CUST00371
health	18919	18919.0	0.11	CUST00372
unit_link	25270	18699.8	0.25	CUST00373
health	55027	55027.0	0.29	CUST00374
endowment	11010	2972.7	0.06	CUST00375
unit_link	6671	6671.0	0.11	CUST00376
health	12227	2567.67	0.1	CUST00377
unit_link	35037	9459.99	0.07	CUST00378
endowment	11645	14789.15	0.15	CUST00379
life	22766	22766.0	0.1	CUST00380
health	158126610	10278.23	0.15	CUST00381
unit_link	44632	9372.72	0.18	CUST00382
health	6826	8669.02	0.15	CUST00383
health	174683961	11354.46	0.22	CUST00384
life	3788	4810.76	0.06	CUST00385
health	206352132	13412.89	0.17	CUST00386
unit_link	35117	9481.59	0.2	CUST00387
unit_link	45307	9514.47	0.14	CUST00388
health	19022	19022.0	0.17	CUST00389
life	35394	7432.74	0.12	CUST00390
endowment	21337	5760.99	0.12	CUST00391
health	10425	10425.0	0.04	CUST00392
health	28883	7798.41	0.2	CUST00393
life	3544	2622.56	0.1	CUST00394
health	80944	21854.88	0.3	CUST00395
unit_link	73776	19919.52	0.25	CUST00396
health	39892684	2593.02	0.15	CUST00397
life	6914	8780.78	0.08	CUST00398
endowment	1380	1021.2	0.02	CUST00399
life	15143	11205.82	0.28	CUST00400
unit_link	134765819	8759.78	0.24	CUST00401
unit_link	16118	11927.32	0.1	CUST00402
endowment	16089	16089.0	0.06	CUST00403
unit_link	48135	12996.45	0.19	CUST00404
endowment	10255	13023.85	0.06	CUST00405
endowment	65864	65864.0	0.26	CUST00406
life	15384	15384.0	0.09	CUST00407
health	208910512	13579.18	0.25	CUST00408
unit_link	45350749	2947.8	0.17	CUST00409
endowment	63504	17146.08	0.27	CUST00410
health	14577	18512.79	0.14	CUST00411
health	68938	18613.26	0.29	CUST00412
unit_link	3815	801.15	0.03	CUST00413
endowment	11581	8569.94	0.09	CUST00414
health	120468	32526.36	0.25	CUST00415
life	261606259	17004.41	0.26	CUST00416
endowment	274203072	17823.2	0.22	CUST00417
life	38900169	2528.51	0.06	CUST00418
unit_link	9451	12002.77	0.16	CUST00419
health	13439	3628.53	0.14	CUST00420
unit_link	68670	14420.7	0.19	CUST00421
health	58935	58935.0	0.26	CUST00422
endowment	202374652	13154.35	0.17	CUST00423
health	7388	7388.0	0.08	CUST00424
endowment	387271217	25172.63	0.26	CUST00425
endowment	7011	7011.0	0.04	CUST00426
health	17966	22816.82	0.12	CUST00427
unit_link	253489052	16476.79	0.28	CUST00428
endowment	188203839	12233.25	0.14	CUST00429
health	41469	52665.63	0.21	CUST00430
unit_link	12088	8945.12	0.17	CUST00431
unit_link	11824	2483.04	0.06	CUST00432
health	34358	43634.66	0.19	CUST00433
unit_link	11180	14198.6	0.15	CUST00434
endowment	124895565	8118.21	0.23	CUST00435
life	51752	38296.48	0.22	CUST00436
unit_link	214041347	13912.69	0.18	CUST00437
endowment	25003	5250.63	0.21	CUST00438
unit_link	3453	4385.31	0.03	CUST00439
life	47537	47537.0	0.22	CUST00440
unit_link	35743	26449.82	0.28	CUST00441
unit_link	73090728	4750.9	0.1	CUST00442
unit_link	71586	15033.06	0.25	CUST00443
unit_link	8111	2189.97	0.09	CUST00444
life	17343	17343.0	0.25	CUST00445
health	45731	33840.94	0.24	CUST00446
life	2499	524.79	0.04	CUST00447
life	41599	52830.73	0.22	CUST00448
unit_link	31684	31684.0	0.17	CUST00449
life	108705	29350.35	0.29	CUST00450
life	24509	18136.66	0.18	CUST00451
endowment	59557275	3871.22	0.05	CUST00452
health	43159	9063.39	0.15	CUST00453
health	223383344	14519.92	0.18	CUST00454
life	40783	8564.43	0.18	CUST00455
health	42582	8942.22	0.15	CUST00456
health	276941010	18001.17	0.27	CUST00457
endowment	23282	4889.22	0.08	CUST00458
life	12070301	784.57	0.05	CUST00459
unit_link	35248	26083.52	0.21	CUST00460
health	9010	11442.7	0.17	CUST00461
life	21450	27241.5	0.15	CUST00462
unit_link	69473	18757.71	0.19	CUST00463
health	157574016	10242.31	0.15	CUST00464
endowment	22784	22784.0	0.15	CUST00465
health	17593	22343.11	0.11	CUST00466
endowment	22133	16378.42	0.13	CUST00467
endowment	50527	64169.29	0.25	CUST00468
health	55688	15035.76	0.21	CUST00469
endowment	33545	24823.3	0.15	CUST00470
life	85361	17925.81	0.22	CUST00471
health	43489592	2826.82	0.25	CUST00472
endowment	21638	27480.26	0.17	CUST00473
unit_link	10439	2192.19	0.06	CUST00474
endowment	53597	39661.78	0.27	CUST00475
unit_link	22361	28398.47	0.19	CUST00476
unit_link	1805	2292.35	0.05	CUST00477
health	18887	23986.49	0.21	CUST00478
unit_link	160075041	10404.88	0.14	CUST00479
life	3104	3104.0	0.07	CUST00480
life	8839	11225.53	0.1	CUST00481
health	37662	37662.0	0.16	CUST00482
health	51789	38323.86	0.22	CUST00483
endowment	162013631	10530.89	0.15	CUST00484
life	12785	16236.95	0.13	CUST00485
endowment	20643	5573.61	0.09	CUST00486
life	27088	34401.76	0.25	CUST00487
life	2896	2896.0	0.04	CUST00488
endowment	51666	38232.84	0.21	CUST00489
endowment	16102	3381.42	0.1	CUST00490
life	12671	2660.91	0.19	CUST00491
health	4337	3209.38	0.03	CUST00492
life	8622	6380.28	0.22	CUST00493
health	4811	4811.0	0.05	CUST00494
unit_link	7236	7236.0	0.04	CUST00495
life	40630	10970.1	0.2	CUST00496
endowment	22386	16565.64	0.24	CUST00497
unit_link	138081505	8975.3	0.15	CUST00498
life	13502	9991.48	0.09	CUST00499
endowment	106204811	6903.31	0.25	CUST00500
life	38025	10266.75	0.17	CUST00501
life	7818	1641.78	0.07	CUST00502
life	9962	9962.0	0.04	CUST00503
life	18267	4932.09	0.15	CUST00504
life	69385836	4510.08	0.09	CUST00505
endowment	47377	12791.79	0.24	CUST00506
life	76360348	4963.42	0.11	CUST00507
health	68650820	4462.3	0.22	CUST00508
unit_link	45537	9562.77	0.23	CUST00509
endowment	36619825	2380.29	0.07	CUST00510
endowment	3786	2801.64	0.1	CUST00511
life	12931	9568.94	0.18	CUST00512
unit_link	55969	41417.06	0.22	CUST00513
life	821	1042.67	0.03	CUST00514
unit_link	36900	36900.0	0.23	CUST00515
life	33790	33790.0	0.22	CUST00516
endowment	51463	51463.0	0.22	CUST00517
health	80439	21718.53	0.24	CUST00518
unit_link	11425	11425.0	0.19	CUST00519
unit_link	20960	15510.4	0.23	CUST00520
life	11392	14467.84	0.12	CUST00521
life	13658	17345.66	0.07	CUST00522
life	103742376	6743.25	0.16	CUST00523
unit_link	11776	14955.52	0.1	CUST00524
health	40262	40262.0	0.26	CUST00525
unit_link	13844	2907.24	0.06	CUST00526
endowment	21555	15950.7	0.3	CUST00527
health	19707	25027.89	0.17	CUST00528
endowment	63877	17246.79	0.29	CUST00529
health	3214	4081.78	0.06	CUST00530
unit_link	9946	7360.04	0.18	CUST00531
life	34688	9365.76	0.11	CUST00532
life	29058	7845.66	0.12	CUST00533
life	30436	8217.72	0.22	CUST00534
unit_link	24215	30753.05	0.13	CUST00535
health	39054	28899.96	0.16	CUST00536
endowment	3854	2851.96	0.05	CUST00537
health	18289	18289.0	0.3	CUST00538
unit_link	88736	18634.56	0.23	CUST00539
health	10008	10008.0	0.14	CUST00540
health	264344487	17182.39	0.19	CUST00541
health	4016	4016.0	0.02	CUST00542
life	17109	12660.66	0.24	CUST00543
health	64212782	4173.83	0.06	CUST00544
endowment	20149533	1309.72	0.06	CUST00545
health	28461	7684.47	0.19	CUST00546
life	97015285	6305.99	0.07	CUST00547
life	47198	9911.58	0.16	CUST00548
health	61141	45244.34	0.28	CUST00549
life	73268958	4762.48	0.08	CUST00550
health	38271	10333.17	0.11	CUST00551
health	12765	12765.0	0.07	CUST00552
life	13762	3715.74	0.05	CUST00553
health	10111	7482.14	0.05	CUST00554
health	36905	36905.0	0.24	CUST00555
endowment	35628	26364.72	0.16	CUST00556
endowment	47981	60935.87	0.24	CUST00557
endowment	11677	2452.17	0.3	CUST00558
endowment	336099397	21846.46	0.27	CUST00559
endowment	85589	23109.03	0.21	CUST00560
life	25027	5255.67	0.11	CUST00561
health	29183	29183.0	0.13	CUST00562
life	54951	40663.74	0.27	CUST00563
life	61526	12920.46	0.16	CUST00564
health	57796	12137.16	0.25	CUST00565
unit_link	14623	14623.0	0.08	CUST00566
health	41700	52959.0	0.22	CUST00567
health	16190	20561.3	0.2	CUST00568
unit_link	26650	7195.5	0.07	CUST00569
unit_link	55558	55558.0	0.28	CUST00570
unit_link	37023	27397.02	0.26	CUST00571
endowment	12043	8911.82	0.15	CUST00572
life	16418	12149.32	0.07	CUST00573
unit_link	28920	6073.2	0.13	CUST00574
health	102952807	6691.93	0.09	CUST00575
life	10859	8035.66	0.14	CUST00576
endowment	281054829	18268.56	0.29	CUST00577
life	9362	11889.74	0.11	CUST00578
health	10050	2713.5	0.1	CUST00579
health	209124014	13593.06	0.22	CUST00580
unit_link	29701	29701.0	0.2	CUST00581
endowment	12033	2526.93	0.16	CUST00582
endowment	18406	18406.0	0.24	CUST00583
life	12246	3306.42	0.2	CUST00584
life	11864	8779.36	0.06	CUST00585
endowment	8225	2220.75	0.07	CUST00586
life	33738	24966.12	0.14	CUST00587
health	15649	4225.23	0.04	CUST00588
endowment	3541	3541.0	0.04	CUST00589
unit_link	9579	12165.33	0.1	CUST00590
endowment	5363	3968.62	0.05	CUST00591
health	65826373	4278.71	0.1	CUST00592
unit_link	11215	2355.15	0.03	CUST00593
endowment	1898	1404.52	0.03	CUST00594
health	30872	30872.0	0.25	CUST00595
health	105275317	6842.9	0.24	CUST00596
life	32538	32538.0	0.25	CUST00597
unit_link	22496	4724.16	0.11	CUST00598
unit_link	3079	646.59	0.05	CUST00599
health	12600	9324.0	0.05	CUST00600
endowment	43981	9236.01	0.15	CUST00601
unit_link	31163	39577.01	0.16	CUST00602
unit_link	15381	19533.87	0.1	CUST00603
health	21647	27491.69	0.14	CUST00604
endowment	50800	64516.0	0.26	CUST00605
unit_link	109603	29592.81	0.29	CUST00606
endowment	8958	8958.0	0.05	CUST00607
unit_link	53751	11287.71	0.25	CUST00608
unit_link	102844909	6684.92	0.2	CUST00609
endowment	8103	5996.22	0.23	CUST00610
endowment	5494	4065.56	0.02	CUST00611
unit_link	28341	35993.07	0.19	CUST00612
health	11201	14225.27	0.27	CUST00613
endowment	17140	3599.4	0.08	CUST00614
endowment	90713	24492.51	0.19	CUST00615
life	14077	17877.79	0.11	CUST00616
endowment	3520	739.2	0.03	CUST00617
unit_link	21797	27682.19	0.24	CUST00618
life	26443	7139.61	0.25	CUST00619
health	58863	12361.23	0.23	CUST00620
health	58779	43496.46	0.25	CUST00621
unit_link	45025	45025.0	0.23	CUST00622
life	67154	18131.58	0.14	CUST00623
health	36294	26857.56	0.27	CUST00624
unit_link	4867	4867.0	0.02	CUST00625
unit_link	52615	66821.05	0.27	CUST00626
health	24183	5078.43	0.08	CUST00627
life	19720	25044.4	0.22	CUST00628
endowment	38402	8064.42	0.1	CUST00629
unit_link	18052	22926.04	0.1	CUST00630
endowment	192933205	12540.66	0.15	CUST00631
endowment	19511	14438.14	0.13	CUST00632
endowment	26198	7073.46	0.06	CUST00633
endowment	306098083	19896.38	0.28	CUST00634
endowment	32834	6895.14	0.3	CUST00635
life	7482	9502.14	0.07	CUST00636
unit_link	351156547	22825.18	0.27	CUST00637
endowment	5765	1556.55	0.05	CUST00638
health	76627	16091.67	0.2	CUST00639
life	8943	11357.61	0.23	CUST00640
life	27814	20582.36	0.19	CUST00641
unit_link	7659	5667.66	0.05	CUST00642
life	179496585	11667.28	0.19	CUST00643
unit_link	15342	3221.82	0.08	CUST00644
endowment	10958	2958.66	0.13	CUST00645
life	9430	11976.1	0.11	CUST00646
health	20667	15293.58	0.15	CUST00647
health	54422	14693.94	0.3	CUST00648
health	12252	15560.04	0.25	CUST00649
health	35010	7352.1	0.1	CUST00650
endowment	7820	1642.2	0.02	CUST00651
health	35649	35649.0	0.21	CUST00652
health	21858	21858.0	0.14	CUST00653
endowment	24131	30646.37	0.29	CUST00654
unit_link	6956	6956.0	0.07	CUST00655
health	94643999	6151.86	0.07	CUST00656
endowment	11092	11092.0	0.1	CUST00657
unit_link	95691675	6219.96	0.15	CUST00658
life	14522782	943.98	0.07	CUST00659
health	51849202	3370.2	0.09	CUST00660
endowment	8303	10544.81	0.04	CUST00661
life	27179369	1766.66	0.04	CUST00662
life	26771	33999.17	0.15	CUST00663
unit_link	16113	3383.73	0.19	CUST00664
endowment	2908	2908.0	0.04	CUST00665
unit_link	15030	19088.1	0.1	CUST00666
health	22951	29147.77	0.2	CUST00667
unit_link	95618	25816.86	0.19	CUST00668
endowment	10233732	665.19	0.15	CUST00669
unit_link	1703	1260.22	0.05	CUST00670
unit_link	8711	6446.14	0.12	CUST00671
endowment	44198	9281.58	0.11	CUST00672
unit_link	63683	63683.0	0.27	CUST00673
unit_link	101243	27335.61	0.28	CUST00674
endowment	88871265	5776.63	0.27	CUST00675
endowment	35273	35273.0	0.22	CUST00676
unit_link	12359	12359.0	0.15	CUST00677
health	21137	26843.99	0.23	CUST00678
health	18387	23351.49	0.13	CUST00679
health	20306	15026.44	0.16	CUST00680
unit_link	12152	2551.92	0.09	CUST00681
endowment	229112192	14892.29	0.28	CUST00682
health	21186	21186.0	0.23	CUST00683
unit_link	7960	2149.2	0.03	CUST00684
health	20815	20815.0	0.23	CUST00685
endowment	202105090	13136.83	0.26	CUST00686
unit_link	16072	4339.44	0.05	CUST00687
endowment	13313	9851.62	0.1	CUST00688
life	7442	5507.08	0.06	CUST00689
unit_link	15754	11657.96	0.06	CUST00690
endowment	41167	30463.58	0.17	CUST00691
unit_link	104213995	6773.91	0.13	CUST00692
unit_link	89746	24231.42	0.22	CUST00693
life	50881230	3307.28	0.05	CUST00694
endowment	10620	2230.2	0.2	CUST00695
endowment	20241	5465.07	0.11	CUST00696
life	17068	17068.0	0.26	CUST00697
health	10554	10554.0	0.21	CUST00698
endowment	29101	29101.0	0.2	CUST00699
life	135367623	8798.9	0.27	CUST00700
unit_link	35410	7436.1	0.24	CUST00701
life	100990	21207.9	0.28	CUST00702
life	31061	6522.81	0.13	CUST00703
unit_link	208914372	13579.43	0.3	CUST00704
life	34392	34392.0	0.29	CUST00705
unit_link	25586	32494.22	0.16	CUST00706
health	36049943	2343.25	0.04	CUST00707
endowment	12678	12678.0	0.06	CUST00708
endowment	22852	22852.0	0.24	CUST00709
unit_link	41558377	2701.29	0.2	CUST00710
unit_link	5413	4005.62	0.11	CUST00711
health	25474	5349.54	0.1	CUST00712
endowment	92185	24889.95	0.25	CUST00713
endowment	10134	2128.14	0.09	CUST00714
life	7703	2079.81	0.06	CUST00715
endowment	10040	2710.8	0.04	CUST00716
endowment	61530	12921.3	0.22	CUST00717
health	74989	15747.69	0.19	CUST00718
unit_link	7959	7959.0	0.13	CUST00719
life	56989	11967.69	0.18	CUST00720
endowment	30169	6335.49	0.22	CUST00721
unit_link	9439	9439.0	0.07	CUST00722
endowment	118782319	7720.85	0.23	CUST00723
unit_link	10416	10416.0	0.1	CUST00724
unit_link	152154491	9890.04	0.24	CUST00725
unit_link	25593	5374.53	0.12	CUST00726
life	61370784	3989.1	0.22	CUST00727
life	3339	4240.53	0.02	CUST00728
endowment	20706	20706.0	0.23	CUST00729
life	25188	5289.48	0.24	CUST00730
unit_link	78963	16582.23	0.29	CUST00731
health	9340	9340.0	0.06	CUST00732
unit_link	7710	7710.0	0.05	CUST00733
life	13377	13377.0	0.09	CUST00734
health	36294	26857.56	0.29	CUST00735
unit_link	75212	20307.24	0.17	CUST00736
health	76440	20638.8	0.16	CUST00737
health	26684	5603.64	0.15	CUST00738
endowment	41216	8655.36	0.28	CUST00739
health	31513	40021.51	0.23	CUST00740
endowment	15299	19429.73	0.26	CUST00741
life	15352	15352.0	0.23	CUST00742
health	5590	1509.3	0.07	CUST00743
endowment	11762	3175.74	0.1	CUST00744
life	4551	4551.0	0.02	CUST00745
endowment	36531	46394.37	0.24	CUST00746
endowment	158177909	10281.56	0.13	CUST00747
life	5603	7115.81	0.07	CUST00748
life	18478	13673.72	0.09	CUST00749
endowment	19454	14395.96	0.2	CUST00750
life	61186	12849.06	0.21	CUST00751
endowment	17065	12628.1	0.1	CUST00752
unit_link	54397	14687.19	0.21	CUST00753
health	41150	41150.0	0.19	CUST00754
health	12828	16291.56	0.13	CUST00755
unit_link	7016	5191.84	0.13	CUST00756
life	40629	10969.83	0.17	CUST00757
unit_link	82457	22263.39	0.17	CUST00758
unit_link	2345	2345.0	0.03	CUST00759
health	29900	6279.0	0.17	CUST00760
health	4650	976.5	0.07	CUST00761
life	71124	19203.48	0.16	CUST00762
life	63907	63907.0	0.3	CUST00763
endowment	7321	9297.67	0.16	CUST00764
health	123258430	8011.8	0.1	CUST00765
endowment	26352	33467.04	0.25	CUST00766
endowment	31227	8431.29	0.13	CUST00767
unit_link	3653	4639.31	0.06	CUST00768
unit_link	92446	19413.66	0.3	CUST00769
life	17094339	1111.13	0.06	CUST00770
health	34247	34247.0	0.24	CUST00771
life	3250	3250.0	0.06	CUST00772
unit_link	3387	711.27	0.1	CUST00773
unit_link	30033	6306.93	0.08	CUST00774
life	19230	14230.2	0.3	CUST00775
life	17294	4669.38	0.08	CUST00776
life	23448	4924.08	0.11	CUST00777
health	39030	8196.3	0.14	CUST00778
health	28059	28059.0	0.12	CUST00779
unit_link	3728	1006.56	0.03	CUST00780
unit_link	17622	22379.94	0.17	CUST00781
endowment	61029	12816.09	0.28	CUST00782
endowment	10160	10160.0	0.24	CUST00783
unit_link	152558276	9916.29	0.13	CUST00784
health	13352	16957.04	0.09	CUST00785
unit_link	9856	12517.12	0.28	CUST00786
health	11906	11906.0	0.09	CUST00787
endowment	112616704	7320.09	0.17	CUST00788
health	12138	3277.26	0.06	CUST00789
health	43763	32384.62	0.18	CUST00790
life	11045	8173.3	0.14	CUST00791
unit_link	6139	1657.53	0.06	CUST00792
health	56422720	3667.48	0.23	CUST00793
endowment	68670276	4463.57	0.05	CUST00794
life	73890914	4802.91	0.08	CUST00795
unit_link	6571	4862.54	0.05	CUST00796
life	12549	15937.23	0.19	CUST00797
endowment	11836	2485.56	0.11	CUST00798
health	3809	3809.0	0.07	CUST00799
endowment	15589	4209.03	0.13	CUST00800
life	39358	39358.0	0.22	CUST00801
endowment	20930	5651.1	0.26	CUST00802
endowment	25568	6903.36	0.05	CUST00803
life	1403	1403.0	0.03	CUST00804
endowment	63879	17247.33	0.22	CUST00805
unit_link	11192	11192.0	0.19	CUST00806
endowment	34752	34752.0	0.16	CUST00807
life	6547	8314.69	0.08	CUST00808
life	14719	14719.0	0.2	CUST00809
health	6813	1430.73	0.04	CUST00810
life	7900909	513.56	0.03	CUST00811
unit_link	210920002	13709.8	0.23	CUST00812
life	4304	4304.0	0.03	CUST00813
health	100385	27103.95	0.24	CUST00814
life	4432	930.72	0.09	CUST00815
life	21610	5834.7	0.17	CUST00816
health	7955	1670.55	0.04	CUST00817
endowment	3574	964.98	0.03	CUST00818
life	6846	8694.42	0.15	CUST00819
health	32960667	2142.44	0.08	CUST00820
health	33975	9173.25	0.24	CUST00821
unit_link	4602	5844.54	0.03	CUST00822
endowment	9552	12131.04	0.08	CUST00823
unit_link	171552731	11150.93	0.26	CUST00824
unit_link	197939178	12866.05	0.28	CUST00825
unit_link	7188	9128.76	0.04	CUST00826
endowment	20203	5454.81	0.09	CUST00827
endowment	11329	14387.83	0.14	CUST00828
life	828	612.72	0.02	CUST00829
endowment	13105	2752.05	0.05	CUST00830
life	25686	19007.64	0.2	CUST00831
life	13543190	880.31	0.05	CUST00832
endowment	31485	8500.95	0.29	CUST00833
life	10623	7861.02	0.11	CUST00834
unit_link	27883	20633.42	0.11	CUST00835
health	80748	21801.96	0.29	CUST00836
unit_link	15626	15626.0	0.26	CUST00837
life	39197680	2547.85	0.03	CUST00838
endowment	8138	6022.12	0.1	CUST00839
life	10076	7456.24	0.05	CUST00840
endowment	20651	15281.74	0.13	CUST00841
life	213340660	13867.14	0.25	CUST00842
life	17224124	1119.57	0.02	CUST00843
health	20186850	1312.15	0.05	CUST00844
endowment	11964	11964.0	0.12	CUST00845
health	40702	10989.54	0.29	CUST00846
endowment	52912	14286.24	0.19	CUST00847
health	6709	6709.0	0.09	CUST00848
health	44370	9317.7	0.2	CUST00849
endowment	287781151	18705.77	0.27	CUST00850
endowment	18592	13758.08	0.18	CUST00851
health	8568684	556.96	0.05	CUST00852
life	1838	385.98	0.06	CUST00853
life	27511576	1788.25	0.04	CUST00854
unit_link	13875	3746.25	0.03	CUST00855
life	18543	18543.0	0.25	CUST00856
endowment	19369	4067.49	0.1	CUST00857
endowment	32713	24207.62	0.17	CUST00858
life	6425	6425.0	0.12	CUST00859
health	166769963	10840.05	0.16	CUST00860
unit_link	24130	30645.1	0.29	CUST00861
unit_link	93567	25263.09	0.27	CUST00862
endowment	288495928	18752.24	0.28	CUST00863
endowment	3690	996.3	0.05	CUST00864
unit_link	23871	17664.54	0.14	CUST00865
endowment	55630291	3615.97	0.1	CUST00866
health	16644	16644.0	0.2	CUST00867
unit_link	15139	15139.0	0.07	CUST00868
life	41632	30807.68	0.29	CUST00869
unit_link	19197	5183.19	0.18	CUST00870
health	14602	14602.0	0.09	CUST00871
life	19499	4094.79	0.05	CUST00872
unit_link	36511	36511.0	0.23	CUST00873
unit_link	52621	14207.67	0.27	CUST00874
life	35511	9587.97	0.18	CUST00875
health	5174	1086.54	0.15	CUST00876
endowment	259834244	16889.23	0.25	CUST00877
unit_link	23006	23006.0	0.24	CUST00878
unit_link	14907	14907.0	0.08	CUST00879
unit_link	190620935	12390.36	0.14	CUST00880
unit_link	29343	37265.61	0.28	CUST00881
endowment	23740	30149.8	0.15	CUST00882
health	11575	14700.25	0.24	CUST00883
life	19137	24303.99	0.15	CUST00884
life	33132	33132.0	0.18	CUST00885
health	9621	9621.0	0.06	CUST00886
life	7052	8956.04	0.17	CUST00887
health	33607	9073.89	0.3	CUST00888
unit_link	5319	3936.06	0.07	CUST00889
endowment	20625	20625.0	0.13	CUST00890
endowment	9625	2021.25	0.03	CUST00891
health	8774	2368.98	0.16	CUST00892
health	30020	30020.0	0.15	CUST00893
health	27858	27858.0	0.18	CUST00894
unit_link	6088	7731.76	0.03	CUST00895
endowment	11350	11350.0	0.05	CUST00896
endowment	280871779	18256.67	0.28	CUST00897
unit_link	16030	20358.1	0.21	CUST00898
health	2799	2071.26	0.08	CUST00899
health	364218226	23674.18	0.25	CUST00900
health	25481	18855.94	0.18	CUST00901
health	214421553	13937.4	0.28	CUST00902
life	62135687	4038.82	0.11	CUST00903
life	36594542	2378.65	0.06	CUST00904
health	31055	39439.85	0.27	CUST00905
unit_link	3591	4560.57	0.03	CUST00906
life	57194560	3717.65	0.17	CUST00907
life	14349	3874.23	0.08	CUST00908
health	108148659	7029.66	0.11	CUST00909
unit_link	3883	3883.0	0.08	CUST00910
life	35129	44613.83	0.22	CUST00911
health	11646	14790.42	0.26	CUST00912
life	61118	45227.32	0.29	CUST00913
endowment	27982	5876.22	0.16	CUST00914
health	4878	3609.72	0.03	CUST00915
health	244144615	15869.4	0.25	CUST00916
life	15467	19643.09	0.23	CUST00917
health	22790	16864.6	0.19	CUST00918
health	11005	11005.0	0.14	CUST00919
unit_link	70548118	4585.63	0.11	CUST00920
unit_link	32397	8747.19	0.09	CUST00921
life	19506	24772.62	0.21	CUST00922
life	17680	22453.6	0.11	CUST00923
life	31212	6554.52	0.15	CUST00924
health	9430	6978.2	0.16	CUST00925
endowment	252491618	16411.96	0.29	CUST00926
unit_link	12041	15292.07	0.07	CUST00927
health	41753	8768.13	0.21	CUST00928
unit_link	114668314	7453.44	0.08	CUST00929
endowment	15391	19546.57	0.13	CUST00930
endowment	218649246	14212.2	0.23	CUST00931
unit_link	7336	5428.64	0.06	CUST00932
endowment	14361	3015.81	0.04	CUST00933
health	18663	5039.01	0.04	CUST00934
life	8776	6494.24	0.09	CUST00935
health	7306	1534.26	0.14	CUST00936
life	111359606	7238.37	0.1	CUST00937
unit_link	65803	48694.22	0.29	CUST00938
endowment	149669376	9728.51	0.22	CUST00939
health	333607931	21684.52	0.3	CUST00940
life	42846	8997.66	0.21	CUST00941
unit_link	48958	62176.66	0.29	CUST00942
health	24675	18259.5	0.25	CUST00943
life	11779725	765.68	0.18	CUST00944
unit_link	40212	40212.0	0.2	CUST00945
endowment	5813	5813.0	0.05	CUST00946
endowment	34452	9302.04	0.12	CUST00947
health	3711	2746.14	0.04	CUST00948
endowment	9056	2445.12	0.12	CUST00949
life	13166	9742.84	0.06	CUST00950
unit_link	4994	1048.74	0.08	CUST00951
life	39186	28997.64	0.28	CUST00952
endowment	4435	931.35	0.03	CUST00953
unit_link	1762	370.02	0.03	CUST00954
endowment	53786	39801.64	0.23	CUST00955
endowment	37421	37421.0	0.29	CUST00956
endowment	100767	27207.09	0.23	CUST00957
life	48775	13169.25	0.2	CUST00958
life	15652	4226.04	0.17	CUST00959
unit_link	7425	7425.0	0.19	CUST00960
life	39309	39309.0	0.26	CUST00961
endowment	84559154	5496.35	0.26	CUST00962
health	17361	22048.47	0.1	CUST00963
health	15200	19304.0	0.24	CUST00964
unit_link	6937	1456.77	0.02	CUST00965
endowment	72410947	4706.71	0.15	CUST00966
health	18392	23357.84	0.1	CUST00967
health	68124	14306.04	0.19	CUST00968
health	36062	26685.88	0.18	CUST00969
life	36842	27263.08	0.15	CUST00970
endowment	19361	5227.47	0.09	CUST00971
unit_link	13081	16612.87	0.29	CUST00972
health	12309	12309.0	0.07	CUST00973
unit_link	5756	4259.44	0.07	CUST00974
endowment	33494572	2177.15	0.03	CUST00975
life	168459996	10949.9	0.16	CUST00976
health	2302	2302.0	0.04	CUST00977
health	60601	44844.74	0.27	CUST00978
unit_link	2882	2882.0	0.06	CUST00979
life	8071	5972.54	0.11	CUST00980
health	10762	10762.0	0.07	CUST00981
unit_link	15998	11838.52	0.11	CUST00982
unit_link	8628	1811.88	0.08	CUST00983
endowment	36109	9749.43	0.12	CUST00984
unit_link	19447	24697.69	0.12	CUST00985
life	13346	13346.0	0.08	CUST00986
life	19052	24196.04	0.11	CUST00987
life	8399	1763.79	0.07	CUST00988
endowment	33191	42152.57	0.22	CUST00989
life	40298	29820.52	0.29	CUST00990
life	30901	6489.21	0.23	CUST00991
health	27351	20239.74	0.2	CUST00992
endowment	56448	41771.52	0.26	CUST00993
life	20399	25906.73	0.25	CUST00994
health	19507	14435.18	0.19	CUST00995
endowment	30502	38737.54	0.25	CUST00996
unit_link	13920	10300.8	0.13	CUST00997
life	57219	15449.13	0.21	CUST00998
endowment	27704	7480.08	0.13	CUST00999
\.


--
-- TOC entry 5041 (class 0 OID 16441)
-- Dependencies: 224
-- Data for Name: payment_behavior; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.payment_behavior (payment_method, third_party_flag, large_cash_payment_flag, customer_id) FROM stdin;
third_party_transfer	t	f	CUST00000
credit_card	f	f	CUST00001
third_party_transfer	f	f	CUST00002
cash	f	f	CUST00003
cash	f	t	CUST00004
credit_card	f	f	CUST00005
cash	f	f	CUST00006
third_party_transfer	f	f	CUST00007
bank_transfer	f	f	CUST00008
cash	f	f	CUST00009
cash	t	f	CUST00010
bank_transfer	f	t	CUST00011
credit_card	f	f	CUST00012
third_party_transfer	f	f	CUST00013
bank_transfer	f	f	CUST00014
credit_card	f	f	CUST00015
bank_transfer	f	f	CUST00016
credit_card	f	f	CUST00017
third_party_transfer	f	f	CUST00018
third_party_transfer	f	f	CUST00019
bank_transfer	t	f	CUST00020
bank_transfer	f	f	CUST00021
third_party_transfer	f	f	CUST00022
credit_card	f	f	CUST00023
cash	f	f	CUST00024
credit_card	f	f	CUST00025
credit_card	t	f	CUST00026
third_party_transfer	f	f	CUST00027
credit_card	f	f	CUST00028
credit_card	f	f	CUST00029
credit_card	f	f	CUST00030
credit_card	f	f	CUST00031
credit_card	f	f	CUST00032
bank_transfer	f	f	CUST00033
cash	f	f	CUST00034
third_party_transfer	f	f	CUST00035
credit_card	f	f	CUST00036
third_party_transfer	t	t	CUST00037
bank_transfer	f	f	CUST00038
third_party_transfer	t	f	CUST00039
cash	f	f	CUST00040
credit_card	f	f	CUST00041
third_party_transfer	f	f	CUST00042
cash	f	t	CUST00043
third_party_transfer	t	f	CUST00044
cash	f	f	CUST00045
credit_card	f	f	CUST00046
bank_transfer	f	f	CUST00047
bank_transfer	t	f	CUST00048
bank_transfer	f	f	CUST00049
cash	f	f	CUST00050
cash	f	f	CUST00051
third_party_transfer	f	f	CUST00052
credit_card	f	f	CUST00053
cash	f	f	CUST00054
credit_card	t	f	CUST00055
bank_transfer	f	f	CUST00056
credit_card	f	f	CUST00057
bank_transfer	f	f	CUST00058
third_party_transfer	f	f	CUST00059
bank_transfer	f	f	CUST00060
third_party_transfer	f	f	CUST00061
third_party_transfer	t	f	CUST00062
third_party_transfer	f	f	CUST00063
cash	f	f	CUST00064
cash	f	f	CUST00065
cash	f	f	CUST00066
bank_transfer	f	t	CUST00067
credit_card	f	f	CUST00068
third_party_transfer	f	f	CUST00069
third_party_transfer	f	f	CUST00070
third_party_transfer	t	f	CUST00071
third_party_transfer	f	f	CUST00072
credit_card	f	f	CUST00073
bank_transfer	f	f	CUST00074
bank_transfer	f	f	CUST00075
credit_card	f	f	CUST00076
bank_transfer	f	f	CUST00077
credit_card	t	f	CUST00078
cash	f	f	CUST00079
third_party_transfer	f	f	CUST00080
third_party_transfer	f	f	CUST00081
credit_card	f	f	CUST00082
credit_card	f	t	CUST00083
credit_card	f	f	CUST00084
bank_transfer	f	f	CUST00085
credit_card	f	f	CUST00086
credit_card	f	f	CUST00087
credit_card	f	f	CUST00088
bank_transfer	f	f	CUST00089
bank_transfer	f	f	CUST00090
credit_card	f	f	CUST00091
bank_transfer	f	f	CUST00092
third_party_transfer	t	f	CUST00093
bank_transfer	f	f	CUST00094
third_party_transfer	f	f	CUST00095
third_party_transfer	f	f	CUST00096
credit_card	f	f	CUST00097
bank_transfer	f	f	CUST00098
third_party_transfer	f	f	CUST00099
cash	f	f	CUST00100
bank_transfer	f	f	CUST00101
bank_transfer	f	f	CUST00102
credit_card	f	t	CUST00103
bank_transfer	f	f	CUST00104
third_party_transfer	f	f	CUST00105
third_party_transfer	f	f	CUST00106
bank_transfer	f	f	CUST00107
cash	f	f	CUST00108
bank_transfer	f	f	CUST00109
third_party_transfer	f	f	CUST00110
cash	t	t	CUST00111
third_party_transfer	f	f	CUST00112
third_party_transfer	f	f	CUST00113
cash	f	t	CUST00114
cash	f	t	CUST00115
bank_transfer	f	f	CUST00116
bank_transfer	f	f	CUST00117
cash	f	f	CUST00118
credit_card	t	f	CUST00119
third_party_transfer	f	f	CUST00120
bank_transfer	f	f	CUST00121
cash	f	t	CUST00122
cash	f	f	CUST00123
credit_card	f	f	CUST00124
third_party_transfer	f	f	CUST00125
cash	f	f	CUST00126
third_party_transfer	f	f	CUST00127
credit_card	f	f	CUST00128
bank_transfer	f	t	CUST00129
cash	f	f	CUST00130
third_party_transfer	t	f	CUST00131
cash	f	f	CUST00132
cash	f	f	CUST00133
bank_transfer	f	f	CUST00134
cash	f	f	CUST00135
third_party_transfer	f	f	CUST00136
bank_transfer	f	f	CUST00137
cash	f	f	CUST00138
third_party_transfer	f	f	CUST00139
third_party_transfer	t	f	CUST00140
credit_card	f	f	CUST00141
cash	f	f	CUST00142
credit_card	f	t	CUST00143
credit_card	f	f	CUST00144
third_party_transfer	f	f	CUST00145
third_party_transfer	f	t	CUST00146
bank_transfer	f	f	CUST00147
third_party_transfer	f	f	CUST00148
cash	f	f	CUST00149
cash	f	f	CUST00150
bank_transfer	f	f	CUST00151
bank_transfer	f	f	CUST00152
third_party_transfer	f	f	CUST00153
bank_transfer	f	f	CUST00154
bank_transfer	f	f	CUST00155
bank_transfer	f	f	CUST00156
credit_card	f	f	CUST00157
cash	f	f	CUST00158
cash	f	f	CUST00159
cash	f	f	CUST00160
credit_card	f	f	CUST00161
third_party_transfer	f	f	CUST00162
cash	f	f	CUST00163
bank_transfer	f	f	CUST00164
third_party_transfer	f	f	CUST00165
bank_transfer	f	f	CUST00166
third_party_transfer	f	f	CUST00167
bank_transfer	t	f	CUST00168
bank_transfer	f	f	CUST00169
credit_card	f	f	CUST00170
credit_card	t	f	CUST00171
third_party_transfer	f	f	CUST00172
credit_card	f	t	CUST00173
third_party_transfer	f	f	CUST00174
credit_card	f	f	CUST00175
third_party_transfer	t	f	CUST00176
credit_card	f	f	CUST00177
credit_card	f	f	CUST00178
cash	f	f	CUST00179
third_party_transfer	f	f	CUST00180
third_party_transfer	t	f	CUST00181
cash	t	f	CUST00182
bank_transfer	t	f	CUST00183
bank_transfer	t	f	CUST00184
cash	f	f	CUST00185
cash	t	f	CUST00186
credit_card	f	f	CUST00187
credit_card	f	f	CUST00188
bank_transfer	f	f	CUST00189
third_party_transfer	f	f	CUST00190
credit_card	f	f	CUST00191
third_party_transfer	f	f	CUST00192
third_party_transfer	f	f	CUST00193
bank_transfer	f	f	CUST00194
credit_card	f	f	CUST00195
third_party_transfer	t	f	CUST00196
cash	f	f	CUST00197
third_party_transfer	f	f	CUST00198
third_party_transfer	f	f	CUST00199
bank_transfer	f	f	CUST00200
third_party_transfer	f	f	CUST00201
cash	t	f	CUST00202
third_party_transfer	f	f	CUST00203
third_party_transfer	f	f	CUST00204
cash	t	f	CUST00205
bank_transfer	f	f	CUST00206
cash	t	f	CUST00207
cash	t	t	CUST00208
cash	t	f	CUST00209
cash	f	f	CUST00210
bank_transfer	f	f	CUST00211
bank_transfer	f	f	CUST00212
credit_card	f	f	CUST00213
third_party_transfer	t	f	CUST00214
cash	t	f	CUST00215
cash	f	f	CUST00216
credit_card	f	f	CUST00217
credit_card	f	f	CUST00218
third_party_transfer	f	f	CUST00219
credit_card	f	f	CUST00220
bank_transfer	f	f	CUST00221
bank_transfer	f	f	CUST00222
credit_card	f	f	CUST00223
cash	f	f	CUST00224
credit_card	t	f	CUST00225
bank_transfer	f	f	CUST00226
cash	f	f	CUST00227
third_party_transfer	f	t	CUST00228
bank_transfer	f	f	CUST00229
cash	f	f	CUST00230
credit_card	f	f	CUST00231
third_party_transfer	f	t	CUST00232
bank_transfer	f	t	CUST00233
bank_transfer	f	f	CUST00234
bank_transfer	f	f	CUST00235
bank_transfer	f	f	CUST00236
credit_card	f	f	CUST00237
third_party_transfer	f	f	CUST00238
credit_card	f	f	CUST00239
third_party_transfer	t	f	CUST00240
cash	f	f	CUST00241
cash	f	t	CUST00242
bank_transfer	f	f	CUST00243
third_party_transfer	f	f	CUST00244
credit_card	f	f	CUST00245
cash	f	f	CUST00246
credit_card	f	f	CUST00247
bank_transfer	f	f	CUST00248
third_party_transfer	t	f	CUST00249
credit_card	f	f	CUST00250
credit_card	f	f	CUST00251
bank_transfer	f	t	CUST00252
third_party_transfer	t	f	CUST00253
third_party_transfer	f	f	CUST00254
cash	f	f	CUST00255
third_party_transfer	f	f	CUST00256
credit_card	f	f	CUST00257
third_party_transfer	f	f	CUST00258
bank_transfer	f	f	CUST00259
cash	f	f	CUST00260
cash	f	f	CUST00261
credit_card	f	f	CUST00262
cash	f	f	CUST00263
cash	f	f	CUST00264
cash	f	f	CUST00265
bank_transfer	f	f	CUST00266
cash	f	f	CUST00267
bank_transfer	f	f	CUST00268
credit_card	f	f	CUST00269
bank_transfer	f	f	CUST00270
credit_card	f	f	CUST00271
bank_transfer	f	f	CUST00272
credit_card	f	f	CUST00273
bank_transfer	f	f	CUST00274
bank_transfer	t	f	CUST00275
third_party_transfer	f	f	CUST00276
bank_transfer	f	f	CUST00277
cash	f	f	CUST00278
bank_transfer	f	f	CUST00279
third_party_transfer	f	f	CUST00280
bank_transfer	f	f	CUST00281
third_party_transfer	t	f	CUST00282
credit_card	f	f	CUST00283
credit_card	f	f	CUST00284
cash	f	f	CUST00285
cash	f	f	CUST00286
credit_card	f	f	CUST00287
cash	f	f	CUST00288
bank_transfer	f	f	CUST00289
cash	f	f	CUST00290
credit_card	t	f	CUST00291
credit_card	f	t	CUST00292
bank_transfer	f	f	CUST00293
cash	f	f	CUST00294
credit_card	f	f	CUST00295
third_party_transfer	f	f	CUST00296
cash	f	f	CUST00297
third_party_transfer	f	f	CUST00298
bank_transfer	f	t	CUST00299
cash	f	f	CUST00300
credit_card	f	f	CUST00301
cash	f	f	CUST00302
third_party_transfer	f	f	CUST00303
third_party_transfer	t	f	CUST00304
cash	f	f	CUST00305
bank_transfer	f	f	CUST00306
cash	f	f	CUST00307
bank_transfer	f	t	CUST00308
credit_card	t	f	CUST00309
bank_transfer	f	t	CUST00310
third_party_transfer	f	f	CUST00311
cash	f	f	CUST00312
bank_transfer	f	f	CUST00313
cash	f	f	CUST00314
third_party_transfer	f	f	CUST00315
credit_card	f	f	CUST00316
bank_transfer	t	f	CUST00317
third_party_transfer	f	f	CUST00318
bank_transfer	f	f	CUST00319
credit_card	f	f	CUST00320
cash	t	f	CUST00321
credit_card	f	f	CUST00322
cash	t	f	CUST00323
third_party_transfer	f	f	CUST00324
bank_transfer	f	f	CUST00325
third_party_transfer	t	t	CUST00326
credit_card	f	f	CUST00327
cash	f	f	CUST00328
cash	f	f	CUST00329
third_party_transfer	f	f	CUST00330
bank_transfer	f	f	CUST00331
third_party_transfer	t	f	CUST00332
cash	f	f	CUST00333
bank_transfer	f	f	CUST00334
bank_transfer	f	f	CUST00335
cash	t	f	CUST00336
cash	f	f	CUST00337
credit_card	f	f	CUST00338
credit_card	f	f	CUST00339
third_party_transfer	f	f	CUST00340
bank_transfer	t	f	CUST00341
cash	f	t	CUST00342
cash	f	f	CUST00343
third_party_transfer	f	f	CUST00344
cash	f	f	CUST00345
third_party_transfer	f	f	CUST00346
credit_card	f	f	CUST00347
bank_transfer	f	f	CUST00348
third_party_transfer	f	f	CUST00349
third_party_transfer	f	f	CUST00350
third_party_transfer	f	f	CUST00351
bank_transfer	f	f	CUST00352
credit_card	f	f	CUST00353
third_party_transfer	t	f	CUST00354
credit_card	t	f	CUST00355
credit_card	f	f	CUST00356
credit_card	f	f	CUST00357
third_party_transfer	f	f	CUST00358
third_party_transfer	f	f	CUST00359
bank_transfer	t	f	CUST00360
cash	f	f	CUST00361
cash	f	f	CUST00362
credit_card	f	f	CUST00363
credit_card	f	f	CUST00364
cash	f	f	CUST00365
credit_card	f	t	CUST00366
bank_transfer	f	t	CUST00367
bank_transfer	f	f	CUST00368
third_party_transfer	f	f	CUST00369
bank_transfer	f	f	CUST00370
cash	f	f	CUST00371
credit_card	f	f	CUST00372
bank_transfer	f	f	CUST00373
third_party_transfer	f	f	CUST00374
bank_transfer	f	f	CUST00375
third_party_transfer	f	f	CUST00376
credit_card	f	f	CUST00377
bank_transfer	f	f	CUST00378
third_party_transfer	f	t	CUST00379
third_party_transfer	f	f	CUST00380
cash	f	f	CUST00381
cash	t	f	CUST00382
third_party_transfer	f	f	CUST00383
third_party_transfer	f	f	CUST00384
credit_card	f	f	CUST00385
credit_card	t	f	CUST00386
bank_transfer	f	f	CUST00387
third_party_transfer	f	f	CUST00388
cash	f	f	CUST00389
third_party_transfer	f	t	CUST00390
third_party_transfer	f	f	CUST00391
cash	f	f	CUST00392
third_party_transfer	t	f	CUST00393
credit_card	f	f	CUST00394
bank_transfer	f	f	CUST00395
third_party_transfer	f	f	CUST00396
credit_card	t	f	CUST00397
credit_card	f	f	CUST00398
credit_card	f	f	CUST00399
cash	f	f	CUST00400
bank_transfer	f	f	CUST00401
credit_card	f	f	CUST00402
cash	f	f	CUST00403
cash	f	t	CUST00404
cash	f	f	CUST00405
credit_card	f	f	CUST00406
bank_transfer	t	f	CUST00407
bank_transfer	f	f	CUST00408
credit_card	f	f	CUST00409
cash	f	f	CUST00410
credit_card	f	f	CUST00411
bank_transfer	t	f	CUST00412
bank_transfer	f	f	CUST00413
credit_card	f	f	CUST00414
bank_transfer	f	f	CUST00415
third_party_transfer	f	f	CUST00416
third_party_transfer	f	f	CUST00417
third_party_transfer	f	f	CUST00418
credit_card	f	f	CUST00419
cash	f	f	CUST00420
credit_card	f	f	CUST00421
bank_transfer	f	f	CUST00422
credit_card	f	f	CUST00423
bank_transfer	f	f	CUST00424
credit_card	f	f	CUST00425
bank_transfer	f	f	CUST00426
credit_card	f	f	CUST00427
cash	f	f	CUST00428
cash	f	f	CUST00429
credit_card	f	f	CUST00430
cash	f	f	CUST00431
credit_card	t	f	CUST00432
bank_transfer	f	f	CUST00433
bank_transfer	f	t	CUST00434
third_party_transfer	f	f	CUST00435
bank_transfer	f	f	CUST00436
cash	f	f	CUST00437
bank_transfer	f	f	CUST00438
third_party_transfer	f	f	CUST00439
third_party_transfer	f	f	CUST00440
credit_card	f	f	CUST00441
credit_card	f	f	CUST00442
credit_card	t	f	CUST00443
bank_transfer	f	f	CUST00444
bank_transfer	t	f	CUST00445
bank_transfer	f	f	CUST00446
cash	t	f	CUST00447
third_party_transfer	f	f	CUST00448
third_party_transfer	t	f	CUST00449
third_party_transfer	t	t	CUST00450
credit_card	f	f	CUST00451
bank_transfer	f	t	CUST00452
third_party_transfer	f	f	CUST00453
cash	f	f	CUST00454
cash	f	f	CUST00455
credit_card	f	f	CUST00456
third_party_transfer	t	f	CUST00457
bank_transfer	t	f	CUST00458
cash	f	f	CUST00459
cash	f	f	CUST00460
credit_card	f	f	CUST00461
third_party_transfer	f	f	CUST00462
bank_transfer	f	f	CUST00463
cash	t	t	CUST00464
credit_card	f	f	CUST00465
third_party_transfer	t	f	CUST00466
third_party_transfer	f	f	CUST00467
cash	f	f	CUST00468
third_party_transfer	f	f	CUST00469
credit_card	f	f	CUST00470
third_party_transfer	f	f	CUST00471
bank_transfer	f	f	CUST00472
credit_card	f	f	CUST00473
third_party_transfer	f	f	CUST00474
credit_card	f	f	CUST00475
cash	t	f	CUST00476
cash	f	f	CUST00477
bank_transfer	f	f	CUST00478
bank_transfer	f	f	CUST00479
cash	t	t	CUST00480
credit_card	f	f	CUST00481
bank_transfer	t	f	CUST00482
bank_transfer	t	t	CUST00483
third_party_transfer	f	f	CUST00484
bank_transfer	f	f	CUST00485
credit_card	f	f	CUST00486
bank_transfer	f	f	CUST00487
bank_transfer	f	f	CUST00488
bank_transfer	f	f	CUST00489
cash	f	f	CUST00490
credit_card	f	f	CUST00491
third_party_transfer	f	f	CUST00492
third_party_transfer	f	f	CUST00493
cash	t	f	CUST00494
credit_card	f	f	CUST00495
third_party_transfer	f	f	CUST00496
third_party_transfer	t	f	CUST00497
credit_card	f	f	CUST00498
credit_card	f	f	CUST00499
credit_card	f	f	CUST00500
credit_card	f	f	CUST00501
credit_card	f	f	CUST00502
cash	t	f	CUST00503
credit_card	t	f	CUST00504
cash	f	f	CUST00505
credit_card	f	f	CUST00506
bank_transfer	f	f	CUST00507
third_party_transfer	t	f	CUST00508
bank_transfer	t	t	CUST00509
credit_card	f	f	CUST00510
third_party_transfer	f	f	CUST00511
third_party_transfer	f	f	CUST00512
cash	f	f	CUST00513
third_party_transfer	f	f	CUST00514
credit_card	f	f	CUST00515
third_party_transfer	t	f	CUST00516
cash	t	f	CUST00517
bank_transfer	f	f	CUST00518
bank_transfer	f	f	CUST00519
cash	f	f	CUST00520
third_party_transfer	f	f	CUST00521
third_party_transfer	f	t	CUST00522
cash	f	f	CUST00523
cash	f	f	CUST00524
credit_card	f	f	CUST00525
credit_card	f	f	CUST00526
cash	f	t	CUST00527
bank_transfer	f	f	CUST00528
cash	f	f	CUST00529
bank_transfer	f	f	CUST00530
bank_transfer	t	f	CUST00531
cash	f	f	CUST00532
credit_card	f	f	CUST00533
credit_card	t	f	CUST00534
third_party_transfer	f	f	CUST00535
third_party_transfer	f	f	CUST00536
credit_card	f	t	CUST00537
third_party_transfer	f	f	CUST00538
bank_transfer	f	f	CUST00539
cash	f	f	CUST00540
cash	f	t	CUST00541
third_party_transfer	f	f	CUST00542
third_party_transfer	f	t	CUST00543
credit_card	f	f	CUST00544
bank_transfer	f	t	CUST00545
bank_transfer	f	f	CUST00546
credit_card	f	f	CUST00547
credit_card	f	f	CUST00548
credit_card	f	f	CUST00549
third_party_transfer	f	f	CUST00550
third_party_transfer	f	f	CUST00551
credit_card	f	f	CUST00552
credit_card	f	f	CUST00553
cash	t	f	CUST00554
third_party_transfer	f	f	CUST00555
cash	f	f	CUST00556
third_party_transfer	f	f	CUST00557
cash	f	f	CUST00558
credit_card	t	f	CUST00559
credit_card	f	f	CUST00560
credit_card	f	f	CUST00561
third_party_transfer	t	f	CUST00562
cash	f	t	CUST00563
third_party_transfer	f	f	CUST00564
third_party_transfer	f	f	CUST00565
cash	f	f	CUST00566
cash	f	f	CUST00567
third_party_transfer	t	f	CUST00568
third_party_transfer	f	t	CUST00569
cash	f	f	CUST00570
cash	f	f	CUST00571
bank_transfer	f	f	CUST00572
bank_transfer	f	f	CUST00573
bank_transfer	f	f	CUST00574
third_party_transfer	f	f	CUST00575
third_party_transfer	f	f	CUST00576
cash	f	f	CUST00577
credit_card	f	f	CUST00578
third_party_transfer	f	f	CUST00579
bank_transfer	f	t	CUST00580
bank_transfer	f	f	CUST00581
cash	f	f	CUST00582
cash	t	f	CUST00583
third_party_transfer	f	f	CUST00584
bank_transfer	f	t	CUST00585
third_party_transfer	f	f	CUST00586
cash	f	f	CUST00587
third_party_transfer	f	f	CUST00588
cash	f	f	CUST00589
bank_transfer	f	f	CUST00590
credit_card	f	f	CUST00591
cash	f	f	CUST00592
credit_card	f	f	CUST00593
third_party_transfer	t	f	CUST00594
credit_card	f	f	CUST00595
bank_transfer	t	f	CUST00596
third_party_transfer	f	f	CUST00597
credit_card	f	f	CUST00598
third_party_transfer	f	f	CUST00599
credit_card	f	f	CUST00600
bank_transfer	f	f	CUST00601
third_party_transfer	t	f	CUST00602
third_party_transfer	t	f	CUST00603
cash	f	f	CUST00604
cash	f	f	CUST00605
bank_transfer	f	f	CUST00606
third_party_transfer	f	f	CUST00607
bank_transfer	f	f	CUST00608
bank_transfer	f	t	CUST00609
bank_transfer	f	f	CUST00610
third_party_transfer	f	f	CUST00611
bank_transfer	f	f	CUST00612
third_party_transfer	t	f	CUST00613
credit_card	t	f	CUST00614
credit_card	f	t	CUST00615
bank_transfer	f	f	CUST00616
bank_transfer	f	f	CUST00617
bank_transfer	f	f	CUST00618
credit_card	f	f	CUST00619
cash	f	f	CUST00620
credit_card	f	f	CUST00621
credit_card	f	f	CUST00622
bank_transfer	f	f	CUST00623
third_party_transfer	f	f	CUST00624
third_party_transfer	f	f	CUST00625
cash	f	f	CUST00626
cash	f	f	CUST00627
cash	f	f	CUST00628
cash	f	t	CUST00629
third_party_transfer	f	f	CUST00630
bank_transfer	f	f	CUST00631
cash	f	f	CUST00632
credit_card	f	t	CUST00633
bank_transfer	f	f	CUST00634
bank_transfer	f	f	CUST00635
bank_transfer	t	f	CUST00636
credit_card	f	f	CUST00637
third_party_transfer	f	f	CUST00638
bank_transfer	f	f	CUST00639
credit_card	f	f	CUST00640
third_party_transfer	f	t	CUST00641
cash	f	f	CUST00642
bank_transfer	t	f	CUST00643
third_party_transfer	f	f	CUST00644
credit_card	f	f	CUST00645
credit_card	f	f	CUST00646
credit_card	f	f	CUST00647
bank_transfer	f	f	CUST00648
third_party_transfer	f	f	CUST00649
credit_card	f	t	CUST00650
third_party_transfer	f	f	CUST00651
third_party_transfer	t	t	CUST00652
cash	f	f	CUST00653
credit_card	f	f	CUST00654
bank_transfer	f	f	CUST00655
third_party_transfer	t	f	CUST00656
third_party_transfer	f	f	CUST00657
cash	f	f	CUST00658
bank_transfer	f	f	CUST00659
credit_card	f	f	CUST00660
cash	f	f	CUST00661
cash	f	f	CUST00662
cash	f	f	CUST00663
cash	t	t	CUST00664
cash	f	f	CUST00665
bank_transfer	f	f	CUST00666
credit_card	f	f	CUST00667
bank_transfer	f	f	CUST00668
cash	f	f	CUST00669
cash	f	f	CUST00670
credit_card	f	f	CUST00671
credit_card	f	f	CUST00672
credit_card	f	f	CUST00673
cash	t	f	CUST00674
bank_transfer	t	f	CUST00675
third_party_transfer	f	f	CUST00676
cash	f	f	CUST00677
credit_card	t	f	CUST00678
third_party_transfer	f	f	CUST00679
credit_card	f	f	CUST00680
credit_card	f	f	CUST00681
credit_card	f	f	CUST00682
bank_transfer	f	f	CUST00683
cash	f	f	CUST00684
cash	f	f	CUST00685
bank_transfer	f	f	CUST00686
bank_transfer	f	f	CUST00687
bank_transfer	t	f	CUST00688
third_party_transfer	f	f	CUST00689
third_party_transfer	t	f	CUST00690
third_party_transfer	f	f	CUST00691
credit_card	f	f	CUST00692
cash	f	f	CUST00693
cash	f	f	CUST00694
cash	f	f	CUST00695
third_party_transfer	f	f	CUST00696
credit_card	f	f	CUST00697
credit_card	f	f	CUST00698
cash	f	f	CUST00699
third_party_transfer	t	f	CUST00700
bank_transfer	f	f	CUST00701
credit_card	f	f	CUST00702
cash	f	f	CUST00703
cash	f	f	CUST00704
cash	t	f	CUST00705
bank_transfer	f	f	CUST00706
credit_card	f	f	CUST00707
cash	f	f	CUST00708
cash	f	f	CUST00709
bank_transfer	f	f	CUST00710
third_party_transfer	f	f	CUST00711
third_party_transfer	f	f	CUST00712
third_party_transfer	f	f	CUST00713
cash	f	f	CUST00714
cash	f	f	CUST00715
credit_card	t	f	CUST00716
credit_card	f	f	CUST00717
credit_card	f	f	CUST00718
third_party_transfer	f	f	CUST00719
bank_transfer	f	f	CUST00720
bank_transfer	f	f	CUST00721
credit_card	f	f	CUST00722
third_party_transfer	f	f	CUST00723
third_party_transfer	f	f	CUST00724
bank_transfer	f	f	CUST00725
cash	f	f	CUST00726
cash	f	f	CUST00727
cash	f	f	CUST00728
third_party_transfer	f	f	CUST00729
credit_card	f	f	CUST00730
credit_card	f	t	CUST00731
credit_card	f	f	CUST00732
bank_transfer	f	f	CUST00733
bank_transfer	f	f	CUST00734
bank_transfer	t	f	CUST00735
bank_transfer	f	t	CUST00736
credit_card	f	t	CUST00737
third_party_transfer	f	f	CUST00738
cash	f	f	CUST00739
cash	f	f	CUST00740
credit_card	f	f	CUST00741
credit_card	f	f	CUST00742
third_party_transfer	f	f	CUST00743
bank_transfer	t	f	CUST00744
third_party_transfer	f	f	CUST00745
third_party_transfer	f	f	CUST00746
bank_transfer	f	f	CUST00747
third_party_transfer	f	f	CUST00748
cash	f	f	CUST00749
cash	f	f	CUST00750
credit_card	f	f	CUST00751
bank_transfer	f	f	CUST00752
bank_transfer	f	f	CUST00753
third_party_transfer	f	f	CUST00754
cash	t	f	CUST00755
cash	f	f	CUST00756
credit_card	f	f	CUST00757
cash	f	t	CUST00758
third_party_transfer	f	t	CUST00759
bank_transfer	f	f	CUST00760
third_party_transfer	f	f	CUST00761
third_party_transfer	f	f	CUST00762
third_party_transfer	f	f	CUST00763
third_party_transfer	f	f	CUST00764
credit_card	f	f	CUST00765
bank_transfer	f	f	CUST00766
third_party_transfer	f	f	CUST00767
third_party_transfer	t	f	CUST00768
credit_card	f	f	CUST00769
credit_card	f	f	CUST00770
third_party_transfer	f	f	CUST00771
credit_card	f	f	CUST00772
credit_card	f	f	CUST00773
credit_card	f	f	CUST00774
credit_card	f	f	CUST00775
third_party_transfer	f	f	CUST00776
bank_transfer	t	f	CUST00777
cash	t	f	CUST00778
credit_card	t	f	CUST00779
third_party_transfer	f	f	CUST00780
credit_card	t	f	CUST00781
bank_transfer	t	f	CUST00782
third_party_transfer	f	f	CUST00783
bank_transfer	f	f	CUST00784
bank_transfer	f	f	CUST00785
credit_card	f	f	CUST00786
cash	f	t	CUST00787
cash	t	f	CUST00788
credit_card	f	f	CUST00789
bank_transfer	f	f	CUST00790
credit_card	f	f	CUST00791
bank_transfer	f	f	CUST00792
cash	f	f	CUST00793
credit_card	t	f	CUST00794
third_party_transfer	f	f	CUST00795
credit_card	f	f	CUST00796
cash	f	f	CUST00797
bank_transfer	f	f	CUST00798
third_party_transfer	f	f	CUST00799
credit_card	f	f	CUST00800
credit_card	f	t	CUST00801
credit_card	f	f	CUST00802
bank_transfer	f	f	CUST00803
credit_card	f	f	CUST00804
cash	f	f	CUST00805
bank_transfer	f	f	CUST00806
credit_card	f	f	CUST00807
third_party_transfer	f	f	CUST00808
bank_transfer	f	f	CUST00809
credit_card	f	f	CUST00810
cash	f	f	CUST00811
bank_transfer	f	f	CUST00812
cash	t	f	CUST00813
third_party_transfer	f	f	CUST00814
credit_card	f	f	CUST00815
third_party_transfer	f	f	CUST00816
third_party_transfer	f	f	CUST00817
credit_card	f	f	CUST00818
credit_card	f	f	CUST00819
third_party_transfer	t	f	CUST00820
bank_transfer	f	f	CUST00821
credit_card	f	f	CUST00822
cash	f	f	CUST00823
cash	f	f	CUST00824
third_party_transfer	f	f	CUST00825
cash	f	f	CUST00826
credit_card	f	f	CUST00827
credit_card	f	f	CUST00828
third_party_transfer	f	f	CUST00829
cash	f	f	CUST00830
bank_transfer	f	f	CUST00831
cash	f	f	CUST00832
third_party_transfer	t	f	CUST00833
third_party_transfer	f	f	CUST00834
third_party_transfer	f	f	CUST00835
credit_card	t	f	CUST00836
cash	f	f	CUST00837
third_party_transfer	f	f	CUST00838
cash	t	t	CUST00839
credit_card	f	f	CUST00840
bank_transfer	f	f	CUST00841
credit_card	f	f	CUST00842
credit_card	f	f	CUST00843
credit_card	f	t	CUST00844
third_party_transfer	f	f	CUST00845
credit_card	f	f	CUST00846
credit_card	f	f	CUST00847
third_party_transfer	f	f	CUST00848
bank_transfer	f	f	CUST00849
cash	f	f	CUST00850
cash	f	f	CUST00851
third_party_transfer	f	f	CUST00852
cash	f	f	CUST00853
third_party_transfer	f	f	CUST00854
bank_transfer	f	f	CUST00855
cash	f	f	CUST00856
bank_transfer	f	f	CUST00857
third_party_transfer	f	f	CUST00858
bank_transfer	f	t	CUST00859
cash	f	t	CUST00860
third_party_transfer	f	f	CUST00861
bank_transfer	f	f	CUST00862
credit_card	f	f	CUST00863
credit_card	f	f	CUST00864
bank_transfer	f	f	CUST00865
third_party_transfer	f	f	CUST00866
bank_transfer	f	f	CUST00867
credit_card	f	f	CUST00868
cash	f	f	CUST00869
credit_card	f	f	CUST00870
third_party_transfer	t	f	CUST00871
credit_card	f	f	CUST00872
bank_transfer	f	f	CUST00873
cash	f	f	CUST00874
third_party_transfer	f	f	CUST00875
credit_card	f	f	CUST00876
cash	f	f	CUST00877
bank_transfer	f	f	CUST00878
third_party_transfer	f	f	CUST00879
credit_card	t	f	CUST00880
third_party_transfer	f	f	CUST00881
third_party_transfer	f	f	CUST00882
credit_card	f	f	CUST00883
bank_transfer	t	f	CUST00884
bank_transfer	f	f	CUST00885
cash	f	f	CUST00886
third_party_transfer	f	f	CUST00887
third_party_transfer	f	f	CUST00888
third_party_transfer	f	f	CUST00889
third_party_transfer	t	f	CUST00890
bank_transfer	f	f	CUST00891
third_party_transfer	f	f	CUST00892
third_party_transfer	f	f	CUST00893
credit_card	f	f	CUST00894
bank_transfer	f	f	CUST00895
bank_transfer	f	f	CUST00896
third_party_transfer	f	f	CUST00897
third_party_transfer	f	f	CUST00898
third_party_transfer	f	f	CUST00899
cash	f	f	CUST00900
bank_transfer	f	f	CUST00901
bank_transfer	f	f	CUST00902
third_party_transfer	t	f	CUST00903
credit_card	f	f	CUST00904
bank_transfer	f	f	CUST00905
third_party_transfer	f	f	CUST00906
cash	f	f	CUST00907
bank_transfer	f	f	CUST00908
credit_card	f	f	CUST00909
third_party_transfer	f	f	CUST00910
cash	f	f	CUST00911
credit_card	f	f	CUST00912
cash	f	f	CUST00913
bank_transfer	f	f	CUST00914
cash	f	f	CUST00915
third_party_transfer	f	f	CUST00916
cash	t	f	CUST00917
bank_transfer	t	f	CUST00918
third_party_transfer	f	f	CUST00919
cash	f	f	CUST00920
third_party_transfer	f	t	CUST00921
credit_card	f	f	CUST00922
third_party_transfer	f	f	CUST00923
credit_card	f	t	CUST00924
credit_card	t	f	CUST00925
bank_transfer	f	f	CUST00926
cash	f	f	CUST00927
bank_transfer	t	f	CUST00928
third_party_transfer	t	f	CUST00929
credit_card	f	f	CUST00930
bank_transfer	f	t	CUST00931
cash	t	f	CUST00932
third_party_transfer	f	f	CUST00933
third_party_transfer	f	f	CUST00934
third_party_transfer	f	f	CUST00935
bank_transfer	f	f	CUST00936
credit_card	f	f	CUST00937
bank_transfer	f	f	CUST00938
cash	f	f	CUST00939
bank_transfer	f	t	CUST00940
third_party_transfer	f	f	CUST00941
credit_card	f	t	CUST00942
credit_card	f	f	CUST00943
third_party_transfer	f	f	CUST00944
cash	f	f	CUST00945
third_party_transfer	f	f	CUST00946
third_party_transfer	f	f	CUST00947
third_party_transfer	f	f	CUST00948
third_party_transfer	f	f	CUST00949
third_party_transfer	f	f	CUST00950
third_party_transfer	f	f	CUST00951
third_party_transfer	f	f	CUST00952
third_party_transfer	t	f	CUST00953
bank_transfer	t	f	CUST00954
credit_card	f	f	CUST00955
cash	f	f	CUST00956
credit_card	f	f	CUST00957
bank_transfer	f	f	CUST00958
third_party_transfer	f	f	CUST00959
third_party_transfer	f	f	CUST00960
third_party_transfer	f	f	CUST00961
third_party_transfer	f	f	CUST00962
cash	f	f	CUST00963
third_party_transfer	f	f	CUST00964
third_party_transfer	f	f	CUST00965
credit_card	f	f	CUST00966
cash	f	f	CUST00967
credit_card	f	f	CUST00968
third_party_transfer	f	f	CUST00969
bank_transfer	f	f	CUST00970
third_party_transfer	f	f	CUST00971
third_party_transfer	f	f	CUST00972
third_party_transfer	f	f	CUST00973
bank_transfer	f	f	CUST00974
bank_transfer	f	f	CUST00975
bank_transfer	f	f	CUST00976
bank_transfer	f	f	CUST00977
bank_transfer	f	f	CUST00978
third_party_transfer	f	f	CUST00979
cash	f	f	CUST00980
bank_transfer	f	t	CUST00981
cash	t	f	CUST00982
credit_card	f	f	CUST00983
credit_card	f	t	CUST00984
cash	f	f	CUST00985
credit_card	t	f	CUST00986
credit_card	f	f	CUST00987
third_party_transfer	f	f	CUST00988
third_party_transfer	f	t	CUST00989
credit_card	f	f	CUST00990
bank_transfer	f	f	CUST00991
cash	f	f	CUST00992
credit_card	t	f	CUST00993
third_party_transfer	f	f	CUST00994
third_party_transfer	f	f	CUST00995
bank_transfer	f	f	CUST00996
cash	f	f	CUST00997
cash	t	f	CUST00998
third_party_transfer	t	f	CUST00999
\.


--
-- TOC entry 5036 (class 0 OID 16415)
-- Dependencies: 219
-- Data for Name: stg_customers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.stg_customers (customer_id, country, currency, fx_to_usd, age, occupation, years_working, annual_income_local, annual_income_usd, monthly_savings_rate, estimated_savings_local, estimated_savings_usd, inheritance_flag, inheritance_amount_local, net_worth_local, net_worth_usd, source_of_funds, policy_type, annual_premium_local, annual_premium_usd, premium_to_income_ratio, payment_method, third_party_payer_flag, large_cash_payment_flag, multiple_policy_flag, policy_count, rapid_policy_purchase_flag, early_surrender_flag, high_risk_country_flag, pep_match_flag, sanction_match_flag, terror_watchlist_match_flag, name_screening_score, dob_match_flag, aml_pattern_type, wealth_inconsistency_flag, is_suspicious) FROM stdin;
CUST00000	United States	USD	1.0	29	director	8	224393	224393.0	0.12	107708	107708.0	0	0	2127245	2127245.0	salary	life	13255	13255.0	0.06	third_party_transfer	1	0	1	1	0	0	0	0	0	0	0.03	1	none	0	0
CUST00001	Singapore	SGD	0.74	36	director	7	187815	138983.1	0.06	123957	91728.18	0	0	1626477	1203592.98	grant	endowment	41410	30643.4	0.22	credit_card	0	0	0	4	0	0	0	0	0	0	0.59	0	none	0	0
CUST00002	Indonesia	IDR	6.5e-05	32	employee	5	790682427	51394.36	0.12	664173238	43171.26	0	0	6989632654	454326.12	inheritance	life	227732083	14802.59	0.29	third_party_transfer	0	0	0	1	0	1	1	0	0	0	0.36	0	none	0	0
CUST00003	Malaysia	MYR	0.21	60	employee	35	52780	11083.8	0.23	424879	89224.59	0	0	1427699	299816.79	gift	health	2900	609.0	0.05	cash	0	0	1	5	0	0	0	0	0	0	0.19	0	none	0	0
CUST00004	Indonesia	IDR	6.5e-05	24	consultant	1	681455910	44294.63	0.3	204436773	13288.39	0	0	6337539963	411940.1	gift	endowment	178960834	11632.45	0.26	cash	0	1	1	2	0	0	0	0	0	0	0.37	0	none	0	0
CUST00005	Singapore	SGD	0.74	64	director	39	213977	158342.98	0.28	2336628	1729104.72	0	0	3192536	2362476.64	business_income	unit_link	40774	30172.76	0.19	credit_card	0	0	1	4	0	1	0	0	0	0	0.38	0	none	0	0
CUST00006	United States	USD	1.0	57	consultant	33	209467	209467.0	0.13	871382	871382.0	0	0	1499783	1499783.0	salary	endowment	17623	17623.0	0.08	cash	0	0	0	1	0	0	0	0	0	0	0.21	0	none	0	0
CUST00007	United Kingdom	GBP	1.27	42	entrepreneur	18	196819	249960.13	0.17	568806	722383.62	0	0	3717910	4721745.7	business_income	health	11809	14997.43	0.06	third_party_transfer	0	0	1	5	0	0	0	0	0	0	0.4	0	none	0	0
CUST00008	Singapore	SGD	0.74	30	entrepreneur	1	159372	117935.28	0.07	55780	41277.2	0	0	533896	395083.04	business_income	endowment	41613	30793.62	0.26	bank_transfer	0	0	0	4	0	0	0	0	0	0	0.38	0	none	0	0
CUST00009	United Arab Emirates	AED	0.27	55	director	30	340049	91813.23	0.27	2754396	743686.92	0	0	3434494	927313.38	salary	health	71573	19324.71	0.21	cash	0	0	1	1	0	0	0	0	0	0	0.29	0	none	0	0
CUST00010	Singapore	SGD	0.74	51	director	30	219292	162276.08	0.27	1539429	1139177.46	0	0	3732349	2761938.26	business_income	life	64061	47405.14	0.29	cash	1	0	1	5	0	0	0	0	0	0	0.61	0	layering	0	0
CUST00011	Singapore	SGD	0.74	45	consultant	22	171394	126831.56	0.29	994085	735622.9	0	0	4079177	3018590.98	savings	endowment	47506	35154.44	0.28	bank_transfer	0	1	1	1	1	0	0	0	0	0	0.93	0	none	0	0
CUST00012	Malaysia	MYR	0.21	37	employee	16	156286	32820.06	0.27	506366	106336.86	0	0	1131510	237617.1	gift	unit_link	6873	1443.33	0.04	credit_card	0	0	0	4	0	0	1	0	0	0	0.95	0	integration	0	0
CUST00013	Singapore	SGD	0.74	38	entrepreneur	9	189014	139870.36	0.16	393149	290930.26	0	0	1905261	1409893.14	grant	health	52942	39177.08	0.28	third_party_transfer	0	0	0	3	0	0	0	0	0	0	0.44	0	none	0	0
CUST00014	United Kingdom	GBP	1.27	50	entrepreneur	28	89986	114282.22	0.11	247461	314275.47	0	0	1327293	1685662.11	savings	unit_link	2329	2957.83	0.03	bank_transfer	0	0	0	1	0	0	1	0	0	0	0.71	0	none	0	0
CUST00015	Indonesia	IDR	6.5e-05	36	freelancer	14	127458813	8284.82	0.26	364532205	23694.59	0	0	874367457	56833.88	inheritance	unit_link	20898620	1358.41	0.16	credit_card	0	0	0	5	0	0	0	0	0	0	0.58	0	layering	0	0
CUST00016	Singapore	SGD	0.74	52	freelancer	25	79914	59136.36	0.07	151037	111767.38	1	8311056	9660803	7148994.22	gift	life	9526	7049.24	0.12	bank_transfer	0	0	1	1	0	0	0	0	0	0	0.4	0	layering	0	0
CUST00017	Malaysia	MYR	0.21	28	consultant	4	130448	27394.08	0.1	39134	8218.14	0	0	2126302	446523.42	business_income	endowment	7729	1623.09	0.06	credit_card	0	0	0	1	0	0	0	0	0	0	0.44	0	none	0	0
CUST00018	United Kingdom	GBP	1.27	28	entrepreneur	7	195955	248862.85	0.3	176359	223975.93	0	0	568269	721701.63	business_income	endowment	57085	72497.95	0.29	third_party_transfer	0	0	0	4	0	0	1	0	0	0	0.21	0	none	0	0
CUST00019	United Arab Emirates	AED	0.27	25	consultant	2	248691	67146.57	0.05	12434	3357.18	0	0	3494108	943409.16	gift	endowment	23440	6328.8	0.09	third_party_transfer	0	0	1	2	0	0	0	0	0	0	0.19	0	none	0	0
CUST00020	Singapore	SGD	0.74	25	freelancer	1	222869	164923.06	0.19	42345	31335.3	1	25629935	28346708	20976563.92	savings	unit_link	8024	5937.76	0.04	bank_transfer	1	0	1	5	1	0	0	0	0	0	0.08	0	none	0	0
CUST00021	Singapore	SGD	0.74	26	entrepreneur	1	47815	35383.1	0.22	10519	7784.06	0	0	440854	326231.96	savings	life	6362	4707.88	0.13	bank_transfer	0	0	0	4	0	1	0	0	0	0	0.66	0	none	0	0
CUST00022	United Kingdom	GBP	1.27	55	entrepreneur	29	93358	118564.66	0.1	280074	355693.98	0	0	1400370	1778469.9	gift	health	8106	10294.62	0.09	third_party_transfer	0	0	1	3	0	1	0	0	0	0	0.93	0	layering	0	0
CUST00023	Indonesia	IDR	6.5e-05	22	director	1	1393929334	90605.41	0.3	418178800	27181.62	0	0	7387825470	480208.66	business_income	health	56472261	3670.7	0.04	credit_card	0	0	0	3	0	0	0	0	0	0	0.88	0	none	0	0
CUST00024	Singapore	SGD	0.74	45	director	20	71352	52800.48	0.16	228326	168961.24	0	0	1584014	1172170.36	savings	life	15482	11456.68	0.22	cash	0	0	0	1	0	0	0	0	0	0	0.94	0	none	0	0
CUST00025	Singapore	SGD	0.74	38	entrepreneur	16	58058	42962.92	0.24	181140	134043.6	0	0	529488	391821.12	savings	health	5588	4135.12	0.1	credit_card	0	0	0	3	0	0	0	0	0	0	0.51	0	none	0	0
CUST00026	Malaysia	MYR	0.21	25	entrepreneur	3	362547	76134.87	0.16	58007	12181.47	0	0	3683477	773530.17	inheritance	health	11726	2462.46	0.03	credit_card	1	0	0	4	0	0	0	0	0	0	0.55	0	none	0	0
CUST00027	United Arab Emirates	AED	0.27	57	director	36	108654	29336.58	0.07	243384	65713.68	1	11734632	12629940	3410083.8	inheritance	unit_link	18771	5068.17	0.17	third_party_transfer	0	0	1	2	0	0	0	0	0	0	0.04	0	none	0	0
CUST00028	Malaysia	MYR	0.21	24	freelancer	1	140140	29429.4	0.22	30830	6474.3	0	0	731530	153621.3	savings	unit_link	16680	3502.8	0.12	credit_card	0	0	0	2	0	0	0	0	0	0	0.98	0	none	0	0
CUST00029	Singapore	SGD	0.74	48	entrepreneur	27	77018	56993.32	0.23	407425	301494.5	0	0	1331641	985414.34	gift	health	18412	13624.88	0.24	credit_card	0	0	0	1	0	0	1	0	0	0	0.38	0	none	0	0
CUST00030	Indonesia	IDR	6.5e-05	52	entrepreneur	28	488579384	31757.66	0.25	3297910842	214364.2	0	0	11115180986	722486.76	business_income	life	57605639	3744.37	0.12	credit_card	0	0	1	4	0	0	0	0	0	0	0.33	0	integration	0	0
CUST00031	Indonesia	IDR	6.5e-05	39	employee	13	1437571546	93442.15	0.18	3622680295	235474.22	0	0	30936539669	2010875.08	salary	health	162045886	10532.98	0.11	credit_card	0	0	0	5	0	0	0	0	0	0	0.96	0	layering	0	0
CUST00032	Malaysia	MYR	0.21	24	employee	2	342775	71982.75	0.16	54844	11517.24	0	0	4168144	875310.24	savings	endowment	48739	10235.19	0.14	credit_card	0	0	0	3	0	0	0	0	0	0	0.04	0	integration	0	0
CUST00033	United Arab Emirates	AED	0.27	22	consultant	1	472843	127667.61	0.18	85111	22979.97	0	0	3867855	1044320.85	salary	health	57678	15573.06	0.12	bank_transfer	0	0	1	3	0	0	0	0	0	0	0.51	0	none	0	0
CUST00034	United States	USD	1.0	48	freelancer	22	135486	135486.0	0.22	685559	685559.0	1	12193740	13692215	13692215.0	grant	unit_link	9987	9987.0	0.07	cash	0	0	0	4	0	0	0	0	0	0	0.55	0	none	0	0
CUST00035	Indonesia	IDR	6.5e-05	41	freelancer	16	511363872	33238.65	0.16	1309091512	85090.95	0	0	11536368952	749863.98	inheritance	endowment	97090224	6310.86	0.19	third_party_transfer	0	0	1	2	0	0	0	0	0	0	0.51	0	none	0	0
CUST00036	United States	USD	1.0	32	consultant	10	104392	104392.0	0.18	131533	131533.0	0	0	1384237	1384237.0	business_income	unit_link	4817	4817.0	0.05	credit_card	0	0	0	2	0	1	0	0	0	0	0.02	0	placement	0	0
CUST00037	Singapore	SGD	0.74	52	entrepreneur	22	231454	171275.96	0.07	437448	323711.52	0	0	3909258	2892850.92	savings	endowment	62057	45922.18	0.27	third_party_transfer	1	1	0	4	0	1	0	0	0	0	0.24	0	placement	0	1
CUST00038	United States	USD	1.0	22	director	1	234058	234058.0	0.16	37449	37449.0	0	0	1675855	1675855.0	grant	endowment	57379	57379.0	0.25	bank_transfer	0	0	0	5	1	0	0	0	0	0	0.25	0	placement	0	0
CUST00039	Indonesia	IDR	6.5e-05	51	director	28	1057813759	68757.89	0.22	6050694701	393295.16	0	0	26149156122	1699695.15	gift	endowment	197522018	12838.93	0.19	third_party_transfer	1	0	1	2	0	0	1	0	0	0	0.74	0	none	0	0
CUST00040	United Arab Emirates	AED	0.27	50	freelancer	25	444147	119919.69	0.11	1221404	329779.08	0	0	5662874	1528975.98	savings	unit_link	104120	28112.4	0.23	cash	0	0	0	4	1	0	0	0	0	0	0.08	0	none	0	0
CUST00041	Malaysia	MYR	0.21	37	entrepreneur	12	206080	43276.8	0.13	321484	67511.64	0	0	4237004	889770.84	business_income	endowment	8771	1841.91	0.04	credit_card	0	0	1	2	0	0	0	0	0	0	0.06	0	integration	0	0
CUST00042	United Arab Emirates	AED	0.27	43	director	14	294278	79455.06	0.15	794550	214528.5	0	0	3148774	850168.98	gift	life	74513	20118.51	0.25	third_party_transfer	0	0	0	4	1	0	0	0	0	0	0.01	0	none	0	0
CUST00043	Malaysia	MYR	0.21	41	freelancer	14	249687	52434.27	0.18	719098	151010.58	0	0	5463151	1147261.71	business_income	unit_link	60914	12791.94	0.24	cash	0	1	1	4	0	0	0	0	0	0	0.49	0	integration	0	0
CUST00044	United Arab Emirates	AED	0.27	43	director	16	429679	116013.33	0.09	696079	187941.33	0	0	7570943	2044154.61	savings	life	119223	32190.21	0.28	third_party_transfer	1	0	1	5	0	0	0	1	1	0	0.56	0	placement	0	1
CUST00045	Indonesia	IDR	6.5e-05	27	entrepreneur	1	351412420	22841.81	0.27	189762706	12334.58	1	15110734060	16354734026	1063057.71	inheritance	endowment	32626453	2120.72	0.09	cash	0	0	0	3	0	0	0	0	0	0	0.76	0	none	0	0
CUST00046	United Arab Emirates	AED	0.27	39	employee	12	182262	49210.74	0.26	663433	179126.91	0	0	3761887	1015709.49	savings	health	4634	1251.18	0.03	credit_card	0	0	0	1	0	0	0	0	0	0	0.78	0	placement	0	0
CUST00047	United States	USD	1.0	24	entrepreneur	3	94823	94823.0	0.1	9482	9482.0	0	0	199128	199128.0	business_income	endowment	18393	18393.0	0.19	bank_transfer	0	0	1	5	0	0	0	0	0	0	0.95	0	none	0	0
CUST00048	United Arab Emirates	AED	0.27	38	consultant	12	137969	37251.63	0.2	358719	96854.13	0	0	1048564	283112.28	business_income	life	32806	8857.62	0.24	bank_transfer	1	0	0	3	0	0	0	0	0	0	0.58	0	none	0	0
CUST00049	United Arab Emirates	AED	0.27	47	director	23	89844	24257.88	0.2	395313	106734.51	0	0	1203909	325055.43	inheritance	life	4360	1177.2	0.05	bank_transfer	0	0	0	3	0	0	0	0	0	0	0.53	0	layering	0	0
CUST00050	United States	USD	1.0	45	employee	23	162634	162634.0	0.21	683062	683062.0	0	0	1008330	1008330.0	gift	endowment	41940	41940.0	0.26	cash	0	0	0	4	0	0	0	0	0	0	0.71	0	none	0	0
CUST00051	United Arab Emirates	AED	0.27	33	freelancer	4	391027	105577.29	0.12	375385	101353.95	0	0	7804898	2107322.46	gift	health	92634	25011.18	0.24	cash	0	0	1	2	0	0	0	0	0	0	0.83	0	layering	0	0
CUST00052	Indonesia	IDR	6.5e-05	39	consultant	11	583692741	37940.03	0.24	1961207609	127478.49	0	0	13635062429	886279.06	gift	life	111422786	7242.48	0.19	third_party_transfer	0	0	1	3	0	0	0	0	0	0	0.18	0	placement	0	0
CUST00053	Singapore	SGD	0.74	44	entrepreneur	19	119217	88220.58	0.12	271814	201142.36	0	0	1463984	1083348.16	savings	life	20937	15493.38	0.18	credit_card	0	0	0	4	0	0	0	0	0	0	0.49	0	none	0	0
CUST00054	Singapore	SGD	0.74	52	entrepreneur	24	147486	109139.64	0.25	995530	736692.2	0	0	1585474	1173250.76	gift	health	15100	11174.0	0.1	cash	0	0	0	4	0	0	0	0	0	0	0.55	0	none	0	0
CUST00055	Malaysia	MYR	0.21	49	entrepreneur	20	203429	42720.09	0.14	683521	143539.41	0	0	3938385	827060.85	inheritance	life	19500	4095.0	0.1	credit_card	1	0	0	3	0	0	0	0	0	0	0.12	0	none	0	0
CUST00056	United Kingdom	GBP	1.27	33	director	9	81723	103788.21	0.23	150370	190969.9	0	0	967600	1228852.0	savings	health	18214	23131.78	0.22	bank_transfer	0	0	1	2	0	0	0	1	0	0	0.3	0	integration	0	0
CUST00057	Malaysia	MYR	0.21	33	director	8	37417	7857.57	0.23	68847	14457.87	1	1347012	1790029	375906.09	salary	health	1225	257.25	0.03	credit_card	0	0	0	4	0	0	0	0	0	0	0.1	0	none	0	0
CUST00058	Indonesia	IDR	6.5e-05	58	consultant	33	1068022256	69421.45	0.17	5991604856	389454.32	0	0	18807871928	1222511.68	salary	endowment	76493706	4972.09	0.07	bank_transfer	0	0	0	1	0	1	0	0	0	0	0.4	0	none	0	0
CUST00059	Indonesia	IDR	6.5e-05	58	entrepreneur	37	385831273	25079.03	0.09	1145918880	74484.73	0	0	8862544340	576065.38	salary	life	110253284	7166.46	0.29	third_party_transfer	0	0	1	5	0	1	0	0	0	0	0.6	0	none	0	0
CUST00060	United Kingdom	GBP	1.27	36	consultant	7	124713	158385.51	0.16	219494	278757.38	1	9478188	11069525	14058296.75	gift	life	32530	41313.1	0.26	bank_transfer	0	0	1	2	0	0	0	0	0	0	0.63	0	none	0	0
CUST00061	Malaysia	MYR	0.21	64	freelancer	42	112343	23592.03	0.11	481951	101209.71	0	0	2616468	549458.28	salary	endowment	4608	967.68	0.04	third_party_transfer	0	0	0	3	0	0	0	0	0	0	0.03	0	none	0	0
CUST00062	Malaysia	MYR	0.21	40	director	12	67318	14136.78	0.22	222149	46651.29	0	0	895329	188019.09	grant	unit_link	16196	3401.16	0.24	third_party_transfer	1	0	1	1	0	0	0	0	0	0	0.54	0	none	0	0
CUST00063	United States	USD	1.0	31	director	6	246696	246696.0	0.09	133215	133215.0	0	0	873303	873303.0	inheritance	health	16395	16395.0	0.07	third_party_transfer	0	0	1	1	0	0	0	0	0	0	0.47	0	none	0	0
CUST00064	Malaysia	MYR	0.21	47	freelancer	22	292391	61402.11	0.18	1157868	243152.28	0	0	5836124	1225586.04	salary	health	12433	2610.93	0.04	cash	0	0	0	1	0	0	0	0	0	0	0.09	0	placement	0	0
CUST00065	United States	USD	1.0	58	freelancer	28	35438	35438.0	0.3	350836	350836.0	0	0	705216	705216.0	business_income	endowment	6426	6426.0	0.18	cash	0	0	0	2	0	1	0	0	0	0	1.0	0	none	0	0
CUST00066	United Arab Emirates	AED	0.27	62	employee	34	97837	26415.99	0.17	615394	166156.38	0	0	2082949	562396.23	grant	unit_link	11087	2993.49	0.11	cash	0	0	1	4	0	0	0	0	0	0	0.69	0	none	0	0
CUST00067	Malaysia	MYR	0.21	64	employee	37	318409	66865.89	0.06	745077	156466.17	0	0	2018713	423929.73	inheritance	endowment	34408	7225.68	0.11	bank_transfer	0	1	1	5	0	1	0	0	0	0	0.46	0	integration	0	0
CUST00068	Indonesia	IDR	6.5e-05	34	entrepreneur	5	836915262	54399.49	0.21	1581769845	102815.04	0	0	15809329299	1027606.4	salary	health	163294259	10614.13	0.2	credit_card	0	0	0	3	0	1	0	0	0	0	0.44	0	none	0	0
CUST00069	United States	USD	1.0	53	director	31	37567	37567.0	0.29	305044	305044.0	0	0	643147	643147.0	inheritance	life	8217	8217.0	0.22	third_party_transfer	0	0	0	1	0	0	0	0	0	0	0.22	0	none	0	0
CUST00070	Indonesia	IDR	6.5e-05	51	director	29	1450945961	94311.49	0.26	9808394696	637545.66	0	0	34474476033	2240840.94	inheritance	health	407923092	26515.0	0.28	third_party_transfer	0	0	1	4	0	0	0	0	0	0	0.98	0	none	0	0
CUST00071	Singapore	SGD	0.74	51	employee	22	67917	50258.58	0.15	264876	196008.24	0	0	1487382	1100662.68	business_income	health	15550	11507.0	0.23	third_party_transfer	1	0	0	3	0	0	0	0	0	0	0.93	0	none	0	0
CUST00072	United Kingdom	GBP	1.27	39	freelancer	18	99144	125912.88	0.23	319243	405438.61	0	0	2302123	2923696.21	grant	unit_link	18081	22962.87	0.18	third_party_transfer	0	0	0	5	0	0	0	0	0	0	0.48	0	none	0	0
CUST00073	Malaysia	MYR	0.21	57	entrepreneur	28	227766	47830.86	0.16	1166161	244893.81	0	0	3899353	818864.13	grant	endowment	60013	12602.73	0.26	credit_card	0	0	0	4	0	0	0	0	0	0	0.04	0	none	0	0
CUST00074	United States	USD	1.0	52	entrepreneur	25	131208	131208.0	0.3	1062784	1062784.0	0	0	1850032	1850032.0	salary	health	20821	20821.0	0.16	bank_transfer	0	0	0	4	0	0	0	0	0	0	0.1	0	none	0	0
CUST00075	United Arab Emirates	AED	0.27	22	consultant	1	264946	71535.42	0.27	71535	19314.45	0	0	1661211	448526.97	inheritance	endowment	10850	2929.5	0.04	bank_transfer	0	0	0	3	0	0	0	0	0	0	0.85	0	layering	0	0
CUST00076	United Kingdom	GBP	1.27	46	director	20	189311	240424.97	0.23	914372	1161252.44	0	0	4132659	5248476.93	salary	life	50028	63535.56	0.26	credit_card	0	0	0	3	0	0	0	0	0	0	1.0	0	placement	0	0
CUST00077	United States	USD	1.0	27	consultant	1	55806	55806.0	0.24	26786	26786.0	0	0	305816	305816.0	grant	life	8048	8048.0	0.14	bank_transfer	0	0	1	3	1	0	0	0	0	0	0.8	0	none	0	0
CUST00078	Malaysia	MYR	0.21	44	entrepreneur	18	255803	53718.63	0.09	437423	91858.83	0	0	5041877	1058794.17	grant	unit_link	34629	7272.09	0.14	credit_card	1	0	1	1	0	0	0	0	0	0	0.61	0	none	0	0
CUST00079	United Arab Emirates	AED	0.27	61	consultant	37	310920	83948.4	0.28	3134073	846199.71	0	0	4999593	1349890.11	grant	endowment	26432	7136.64	0.09	cash	0	0	0	1	0	0	0	0	0	0	0.9	0	none	0	0
CUST00080	United Arab Emirates	AED	0.27	40	freelancer	11	132824	35862.48	0.07	139465	37655.55	0	0	1866177	503867.79	inheritance	health	39387	10634.49	0.3	third_party_transfer	0	0	0	3	0	0	0	0	0	0	0.2	0	placement	0	0
CUST00081	United Arab Emirates	AED	0.27	52	consultant	30	174364	47078.28	0.15	706174	190666.98	0	0	2972906	802684.62	grant	life	31550	8518.5	0.18	third_party_transfer	0	0	0	3	0	0	0	0	0	0	0.01	0	none	0	0
CUST00082	United States	USD	1.0	25	director	1	225342	225342.0	0.17	38308	38308.0	0	0	2517070	2517070.0	business_income	health	53452	53452.0	0.24	credit_card	0	0	0	2	0	0	0	0	0	0	0.62	0	placement	0	0
CUST00083	United States	USD	1.0	64	employee	41	194691	194691.0	0.07	531506	531506.0	1	19469100	20584679	20584679.0	gift	health	20734	20734.0	0.11	credit_card	0	1	1	1	0	0	0	0	0	0	0.91	0	layering	0	0
CUST00084	Malaysia	MYR	0.21	48	director	25	135274	28407.54	0.08	248904	52269.84	0	0	2819110	592013.1	inheritance	health	35902	7539.42	0.27	credit_card	0	0	1	3	0	0	1	1	0	0	0.91	0	placement	0	0
CUST00085	United Arab Emirates	AED	0.27	40	freelancer	14	471649	127345.23	0.08	565978	152814.06	0	0	2452574	662194.98	business_income	health	28021	7565.67	0.06	bank_transfer	0	0	1	4	0	0	0	1	0	0	0.01	0	layering	0	0
CUST00086	United Kingdom	GBP	1.27	29	consultant	1	121622	154459.94	0.22	107027	135924.29	0	0	1323247	1680523.69	grant	life	22339	28370.53	0.18	credit_card	0	0	0	4	0	0	0	0	0	0	0.03	0	none	0	0
CUST00087	United Kingdom	GBP	1.27	42	freelancer	12	83030	105448.1	0.21	296417	376449.59	0	0	1624897	2063619.19	inheritance	life	22802	28958.54	0.27	credit_card	0	0	0	1	1	0	1	0	0	0	0.95	0	layering	0	0
CUST00088	Malaysia	MYR	0.21	53	consultant	31	80956	17000.76	0.11	249344	52362.24	0	0	1787508	375376.68	gift	endowment	4694	985.74	0.06	credit_card	0	0	0	4	0	0	0	0	0	0	0.65	0	placement	0	0
CUST00089	United Arab Emirates	AED	0.27	61	entrepreneur	34	196664	53099.28	0.06	424794	114694.38	0	0	2981426	804985.02	gift	health	15897	4292.19	0.08	bank_transfer	0	0	0	3	0	0	0	0	0	0	0.54	0	integration	0	0
CUST00090	United States	USD	1.0	44	employee	23	134369	134369.0	0.12	306361	306361.0	0	0	978206	978206.0	gift	unit_link	38392	38392.0	0.29	bank_transfer	0	0	0	1	1	0	1	0	0	0	0.79	0	none	0	0
CUST00091	Singapore	SGD	0.74	30	entrepreneur	1	83793	62006.82	0.07	29327	21701.98	0	0	1621394	1199831.56	business_income	health	6536	4836.64	0.08	credit_card	0	0	0	5	0	1	0	0	0	0	0.0	0	placement	0	0
CUST00092	Singapore	SGD	0.74	30	entrepreneur	1	95707	70823.18	0.25	119633	88528.42	1	3254038	3565085	2638162.9	inheritance	health	5446	4030.04	0.06	bank_transfer	0	0	0	2	0	0	0	0	0	0	0.27	0	layering	0	0
CUST00093	Singapore	SGD	0.74	48	director	19	59792	44246.08	0.24	330051	244237.74	0	0	1346515	996421.1	inheritance	life	8700	6438.0	0.15	third_party_transfer	1	0	1	5	0	0	0	0	0	0	0.22	0	layering	0	0
CUST00094	United Kingdom	GBP	1.27	24	freelancer	1	104070	132168.9	0.16	16651	21146.77	0	0	224791	285484.57	gift	endowment	3853	4893.31	0.04	bank_transfer	0	0	0	4	0	0	0	0	0	0	0.71	0	none	0	0
CUST00095	United Arab Emirates	AED	0.27	26	director	4	218879	59097.33	0.2	43775	11819.25	0	0	919291	248208.57	savings	health	12111	3269.97	0.06	third_party_transfer	0	0	0	5	0	0	0	0	0	0	0.53	0	placement	0	0
CUST00096	United Arab Emirates	AED	0.27	54	director	24	275548	74397.96	0.07	559362	151027.74	0	0	1937102	523017.54	grant	unit_link	71306	19252.62	0.26	third_party_transfer	0	0	0	4	0	0	0	0	0	0	0.89	0	layering	0	0
CUST00097	United Arab Emirates	AED	0.27	43	consultant	15	259049	69943.23	0.15	699432	188846.64	0	0	1994677	538562.79	inheritance	health	27851	7519.77	0.11	credit_card	0	0	1	4	0	0	0	0	0	0	0.07	0	none	0	0
CUST00098	Indonesia	IDR	6.5e-05	27	employee	1	267370530	17379.08	0.24	128337854	8341.96	0	0	3604154744	234270.06	savings	health	66119502	4297.77	0.25	bank_transfer	0	0	1	4	0	1	0	0	0	0	0.35	0	none	0	0
CUST00099	United States	USD	1.0	49	entrepreneur	28	105400	105400.0	0.2	505920	505920.0	0	0	1876120	1876120.0	savings	unit_link	5165	5165.0	0.05	third_party_transfer	0	0	1	2	1	1	0	0	0	0	0.85	0	none	0	0
CUST00100	Malaysia	MYR	0.21	57	director	31	90232	18948.72	0.24	692981	145526.01	0	0	2497621	524500.41	gift	life	7518	1578.78	0.08	cash	0	0	0	1	0	1	0	0	0	0	0.18	0	none	0	0
CUST00101	United States	USD	1.0	41	employee	15	122018	122018.0	0.05	97614	97614.0	0	0	829722	829722.0	gift	unit_link	21788	21788.0	0.18	bank_transfer	0	0	0	1	1	0	0	0	0	0	0.75	0	none	0	0
CUST00102	Singapore	SGD	0.74	46	director	19	148920	110200.8	0.14	437824	323989.76	0	0	2373784	1756600.16	inheritance	life	15972	11819.28	0.11	bank_transfer	0	0	0	2	0	0	0	0	0	0	0.16	0	layering	0	0
CUST00103	United Kingdom	GBP	1.27	25	freelancer	3	96330	122339.1	0.16	15412	19573.24	0	0	1460362	1854659.74	gift	health	15026	19083.02	0.16	credit_card	0	1	1	5	0	0	0	0	0	0	0.11	0	placement	0	0
CUST00104	United Arab Emirates	AED	0.27	29	entrepreneur	4	405581	109506.87	0.22	356911	96365.97	1	33257642	40915011	11047052.97	salary	endowment	83872	22645.44	0.21	bank_transfer	0	0	0	1	0	0	0	0	0	0	0.2	0	none	0	0
CUST00105	Singapore	SGD	0.74	30	entrepreneur	5	105876	78348.24	0.13	68819	50926.06	0	0	280571	207622.54	gift	unit_link	16862	12477.88	0.16	third_party_transfer	0	0	0	5	0	0	0	0	0	0	0.7	0	none	0	0
CUST00106	United Kingdom	GBP	1.27	57	employee	31	43894	55745.38	0.15	210691	267577.57	0	0	342373	434813.71	gift	health	6239	7923.53	0.14	third_party_transfer	0	0	0	5	0	0	0	0	0	0	0.4	0	none	0	0
CUST00107	United States	USD	1.0	48	freelancer	23	60192	60192.0	0.15	207662	207662.0	0	0	929966	929966.0	savings	health	4100	4100.0	0.07	bank_transfer	0	0	0	4	0	0	0	0	0	0	0.84	0	none	0	0
CUST00108	Singapore	SGD	0.74	49	consultant	19	134975	99881.5	0.18	583092	431488.08	0	0	2472742	1829829.08	grant	unit_link	35599	26343.26	0.26	cash	0	0	0	2	0	0	0	0	0	0	0.08	0	none	0	0
CUST00109	United States	USD	1.0	29	entrepreneur	1	163680	163680.0	0.1	65472	65472.0	0	0	2193312	2193312.0	grant	unit_link	19364	19364.0	0.12	bank_transfer	0	0	0	2	0	0	0	0	0	0	0.26	0	none	0	0
CUST00110	Singapore	SGD	0.74	60	freelancer	37	229285	169670.9	0.24	1925994	1425235.56	0	0	2843134	2103919.16	grant	endowment	15958	11808.92	0.07	third_party_transfer	0	0	1	5	0	0	0	0	0	0	0.64	0	none	0	0
CUST00111	United Kingdom	GBP	1.27	42	consultant	16	64572	82006.44	0.16	175635	223056.45	0	0	1273359	1617165.93	inheritance	life	9286	11793.22	0.14	cash	1	1	0	5	0	0	0	0	0	0	0.07	0	none	0	1
CUST00112	United Arab Emirates	AED	0.27	50	director	29	79826	21553.02	0.14	279391	75435.57	0	0	1157477	312518.79	salary	endowment	3311	893.97	0.04	third_party_transfer	0	0	0	5	0	0	0	0	0	0	0.55	0	layering	0	0
CUST00113	United States	USD	1.0	24	entrepreneur	1	242288	242288.0	0.19	46034	46034.0	1	10660672	13614162	13614162.0	savings	life	45889	45889.0	0.19	third_party_transfer	0	0	0	1	0	0	0	0	0	0	0.81	0	none	0	0
CUST00114	Malaysia	MYR	0.21	27	director	1	368756	77438.76	0.09	66376	13938.96	0	0	3385180	710887.8	gift	unit_link	80438	16891.98	0.22	cash	0	1	1	3	0	0	0	0	0	0	0.92	0	none	0	0
CUST00115	United Arab Emirates	AED	0.27	48	director	22	405937	109602.99	0.2	1867310	504173.7	0	0	6738554	1819409.58	salary	endowment	15610	4214.7	0.04	cash	0	1	0	3	1	0	0	0	0	0	0.72	0	placement	0	0
CUST00116	United States	USD	1.0	60	freelancer	37	117388	117388.0	0.07	287600	287600.0	0	0	991928	991928.0	inheritance	unit_link	32479	32479.0	0.28	bank_transfer	0	0	1	3	0	0	0	0	0	0	0.56	0	none	0	0
CUST00117	United States	USD	1.0	43	freelancer	20	205666	205666.0	0.23	851457	851457.0	0	0	4553445	4553445.0	grant	health	9494	9494.0	0.05	bank_transfer	0	0	0	3	0	0	0	0	0	0	0.31	0	none	0	0
CUST00118	Singapore	SGD	0.74	43	employee	15	80333	59446.42	0.11	159059	117703.66	0	0	641057	474382.18	inheritance	life	5091	3767.34	0.06	cash	0	0	0	5	1	1	0	0	0	0	0.13	1	none	0	0
CUST00119	United Arab Emirates	AED	0.27	31	freelancer	8	144815	39100.05	0.26	225911	60995.97	0	0	1239616	334696.32	salary	health	32138	8677.26	0.22	credit_card	1	0	0	4	0	0	0	0	0	0	0.61	0	none	0	0
CUST00120	United States	USD	1.0	50	consultant	26	169987	169987.0	0.11	467464	467464.0	1	20398440	23755683	23755683.0	business_income	endowment	46425	46425.0	0.27	third_party_transfer	0	0	1	3	1	0	0	0	0	0	0.78	0	none	0	0
CUST00121	United Kingdom	GBP	1.27	55	freelancer	28	67482	85702.14	0.25	506115	642766.05	0	0	911007	1156978.89	salary	health	17844	22661.88	0.26	bank_transfer	0	0	0	5	0	0	0	0	0	0	0.85	0	none	0	0
CUST00122	Malaysia	MYR	0.21	27	entrepreneur	4	173021	36334.41	0.16	55366	11626.86	1	14706785	15800277	3318058.17	salary	endowment	43721	9181.41	0.25	cash	0	1	1	1	0	0	0	0	0	0	0.41	0	none	0	0
CUST00123	United Arab Emirates	AED	0.27	54	consultant	28	173615	46876.05	0.15	755225	203910.75	0	0	1449685	391414.95	salary	life	21697	5858.19	0.12	cash	0	0	0	2	0	0	0	0	0	0	0.14	0	none	0	0
CUST00124	Malaysia	MYR	0.21	52	consultant	29	399904	83979.84	0.17	1835559	385467.39	0	0	2635367	553427.07	salary	unit_link	109429	22980.09	0.27	credit_card	0	0	0	5	0	0	0	0	0	0	0.94	0	none	0	0
CUST00125	United Kingdom	GBP	1.27	55	entrepreneur	28	54146	68765.42	0.24	389851	495110.77	0	0	877165	1113999.55	salary	endowment	5648	7172.96	0.1	third_party_transfer	0	0	0	1	0	0	0	0	0	0	0.11	0	none	0	0
CUST00126	United Arab Emirates	AED	0.27	60	freelancer	31	58616	15826.32	0.21	430827	116323.29	1	5451288	6409659	1730607.93	inheritance	life	12965	3500.55	0.22	cash	0	0	1	2	0	1	0	0	0	0	0.57	0	none	0	0
CUST00127	Singapore	SGD	0.74	64	director	42	167228	123748.72	0.29	1891348	1399597.52	0	0	2560260	1894592.4	savings	life	47986	35509.64	0.29	third_party_transfer	0	0	0	4	0	0	0	0	0	0	0.04	0	none	0	0
CUST00128	United Arab Emirates	AED	0.27	45	employee	20	441809	119288.43	0.05	441809	119288.43	0	0	2209045	596442.15	grant	health	51490	13902.3	0.12	credit_card	0	0	0	1	1	0	0	0	0	0	0.35	0	none	0	0
CUST00129	Malaysia	MYR	0.21	63	employee	40	388970	81683.7	0.17	2512746	527676.66	0	0	9125236	1916299.56	business_income	endowment	76582	16082.22	0.2	bank_transfer	0	1	0	3	0	0	0	0	0	0	0.2	0	none	0	0
CUST00130	Singapore	SGD	0.74	24	entrepreneur	1	111284	82350.16	0.18	20031	14822.94	0	0	2134427	1579475.98	salary	health	16976	12562.24	0.15	cash	0	0	0	1	0	0	0	0	0	0	0.87	0	none	0	0
CUST00131	Malaysia	MYR	0.21	39	consultant	17	222948	46819.08	0.16	499403	104874.63	0	0	3620675	760341.75	gift	unit_link	50860	10680.6	0.23	third_party_transfer	1	0	0	4	0	0	0	0	0	0	0.37	0	none	0	0
CUST00132	United Kingdom	GBP	1.27	39	employee	17	136280	173075.6	0.07	133554	169613.58	1	13219160	14306674	18169475.98	inheritance	life	23540	29895.8	0.17	cash	0	0	1	3	0	0	0	0	0	0	0.31	0	none	0	0
CUST00133	United Kingdom	GBP	1.27	49	director	26	141367	179536.09	0.14	474993	603241.11	0	0	899094	1141849.38	inheritance	endowment	31596	40126.92	0.22	cash	0	0	0	1	0	0	0	0	0	0	0.08	0	none	0	0
CUST00134	United States	USD	1.0	47	director	21	164502	164502.0	0.25	904761	904761.0	0	0	2056275	2056275.0	business_income	endowment	47176	47176.0	0.29	bank_transfer	0	0	0	2	1	0	0	0	0	0	0.07	0	none	0	0
CUST00135	United States	USD	1.0	45	freelancer	19	130362	130362.0	0.29	756099	756099.0	0	0	1147185	1147185.0	grant	health	24694	24694.0	0.19	cash	0	0	0	4	0	0	0	0	0	0	0.76	0	none	0	0
CUST00136	United Kingdom	GBP	1.27	30	employee	1	121193	153915.11	0.15	90894	115435.38	0	0	1302824	1654586.48	salary	unit_link	10894	13835.38	0.09	third_party_transfer	0	0	1	5	0	0	0	0	0	0	0.39	0	integration	0	0
CUST00137	United Kingdom	GBP	1.27	29	freelancer	4	93233	118405.91	0.23	85774	108932.98	0	0	831638	1056180.26	inheritance	unit_link	27875	35401.25	0.3	bank_transfer	0	0	0	2	0	0	0	0	0	0	0.85	0	none	0	0
CUST00138	United Arab Emirates	AED	0.27	33	employee	5	96027	25927.29	0.25	192054	51854.58	0	0	1344378	362982.06	grant	health	19877	5366.79	0.21	cash	0	0	0	2	1	0	0	0	0	0	0.71	0	integration	0	0
CUST00139	United States	USD	1.0	62	entrepreneur	39	238062	238062.0	0.14	1233161	1233161.0	0	0	3375719	3375719.0	business_income	unit_link	12850	12850.0	0.05	third_party_transfer	0	0	0	1	0	0	0	0	0	0	0.36	0	placement	0	0
CUST00140	United Kingdom	GBP	1.27	45	freelancer	17	169610	215404.7	0.08	271376	344647.52	0	0	949816	1206266.32	gift	endowment	6514	8272.78	0.04	third_party_transfer	1	0	0	5	0	0	0	0	0	0	0.07	0	integration	0	0
CUST00141	Malaysia	MYR	0.21	63	director	41	265916	55842.36	0.17	1717817	360741.57	0	0	6504305	1365904.05	savings	unit_link	30969	6503.49	0.12	credit_card	0	0	0	4	1	0	0	0	0	0	0.5	0	integration	0	0
CUST00142	Indonesia	IDR	6.5e-05	29	entrepreneur	1	388598212	25258.88	0.13	202071070	13134.62	0	0	2922258554	189946.81	grant	health	42879873	2787.19	0.11	cash	0	0	0	1	0	0	0	0	0	0	0.25	1	none	0	0
CUST00143	United States	USD	1.0	57	entrepreneur	32	62812	62812.0	0.21	422096	422096.0	0	0	1615524	1615524.0	grant	unit_link	2899	2899.0	0.05	credit_card	0	1	0	5	0	0	0	0	0	0	0.72	1	none	0	0
CUST00144	United Kingdom	GBP	1.27	43	director	13	35798	45463.46	0.26	167534	212768.18	0	0	239130	303695.1	grant	health	1530	1943.1	0.04	credit_card	0	0	1	5	0	0	0	0	0	0	0.42	0	none	0	0
CUST00145	United States	USD	1.0	23	freelancer	1	194407	194407.0	0.19	36937	36937.0	0	0	2175414	2175414.0	grant	health	30176	30176.0	0.16	third_party_transfer	0	0	0	1	0	0	0	0	0	0	0.69	0	none	0	0
CUST00146	Singapore	SGD	0.74	50	consultant	23	156943	116137.82	0.17	667007	493585.18	0	0	2550323	1887239.02	inheritance	health	29797	22049.78	0.19	third_party_transfer	0	1	0	2	0	0	0	0	0	0	0.76	0	none	0	0
CUST00147	United Kingdom	GBP	1.27	57	entrepreneur	35	108654	137990.58	0.11	382462	485726.74	0	0	925732	1175679.64	business_income	life	10310	13093.7	0.09	bank_transfer	0	0	1	3	0	1	0	0	0	0	0.95	0	none	0	0
CUST00148	United Kingdom	GBP	1.27	48	entrepreneur	24	66864	84917.28	0.25	384468	488274.36	0	0	1721748	2186619.96	business_income	endowment	14838	18844.26	0.22	third_party_transfer	0	0	0	4	0	0	0	0	0	0	0.88	0	none	0	0
CUST00149	United Arab Emirates	AED	0.27	23	employee	1	256172	69166.44	0.18	46110	12449.7	0	0	2351658	634947.66	inheritance	life	20555	5549.85	0.08	cash	0	0	0	4	0	0	0	0	0	0	0.6	0	none	0	0
CUST00150	United States	USD	1.0	65	consultant	37	104907	104907.0	0.18	755330	755330.0	1	3461931	5790866	5790866.0	inheritance	endowment	6032	6032.0	0.06	cash	0	0	0	1	0	0	0	0	0	0	0.4	0	none	0	0
CUST00151	United Kingdom	GBP	1.27	57	director	33	120033	152441.91	0.19	729800	926846.0	0	0	1209932	1536613.64	gift	health	15385	19538.95	0.13	bank_transfer	0	0	0	2	0	0	0	0	0	0	0.98	0	none	0	0
CUST00152	United Arab Emirates	AED	0.27	45	freelancer	19	342464	92465.28	0.28	1917798	517805.46	0	0	3972582	1072597.14	savings	life	25936	7002.72	0.08	bank_transfer	0	0	0	1	0	0	0	0	0	0	0.14	0	integration	0	0
CUST00153	Malaysia	MYR	0.21	52	consultant	23	269593	56614.53	0.09	655110	137573.1	0	0	5507784	1156634.64	savings	unit_link	15943	3348.03	0.06	third_party_transfer	0	0	0	5	1	0	0	0	0	0	0.74	0	none	0	0
CUST00154	Malaysia	MYR	0.21	59	consultant	33	295979	62155.59	0.26	2616454	549455.34	0	0	8240055	1730411.55	savings	endowment	46515	9768.15	0.16	bank_transfer	0	0	0	3	0	0	0	0	0	0	0.33	0	integration	0	0
CUST00155	Indonesia	IDR	6.5e-05	48	director	18	720733112	46847.65	0.25	4144215394	269374.0	0	0	5585681618	363069.31	inheritance	unit_link	134874169	8766.82	0.19	bank_transfer	0	0	0	5	0	0	0	0	0	0	0.48	0	none	0	0
CUST00156	United Kingdom	GBP	1.27	62	employee	32	124664	158323.28	0.09	415131	527216.37	0	0	1537107	1952125.89	grant	unit_link	3595	4565.65	0.03	bank_transfer	0	0	0	4	0	0	0	0	0	0	0.31	0	none	0	0
CUST00157	Singapore	SGD	0.74	48	employee	24	137577	101806.98	0.18	569568	421480.32	0	0	2908377	2152198.98	grant	unit_link	36373	26916.02	0.26	credit_card	0	0	0	5	0	0	0	0	0	0	0.33	0	none	0	0
CUST00158	United States	USD	1.0	52	consultant	23	128782	128782.0	0.13	452024	452024.0	0	0	1353498	1353498.0	savings	health	19150	19150.0	0.15	cash	0	0	0	5	0	0	1	0	0	0	0.48	0	placement	0	0
CUST00159	Singapore	SGD	0.74	39	entrepreneur	10	108249	80104.26	0.11	166703	123360.22	0	0	1357442	1004507.08	grant	endowment	25539	18898.86	0.24	cash	0	0	1	4	0	0	0	0	1	0	0.35	0	none	0	1
CUST00160	United States	USD	1.0	39	consultant	14	61948	61948.0	0.19	164781	164781.0	0	0	1341793	1341793.0	gift	unit_link	7824	7824.0	0.13	cash	0	0	0	1	0	0	0	0	0	0	0.29	0	none	0	0
CUST00161	United States	USD	1.0	27	consultant	1	145966	145966.0	0.21	61305	61305.0	0	0	2542727	2542727.0	savings	health	11665	11665.0	0.08	credit_card	0	0	0	1	0	0	0	0	0	0	0.62	0	none	0	0
CUST00162	United Kingdom	GBP	1.27	37	employee	13	38307	48649.89	0.22	101130	128435.1	0	0	790656	1004133.12	business_income	life	3186	4046.22	0.08	third_party_transfer	0	0	0	3	0	0	1	0	0	0	0.72	0	none	0	0
CUST00163	Indonesia	IDR	6.5e-05	65	freelancer	42	71127056	4623.26	0.29	825073849	53629.8	0	0	1322963241	85992.61	gift	unit_link	9526337	619.21	0.13	cash	0	0	0	3	0	0	0	0	0	0	0.29	0	layering	0	0
CUST00164	Indonesia	IDR	6.5e-05	27	freelancer	1	558689078	36314.79	0.18	201128068	13073.32	0	0	1877195302	122017.69	business_income	unit_link	154032994	10012.14	0.28	bank_transfer	0	0	1	4	0	0	0	0	0	0	0.79	0	none	0	0
CUST00165	Singapore	SGD	0.74	40	consultant	19	32429	23997.46	0.12	58372	43195.28	0	0	220517	163182.58	inheritance	endowment	9079	6718.46	0.28	third_party_transfer	0	0	0	2	0	0	0	0	0	0	0.85	0	placement	0	0
CUST00166	United Arab Emirates	AED	0.27	39	consultant	15	474051	127993.77	0.08	530937	143352.99	0	0	3849294	1039309.38	grant	unit_link	106525	28761.75	0.22	bank_transfer	0	0	0	3	0	0	1	0	0	0	0.79	0	none	0	0
CUST00167	United Kingdom	GBP	1.27	65	consultant	41	71004	90175.08	0.2	568032	721400.64	0	0	1562088	1983851.76	savings	life	17861	22683.47	0.25	third_party_transfer	0	0	0	1	0	0	0	0	0	0	0.18	0	none	0	0
CUST00168	Singapore	SGD	0.74	52	consultant	26	95024	70317.76	0.05	128282	94928.68	0	0	1458618	1079377.32	inheritance	health	8166	6042.84	0.09	bank_transfer	1	0	0	3	0	0	0	0	0	0	0.65	1	integration	0	0
CUST00169	United States	USD	1.0	37	director	16	205056	205056.0	0.08	196853	196853.0	0	0	2452469	2452469.0	grant	health	13271	13271.0	0.06	bank_transfer	0	0	0	3	0	0	0	0	0	0	0.37	0	none	0	0
CUST00170	Singapore	SGD	0.74	36	freelancer	13	155352	114960.48	0.09	153798	113810.52	0	0	2173374	1608296.76	savings	unit_link	21195	15684.3	0.14	credit_card	0	0	1	5	0	0	0	0	0	0	0.87	0	none	0	0
CUST00171	Indonesia	IDR	6.5e-05	55	employee	27	1194243138	77625.8	0.23	8240277652	535618.05	0	0	13017250204	846121.26	salary	unit_link	330600557	21489.04	0.28	credit_card	1	0	0	2	0	0	0	0	0	0	0.33	0	none	0	0
CUST00172	United Kingdom	GBP	1.27	50	freelancer	28	78844	100131.88	0.23	453353	575758.31	0	0	1793701	2278000.27	savings	life	3584	4551.68	0.05	third_party_transfer	0	0	0	2	0	0	0	0	0	0	0.51	0	placement	0	0
CUST00173	United Arab Emirates	AED	0.27	58	consultant	37	342970	92601.9	0.17	1924061	519496.47	0	0	5696731	1538117.37	gift	life	76317	20605.59	0.22	credit_card	0	1	1	5	0	0	0	0	0	0	0.07	0	none	0	0
CUST00174	United Arab Emirates	AED	0.27	44	employee	22	333725	90105.75	0.3	1902232	513602.64	0	0	3237132	874025.64	gift	health	98822	26681.94	0.3	third_party_transfer	0	0	1	2	0	0	0	0	0	0	0.77	0	none	0	0
CUST00175	United States	USD	1.0	63	freelancer	36	128162	128162.0	0.3	1461046	1461046.0	1	8715016	12226654	12226654.0	gift	life	33769	33769.0	0.26	credit_card	0	0	1	3	0	1	0	0	0	0	0.12	0	layering	0	0
CUST00176	United Kingdom	GBP	1.27	47	consultant	18	58383	74146.41	0.23	295417	375179.59	0	0	820864	1042497.28	salary	endowment	14814	18813.78	0.25	third_party_transfer	1	0	1	5	0	0	1	0	0	0	0.38	0	none	0	0
CUST00177	Singapore	SGD	0.74	37	freelancer	9	120743	89349.82	0.09	130402	96497.48	1	5312692	6046809	4474638.66	grant	life	3504	2592.96	0.03	credit_card	0	0	0	2	0	0	0	0	0	0	0.07	0	none	0	0
CUST00178	United Kingdom	GBP	1.27	24	freelancer	1	181705	230765.35	0.22	39975	50768.25	0	0	585090	743064.3	salary	endowment	16085	20427.95	0.09	credit_card	0	0	0	5	0	0	0	0	0	0	0.22	0	placement	0	0
CUST00179	Indonesia	IDR	6.5e-05	30	consultant	1	681188537	44277.25	0.11	374653695	24352.49	0	0	13998424435	909897.59	savings	unit_link	74449162	4839.2	0.11	cash	0	0	0	2	0	0	0	0	0	0	0.99	0	none	0	0
CUST00180	United Kingdom	GBP	1.27	36	entrepreneur	9	103774	131792.98	0.12	136981	173965.87	0	0	2108687	2678032.49	grant	endowment	29636	37637.72	0.29	third_party_transfer	0	0	0	1	0	0	0	0	0	0	0.97	0	none	0	0
CUST00181	United States	USD	1.0	64	freelancer	37	235993	235993.0	0.18	1656670	1656670.0	0	0	5196565	5196565.0	inheritance	unit_link	31696	31696.0	0.13	third_party_transfer	1	0	0	2	0	0	0	0	0	0	0.85	0	none	0	0
CUST00182	Malaysia	MYR	0.21	31	freelancer	3	60211	12644.31	0.19	68640	14414.4	0	0	971805	204079.05	business_income	unit_link	10599	2225.79	0.18	cash	1	0	1	2	0	0	0	0	0	0	0.33	0	none	0	0
CUST00183	Indonesia	IDR	6.5e-05	50	director	24	258564913	16806.72	0.18	1163542108	75630.24	0	0	3232061412	210083.99	gift	life	8902456	578.66	0.03	bank_transfer	1	0	0	2	0	1	0	0	0	0	0.8	0	none	0	0
CUST00184	United Kingdom	GBP	1.27	64	entrepreneur	35	81889	103999.03	0.17	542924	689513.48	0	0	1525592	1937501.84	salary	unit_link	8589	10908.03	0.1	bank_transfer	1	0	0	4	0	0	0	0	0	0	0.91	0	placement	0	0
CUST00185	United States	USD	1.0	60	freelancer	36	133974	133974.0	0.28	1312945	1312945.0	0	0	3858451	3858451.0	inheritance	endowment	14744	14744.0	0.11	cash	0	0	0	3	0	0	0	0	0	0	0.26	0	none	0	0
CUST00186	United Kingdom	GBP	1.27	53	entrepreneur	25	50849	64578.23	0.25	355943	452047.61	1	5695088	6915464	8782639.28	inheritance	health	11860	15062.2	0.23	cash	1	0	0	4	0	0	0	0	0	0	0.05	1	none	0	0
CUST00187	Singapore	SGD	0.74	31	consultant	10	98360	72786.4	0.19	112130	82976.2	0	0	2079330	1538704.2	gift	unit_link	17917	13258.58	0.18	credit_card	0	0	1	3	0	0	0	0	0	0	0.23	0	none	0	0
CUST00188	United Kingdom	GBP	1.27	37	freelancer	9	169347	215070.69	0.21	426754	541977.58	0	0	2458918	3122825.86	gift	endowment	15588	19796.76	0.09	credit_card	0	0	0	3	0	0	0	0	0	0	0.17	0	layering	0	0
CUST00189	United States	USD	1.0	56	director	28	78247	78247.0	0.28	679183	679183.0	0	0	2165876	2165876.0	salary	life	23262	23262.0	0.3	bank_transfer	0	0	0	1	0	0	0	0	0	0	0.76	0	integration	0	0
CUST00190	United Arab Emirates	AED	0.27	30	consultant	6	85634	23121.18	0.23	98479	26589.33	0	0	269747	72831.69	gift	life	6957	1878.39	0.08	third_party_transfer	0	0	0	4	0	0	0	0	0	0	0.02	0	integration	0	0
CUST00191	United Kingdom	GBP	1.27	57	employee	30	28106	35694.62	0.05	44969	57110.63	0	0	326029	414056.83	inheritance	endowment	4778	6068.06	0.17	credit_card	0	0	0	1	0	0	0	0	0	0	0.92	0	none	0	0
CUST00192	United Kingdom	GBP	1.27	31	employee	7	75313	95647.51	0.2	90375	114776.25	1	3916276	4985720	6331864.4	gift	health	7143	9071.61	0.09	third_party_transfer	0	0	1	4	0	0	1	0	0	0	0.57	0	none	0	0
CUST00193	United States	USD	1.0	36	employee	11	209317	209317.0	0.26	598646	598646.0	0	0	1435914	1435914.0	grant	life	42500	42500.0	0.2	third_party_transfer	0	0	0	4	0	1	0	0	0	0	0.38	0	none	0	0
CUST00194	United Arab Emirates	AED	0.27	25	consultant	4	418493	112993.11	0.09	37664	10169.28	0	0	7152045	1931052.15	grant	life	107423	29004.21	0.26	bank_transfer	0	0	0	2	0	0	0	0	0	0	0.21	0	none	0	0
CUST00195	United States	USD	1.0	58	director	30	101065	101065.0	0.06	200108	200108.0	0	0	604368	604368.0	inheritance	life	21389	21389.0	0.21	credit_card	0	0	0	3	0	0	0	0	0	0	0.02	0	none	0	0
CUST00196	Singapore	SGD	0.74	59	entrepreneur	36	227198	168126.52	0.26	2008430	1486238.2	0	0	5189202	3840009.48	inheritance	unit_link	63634	47089.16	0.28	third_party_transfer	1	0	0	5	0	0	0	0	0	0	0.33	0	none	0	0
CUST00197	United States	USD	1.0	30	entrepreneur	8	161279	161279.0	0.24	193534	193534.0	0	0	2290161	2290161.0	gift	life	5650	5650.0	0.04	cash	0	0	1	5	0	0	0	0	0	0	0.77	0	none	0	0
CUST00198	United Kingdom	GBP	1.27	47	director	21	32766	41612.82	0.21	151378	192250.06	0	0	675634	858055.18	inheritance	endowment	5156	6548.12	0.16	third_party_transfer	0	0	0	2	0	0	0	0	0	0	0.68	0	integration	0	0
CUST00199	United States	USD	1.0	46	consultant	24	232419	232419.0	0.2	976159	976159.0	0	0	3067930	3067930.0	salary	unit_link	51055	51055.0	0.22	third_party_transfer	0	0	0	2	0	0	0	0	0	0	0.74	0	layering	0	0
CUST00200	Malaysia	MYR	0.21	45	employee	23	77983	16376.43	0.05	77983	16376.43	0	0	935796	196517.16	inheritance	unit_link	11270	2366.7	0.14	bank_transfer	0	0	0	2	1	0	0	0	0	0	0.43	0	none	0	0
CUST00201	United Kingdom	GBP	1.27	57	director	28	131966	167596.82	0.08	337832	429046.64	0	0	865696	1099433.92	salary	health	15716	19959.32	0.12	third_party_transfer	0	0	0	1	0	0	0	0	0	0	0.29	0	none	0	0
CUST00202	United Arab Emirates	AED	0.27	27	entrepreneur	1	177266	47861.82	0.19	67361	18187.47	0	0	1308223	353220.21	business_income	health	37560	10141.2	0.21	cash	1	0	1	3	1	0	1	0	0	0	0.49	0	none	0	0
CUST00203	Indonesia	IDR	6.5e-05	32	consultant	5	652623604	42420.53	0.16	730938436	47511.0	0	0	11825539704	768660.08	inheritance	unit_link	156072751	10144.73	0.24	third_party_transfer	0	0	1	5	0	0	0	0	0	0	0.62	0	placement	0	0
CUST00204	United Arab Emirates	AED	0.27	28	freelancer	5	209728	56626.56	0.05	31459	8493.93	0	0	2967651	801265.77	savings	health	23703	6399.81	0.11	third_party_transfer	0	0	0	3	0	0	0	0	0	0	0.43	0	none	0	0
CUST00205	United States	USD	1.0	60	freelancer	37	108757	108757.0	0.13	494844	494844.0	1	11745756	13110656	13110656.0	business_income	health	16761	16761.0	0.15	cash	1	0	0	4	0	0	0	0	0	0	0.97	1	none	0	0
CUST00206	Singapore	SGD	0.74	42	entrepreneur	15	103479	76574.46	0.25	439785	325440.9	1	7243530	9028542	6681121.08	savings	unit_link	5369	3973.06	0.05	bank_transfer	0	0	1	4	0	0	1	0	0	0	0.94	0	none	0	0
CUST00207	Singapore	SGD	0.74	50	consultant	25	247915	183457.1	0.22	1363532	1009013.68	0	0	5082257	3760870.18	business_income	unit_link	51673	38238.02	0.21	cash	1	0	0	2	0	0	0	0	0	0	0.72	0	none	0	0
CUST00208	United Arab Emirates	AED	0.27	26	freelancer	1	363489	98142.03	0.17	61793	16684.11	0	0	5150639	1390672.53	grant	life	61656	16647.12	0.17	cash	1	1	1	5	0	0	0	0	0	0	0.59	0	none	0	1
CUST00209	Indonesia	IDR	6.5e-05	28	director	4	1472188783	95692.27	0.22	971644596	63156.9	0	0	11276966077	733002.8	salary	endowment	296145432	19249.45	0.2	cash	1	0	1	4	0	0	0	0	0	0	0.11	0	none	0	0
CUST00210	Indonesia	IDR	6.5e-05	38	entrepreneur	14	1156668866	75183.48	0.24	3608806861	234572.45	0	0	25585515315	1663058.5	savings	endowment	211144260	13724.38	0.18	cash	0	0	1	4	0	1	0	0	0	0	0.46	0	none	0	0
CUST00211	United States	USD	1.0	59	freelancer	30	69516	69516.0	0.14	330896	330896.0	0	0	469928	469928.0	inheritance	life	10787	10787.0	0.16	bank_transfer	0	0	1	2	0	0	0	0	0	0	0.35	0	placement	0	0
CUST00212	Malaysia	MYR	0.21	51	freelancer	27	303214	63674.94	0.17	1340205	281443.05	0	0	6494843	1363917.03	grant	health	14352	3013.92	0.05	bank_transfer	0	0	0	3	0	1	0	0	0	0	0.04	1	none	0	0
CUST00213	United States	USD	1.0	29	entrepreneur	8	119935	119935.0	0.21	100745	100745.0	0	0	940290	940290.0	grant	unit_link	33627	33627.0	0.28	credit_card	0	0	0	3	0	0	0	0	0	0	0.56	0	none	0	0
CUST00214	United Arab Emirates	AED	0.27	36	director	9	380175	102647.25	0.1	418192	112911.84	0	0	6120817	1652620.59	grant	unit_link	49712	13422.24	0.13	third_party_transfer	1	0	0	5	1	0	0	0	0	0	0.43	0	none	0	0
CUST00215	Indonesia	IDR	6.5e-05	35	entrepreneur	11	657740964	42753.16	0.24	1578578313	102607.59	0	0	4209542169	273620.24	savings	health	119483522	7766.43	0.18	cash	1	0	0	2	0	0	0	0	0	0	0.46	0	none	0	0
CUST00216	Malaysia	MYR	0.21	64	freelancer	36	306674	64401.54	0.29	3468482	728381.22	0	0	7148570	1501199.7	savings	life	57394	12052.74	0.19	cash	0	0	0	3	0	0	0	0	0	0	0.85	0	none	0	0
CUST00217	United Kingdom	GBP	1.27	33	consultant	8	186083	236325.41	0.2	297732	378119.64	0	0	1414230	1796072.1	business_income	life	20039	25449.53	0.11	credit_card	0	0	0	3	0	0	0	0	0	0	0.69	0	layering	0	0
CUST00218	United Kingdom	GBP	1.27	46	director	19	181349	230313.23	0.08	304666	386925.82	0	0	2843552	3611311.04	gift	unit_link	25107	31885.89	0.14	credit_card	0	0	1	4	0	1	0	0	0	0	0.29	0	none	0	0
CUST00219	Singapore	SGD	0.74	42	entrepreneur	14	192374	142356.76	0.06	196221	145203.54	0	0	2697083	1995841.42	gift	unit_link	55118	40787.32	0.29	third_party_transfer	0	0	0	5	1	0	1	0	0	0	0.51	0	placement	0	0
CUST00220	United Arab Emirates	AED	0.27	48	director	20	267910	72335.7	0.23	1417243	382655.61	0	0	5703803	1540026.81	salary	life	42017	11344.59	0.16	credit_card	0	0	0	3	0	0	0	0	0	0	0.03	0	integration	0	0
CUST00221	Singapore	SGD	0.74	56	director	31	74094	54829.56	0.25	574228	424928.72	0	0	2056108	1521519.92	gift	life	16886	12495.64	0.23	bank_transfer	0	0	0	3	0	0	0	0	0	0	0.78	0	none	0	0
CUST00222	Malaysia	MYR	0.21	56	entrepreneur	35	261403	54894.63	0.19	1539663	323329.23	0	0	5460708	1146748.68	grant	health	12724	2672.04	0.05	bank_transfer	0	0	0	4	0	0	0	0	0	0	0.26	0	none	0	0
CUST00223	Indonesia	IDR	6.5e-05	50	director	28	568837784	36974.46	0.1	1422094460	92436.14	0	0	12798850140	831925.26	grant	endowment	121138218	7873.98	0.21	credit_card	0	0	0	5	0	0	0	0	0	0	0.14	0	none	0	0
CUST00224	Singapore	SGD	0.74	35	consultant	14	179441	132786.34	0.14	251217	185900.58	0	0	2045627	1513763.98	business_income	health	33577	24846.98	0.19	cash	0	0	0	5	0	0	0	0	0	0	0.27	0	integration	0	0
CUST00225	United Kingdom	GBP	1.27	65	entrepreneur	43	60543	76889.61	0.29	702298	891918.46	0	0	1610443	2045262.61	inheritance	unit_link	16785	21316.95	0.28	credit_card	1	0	0	2	0	0	0	0	0	0	0.71	0	none	0	0
CUST00226	Singapore	SGD	0.74	65	freelancer	38	158308	117147.92	0.09	569908	421731.92	0	0	2152988	1593211.12	gift	life	30994	22935.56	0.2	bank_transfer	0	0	0	4	0	0	0	0	0	0	0.52	0	layering	0	0
CUST00227	Malaysia	MYR	0.21	45	employee	17	285875	60033.75	0.13	743275	156087.75	0	0	1315025	276155.25	grant	endowment	75269	15806.49	0.26	cash	0	0	0	1	0	1	1	0	0	0	0.8	0	placement	0	0
CUST00228	United Arab Emirates	AED	0.27	35	director	8	482457	130263.39	0.1	482457	130263.39	1	26052678	32324619	8727647.13	inheritance	unit_link	121548	32817.96	0.25	third_party_transfer	0	1	0	3	0	0	0	0	0	0	0.89	0	none	0	0
CUST00229	Indonesia	IDR	6.5e-05	24	freelancer	2	1404710282	91306.17	0.25	351177570	22826.54	0	0	22826542082	1483725.24	business_income	endowment	34497968	2242.37	0.02	bank_transfer	0	0	0	4	0	0	0	0	0	0	0.2	0	integration	0	0
CUST00230	United States	USD	1.0	30	consultant	5	71674	71674.0	0.27	96759	96759.0	0	0	813499	813499.0	inheritance	life	3306	3306.0	0.05	cash	0	0	0	2	0	0	0	0	0	0	0.05	0	none	0	0
CUST00231	United States	USD	1.0	41	employee	17	142520	142520.0	0.21	478867	478867.0	0	0	1191467	1191467.0	gift	unit_link	2893	2893.0	0.02	credit_card	0	0	0	5	0	0	1	0	0	0	0.68	0	none	0	0
CUST00232	Indonesia	IDR	6.5e-05	22	employee	1	318973181	20733.26	0.3	95691954	6219.98	0	0	4880289669	317218.83	gift	unit_link	68365100	4443.73	0.21	third_party_transfer	0	1	1	1	0	0	0	0	0	0	0.73	0	placement	0	0
CUST00233	Indonesia	IDR	6.5e-05	28	entrepreneur	2	849332705	55206.63	0.27	687959491	44717.37	0	0	5783955721	375957.12	business_income	life	108002755	7020.18	0.13	bank_transfer	0	1	1	5	0	1	0	0	0	0	0.65	0	integration	0	0
CUST00234	United Arab Emirates	AED	0.27	44	entrepreneur	20	379294	102409.38	0.24	1729580	466986.6	0	0	7418990	2003127.3	gift	life	73014	19713.78	0.19	bank_transfer	0	0	1	2	0	0	0	0	0	0	0.75	0	none	0	0
CUST00235	United Kingdom	GBP	1.27	46	entrepreneur	20	137561	174702.47	0.13	375541	476937.07	1	5089757	6703347	8513250.69	salary	health	13419	17042.13	0.1	bank_transfer	0	0	0	3	0	0	0	0	0	0	0.21	0	placement	0	0
CUST00236	United Kingdom	GBP	1.27	54	freelancer	30	127695	162172.65	0.12	444378	564360.06	0	0	827463	1050878.01	business_income	endowment	30578	38834.06	0.24	bank_transfer	0	0	0	2	0	0	1	0	0	0	0.5	1	placement	0	0
CUST00237	United Kingdom	GBP	1.27	26	freelancer	1	28163	35767.01	0.3	8448	10728.96	0	0	346404	439933.08	savings	health	1604	2037.08	0.06	credit_card	0	0	0	4	0	1	0	0	0	0	0.95	0	none	0	0
CUST00238	Indonesia	IDR	6.5e-05	23	freelancer	1	205025099	13326.63	0.05	10251254	666.33	0	0	1650452046	107279.38	salary	health	6386843	415.14	0.03	third_party_transfer	0	0	0	4	0	0	0	0	0	0	0.7	0	integration	0	0
CUST00239	Indonesia	IDR	6.5e-05	62	director	33	1214606088	78949.4	0.2	8988085051	584225.53	0	0	21134145931	1373719.49	salary	unit_link	52722625	3426.97	0.04	credit_card	0	0	0	5	0	0	0	0	0	0	0.33	0	placement	0	0
CUST00240	United Kingdom	GBP	1.27	62	freelancer	40	106309	135012.43	0.22	865355	1099000.85	0	0	1822136	2314112.72	salary	life	3849	4888.23	0.04	third_party_transfer	1	0	0	5	0	0	0	0	0	0	0.61	0	none	0	0
CUST00241	Malaysia	MYR	0.21	64	freelancer	41	92622	19450.62	0.05	180612	37928.52	0	0	736344	154632.24	business_income	health	20045	4209.45	0.22	cash	0	0	0	2	0	0	0	0	0	0	0.37	0	none	0	0
CUST00242	United States	USD	1.0	39	director	17	232225	232225.0	0.27	877810	877810.0	0	0	3664510	3664510.0	inheritance	life	57125	57125.0	0.25	cash	0	1	0	5	0	1	0	0	0	0	0.63	0	none	0	0
CUST00243	United Arab Emirates	AED	0.27	51	consultant	22	238808	64478.16	0.06	372540	100585.8	0	0	5148700	1390149.0	business_income	life	15934	4302.18	0.07	bank_transfer	0	0	0	2	0	1	0	0	0	0	0.74	1	layering	0	0
CUST00244	Indonesia	IDR	6.5e-05	24	entrepreneur	3	585170243	38036.07	0.06	35110214	2282.16	0	0	7642323373	496751.02	business_income	life	74453698	4839.49	0.13	third_party_transfer	0	0	0	2	0	0	1	0	0	0	0.32	0	placement	0	0
CUST00245	United Arab Emirates	AED	0.27	42	employee	17	483060	130426.2	0.07	574841	155207.07	0	0	6854621	1850747.67	grant	unit_link	25810	6968.7	0.05	credit_card	0	0	0	5	0	1	0	0	0	0	0.98	0	none	0	0
CUST00246	United Arab Emirates	AED	0.27	26	freelancer	1	198010	53462.7	0.24	47522	12830.94	0	0	2225632	600920.64	savings	life	22106	5968.62	0.11	cash	0	0	1	2	0	0	0	0	0	0	0.29	1	none	0	0
CUST00247	Malaysia	MYR	0.21	61	director	37	273231	57378.51	0.14	1377084	289187.64	0	0	6022011	1264622.31	business_income	unit_link	81800	17178.0	0.3	credit_card	0	0	0	1	0	0	0	0	0	0	0.93	0	none	0	0
CUST00248	Indonesia	IDR	6.5e-05	36	freelancer	7	803939230	52256.05	0.21	1857099621	120711.48	0	0	3464978081	225223.58	salary	health	230149530	14959.72	0.29	bank_transfer	0	0	1	2	0	1	0	1	0	0	0.53	0	placement	0	0
CUST00249	Singapore	SGD	0.74	48	employee	20	45701	33818.74	0.29	304825	225570.5	0	0	579031	428482.94	salary	unit_link	10020	7414.8	0.22	third_party_transfer	1	0	1	3	0	0	0	0	0	0	0.46	0	none	0	0
CUST00250	United States	USD	1.0	27	employee	1	55054	55054.0	0.18	19819	19819.0	0	0	790575	790575.0	savings	endowment	2254	2254.0	0.04	credit_card	0	0	0	2	0	0	0	0	0	0	0.29	0	integration	0	0
CUST00251	Malaysia	MYR	0.21	47	entrepreneur	21	196753	41318.13	0.16	692570	145439.7	0	0	2463347	517302.87	business_income	life	8049	1690.29	0.04	credit_card	0	0	1	1	0	0	0	0	0	0	0.16	0	none	0	0
CUST00252	United Arab Emirates	AED	0.27	42	consultant	15	113300	30591.0	0.18	346698	93608.46	0	0	1253098	338336.46	gift	life	16602	4482.54	0.15	bank_transfer	0	1	0	2	0	0	0	0	0	0	0.81	0	none	0	0
CUST00253	Malaysia	MYR	0.21	60	entrepreneur	39	142732	29973.72	0.26	1298861	272760.81	0	0	3011645	632445.45	grant	health	8782	1844.22	0.06	third_party_transfer	1	0	0	5	0	0	0	0	0	0	0.05	0	none	0	0
CUST00254	Malaysia	MYR	0.21	38	entrepreneur	15	46295	9721.95	0.29	174532	36651.72	0	0	915252	192202.92	savings	life	8132	1707.72	0.18	third_party_transfer	0	0	1	1	0	0	0	0	0	0	0.8	1	none	0	0
CUST00255	Singapore	SGD	0.74	29	consultant	8	46166	34162.84	0.26	48012	35528.88	0	0	463506	342994.44	gift	life	2613	1933.62	0.06	cash	0	0	1	1	0	0	0	0	0	0	0.02	0	none	0	0
CUST00256	Indonesia	IDR	6.5e-05	34	employee	6	336577745	21877.55	0.07	212043979	13782.86	0	0	4250976919	276313.5	gift	unit_link	18278778	1188.12	0.05	third_party_transfer	0	0	1	4	0	0	0	0	0	0	0.5	0	none	0	0
CUST00257	United Arab Emirates	AED	0.27	65	entrepreneur	38	140600	37962.0	0.14	787360	212587.2	0	0	1771560	478321.2	gift	life	13637	3681.99	0.1	credit_card	0	0	1	3	0	0	0	0	0	0	0.5	0	none	0	0
CUST00258	United Kingdom	GBP	1.27	52	entrepreneur	31	47995	60953.65	0.12	155503	197488.81	1	1775815	2651243	3367078.61	savings	life	3640	4622.8	0.08	third_party_transfer	0	0	0	3	0	0	0	0	0	0	0.48	0	integration	0	0
CUST00259	United Arab Emirates	AED	0.27	44	director	14	313398	84617.46	0.13	774093	209005.11	0	0	3908073	1055179.71	inheritance	unit_link	22047	5952.69	0.07	bank_transfer	0	0	1	3	0	0	0	0	0	0	0.06	0	none	0	0
CUST00260	United Arab Emirates	AED	0.27	55	entrepreneur	29	452046	122052.42	0.2	2712276	732314.52	0	0	6780690	1830786.3	salary	unit_link	132320	35726.4	0.29	cash	0	0	0	5	1	0	0	0	0	0	0.82	0	none	0	0
CUST00261	United States	USD	1.0	25	entrepreneur	1	180914	180914.0	0.26	47037	47037.0	1	12483066	14881985	14881985.0	business_income	unit_link	50992	50992.0	0.28	cash	0	0	0	3	0	1	0	0	0	0	0.91	0	none	0	0
CUST00262	Indonesia	IDR	6.5e-05	44	director	14	1270335712	82571.82	0.09	2172274067	141197.81	0	0	12334959763	801772.38	gift	health	323014759	20995.96	0.25	credit_card	0	0	0	4	0	0	0	0	0	0	0.04	0	none	0	0
CUST00263	Indonesia	IDR	6.5e-05	36	entrepreneur	6	529888631	34442.76	0.05	291438747	18943.52	1	42920979111	44272195120	2877692.68	savings	unit_link	59816752	3888.09	0.11	cash	0	0	0	2	0	0	1	0	0	0	0.92	0	none	0	0
CUST00264	Malaysia	MYR	0.21	25	consultant	4	107443	22563.03	0.2	21488	4512.48	0	0	666146	139890.66	savings	life	25444	5343.24	0.24	cash	0	0	0	4	0	0	0	0	0	0	0.59	0	none	0	0
CUST00265	Malaysia	MYR	0.21	41	consultant	15	101539	21323.19	0.29	471140	98939.4	0	0	1994225	418787.25	gift	unit_link	24543	5154.03	0.24	cash	0	0	0	2	0	0	0	0	0	0	0.67	0	none	0	0
CUST00266	Singapore	SGD	0.74	46	director	21	222412	164584.88	0.22	1027543	760381.82	1	8006832	10591259	7837531.66	grant	endowment	49836	36878.64	0.22	bank_transfer	0	0	0	2	0	0	0	0	0	0	0.6	0	none	0	0
CUST00267	United Kingdom	GBP	1.27	36	entrepreneur	6	52291	66409.57	0.28	161056	204541.12	0	0	474802	602998.54	salary	health	5894	7485.38	0.11	cash	0	0	0	2	0	0	0	0	0	0	0.64	0	none	0	0
CUST00268	Indonesia	IDR	6.5e-05	64	consultant	38	1019130481	66243.48	0.05	1987304437	129174.79	0	0	10140348285	659122.64	salary	health	91590725	5953.4	0.09	bank_transfer	0	0	0	1	0	0	0	0	0	0	0.05	0	none	0	0
CUST00269	United Arab Emirates	AED	0.27	48	employee	25	267065	72107.55	0.17	1044224	281940.48	0	0	4783134	1291446.18	gift	endowment	31605	8533.35	0.12	credit_card	0	0	0	2	0	1	0	0	0	0	0.45	0	none	0	0
CUST00270	Indonesia	IDR	6.5e-05	40	freelancer	19	744439354	48388.56	0.12	1339990837	87099.4	0	0	5062187607	329042.19	business_income	unit_link	30355342	1973.1	0.04	bank_transfer	0	0	0	5	0	0	0	0	0	0	0.94	0	none	0	0
CUST00271	Indonesia	IDR	6.5e-05	43	entrepreneur	13	1377792012	89556.48	0.27	6696069178	435244.5	0	0	9451653202	614357.46	grant	endowment	193952516	12606.91	0.14	credit_card	0	0	1	1	0	0	0	0	0	0	0.1	0	none	0	0
CUST00272	Singapore	SGD	0.74	34	consultant	7	212765	157446.1	0.19	363828	269232.72	0	0	4406363	3260708.62	inheritance	unit_link	20058	14842.92	0.09	bank_transfer	0	0	0	1	0	0	0	0	0	0	0.39	0	none	0	0
CUST00273	United Kingdom	GBP	1.27	53	director	30	39288	49895.76	0.14	154008	195590.16	0	0	743328	944026.56	grant	endowment	1749	2221.23	0.04	credit_card	0	0	1	1	0	0	0	0	0	0	0.03	0	layering	0	0
CUST00274	Singapore	SGD	0.74	62	freelancer	37	51479	38094.46	0.17	323802	239613.48	1	1750286	2640357	1953864.18	gift	health	12342	9133.08	0.24	bank_transfer	0	0	0	5	0	0	0	0	0	0	0.39	0	integration	0	0
CUST00275	Malaysia	MYR	0.21	46	entrepreneur	20	127823	26842.83	0.16	429485	90191.85	0	0	1707715	358620.15	inheritance	health	18294	3841.74	0.14	bank_transfer	1	0	0	2	0	0	0	0	0	0	0.75	0	none	0	0
CUST00276	United States	USD	1.0	28	entrepreneur	6	205149	205149.0	0.14	86162	86162.0	0	0	3983993	3983993.0	savings	life	27883	27883.0	0.14	third_party_transfer	0	0	1	5	0	0	0	0	0	0	0.42	0	layering	0	0
CUST00277	United Kingdom	GBP	1.27	65	employee	37	175133	222418.91	0.27	1891436	2402123.72	0	0	4868697	6183245.19	gift	unit_link	18157	23059.39	0.1	bank_transfer	0	0	1	4	0	0	0	0	0	0	0.17	0	none	0	0
CUST00278	Singapore	SGD	0.74	35	entrepreneur	11	63078	46677.72	0.06	37846	28006.04	1	1892340	2876356	2128503.44	grant	health	4827	3571.98	0.08	cash	0	0	0	1	0	0	0	0	0	0	0.09	0	none	0	0
CUST00279	United Kingdom	GBP	1.27	47	director	18	110492	140324.84	0.26	632014	802657.78	0	0	2620870	3328504.9	salary	endowment	16384	20807.68	0.15	bank_transfer	0	0	0	4	0	0	0	0	0	0	0.15	0	none	0	0
CUST00280	United Kingdom	GBP	1.27	59	director	29	51267	65109.09	0.28	488061	619837.47	0	0	1513401	1922019.27	inheritance	health	12215	15513.05	0.24	third_party_transfer	0	0	0	3	0	0	0	0	0	0	0.38	0	none	0	0
CUST00281	United Arab Emirates	AED	0.27	58	director	28	298012	80463.24	0.06	590063	159317.01	0	0	3570183	963949.41	savings	endowment	39585	10687.95	0.13	bank_transfer	0	0	0	4	0	0	0	0	0	0	0.89	0	none	0	0
CUST00282	Malaysia	MYR	0.21	37	consultant	16	279151	58621.71	0.28	937947	196968.87	0	0	4566910	959051.1	inheritance	health	7164	1504.44	0.03	third_party_transfer	1	0	1	1	0	0	1	0	0	0	0.97	1	none	0	0
CUST00283	Singapore	SGD	0.74	30	director	5	224962	166471.88	0.16	179969	133177.06	0	0	2879513	2130839.62	gift	life	21469	15887.06	0.1	credit_card	0	0	0	4	0	0	0	0	0	0	0.21	1	integration	0	0
CUST00284	United Arab Emirates	AED	0.27	53	consultant	24	246036	66429.72	0.26	1791142	483608.34	0	0	6219790	1679343.3	salary	endowment	59446	16050.42	0.24	credit_card	0	0	0	5	0	0	0	0	0	0	0.88	0	placement	0	0
CUST00285	Indonesia	IDR	6.5e-05	33	consultant	9	491057467	31918.74	0.26	1021399531	66390.97	0	0	5440916734	353659.59	salary	unit_link	14368288	933.94	0.03	cash	0	0	0	3	0	0	0	0	0	0	0.82	1	none	0	0
CUST00286	United Kingdom	GBP	1.27	47	freelancer	25	33011	41923.97	0.11	79886	101455.22	0	0	641073	814162.71	business_income	health	6151	7811.77	0.19	cash	0	0	1	2	0	0	0	0	0	0	0.84	1	integration	0	0
CUST00287	Malaysia	MYR	0.21	27	entrepreneur	2	44391	9322.11	0.15	13317	2796.57	1	1775640	2676777	562123.17	business_income	unit_link	10580	2221.8	0.24	credit_card	0	0	0	3	0	0	1	0	0	0	0.65	0	none	0	0
CUST00288	United Kingdom	GBP	1.27	23	entrepreneur	2	149281	189586.87	0.28	41798	53083.46	0	0	1086765	1380191.55	salary	health	28112	35702.24	0.19	cash	0	0	0	3	0	0	0	0	0	0	0.42	0	none	0	0
CUST00289	United Arab Emirates	AED	0.27	44	freelancer	16	182119	49172.13	0.1	346026	93427.02	0	0	2349335	634320.45	savings	life	38174	10306.98	0.21	bank_transfer	0	0	1	5	1	0	0	0	0	0	1.0	0	layering	0	0
CUST00290	Malaysia	MYR	0.21	57	consultant	27	349317	73356.57	0.12	1341377	281689.17	0	0	3087962	648472.02	inheritance	health	54104	11361.84	0.15	cash	0	0	0	3	0	0	0	0	0	0	0.66	0	none	0	0
CUST00291	United States	USD	1.0	41	freelancer	17	69303	69303.0	0.18	199592	199592.0	0	0	823319	823319.0	savings	health	18844	18844.0	0.27	credit_card	1	0	1	1	0	0	1	0	0	0	0.66	0	none	0	0
CUST00292	Malaysia	MYR	0.21	38	entrepreneur	11	242126	50846.46	0.15	472145	99150.45	0	0	1198523	251689.83	savings	health	44368	9317.28	0.18	credit_card	0	1	0	5	1	0	0	0	0	0	0.64	0	none	0	0
CUST00293	United Arab Emirates	AED	0.27	64	entrepreneur	38	315979	85314.33	0.13	1602013	432543.51	0	0	3813866	1029743.82	savings	health	80694	21787.38	0.26	bank_transfer	0	0	0	4	0	0	1	0	0	0	0.13	0	none	0	0
CUST00294	Malaysia	MYR	0.21	57	consultant	34	386365	81136.65	0.27	3338193	701020.53	1	39795595	44679248	9382642.08	business_income	endowment	31771	6671.91	0.08	cash	0	0	0	3	0	0	0	0	0	0	0.26	0	none	0	0
CUST00295	Malaysia	MYR	0.21	51	employee	29	276696	58106.16	0.06	431645	90645.45	0	0	5965565	1252768.65	savings	endowment	50493	10603.53	0.18	credit_card	0	0	0	5	0	0	0	0	0	0	0.12	0	none	0	0
CUST00296	United States	USD	1.0	46	consultant	17	108212	108212.0	0.15	340867	340867.0	0	0	990139	990139.0	business_income	endowment	6326	6326.0	0.06	third_party_transfer	0	0	0	2	0	0	0	0	0	0	0.32	0	none	0	0
CUST00297	United States	USD	1.0	33	employee	11	157816	157816.0	0.13	164128	164128.0	0	0	1268840	1268840.0	salary	endowment	17005	17005.0	0.11	cash	0	0	0	2	0	1	0	0	0	0	0.76	0	none	0	0
CUST00298	Singapore	SGD	0.74	58	freelancer	35	158339	117170.86	0.25	1306296	966659.04	0	0	1939652	1435342.48	gift	endowment	8903	6588.22	0.06	third_party_transfer	0	0	1	4	0	0	0	0	0	0	0.38	0	none	0	0
CUST00299	Indonesia	IDR	6.5e-05	56	entrepreneur	32	861229162	55979.9	0.29	7742450166	503259.26	0	0	18077200110	1175018.01	savings	life	199733999	12982.71	0.23	bank_transfer	0	1	0	2	0	0	0	0	0	0	0.23	0	none	0	0
CUST00300	Malaysia	MYR	0.21	41	employee	18	83848	17608.08	0.15	201235	42259.35	0	0	1878195	394420.95	salary	health	8863	1861.23	0.11	cash	0	0	0	4	1	1	0	0	0	0	0.73	0	layering	0	0
CUST00301	United Kingdom	GBP	1.27	55	consultant	29	138682	176126.14	0.27	1123324	1426621.48	0	0	1955416	2483378.32	gift	unit_link	16082	20424.14	0.12	credit_card	0	0	0	4	0	0	0	0	0	0	0.02	0	placement	0	0
CUST00302	Singapore	SGD	0.74	30	employee	6	222433	164600.42	0.06	66729	49379.46	0	0	4070523	3012187.02	inheritance	endowment	14973	11080.02	0.07	cash	0	0	0	5	0	0	0	0	0	0	0.62	0	placement	0	0
CUST00303	United Kingdom	GBP	1.27	25	employee	3	196328	249336.56	0.26	51045	64827.15	1	5104528	6137213	7794260.51	gift	health	26837	34082.99	0.14	third_party_transfer	0	0	0	2	0	0	0	0	0	0	0.21	0	none	0	0
CUST00304	United States	USD	1.0	62	director	41	108935	108935.0	0.16	644895	644895.0	0	0	1189570	1189570.0	inheritance	unit_link	22385	22385.0	0.21	third_party_transfer	1	0	0	1	0	0	0	0	0	0	0.51	0	none	0	0
CUST00305	United Kingdom	GBP	1.27	29	consultant	4	54887	69706.49	0.25	54887	69706.49	0	0	987966	1254716.82	business_income	unit_link	4150	5270.5	0.08	cash	0	0	0	4	0	0	0	0	0	0	0.3	0	layering	0	0
CUST00306	Indonesia	IDR	6.5e-05	57	employee	29	506019428	32891.26	0.22	3562376773	231554.49	0	0	12164707049	790705.96	salary	life	56962107	3702.54	0.11	bank_transfer	0	0	0	5	0	0	0	0	0	0	0.67	0	layering	0	0
CUST00307	Singapore	SGD	0.74	27	entrepreneur	1	49673	36758.02	0.23	22849	16908.26	0	0	271214	200698.36	grant	endowment	13577	10046.98	0.27	cash	0	0	0	3	0	0	0	0	0	0	0.46	0	layering	0	0
CUST00308	Indonesia	IDR	6.5e-05	33	employee	12	683988271	44459.24	0.14	766066863	49794.35	1	72502756726	81476682841	5295984.38	salary	life	95264968	6192.22	0.14	bank_transfer	0	1	1	2	1	0	0	0	0	0	0.66	0	none	0	0
CUST00309	Singapore	SGD	0.74	43	consultant	17	144744	107110.56	0.29	755563	559116.62	0	0	2203003	1630222.22	salary	health	38498	28488.52	0.27	credit_card	1	0	0	1	0	0	0	0	0	0	0.4	0	integration	0	0
CUST00310	United Arab Emirates	AED	0.27	39	employee	12	411707	111160.89	0.26	1498613	404625.51	0	0	7674218	2072038.86	business_income	unit_link	83031	22418.37	0.2	bank_transfer	0	1	0	2	0	0	0	0	0	0	0.1	1	none	0	0
CUST00311	United Kingdom	GBP	1.27	52	employee	22	139861	177623.47	0.1	377624	479582.48	0	0	2335678	2966311.06	savings	unit_link	33310	42303.7	0.24	third_party_transfer	0	0	0	4	0	0	0	0	0	0	0.11	0	placement	0	0
CUST00312	United Arab Emirates	AED	0.27	50	director	29	83206	22465.62	0.12	249617	67396.59	0	0	1248089	336984.03	grant	unit_link	1952	527.04	0.02	cash	0	0	1	5	0	0	0	0	0	0	0.52	0	layering	0	0
CUST00313	United States	USD	1.0	61	freelancer	39	143468	143468.0	0.22	1136266	1136266.0	0	0	2427478	2427478.0	grant	unit_link	22228	22228.0	0.15	bank_transfer	0	0	0	1	0	0	0	0	0	0	0.64	0	none	0	0
CUST00314	Singapore	SGD	0.74	54	entrepreneur	26	159980	118385.2	0.27	1252643	926955.82	0	0	1892563	1400496.62	inheritance	health	36859	27275.66	0.23	cash	0	0	1	1	0	0	0	0	0	0	0.51	0	none	0	0
CUST00315	United Kingdom	GBP	1.27	63	freelancer	36	130716	166009.32	0.25	1241802	1577088.54	0	0	1764666	2241125.82	savings	life	19417	24659.59	0.15	third_party_transfer	0	0	0	4	0	1	0	0	0	0	0.32	0	none	0	0
CUST00316	United Arab Emirates	AED	0.27	63	employee	42	103814	28029.78	0.15	591739	159769.53	0	0	903181	243858.87	salary	health	18270	4932.9	0.18	credit_card	0	0	0	4	0	1	0	0	0	0	0.95	1	none	0	0
CUST00317	Malaysia	MYR	0.21	25	freelancer	1	268267	56336.07	0.13	34874	7323.54	0	0	4595413	965036.73	inheritance	life	59196	12431.16	0.22	bank_transfer	1	0	0	2	0	0	0	0	0	0	0.0	0	none	0	0
CUST00318	Malaysia	MYR	0.21	62	freelancer	37	317147	66600.87	0.18	2112199	443561.79	0	0	3697934	776566.14	business_income	unit_link	10408	2185.68	0.03	third_party_transfer	0	0	0	1	0	0	0	0	0	0	0.25	0	layering	0	0
CUST00319	Singapore	SGD	0.74	34	freelancer	12	132995	98416.3	0.1	119695	88574.3	0	0	1183655	875904.7	salary	life	29352	21720.48	0.22	bank_transfer	0	0	0	4	1	0	1	0	0	0	0.46	0	none	0	0
CUST00320	United Kingdom	GBP	1.27	54	director	31	155764	197820.28	0.05	225857	286838.39	0	0	693149	880299.23	gift	endowment	27243	34598.61	0.17	credit_card	0	0	0	5	0	0	0	0	0	0	0.17	0	integration	0	0
CUST00321	Singapore	SGD	0.74	28	freelancer	1	202365	149750.1	0.2	121419	89850.06	0	0	2549799	1886851.26	gift	unit_link	32611	24132.14	0.16	cash	1	0	1	4	0	0	0	0	0	0	0.96	0	none	0	0
CUST00322	Malaysia	MYR	0.21	50	director	27	102446	21513.66	0.15	384172	80676.12	0	0	2228200	467922.0	grant	health	10623	2230.83	0.1	credit_card	0	0	0	2	0	0	0	0	0	0	0.21	0	none	0	0
CUST00323	United States	USD	1.0	40	consultant	14	206258	206258.0	0.08	247509	247509.0	0	0	1691315	1691315.0	grant	life	33226	33226.0	0.16	cash	1	0	0	5	0	1	1	0	0	0	0.48	0	integration	0	0
CUST00324	United Kingdom	GBP	1.27	64	employee	37	164959	209497.93	0.12	772008	980450.16	0	0	3246393	4122919.11	savings	life	40633	51603.91	0.25	third_party_transfer	0	0	1	2	0	0	0	0	0	0	0.05	0	placement	0	0
CUST00325	Indonesia	IDR	6.5e-05	34	consultant	9	405606114	26364.4	0.3	1095136507	71183.87	0	0	5151197647	334827.85	salary	unit_link	24741952	1608.23	0.06	bank_transfer	0	0	0	3	0	0	0	0	0	0	0.81	0	none	0	0
CUST00326	Indonesia	IDR	6.5e-05	61	consultant	32	541696445	35210.27	0.24	4680257284	304216.72	0	0	14972489739	973211.83	savings	life	69818315	4538.19	0.13	third_party_transfer	1	1	1	4	1	0	0	0	0	0	0.42	0	none	0	1
CUST00327	United States	USD	1.0	42	entrepreneur	13	44103	44103.0	0.05	37487	37487.0	1	2293356	2683667	2683667.0	gift	health	8545	8545.0	0.19	credit_card	0	0	0	2	0	0	0	0	0	0	0.29	0	integration	0	0
CUST00328	Singapore	SGD	0.74	65	freelancer	43	79014	58470.36	0.29	916562	678255.88	0	0	2338814	1730722.36	salary	health	4220	3122.8	0.05	cash	0	0	0	2	0	0	0	0	0	0	0.16	0	none	0	0
CUST00329	Malaysia	MYR	0.21	22	director	1	274491	57643.11	0.23	63132	13257.72	0	0	1710078	359116.38	inheritance	life	8559	1797.39	0.03	cash	0	0	1	4	1	0	0	0	0	0	0.79	0	none	0	0
CUST00330	United Kingdom	GBP	1.27	44	entrepreneur	22	108324	137571.48	0.18	370468	470494.36	0	0	1128736	1433494.72	savings	endowment	17956	22804.12	0.17	third_party_transfer	0	0	0	1	0	0	1	0	0	0	0.35	0	none	0	0
CUST00331	Singapore	SGD	0.74	64	director	38	116787	86422.38	0.14	637657	471866.18	0	0	1571953	1163245.22	savings	endowment	33411	24724.14	0.29	bank_transfer	0	0	0	1	0	0	0	0	0	0	0.67	0	none	0	0
CUST00332	United Arab Emirates	AED	0.27	37	freelancer	7	375651	101425.77	0.11	495859	133881.93	0	0	1622812	438159.24	inheritance	life	79305	21412.35	0.21	third_party_transfer	1	0	0	3	0	0	0	0	0	0	0.54	0	none	0	0
CUST00333	Malaysia	MYR	0.21	23	consultant	1	226586	47583.06	0.18	40785	8564.85	0	0	4119333	865059.93	salary	unit_link	32799	6887.79	0.14	cash	0	0	0	5	0	0	0	0	0	0	0.08	0	placement	0	0
CUST00334	Indonesia	IDR	6.5e-05	32	entrepreneur	3	1205050790	78328.3	0.05	421767776	27414.91	0	0	5241970936	340728.11	grant	endowment	95221683	6189.41	0.08	bank_transfer	0	0	0	2	0	0	0	0	0	0	0.54	0	none	0	0
CUST00335	United States	USD	1.0	49	employee	27	225792	225792.0	0.22	1192181	1192181.0	0	0	1643765	1643765.0	inheritance	life	33548	33548.0	0.15	bank_transfer	0	0	0	1	0	0	0	0	0	0	0.18	0	none	0	0
CUST00336	Malaysia	MYR	0.21	57	freelancer	35	331445	69603.45	0.26	2757622	579100.62	0	0	6072072	1275135.12	gift	endowment	44459	9336.39	0.13	cash	1	0	0	1	0	0	0	1	0	0	0.39	0	none	0	0
CUST00337	Indonesia	IDR	6.5e-05	56	employee	35	1437444861	93433.92	0.23	10248981858	666183.82	0	0	15998761302	1039919.48	savings	life	333011366	21645.74	0.23	cash	0	0	0	5	0	0	0	0	0	0	0.11	0	integration	0	0
CUST00338	United States	USD	1.0	41	employee	11	52676	52676.0	0.12	101137	101137.0	0	0	943953	943953.0	grant	endowment	6679	6679.0	0.13	credit_card	0	0	0	5	0	0	0	1	0	0	0.22	1	placement	0	0
CUST00339	United States	USD	1.0	47	consultant	18	107326	107326.0	0.29	684739	684739.0	0	0	1328695	1328695.0	grant	life	11103	11103.0	0.1	credit_card	0	0	0	1	0	0	0	0	0	0	0.04	0	none	0	0
CUST00340	United Kingdom	GBP	1.27	60	consultant	33	165811	210579.97	0.19	1102643	1400356.61	0	0	1765887	2242676.49	grant	unit_link	17462	22176.74	0.11	third_party_transfer	0	0	0	5	0	0	0	0	0	0	0.14	0	none	0	0
CUST00341	Singapore	SGD	0.74	36	employee	6	248824	184129.76	0.11	301077	222796.98	0	0	1545197	1143445.78	savings	endowment	17611	13032.14	0.07	bank_transfer	1	0	0	3	0	0	0	0	0	0	0.67	0	none	0	0
CUST00342	Malaysia	MYR	0.21	28	entrepreneur	4	334399	70223.79	0.17	170543	35814.03	0	0	4183331	878499.51	grant	life	40127	8426.67	0.12	cash	0	1	0	5	0	0	0	0	0	0	0.07	0	none	0	0
CUST00343	Singapore	SGD	0.74	42	director	14	148134	109619.16	0.13	327376	242258.24	1	15405936	17362786	12848461.64	business_income	health	31725	23476.5	0.21	cash	0	0	1	4	0	0	0	0	0	0	0.17	0	none	0	0
CUST00344	Malaysia	MYR	0.21	37	consultant	13	365983	76856.43	0.16	702687	147564.27	0	0	5460466	1146697.86	grant	endowment	21082	4427.22	0.06	third_party_transfer	0	0	0	4	0	0	0	0	0	0	0.36	0	none	0	0
CUST00345	Malaysia	MYR	0.21	53	director	24	87059	18282.39	0.09	219388	46071.48	0	0	567624	119201.04	business_income	unit_link	22261	4674.81	0.26	cash	0	0	0	1	0	0	0	0	0	0	0.73	0	none	0	0
CUST00346	Indonesia	IDR	6.5e-05	54	director	33	1309600317	85124.02	0.19	7215897746	469033.35	0	0	33407904086	2171513.77	salary	health	104208815	6773.57	0.08	third_party_transfer	0	0	0	2	0	0	0	0	0	0	0.37	0	integration	0	0
CUST00347	Singapore	SGD	0.74	59	director	34	65096	48171.04	0.17	376254	278427.96	0	0	1547982	1145506.68	inheritance	life	2952	2184.48	0.05	credit_card	0	0	1	5	0	0	0	0	0	0	0.68	1	none	0	0
CUST00348	United Kingdom	GBP	1.27	30	freelancer	2	66739	84758.53	0.09	30032	38140.64	0	0	1364812	1733311.24	business_income	health	13657	17344.39	0.2	bank_transfer	0	0	0	2	0	0	0	0	0	0	0.76	0	none	0	0
CUST00349	Singapore	SGD	0.74	26	freelancer	1	126845	93865.3	0.11	13952	10324.48	0	0	1028712	761246.88	inheritance	endowment	20930	15488.2	0.17	third_party_transfer	0	0	0	1	0	0	0	0	0	0	0.04	0	none	0	0
CUST00350	United States	USD	1.0	42	director	20	214480	214480.0	0.29	1057386	1057386.0	0	0	3202186	3202186.0	inheritance	unit_link	54427	54427.0	0.25	third_party_transfer	0	0	0	4	0	0	0	0	0	0	0.37	0	none	0	0
CUST00351	United States	USD	1.0	26	consultant	1	95951	95951.0	0.14	13433	13433.0	0	0	876992	876992.0	inheritance	endowment	15792	15792.0	0.16	third_party_transfer	0	0	0	5	0	0	0	0	0	0	0.01	0	none	0	0
CUST00352	Singapore	SGD	0.74	50	entrepreneur	27	90290	66814.6	0.07	158007	116925.18	0	0	1060907	785071.18	business_income	health	7153	5293.22	0.08	bank_transfer	0	0	0	2	0	1	0	0	0	0	0.41	0	placement	0	0
CUST00353	Malaysia	MYR	0.21	29	freelancer	1	384014	80642.94	0.17	261129	54837.09	0	0	3333241	699980.61	grant	life	71204	14952.84	0.19	credit_card	0	0	0	1	0	1	0	0	0	0	0.13	0	placement	0	0
CUST00354	United Kingdom	GBP	1.27	32	consultant	9	190030	241338.1	0.18	239437	304084.99	0	0	4040037	5130846.99	business_income	unit_link	11615	14751.05	0.06	third_party_transfer	1	0	0	5	1	0	0	0	0	0	0.97	0	none	0	0
CUST00355	United States	USD	1.0	23	entrepreneur	1	52478	52478.0	0.1	5247	5247.0	0	0	897373	897373.0	business_income	endowment	13793	13793.0	0.26	credit_card	1	0	0	5	0	1	0	0	0	0	0.82	1	none	0	0
CUST00356	Singapore	SGD	0.74	61	director	32	99342	73513.08	0.09	321868	238182.32	0	0	1513972	1120339.28	savings	life	27642	20455.08	0.28	credit_card	0	0	0	4	0	0	0	0	0	0	0.39	0	none	0	0
CUST00357	Indonesia	IDR	6.5e-05	23	director	1	1182514062	76863.41	0.26	307453656	19984.49	0	0	21592706772	1403525.94	business_income	life	250247164	16266.07	0.21	credit_card	0	0	0	4	0	1	0	0	0	0	0.9	0	none	0	0
CUST00358	United Kingdom	GBP	1.27	24	director	1	156944	199318.88	0.24	37666	47835.82	0	0	665442	845111.34	business_income	life	24330	30899.1	0.16	third_party_transfer	0	0	0	5	0	0	0	0	0	0	0.42	0	placement	0	0
CUST00359	Indonesia	IDR	6.5e-05	55	consultant	28	552817970	35933.17	0.28	4643670948	301838.61	0	0	14041576438	912702.47	gift	life	133270903	8662.61	0.24	third_party_transfer	0	0	0	2	0	0	0	0	0	0	0.25	0	integration	0	0
CUST00360	Singapore	SGD	0.74	27	employee	2	186838	138260.12	0.27	100892	74660.08	0	0	2903462	2148561.88	salary	life	17223	12745.02	0.09	bank_transfer	1	0	1	4	0	0	0	0	0	0	0.65	0	none	0	0
CUST00361	United States	USD	1.0	42	consultant	15	124966	124966.0	0.08	169953	169953.0	0	0	2044443	2044443.0	inheritance	endowment	25298	25298.0	0.2	cash	0	0	0	5	0	0	0	0	0	0	0.28	0	none	0	0
CUST00362	United States	USD	1.0	47	director	23	138325	138325.0	0.19	578198	578198.0	0	0	3206373	3206373.0	inheritance	endowment	21452	21452.0	0.16	cash	0	0	0	3	0	1	0	0	0	0	0.58	0	placement	0	0
CUST00363	United States	USD	1.0	47	entrepreneur	24	202827	202827.0	0.08	356975	356975.0	0	0	2182418	2182418.0	grant	life	29419	29419.0	0.15	credit_card	0	0	0	5	0	0	0	0	0	0	0.4	0	placement	0	0
CUST00364	Malaysia	MYR	0.21	57	employee	27	395458	83046.18	0.22	2784024	584645.04	0	0	3970398	833783.58	grant	life	25707	5398.47	0.07	credit_card	0	0	0	4	0	0	0	0	0	0	0.93	0	none	0	0
CUST00365	United Arab Emirates	AED	0.27	27	freelancer	5	187935	50742.45	0.11	41345	11163.15	0	0	793085	214132.95	grant	endowment	35806	9667.62	0.19	cash	0	0	0	5	0	0	0	0	0	0	0.06	0	integration	0	0
CUST00366	Singapore	SGD	0.74	62	director	34	145073	107354.02	0.05	268385	198604.9	0	0	2879699	2130977.26	salary	unit_link	14519	10744.06	0.1	credit_card	0	1	0	1	0	0	0	0	0	0	0.36	0	none	0	0
CUST00367	United States	USD	1.0	22	freelancer	1	52765	52765.0	0.3	15829	15829.0	1	6279035	7033574	7033574.0	gift	unit_link	6272	6272.0	0.12	bank_transfer	0	1	0	1	0	0	0	0	0	0	0.92	0	none	0	0
CUST00368	United Kingdom	GBP	1.27	40	freelancer	11	177812	225821.24	0.14	373405	474224.35	0	0	2151525	2732436.75	business_income	endowment	14822	18823.94	0.08	bank_transfer	0	0	1	3	0	0	0	0	0	0	0.18	0	none	0	0
CUST00369	United Kingdom	GBP	1.27	28	consultant	1	43975	55848.25	0.18	23746	30157.42	0	0	551446	700336.42	savings	health	12540	15925.8	0.29	third_party_transfer	0	0	0	4	0	0	1	0	0	0	0.56	0	none	0	0
CUST00370	Singapore	SGD	0.74	43	employee	15	208675	154419.5	0.17	638545	472523.3	0	0	4812045	3560913.3	gift	health	54540	40359.6	0.26	bank_transfer	0	0	1	4	0	0	0	0	0	0	0.63	0	none	0	0
CUST00371	Singapore	SGD	0.74	65	consultant	41	239757	177420.18	0.13	1246736	922584.64	0	0	4363577	3229046.98	salary	unit_link	39469	29207.06	0.16	cash	0	0	0	1	0	0	1	0	0	0	0.4	0	none	0	0
CUST00372	United States	USD	1.0	43	director	21	175372	175372.0	0.28	883874	883874.0	0	0	3865198	3865198.0	business_income	health	18919	18919.0	0.11	credit_card	0	0	1	2	0	0	0	0	0	0	0.5	0	integration	0	0
CUST00373	Singapore	SGD	0.74	37	consultant	13	99574	73684.76	0.1	119488	88421.12	0	0	916080	677899.2	savings	unit_link	25270	18699.8	0.25	bank_transfer	0	0	0	1	0	0	0	0	0	0	0.92	0	none	0	0
CUST00374	United States	USD	1.0	64	consultant	36	190911	190911.0	0.05	372276	372276.0	0	0	3999585	3999585.0	gift	health	55027	55027.0	0.29	third_party_transfer	0	0	0	5	0	0	0	0	0	0	0.87	0	placement	0	0
CUST00375	United Arab Emirates	AED	0.27	33	freelancer	4	196940	53173.8	0.15	236328	63808.56	0	0	4175128	1127284.56	savings	endowment	11010	2972.7	0.06	bank_transfer	0	0	0	5	0	1	0	0	0	0	0.35	0	placement	0	0
CUST00376	United States	USD	1.0	33	employee	5	61553	61553.0	0.22	108333	108333.0	0	0	1093181	1093181.0	salary	unit_link	6671	6671.0	0.11	third_party_transfer	0	0	0	5	0	0	0	0	0	0	0.1	0	none	0	0
CUST00377	Malaysia	MYR	0.21	61	consultant	36	128121	26905.41	0.19	876347	184032.87	0	0	2029436	426181.56	savings	health	12227	2567.67	0.1	credit_card	0	0	0	4	0	0	0	0	0	0	0.42	0	none	0	0
CUST00378	United Arab Emirates	AED	0.27	45	director	19	497912	134436.24	0.15	1493736	403308.72	0	0	9460328	2554288.56	business_income	unit_link	35037	9459.99	0.07	bank_transfer	0	0	0	3	0	0	0	0	0	0	0.8	0	none	0	0
CUST00379	United Kingdom	GBP	1.27	49	entrepreneur	22	76396	97022.92	0.09	165015	209569.05	0	0	623391	791706.57	salary	endowment	11645	14789.15	0.15	third_party_transfer	0	1	0	2	0	0	1	0	0	0	1.0	1	none	0	0
CUST00380	United States	USD	1.0	55	director	26	218890	218890.0	0.13	853671	853671.0	0	0	4574801	4574801.0	savings	life	22766	22766.0	0.1	third_party_transfer	0	0	0	1	0	0	0	0	0	0	0.69	0	none	0	0
CUST00381	Indonesia	IDR	6.5e-05	35	consultant	10	1083360614	70418.44	0.26	2816737596	183087.94	0	0	8233540666	535180.14	inheritance	health	158126610	10278.23	0.15	cash	0	0	0	5	1	0	0	0	0	0	0.56	0	integration	0	0
CUST00382	Malaysia	MYR	0.21	44	director	23	245881	51635.01	0.08	373739	78485.19	0	0	2340787	491565.27	grant	unit_link	44632	9372.72	0.18	cash	1	0	0	3	0	0	0	0	0	0	0.33	0	none	0	0
CUST00383	United Kingdom	GBP	1.27	53	entrepreneur	25	45554	57853.58	0.15	191326	242984.02	0	0	692420	879373.4	business_income	health	6826	8669.02	0.15	third_party_transfer	0	0	0	5	0	0	0	0	0	0	0.57	0	integration	0	0
CUST00384	Indonesia	IDR	6.5e-05	27	freelancer	4	797930127	51865.46	0.11	175544627	11410.4	1	47875807620	56828583644	3693857.94	savings	health	174683961	11354.46	0.22	third_party_transfer	0	0	0	3	0	0	0	0	0	0	0.75	0	none	0	0
CUST00385	United Kingdom	GBP	1.27	50	consultant	23	68861	87453.47	0.1	172152	218633.04	0	0	309874	393539.98	business_income	life	3788	4810.76	0.06	credit_card	0	0	0	2	0	0	0	0	0	0	0.4	0	none	0	0
CUST00386	Indonesia	IDR	6.5e-05	26	employee	1	1237752499	80453.91	0.06	74265149	4827.23	0	0	17402800135	1131182.01	salary	health	206352132	13412.89	0.17	credit_card	1	0	1	1	1	0	0	0	0	0	0.65	0	placement	0	0
CUST00387	United Arab Emirates	AED	0.27	41	director	17	179707	48520.89	0.23	661321	178556.67	0	0	3536633	954890.91	business_income	unit_link	35117	9481.59	0.2	bank_transfer	0	0	1	1	0	0	0	0	0	0	0.66	0	none	0	0
CUST00388	Malaysia	MYR	0.21	52	director	24	313421	65818.41	0.28	2369462	497587.02	0	0	8324461	1748136.81	grant	unit_link	45307	9514.47	0.14	third_party_transfer	0	0	1	5	0	0	0	0	0	0	0.43	0	none	0	0
CUST00389	United States	USD	1.0	62	freelancer	33	111175	111175.0	0.28	1151773	1151773.0	0	0	3041748	3041748.0	salary	health	19022	19022.0	0.17	cash	0	0	1	4	0	1	0	0	0	0	0.26	0	none	0	0
CUST00390	Malaysia	MYR	0.21	22	director	1	304368	63917.28	0.25	76092	15979.32	0	0	1902300	399483.0	gift	life	35394	7432.74	0.12	third_party_transfer	0	1	0	4	0	1	0	0	0	0	0.3	0	none	0	0
CUST00391	United Arab Emirates	AED	0.27	40	director	10	171223	46230.21	0.25	642086	173363.22	0	0	3895323	1051737.21	gift	endowment	21337	5760.99	0.12	third_party_transfer	0	0	1	2	0	0	0	0	0	0	0.16	0	none	0	0
CUST00392	United States	USD	1.0	63	entrepreneur	36	247167	247167.0	0.14	1314928	1314928.0	0	0	3786598	3786598.0	grant	health	10425	10425.0	0.04	cash	0	0	0	5	0	0	0	0	0	0	0.81	0	none	0	0
CUST00393	United Arab Emirates	AED	0.27	34	freelancer	12	145633	39320.91	0.08	104855	28310.85	0	0	833020	224915.4	savings	health	28883	7798.41	0.2	third_party_transfer	1	0	0	2	0	0	1	0	0	0	0.32	0	none	0	0
CUST00394	Singapore	SGD	0.74	25	freelancer	1	35801	26492.74	0.1	3580	2649.2	0	0	182585	135112.9	business_income	life	3544	2622.56	0.1	credit_card	0	0	0	1	0	0	0	0	0	0	0.15	0	none	0	0
CUST00395	United Arab Emirates	AED	0.27	35	employee	9	270328	72988.56	0.13	351426	94885.02	0	0	4947002	1335690.54	gift	health	80944	21854.88	0.3	bank_transfer	0	0	0	2	0	0	0	1	0	0	0.06	0	none	0	0
CUST00396	United Arab Emirates	AED	0.27	26	employee	1	296492	80052.84	0.1	29649	8005.23	0	0	2994569	808533.63	salary	unit_link	73776	19919.52	0.25	third_party_transfer	0	0	1	4	0	1	0	0	0	0	0.25	0	none	0	0
CUST00397	Indonesia	IDR	6.5e-05	34	consultant	6	261778218	17015.58	0.18	424080713	27565.25	0	0	2518306457	163689.92	grant	health	39892684	2593.02	0.15	credit_card	1	0	0	1	0	0	0	0	0	0	0.74	0	none	0	0
CUST00398	United Kingdom	GBP	1.27	55	entrepreneur	33	91404	116083.08	0.17	466160	592023.2	0	0	1471604	1868937.08	salary	life	6914	8780.78	0.08	credit_card	0	0	0	4	0	0	0	0	0	0	0.32	0	none	0	0
CUST00399	Singapore	SGD	0.74	39	director	9	61365	45410.1	0.15	128866	95360.84	0	0	681151	504051.74	salary	endowment	1380	1021.2	0.02	credit_card	0	0	0	3	0	0	0	0	0	0	0.77	0	none	0	0
CUST00400	Singapore	SGD	0.74	32	employee	4	53960	39930.4	0.22	83098	61492.52	0	0	730618	540657.32	grant	life	15143	11205.82	0.28	cash	0	0	1	2	0	0	0	0	0	0	0.7	0	none	0	0
CUST00401	Indonesia	IDR	6.5e-05	30	freelancer	2	559664967	36378.22	0.13	363782228	23645.84	0	0	10997416601	714832.08	inheritance	unit_link	134765819	8759.78	0.24	bank_transfer	0	0	0	4	0	0	0	0	0	0	0.36	0	layering	0	0
CUST00402	Singapore	SGD	0.74	38	freelancer	17	157219	116342.06	0.23	470084	347862.16	0	0	3457245	2558361.3	grant	unit_link	16118	11927.32	0.1	credit_card	0	0	1	5	0	0	0	0	0	0	0.35	0	placement	0	0
CUST00403	United States	USD	1.0	51	entrepreneur	26	247933	247933.0	0.2	1289251	1289251.0	0	0	5999978	5999978.0	savings	endowment	16089	16089.0	0.06	cash	0	0	0	3	0	0	1	0	0	0	0.54	0	none	0	0
CUST00404	United Arab Emirates	AED	0.27	22	director	1	248727	67156.29	0.23	57207	15445.89	0	0	554661	149758.47	inheritance	unit_link	48135	12996.45	0.19	cash	0	1	0	1	0	1	1	0	0	0	0.66	0	none	0	0
CUST00405	United Kingdom	GBP	1.27	46	consultant	22	162381	206223.87	0.22	750200	952754.0	0	0	3835439	4871007.53	inheritance	endowment	10255	13023.85	0.06	cash	0	0	0	1	0	0	0	0	0	0	0.1	0	none	0	0
CUST00406	United States	USD	1.0	26	employee	5	248940	248940.0	0.28	69703	69703.0	0	0	1812283	1812283.0	business_income	endowment	65864	65864.0	0.26	credit_card	0	0	1	1	0	0	0	0	0	0	0.03	0	none	0	0
CUST00407	United States	USD	1.0	46	entrepreneur	18	167840	167840.0	0.21	740174	740174.0	0	0	4096974	4096974.0	inheritance	life	15384	15384.0	0.09	bank_transfer	1	0	0	2	0	0	0	0	0	0	0.66	0	none	0	0
CUST00408	Indonesia	IDR	6.5e-05	51	employee	30	835082798	54280.38	0.19	4125309022	268145.09	0	0	16651550992	1082350.81	grant	health	208910512	13579.18	0.25	bank_transfer	0	0	0	1	1	0	1	0	0	0	0.83	0	none	0	0
CUST00409	Indonesia	IDR	6.5e-05	35	entrepreneur	6	268562011	17456.53	0.08	214849608	13965.22	0	0	2631907707	171074.0	business_income	unit_link	45350749	2947.8	0.17	credit_card	0	0	1	5	0	0	0	0	0	0	0.75	0	none	0	0
CUST00410	United Arab Emirates	AED	0.27	28	entrepreneur	1	237675	64172.25	0.22	156865	42353.55	1	25906575	29628565	7999712.55	business_income	endowment	63504	17146.08	0.27	cash	0	0	0	2	0	1	0	0	0	0	0.53	0	none	0	0
CUST00411	United Kingdom	GBP	1.27	50	freelancer	24	107615	136671.05	0.19	511171	649187.17	1	6564515	8474681	10762844.87	grant	health	14577	18512.79	0.14	credit_card	0	0	1	5	0	0	0	0	0	0	0.55	0	placement	0	0
CUST00412	United Arab Emirates	AED	0.27	57	employee	32	238748	64461.96	0.29	2215581	598206.87	0	0	6035549	1629598.23	salary	health	68938	18613.26	0.29	bank_transfer	1	0	0	5	0	0	0	0	0	0	0.14	0	none	0	0
CUST00413	Malaysia	MYR	0.21	22	consultant	1	146332	30729.72	0.1	14633	3072.93	0	0	1770617	371829.57	grant	unit_link	3815	801.15	0.03	bank_transfer	0	0	1	1	0	0	1	0	0	0	0.46	0	none	0	0
CUST00414	Singapore	SGD	0.74	30	employee	5	126228	93408.72	0.27	170407	126101.18	1	6437628	7744087	5730624.38	inheritance	endowment	11581	8569.94	0.09	credit_card	0	0	0	1	0	0	0	0	0	0	0.72	0	none	0	0
CUST00415	United Arab Emirates	AED	0.27	33	director	5	482907	130384.89	0.27	1043079	281631.33	1	52636863	63338082	17101282.14	salary	health	120468	32526.36	0.25	bank_transfer	0	0	0	5	0	0	1	0	0	0	0.38	0	placement	0	0
CUST00416	Indonesia	IDR	6.5e-05	43	director	17	992661596	64523.0	0.15	2680186309	174212.11	0	0	7643494289	496827.13	business_income	life	261606259	17004.41	0.26	third_party_transfer	0	0	0	1	0	0	0	0	0	0	0.3	0	layering	0	0
CUST00417	Indonesia	IDR	6.5e-05	42	employee	13	1273141213	82754.18	0.09	1947906055	126613.89	0	0	24864447889	1616189.11	business_income	endowment	274203072	17823.2	0.22	third_party_transfer	0	0	1	5	0	0	0	0	0	0	0.58	0	none	0	0
CUST00418	Indonesia	IDR	6.5e-05	36	freelancer	9	682304315	44349.78	0.25	1876336866	121961.9	0	0	5970162756	388060.58	salary	life	38900169	2528.51	0.06	third_party_transfer	0	0	1	3	1	0	0	0	0	0	0.09	0	integration	0	0
CUST00419	United Kingdom	GBP	1.27	49	director	26	60355	76650.85	0.17	246248	312734.96	0	0	729088	925941.76	grant	unit_link	9451	12002.77	0.16	credit_card	0	0	0	2	0	1	0	0	0	0	0.07	0	none	0	0
CUST00420	United Arab Emirates	AED	0.27	42	entrepreneur	12	96973	26182.71	0.08	131883	35608.41	0	0	1586478	428349.06	inheritance	health	13439	3628.53	0.14	cash	0	0	0	5	0	0	0	0	0	0	0.66	0	none	0	0
CUST00421	Malaysia	MYR	0.21	32	employee	6	353077	74146.17	0.26	642600	134946.0	0	0	6291832	1321284.72	gift	unit_link	68670	14420.7	0.19	credit_card	0	0	0	3	1	1	0	0	0	0	0.16	0	none	0	0
CUST00422	United States	USD	1.0	27	employee	5	223876	223876.0	0.06	26865	26865.0	0	0	1370121	1370121.0	inheritance	health	58935	58935.0	0.26	bank_transfer	0	0	1	3	0	0	1	0	0	0	0.45	0	none	0	0
CUST00423	Indonesia	IDR	6.5e-05	43	director	19	1215357924	78998.27	0.1	2187644263	142196.88	0	0	25279444819	1643163.91	inheritance	endowment	202374652	13154.35	0.17	credit_card	0	0	0	1	0	0	0	0	0	0	0.38	0	layering	0	0
CUST00424	United States	USD	1.0	55	director	34	96966	96966.0	0.09	261808	261808.0	0	0	1328434	1328434.0	grant	health	7388	7388.0	0.08	bank_transfer	0	0	0	4	0	0	0	0	0	0	0.65	0	none	0	0
CUST00425	Indonesia	IDR	6.5e-05	26	consultant	1	1478139854	96079.09	0.12	177376782	11529.49	0	0	19393194884	1260557.67	salary	endowment	387271217	25172.63	0.26	credit_card	0	0	0	4	0	1	1	0	0	0	0.51	0	none	0	0
CUST00426	United States	USD	1.0	28	director	2	157051	157051.0	0.27	127211	127211.0	0	0	3111180	3111180.0	business_income	endowment	7011	7011.0	0.04	bank_transfer	0	0	0	1	0	1	0	0	0	0	0.25	0	placement	0	0
CUST00427	United Kingdom	GBP	1.27	41	consultant	15	153432	194858.64	0.15	368236	467659.72	1	6137280	6812380	8651722.6	inheritance	health	17966	22816.82	0.12	credit_card	0	0	0	5	0	0	1	0	0	0	0.28	0	none	0	0
CUST00428	Indonesia	IDR	6.5e-05	62	entrepreneur	37	891442501	57943.76	0.27	8905510584	578858.19	0	0	10688395586	694745.71	inheritance	unit_link	253489052	16476.79	0.28	cash	0	0	1	4	0	0	0	0	0	0	0.66	0	none	0	0
CUST00429	Indonesia	IDR	6.5e-05	46	entrepreneur	17	1375222902	89389.49	0.27	7797513854	506838.4	0	0	20174519972	1311343.8	savings	endowment	188203839	12233.25	0.14	cash	0	0	0	5	0	0	0	0	0	0	0.33	0	none	0	0
CUST00430	United Kingdom	GBP	1.27	30	entrepreneur	6	196041	248972.07	0.08	78416	99588.32	0	0	3803195	4830057.65	business_income	health	41469	52665.63	0.21	credit_card	0	0	0	4	0	0	0	0	0	0	1.0	0	none	0	0
CUST00431	Singapore	SGD	0.74	63	employee	33	71431	52858.94	0.13	352869	261123.06	0	0	1710058	1265442.92	grant	unit_link	12088	8945.12	0.17	cash	0	0	1	2	0	0	0	0	0	0	0.73	0	none	0	0
CUST00432	Malaysia	MYR	0.21	48	employee	21	189041	39698.61	0.16	695670	146090.7	0	0	2586080	543076.8	business_income	unit_link	11824	2483.04	0.06	credit_card	1	0	1	1	0	1	0	0	0	0	0.76	0	none	0	0
CUST00433	United Kingdom	GBP	1.27	61	employee	36	183755	233368.85	0.19	1256884	1596242.68	0	0	2910679	3696562.33	business_income	health	34358	43634.66	0.19	bank_transfer	0	0	1	4	1	0	0	0	0	0	0.13	0	none	0	0
CUST00434	United Kingdom	GBP	1.27	52	entrepreneur	26	73228	92999.56	0.26	514060	652856.2	0	0	1758936	2233848.72	business_income	unit_link	11180	14198.6	0.15	bank_transfer	0	1	0	4	0	0	0	0	0	0	0.76	0	none	0	0
CUST00435	Indonesia	IDR	6.5e-05	39	entrepreneur	12	537931520	34965.55	0.24	1807449907	117484.24	0	0	6110902067	397208.63	salary	endowment	124895565	8118.21	0.23	third_party_transfer	0	0	1	3	0	0	0	0	0	0	0.87	0	none	0	0
CUST00436	Singapore	SGD	0.74	49	director	22	233480	172775.2	0.06	336211	248796.14	0	0	3604931	2667648.94	gift	life	51752	38296.48	0.22	bank_transfer	0	0	0	4	1	0	0	0	0	0	0.46	0	none	0	0
CUST00437	Indonesia	IDR	6.5e-05	37	employee	8	1215065192	78979.24	0.15	2187117345	142162.63	0	0	5832312921	379100.34	savings	unit_link	214041347	13912.69	0.18	cash	0	0	1	4	0	0	0	0	0	0	0.4	0	none	0	0
CUST00438	Malaysia	MYR	0.21	40	freelancer	12	117286	24630.06	0.16	281486	59112.06	0	0	633344	133002.24	business_income	endowment	25003	5250.63	0.21	bank_transfer	0	0	0	5	1	0	0	0	0	0	0.11	0	none	0	0
CUST00439	United Kingdom	GBP	1.27	56	director	33	128040	162610.8	0.15	595386	756140.22	0	0	2644026	3357913.02	gift	unit_link	3453	4385.31	0.03	third_party_transfer	0	0	0	1	0	0	1	0	0	0	0.25	0	none	0	0
CUST00440	United States	USD	1.0	63	consultant	40	218317	218317.0	0.23	1908090	1908090.0	1	6767827	9767502	9767502.0	grant	life	47537	47537.0	0.22	third_party_transfer	0	0	0	5	0	0	0	0	0	0	0.61	0	integration	0	0
CUST00441	Singapore	SGD	0.74	46	entrepreneur	17	129773	96032.02	0.06	163513	120999.62	0	0	1071924	793223.76	savings	unit_link	35743	26449.82	0.28	credit_card	0	0	0	2	0	0	0	0	0	0	0.77	0	none	0	0
CUST00442	Indonesia	IDR	6.5e-05	48	employee	23	724685496	47104.56	0.23	3833586273	249183.11	0	0	15428554209	1002856.02	business_income	unit_link	73090728	4750.9	0.1	credit_card	0	0	0	1	1	1	0	0	0	0	0.62	0	none	0	0
CUST00443	Malaysia	MYR	0.21	22	freelancer	1	290900	61089.0	0.26	75634	15883.14	0	0	5602734	1176574.14	savings	unit_link	71586	15033.06	0.25	credit_card	1	0	1	5	0	0	0	0	0	0	0.66	0	none	0	0
CUST00444	United Arab Emirates	AED	0.27	48	consultant	20	91631	24740.37	0.2	421502	113805.54	0	0	604764	163286.28	savings	unit_link	8111	2189.97	0.09	bank_transfer	0	0	1	2	0	0	1	0	0	0	0.15	0	integration	0	0
CUST00445	United States	USD	1.0	44	consultant	23	68109	68109.0	0.26	336458	336458.0	0	0	1698638	1698638.0	inheritance	life	17343	17343.0	0.25	bank_transfer	1	0	0	1	0	0	0	0	0	0	0.42	1	none	0	0
CUST00446	Singapore	SGD	0.74	32	freelancer	7	190193	140742.82	0.22	292897	216743.78	0	0	4096757	3031600.18	business_income	health	45731	33840.94	0.24	bank_transfer	0	0	0	1	0	0	0	0	0	0	0.77	0	layering	0	0
CUST00447	Malaysia	MYR	0.21	45	entrepreneur	18	65476	13749.96	0.24	314284	65999.64	0	0	1558328	327248.88	gift	life	2499	524.79	0.04	cash	1	0	0	3	0	0	0	0	0	0	0.53	0	none	0	0
CUST00448	United Kingdom	GBP	1.27	35	director	11	185446	235516.42	0.06	111267	141309.09	0	0	3820187	4851637.49	grant	life	41599	52830.73	0.22	third_party_transfer	0	0	0	5	0	0	0	0	0	0	0.93	1	none	0	0
CUST00449	United States	USD	1.0	40	consultant	13	189604	189604.0	0.26	739455	739455.0	0	0	2635495	2635495.0	savings	unit_link	31684	31684.0	0.17	third_party_transfer	1	0	0	5	0	0	0	0	0	0	0.73	0	placement	0	0
CUST00450	United Arab Emirates	AED	0.27	53	employee	30	369504	99766.08	0.11	1138072	307279.44	0	0	5202616	1404706.32	salary	life	108705	29350.35	0.29	third_party_transfer	1	1	0	1	0	0	0	0	0	0	0.74	0	integration	0	1
CUST00451	Singapore	SGD	0.74	61	entrepreneur	34	138538	102518.12	0.06	299242	221439.08	0	0	2100236	1554174.64	grant	life	24509	18136.66	0.18	credit_card	0	0	0	3	0	0	1	0	0	0	0.25	0	none	0	0
CUST00452	Indonesia	IDR	6.5e-05	41	consultant	16	1148107688	74627.0	0.19	3490247371	226866.08	0	0	5786462747	376120.08	inheritance	endowment	59557275	3871.22	0.05	bank_transfer	0	1	0	2	0	0	0	0	0	0	0.19	0	none	0	0
CUST00453	Malaysia	MYR	0.21	65	freelancer	37	278774	58542.54	0.25	2787740	585425.4	0	0	4460384	936680.64	grant	health	43159	9063.39	0.15	third_party_transfer	0	0	1	4	0	0	0	0	0	0	0.93	0	none	0	0
CUST00454	Indonesia	IDR	6.5e-05	55	entrepreneur	30	1273205077	82758.33	0.23	8785115031	571032.48	0	0	24063575955	1564132.44	salary	health	223383344	14519.92	0.18	cash	0	0	0	1	0	0	1	0	0	0	0.97	1	placement	0	0
CUST00455	Malaysia	MYR	0.21	23	entrepreneur	1	226734	47614.14	0.21	47614	9998.94	0	0	1634752	343297.92	gift	life	40783	8564.43	0.18	cash	0	0	1	3	0	0	0	0	0	0	0.71	0	placement	0	0
CUST00456	Malaysia	MYR	0.21	48	entrepreneur	26	290599	61025.79	0.27	1804619	378969.99	0	0	5582406	1172305.26	inheritance	health	42582	8942.22	0.15	credit_card	0	0	0	1	0	0	0	0	0	0	0.37	0	placement	0	0
CUST00457	Indonesia	IDR	6.5e-05	34	entrepreneur	12	1012997611	65844.84	0.18	1641056129	106668.65	0	0	18862015516	1226031.01	business_income	health	276941010	18001.17	0.27	third_party_transfer	1	0	1	5	0	0	0	0	0	0	0.31	0	none	0	0
CUST00458	Malaysia	MYR	0.21	31	freelancer	9	300609	63127.89	0.22	396803	83328.63	0	0	2200457	462095.97	salary	endowment	23282	4889.22	0.08	bank_transfer	1	0	0	1	0	0	0	0	0	0	0.31	0	none	0	0
CUST00459	Indonesia	IDR	6.5e-05	65	consultant	35	246994060	16054.61	0.13	1284369112	83483.99	0	0	2025351292	131647.83	grant	life	12070301	784.57	0.05	cash	0	0	1	2	0	0	0	0	0	0	0.32	0	none	0	0
CUST00460	Singapore	SGD	0.74	40	entrepreneur	15	169532	125453.68	0.13	330587	244634.38	0	0	3043099	2251893.26	inheritance	unit_link	35248	26083.52	0.21	cash	0	0	0	1	0	0	0	0	0	0	0.02	0	none	0	0
CUST00461	United Kingdom	GBP	1.27	57	entrepreneur	28	51837	65832.99	0.1	165878	210665.06	0	0	839759	1066493.93	inheritance	health	9010	11442.7	0.17	credit_card	0	0	0	2	0	0	0	0	0	0	0.07	0	none	0	0
CUST00462	United Kingdom	GBP	1.27	43	employee	14	141299	179449.73	0.06	152602	193804.54	0	0	435200	552704.0	grant	life	21450	27241.5	0.15	third_party_transfer	0	0	0	1	1	0	0	0	0	0	0.09	0	none	0	0
CUST00463	United Arab Emirates	AED	0.27	33	consultant	3	360774	97408.98	0.21	606100	163647.0	0	0	6378484	1722190.68	inheritance	unit_link	69473	18757.71	0.19	bank_transfer	0	0	0	4	1	0	0	0	0	1	0.57	0	none	0	1
CUST00464	Indonesia	IDR	6.5e-05	51	entrepreneur	29	1038359558	67493.37	0.13	3509655306	228127.59	0	0	20123408234	1308021.54	business_income	health	157574016	10242.31	0.15	cash	1	1	0	4	0	1	1	0	0	0	0.18	0	none	0	1
CUST00465	United States	USD	1.0	43	freelancer	17	148825	148825.0	0.17	455404	455404.0	0	0	1050704	1050704.0	inheritance	endowment	22784	22784.0	0.15	credit_card	0	0	0	3	1	0	0	0	0	0	0.77	0	none	0	0
CUST00466	United Kingdom	GBP	1.27	58	employee	35	158155	200856.85	0.08	417529	530261.83	0	0	1208304	1534546.08	grant	health	17593	22343.11	0.11	third_party_transfer	1	0	1	4	0	0	0	0	0	0	0.59	0	none	0	0
CUST00467	Singapore	SGD	0.74	61	entrepreneur	37	173641	128494.34	0.09	562596	416321.04	0	0	3514493	2600724.82	inheritance	endowment	22133	16378.42	0.13	third_party_transfer	0	0	0	5	0	0	0	0	0	0	0.79	0	none	0	0
CUST00468	United Kingdom	GBP	1.27	37	director	14	198699	252347.73	0.22	524565	666197.55	0	0	4498545	5713152.15	salary	endowment	50527	64169.29	0.25	cash	0	0	1	5	0	0	0	0	0	0	0.1	0	layering	0	0
CUST00469	United Arab Emirates	AED	0.27	33	freelancer	8	262752	70943.04	0.07	147141	39728.07	0	0	1460901	394443.27	savings	health	55688	15035.76	0.21	third_party_transfer	0	0	0	1	0	0	0	0	0	0	0.09	0	none	0	0
CUST00470	Singapore	SGD	0.74	59	freelancer	38	228463	169062.62	0.09	699096	517331.04	0	0	2069874	1531706.76	inheritance	endowment	33545	24823.3	0.15	credit_card	0	0	1	2	0	0	0	0	0	0	0.68	0	none	0	0
CUST00471	Malaysia	MYR	0.21	41	employee	11	386284	81119.64	0.13	803470	168728.7	0	0	6597730	1385523.3	inheritance	life	85361	17925.81	0.22	third_party_transfer	0	0	0	2	0	0	0	0	0	0	0.85	0	integration	0	0
CUST00472	Indonesia	IDR	6.5e-05	45	employee	16	174090040	11315.85	0.05	174090040	11315.85	0	0	3481800800	226317.05	inheritance	health	43489592	2826.82	0.25	bank_transfer	0	0	0	2	0	0	1	0	0	0	0.43	0	layering	0	0
CUST00473	United Kingdom	GBP	1.27	47	entrepreneur	21	125346	159189.42	0.15	413641	525324.07	0	0	2293831	2913165.37	grant	endowment	21638	27480.26	0.17	credit_card	0	0	0	2	0	0	0	0	0	0	0.56	0	integration	0	0
CUST00474	Malaysia	MYR	0.21	48	employee	25	181241	38060.61	0.3	1250562	262618.02	0	0	2338008	490981.68	salary	unit_link	10439	2192.19	0.06	third_party_transfer	0	0	0	4	0	0	1	0	0	0	0.97	0	placement	0	0
CUST00475	Singapore	SGD	0.74	27	director	4	198360	146786.4	0.25	99180	73393.2	0	0	3272940	2421975.6	grant	endowment	53597	39661.78	0.27	credit_card	0	0	0	4	0	1	0	0	0	0	0.51	1	layering	0	0
CUST00476	United Kingdom	GBP	1.27	50	freelancer	23	118141	150039.07	0.11	324887	412606.49	0	0	2097002	2663192.54	savings	unit_link	22361	28398.47	0.19	cash	1	0	0	4	0	0	0	0	0	0	0.93	0	none	0	0
CUST00477	United Kingdom	GBP	1.27	45	employee	24	34926	44356.02	0.19	132718	168551.86	0	0	586756	745180.12	gift	unit_link	1805	2292.35	0.05	cash	0	0	0	4	0	0	0	0	0	0	0.52	0	layering	0	0
CUST00478	United Kingdom	GBP	1.27	61	director	39	89285	113391.95	0.17	546424	693958.48	0	0	903564	1147526.28	savings	health	18887	23986.49	0.21	bank_transfer	0	0	1	3	0	0	0	0	0	0	0.54	1	layering	0	0
CUST00479	Indonesia	IDR	6.5e-05	52	consultant	24	1160935638	75460.82	0.28	8776673423	570483.77	1	107967014334	130674915413	8493869.5	inheritance	unit_link	160075041	10404.88	0.14	bank_transfer	0	0	0	5	0	0	0	0	0	0	0.75	0	integration	0	0
CUST00480	United States	USD	1.0	58	consultant	33	46100	46100.0	0.21	319473	319473.0	0	0	1241473	1241473.0	salary	life	3104	3104.0	0.07	cash	1	1	0	4	0	1	0	0	0	0	0.08	0	none	0	1
CUST00481	United Kingdom	GBP	1.27	26	employee	1	91073	115662.71	0.08	7285	9251.95	0	0	918015	1165879.05	inheritance	life	8839	11225.53	0.1	credit_card	0	0	0	5	0	0	0	0	0	0	0.74	0	layering	0	0
CUST00482	United States	USD	1.0	50	employee	24	241770	241770.0	0.09	543982	543982.0	0	0	2719912	2719912.0	savings	health	37662	37662.0	0.16	bank_transfer	1	0	0	2	1	1	0	0	1	0	0.6	0	none	0	1
CUST00483	Singapore	SGD	0.74	53	entrepreneur	26	231947	171640.78	0.15	974177	720890.98	0	0	4685329	3467143.46	business_income	health	51789	38323.86	0.22	bank_transfer	1	1	1	3	0	0	0	0	0	0	0.76	1	none	0	1
CUST00484	Indonesia	IDR	6.5e-05	25	entrepreneur	2	1056464473	68670.19	0.15	158469670	10300.53	0	0	11779578873	765672.63	savings	endowment	162013631	10530.89	0.15	third_party_transfer	0	0	0	4	0	0	1	1	0	0	0.26	0	none	0	0
CUST00485	United Kingdom	GBP	1.27	49	director	28	100705	127895.35	0.28	676737	859455.99	0	0	2288017	2905781.59	inheritance	life	12785	16236.95	0.13	bank_transfer	0	0	0	5	0	0	1	0	0	0	0.64	0	none	0	0
CUST00486	United Arab Emirates	AED	0.27	61	freelancer	36	225619	60917.13	0.12	974674	263161.98	0	0	2102769	567747.63	savings	endowment	20643	5573.61	0.09	credit_card	0	0	0	5	0	0	0	0	0	0	0.77	0	none	0	0
CUST00487	United Kingdom	GBP	1.27	43	freelancer	20	107121	136043.67	0.19	366353	465268.31	0	0	580595	737355.65	salary	life	27088	34401.76	0.25	bank_transfer	0	0	1	4	0	0	0	0	0	0	0.35	0	none	0	0
CUST00488	United States	USD	1.0	40	entrepreneur	15	80614	80614.0	0.06	72552	72552.0	0	0	395008	395008.0	savings	life	2896	2896.0	0.04	bank_transfer	0	0	0	1	0	0	0	0	0	0	0.86	0	none	0	0
CUST00489	Singapore	SGD	0.74	46	consultant	16	240554	178009.96	0.29	1464973	1084080.02	0	0	2667743	1974129.82	inheritance	endowment	51666	38232.84	0.21	bank_transfer	0	0	0	4	0	0	0	0	0	0	0.92	0	none	0	0
CUST00490	Malaysia	MYR	0.21	49	freelancer	23	164918	34632.78	0.09	356222	74806.62	0	0	1015894	213337.74	salary	endowment	16102	3381.42	0.1	cash	0	0	1	1	0	0	0	1	0	0	0.26	0	none	0	0
CUST00491	Malaysia	MYR	0.21	33	freelancer	5	66384	13940.64	0.17	90282	18959.22	0	0	621354	130484.34	business_income	life	12671	2660.91	0.19	credit_card	0	0	0	5	0	0	0	0	0	0	0.77	0	integration	0	0
CUST00492	Singapore	SGD	0.74	61	director	39	145757	107860.18	0.23	1206867	893081.58	0	0	1935652	1432382.48	salary	health	4337	3209.38	0.03	third_party_transfer	0	0	1	1	0	0	0	0	0	0	0.9	0	none	0	0
CUST00493	Singapore	SGD	0.74	63	director	42	39918	29539.32	0.22	333714	246948.36	1	2155572	2728794	2019307.56	gift	life	8622	6380.28	0.22	third_party_transfer	0	0	0	4	0	0	0	0	0	0	0.44	0	none	0	0
CUST00494	United States	USD	1.0	26	consultant	1	89204	89204.0	0.05	4460	4460.0	0	0	1520928	1520928.0	savings	health	4811	4811.0	0.05	cash	1	0	1	4	0	0	0	0	0	0	0.06	0	none	0	0
CUST00495	United States	USD	1.0	27	consultant	1	170149	170149.0	0.26	88477	88477.0	0	0	2130265	2130265.0	gift	unit_link	7236	7236.0	0.04	credit_card	0	0	0	5	0	0	0	0	0	0	0.04	0	none	0	0
CUST00496	United Arab Emirates	AED	0.27	64	freelancer	40	206694	55807.38	0.22	1773434	478827.18	0	0	2806904	757864.08	inheritance	life	40630	10970.1	0.2	third_party_transfer	0	0	1	2	0	1	0	0	0	0	0.14	0	placement	0	0
CUST00497	Singapore	SGD	0.74	23	consultant	1	92517	68462.58	0.17	15727	11637.98	0	0	385795	285488.3	grant	endowment	22386	16565.64	0.24	third_party_transfer	1	0	0	1	0	0	0	0	0	0	0.04	1	placement	0	0
CUST00498	Indonesia	IDR	6.5e-05	43	director	22	930821488	60503.4	0.08	1340382942	87124.89	0	0	18095169726	1176186.03	grant	unit_link	138081505	8975.3	0.15	credit_card	0	0	0	1	0	0	0	0	0	0	0.04	0	integration	0	0
CUST00499	Singapore	SGD	0.74	53	entrepreneur	32	153527	113609.98	0.28	1203651	890701.74	0	0	1664232	1231531.68	grant	life	13502	9991.48	0.09	credit_card	0	0	0	1	0	0	0	0	0	0	0.9	0	none	0	0
CUST00500	Indonesia	IDR	6.5e-05	51	employee	21	426552670	27725.92	0.26	2883496049	187427.24	0	0	4589706729	298330.94	salary	endowment	106204811	6903.31	0.25	credit_card	0	0	0	1	0	0	0	0	0	0	0.8	0	none	0	0
CUST00501	United Arab Emirates	AED	0.27	43	entrepreneur	16	219992	59397.84	0.08	316788	85532.76	1	23539144	28255772	7629058.44	inheritance	life	38025	10266.75	0.17	credit_card	0	0	0	3	0	0	0	0	0	0	0.06	0	none	0	0
CUST00502	Malaysia	MYR	0.21	31	director	4	118107	24802.47	0.22	155901	32739.21	0	0	2399934	503986.14	business_income	life	7818	1641.78	0.07	credit_card	0	0	0	1	0	0	0	0	0	0	0.79	0	none	0	0
CUST00503	United States	USD	1.0	61	entrepreneur	34	233859	233859.0	0.09	757703	757703.0	0	0	4733306	4733306.0	salary	life	9962	9962.0	0.04	cash	1	0	0	4	0	0	0	0	0	0	0.69	0	none	0	0
CUST00504	United Arab Emirates	AED	0.27	30	entrepreneur	6	125019	33755.13	0.21	131269	35442.63	0	0	2381611	643034.97	business_income	life	18267	4932.09	0.15	credit_card	1	0	0	4	0	0	0	0	0	0	0.61	0	layering	0	0
CUST00505	Indonesia	IDR	6.5e-05	62	director	37	807009843	52455.64	0.15	4478904628	291128.8	0	0	19812091645	1287785.96	salary	life	69385836	4510.08	0.09	cash	0	0	0	5	0	0	1	0	0	0	0.51	0	none	0	0
CUST00506	United Arab Emirates	AED	0.27	62	freelancer	38	194927	52630.29	0.06	432737	116838.99	0	0	1407372	379990.44	grant	endowment	47377	12791.79	0.24	credit_card	0	0	0	2	0	1	0	0	0	0	0.67	0	none	0	0
CUST00507	Indonesia	IDR	6.5e-05	25	employee	1	672171398	43691.14	0.1	67217139	4369.11	0	0	6788931119	441280.52	gift	life	76360348	4963.42	0.11	bank_transfer	0	0	1	5	0	0	0	0	0	0	0.18	0	none	0	0
CUST00508	Indonesia	IDR	6.5e-05	53	director	24	309247872	20101.11	0.07	606125829	39398.18	0	0	3389356677	220308.18	savings	health	68650820	4462.3	0.22	third_party_transfer	1	0	1	2	0	0	0	0	0	0	0.75	0	none	0	0
CUST00509	Malaysia	MYR	0.21	36	freelancer	14	200987	42207.27	0.11	243194	51070.74	0	0	2052077	430936.17	business_income	unit_link	45537	9562.77	0.23	bank_transfer	1	1	1	4	0	1	0	0	0	0	0.59	0	none	0	1
CUST00510	Indonesia	IDR	6.5e-05	49	entrepreneur	26	524211149	34073.72	0.28	3522698921	228975.43	0	0	11910077305	774155.02	inheritance	endowment	36619825	2380.29	0.07	credit_card	0	0	0	3	0	0	0	1	0	0	0.98	0	none	0	0
CUST00511	Singapore	SGD	0.74	43	freelancer	20	38413	28425.62	0.22	152115	112565.1	0	0	267354	197841.96	salary	endowment	3786	2801.64	0.1	third_party_transfer	0	0	1	2	0	0	0	0	0	0	0.76	0	none	0	0
CUST00512	Singapore	SGD	0.74	40	entrepreneur	10	71101	52614.74	0.25	266628	197304.72	0	0	764335	565607.9	savings	life	12931	9568.94	0.18	third_party_transfer	0	0	0	5	0	0	0	0	0	0	0.49	0	none	0	0
CUST00513	Singapore	SGD	0.74	59	entrepreneur	31	249411	184564.14	0.17	1441595	1066780.3	0	0	1940417	1435908.58	grant	unit_link	55969	41417.06	0.22	cash	0	0	0	4	0	0	0	0	0	0	0.58	1	none	0	0
CUST00514	United Kingdom	GBP	1.27	31	director	1	26331	33440.37	0.15	23697	30095.19	0	0	102690	130416.3	gift	life	821	1042.67	0.03	third_party_transfer	0	0	0	5	0	0	0	0	0	0	0.39	0	none	0	0
CUST00515	United States	USD	1.0	28	freelancer	1	159836	159836.0	0.11	52745	52745.0	0	0	3089629	3089629.0	grant	unit_link	36900	36900.0	0.23	credit_card	0	0	0	3	0	0	0	1	0	0	0.3	0	placement	0	0
CUST00516	United States	USD	1.0	27	director	6	155772	155772.0	0.22	68539	68539.0	0	0	1158943	1158943.0	savings	life	33790	33790.0	0.22	third_party_transfer	1	0	0	4	0	0	1	0	0	0	0.77	0	none	0	0
CUST00517	United States	USD	1.0	47	employee	24	237056	237056.0	0.27	1408112	1408112.0	0	0	5201008	5201008.0	salary	endowment	51463	51463.0	0.22	cash	1	0	0	5	0	0	0	0	0	0	0.03	0	none	0	0
CUST00518	United Arab Emirates	AED	0.27	39	director	9	334392	90285.84	0.19	889482	240160.14	0	0	3564618	962446.86	salary	health	80439	21718.53	0.24	bank_transfer	0	0	0	5	0	0	0	0	0	0	0.95	1	none	0	0
CUST00519	United States	USD	1.0	45	consultant	24	59089	59089.0	0.15	177267	177267.0	0	0	1122691	1122691.0	inheritance	unit_link	11425	11425.0	0.19	bank_transfer	0	0	1	5	0	0	0	0	0	0	0.71	0	none	0	0
CUST00520	Singapore	SGD	0.74	30	entrepreneur	4	92556	68491.44	0.18	83300	61642.0	1	9533268	11190020	8280614.8	savings	unit_link	20960	15510.4	0.23	cash	0	0	1	3	0	0	0	0	0	0	0.9	0	none	0	0
CUST00521	United Kingdom	GBP	1.27	65	director	38	97651	124016.77	0.06	234362	297639.74	0	0	1503825	1909857.75	gift	life	11392	14467.84	0.12	third_party_transfer	0	0	0	5	0	0	0	0	0	0	0.68	1	layering	0	0
CUST00522	United Kingdom	GBP	1.27	40	employee	12	187778	238478.06	0.14	394333	500802.91	0	0	1145445	1454715.15	gift	life	13658	17345.66	0.07	third_party_transfer	0	1	1	2	0	0	0	0	0	0	0.29	0	none	0	0
CUST00523	Indonesia	IDR	6.5e-05	28	director	5	652582512	42417.86	0.08	156619802	10180.29	0	0	4072114874	264687.47	business_income	life	103742376	6743.25	0.16	cash	0	0	1	4	0	0	0	0	0	0	0.97	0	placement	0	0
CUST00524	United Kingdom	GBP	1.27	30	employee	2	115885	147173.95	0.16	92708	117739.16	1	13210890	13535368	17189917.36	salary	unit_link	11776	14955.52	0.1	cash	0	0	1	4	0	0	0	0	0	0	0.58	0	layering	0	0
CUST00525	United States	USD	1.0	63	freelancer	37	157440	157440.0	0.2	1196544	1196544.0	0	0	4030464	4030464.0	gift	health	40262	40262.0	0.26	credit_card	0	0	0	3	0	0	0	0	0	0	0.17	0	none	0	0
CUST00526	Malaysia	MYR	0.21	36	freelancer	8	224983	47246.43	0.29	717695	150715.95	0	0	1392644	292455.24	inheritance	unit_link	13844	2907.24	0.06	credit_card	0	0	0	5	0	0	0	0	0	0	0.29	0	none	0	0
CUST00527	Singapore	SGD	0.74	64	entrepreneur	41	72271	53480.54	0.11	310042	229431.08	0	0	526855	389872.7	savings	endowment	21555	15950.7	0.3	cash	0	1	1	3	0	0	0	0	0	0	0.18	0	none	0	0
CUST00528	United Kingdom	GBP	1.27	24	director	1	115137	146223.99	0.09	10362	13159.74	0	0	1852554	2352743.58	business_income	health	19707	25027.89	0.17	bank_transfer	0	0	1	1	0	0	0	0	0	0	0.4	1	none	0	0
CUST00529	United Arab Emirates	AED	0.27	31	consultant	3	217886	58829.22	0.09	117658	31767.66	0	0	4257492	1149522.84	inheritance	endowment	63877	17246.79	0.29	cash	0	0	1	5	0	0	1	0	0	0	0.67	0	integration	0	0
CUST00530	United Kingdom	GBP	1.27	50	employee	24	54442	69141.34	0.23	313041	397562.07	0	0	476367	604986.09	savings	health	3214	4081.78	0.06	bank_transfer	0	0	0	4	0	0	0	0	0	0	0.62	0	none	0	0
CUST00531	Singapore	SGD	0.74	50	consultant	24	54243	40139.82	0.13	176289	130453.86	1	5261571	5871804	4345134.96	business_income	unit_link	9946	7360.04	0.18	bank_transfer	1	0	1	1	0	0	0	0	0	0	0.54	0	integration	0	0
CUST00532	United Arab Emirates	AED	0.27	65	director	43	318324	85947.48	0.15	1909944	515684.88	0	0	7321452	1976792.04	savings	life	34688	9365.76	0.11	cash	0	0	0	4	0	0	1	0	0	0	0.15	0	none	0	0
CUST00533	United Arab Emirates	AED	0.27	45	director	18	245470	66276.9	0.05	245470	66276.9	0	0	3436580	927876.6	gift	life	29058	7845.66	0.12	credit_card	0	0	1	4	0	0	0	0	0	0	0.74	0	none	0	0
CUST00534	United Arab Emirates	AED	0.27	50	entrepreneur	25	135873	36685.71	0.25	849206	229285.62	0	0	2887301	779571.27	gift	life	30436	8217.72	0.22	credit_card	1	0	0	2	0	1	0	0	0	0	0.3	0	none	0	0
CUST00535	United Kingdom	GBP	1.27	43	freelancer	21	179842	228399.34	0.24	776917	986684.59	1	5575102	6711703	8523862.81	inheritance	unit_link	24215	30753.05	0.13	third_party_transfer	0	0	1	5	0	0	0	0	0	0	0.76	0	integration	0	0
CUST00536	Singapore	SGD	0.74	34	director	11	248178	183651.72	0.15	335040	247929.6	0	0	5050422	3737312.28	inheritance	health	39054	28899.96	0.16	third_party_transfer	0	0	0	5	0	0	0	0	0	0	0.74	0	none	0	0
CUST00537	Singapore	SGD	0.74	23	consultant	2	70376	52078.24	0.12	8445	6249.3	0	0	1204837	891579.38	grant	endowment	3854	2851.96	0.05	credit_card	0	1	1	4	0	0	1	0	0	0	0.91	0	layering	0	0
CUST00538	United States	USD	1.0	37	director	16	61288	61288.0	0.24	176509	176509.0	0	0	1218405	1218405.0	salary	health	18289	18289.0	0.3	third_party_transfer	0	0	0	5	0	0	0	0	0	0	0.44	0	integration	0	0
CUST00539	Malaysia	MYR	0.21	62	consultant	34	393984	82736.64	0.25	3644352	765313.92	1	26396928	37132992	7797928.32	salary	unit_link	88736	18634.56	0.23	bank_transfer	0	0	1	2	0	0	0	0	0	0	0.32	0	placement	0	0
CUST00540	United States	USD	1.0	30	employee	4	72810	72810.0	0.06	21842	21842.0	0	0	968372	968372.0	inheritance	health	10008	10008.0	0.14	cash	0	0	0	5	0	0	0	0	0	0	0.64	0	integration	0	0
CUST00541	Indonesia	IDR	6.5e-05	54	director	30	1408684049	91564.46	0.1	4085183742	265536.94	0	0	11128603987	723359.26	business_income	health	264344487	17182.39	0.19	cash	0	1	1	3	0	0	0	0	0	0	0.27	0	none	0	0
CUST00542	United States	USD	1.0	45	consultant	23	170095	170095.0	0.2	680380	680380.0	0	0	1700950	1700950.0	savings	health	4016	4016.0	0.02	third_party_transfer	0	0	1	4	0	0	0	0	0	0	0.34	0	none	0	0
CUST00543	Singapore	SGD	0.74	28	director	4	70515	52181.1	0.18	38078	28177.72	0	0	602198	445626.52	savings	life	17109	12660.66	0.24	third_party_transfer	0	1	0	4	0	1	0	0	0	0	0.92	0	placement	0	0
CUST00544	Indonesia	IDR	6.5e-05	30	director	9	1089757564	70834.24	0.14	762830294	49583.97	0	0	14929678626	970429.11	gift	health	64212782	4173.83	0.06	credit_card	0	0	0	3	0	0	0	0	0	0	0.03	0	none	0	0
CUST00545	Indonesia	IDR	6.5e-05	36	employee	13	365714347	23771.43	0.22	885028719	57526.87	0	0	4907886536	319012.62	business_income	endowment	20149533	1309.72	0.06	bank_transfer	0	1	0	1	0	0	0	0	0	0	0.02	0	none	0	0
CUST00546	United Arab Emirates	AED	0.27	49	employee	28	152944	41294.88	0.08	293652	79286.04	0	0	3046644	822593.88	gift	health	28461	7684.47	0.19	bank_transfer	0	0	1	1	0	0	0	0	0	0	0.3	0	placement	0	0
CUST00547	Indonesia	IDR	6.5e-05	28	employee	6	1352338420	87902.0	0.1	405701526	26370.6	0	0	11224408886	729586.58	inheritance	life	97015285	6305.99	0.07	credit_card	0	0	0	3	0	0	0	0	0	0	0.95	0	none	0	0
CUST00548	Malaysia	MYR	0.21	44	employee	21	292476	61419.96	0.25	1389261	291744.81	1	28662648	32684193	6863680.53	salary	life	47198	9911.58	0.16	credit_card	0	0	0	2	0	0	0	0	0	0	0.96	0	placement	0	0
CUST00549	Singapore	SGD	0.74	56	freelancer	35	220145	162907.3	0.07	477714	353508.36	0	0	2238874	1656766.76	grant	health	61141	45244.34	0.28	credit_card	0	0	0	4	0	0	1	0	0	0	0.67	0	placement	0	0
CUST00550	Indonesia	IDR	6.5e-05	33	consultant	7	875217123	56889.11	0.16	1120277917	72818.06	0	0	16874186131	1096822.1	salary	life	73268958	4762.48	0.08	third_party_transfer	0	0	0	1	1	0	0	0	0	0	0.52	0	none	0	0
CUST00551	United Arab Emirates	AED	0.27	45	freelancer	20	342097	92366.19	0.23	1573646	424884.42	0	0	2942034	794349.18	salary	health	38271	10333.17	0.11	third_party_transfer	0	0	1	5	0	0	0	0	0	0	0.74	0	none	0	0
CUST00552	United States	USD	1.0	50	freelancer	26	175205	175205.0	0.15	657018	657018.0	0	0	3285093	3285093.0	salary	health	12765	12765.0	0.07	credit_card	0	0	0	1	0	0	0	0	0	0	1.0	0	none	0	0
CUST00553	United Arab Emirates	AED	0.27	65	freelancer	43	257811	69608.97	0.16	1649990	445497.3	1	26812344	29493578	7963266.06	gift	life	13762	3715.74	0.05	credit_card	0	0	1	1	0	0	0	0	0	0	0.36	0	none	0	0
CUST00554	Singapore	SGD	0.74	43	freelancer	19	185965	137614.1	0.26	870316	644033.84	0	0	3473826	2570631.24	gift	health	10111	7482.14	0.05	cash	1	0	0	4	0	0	0	0	0	0	0.36	0	none	0	0
CUST00555	United States	USD	1.0	60	employee	33	157017	157017.0	0.18	989207	989207.0	0	0	1931309	1931309.0	salary	health	36905	36905.0	0.24	third_party_transfer	0	0	1	4	0	0	0	0	0	0	0.23	0	none	0	0
CUST00556	Singapore	SGD	0.74	23	entrepreneur	1	223409	165322.66	0.06	13404	9918.96	0	0	907040	671209.6	salary	endowment	35628	26364.72	0.16	cash	0	0	0	2	0	0	0	0	0	0	0.3	0	none	0	0
CUST00557	United Kingdom	GBP	1.27	28	consultant	6	198298	251838.46	0.24	142774	181322.98	0	0	3513840	4462576.8	business_income	endowment	47981	60935.87	0.24	third_party_transfer	0	0	0	5	0	0	0	0	0	0	0.26	0	placement	0	0
CUST00558	Malaysia	MYR	0.21	56	freelancer	27	39264	8245.44	0.29	352983	74126.43	0	0	470775	98862.75	salary	endowment	11677	2452.17	0.3	cash	0	0	0	4	0	0	1	0	0	0	0.44	0	none	0	0
CUST00559	Indonesia	IDR	6.5e-05	24	freelancer	1	1255432312	81603.1	0.21	263640785	17136.65	0	0	14073396217	914770.75	business_income	endowment	336099397	21846.46	0.27	credit_card	1	0	0	3	0	0	0	0	0	0	0.72	0	layering	0	0
CUST00560	United Arab Emirates	AED	0.27	29	freelancer	1	403907	109054.89	0.17	274656	74157.12	0	0	7948889	2146200.03	savings	endowment	85589	23109.03	0.21	credit_card	0	0	0	5	1	0	0	0	0	0	0.06	0	none	0	0
CUST00561	Malaysia	MYR	0.21	53	director	23	228074	47895.54	0.2	1277214	268214.94	1	14824810	18610838	3908275.98	salary	life	25027	5255.67	0.11	credit_card	0	0	1	3	0	0	0	0	0	0	0.35	0	none	0	0
CUST00562	United States	USD	1.0	59	consultant	38	230591	230591.0	0.27	2116825	2116825.0	0	0	4883917	4883917.0	gift	health	29183	29183.0	0.13	third_party_transfer	1	0	0	3	0	0	0	0	0	0	0.06	0	none	0	0
CUST00563	Singapore	SGD	0.74	37	consultant	13	199891	147919.34	0.13	311829	230753.46	0	0	1111393	822430.82	salary	life	54951	40663.74	0.27	cash	0	1	0	2	0	1	1	0	0	0	0.02	0	none	0	0
CUST00564	Malaysia	MYR	0.21	24	consultant	1	374859	78720.39	0.27	101211	21254.31	0	0	7598391	1595662.11	gift	life	61526	12920.46	0.16	third_party_transfer	0	0	0	5	0	0	1	0	0	0	0.02	0	none	0	0
CUST00565	Malaysia	MYR	0.21	46	entrepreneur	16	234630	49272.3	0.13	640539	134513.19	0	0	1813689	380874.69	salary	health	57796	12137.16	0.25	third_party_transfer	0	0	1	5	0	0	0	0	0	0	0.81	0	integration	0	0
CUST00566	United States	USD	1.0	43	employee	20	191173	191173.0	0.12	412933	412933.0	0	0	3280528	3280528.0	grant	unit_link	14623	14623.0	0.08	cash	0	0	0	3	0	0	0	0	0	0	0.05	0	none	0	0
CUST00567	United Kingdom	GBP	1.27	47	employee	23	188727	239683.29	0.24	996478	1265527.06	0	0	1751386	2224260.22	savings	health	41700	52959.0	0.22	cash	0	0	0	1	0	0	0	0	0	0	0.57	0	placement	0	0
CUST00568	United Kingdom	GBP	1.27	52	director	25	79981	101575.87	0.14	302328	383956.56	0	0	622252	790260.04	inheritance	health	16190	20561.3	0.2	third_party_transfer	1	0	1	5	0	0	0	0	0	0	0.31	0	integration	0	0
CUST00569	United Arab Emirates	AED	0.27	47	director	22	377661	101968.47	0.18	1495537	403794.99	0	0	8671096	2341195.92	salary	unit_link	26650	7195.5	0.07	third_party_transfer	0	1	0	2	0	0	0	0	0	0	0.66	1	integration	0	0
CUST00570	United States	USD	1.0	51	employee	26	197228	197228.0	0.18	923027	923027.0	1	19328344	23209791	23209791.0	grant	unit_link	55558	55558.0	0.28	cash	0	0	0	4	0	0	0	0	0	0	0.15	0	none	0	0
CUST00571	Singapore	SGD	0.74	65	consultant	40	144134	106659.16	0.15	864804	639954.96	1	4035752	6053628	4479684.72	inheritance	unit_link	37023	27397.02	0.26	cash	0	0	0	5	0	1	1	0	0	0	0.24	0	integration	0	0
CUST00572	Singapore	SGD	0.74	29	freelancer	6	80309	59428.66	0.06	19274	14262.76	0	0	902673	667978.02	savings	endowment	12043	8911.82	0.15	bank_transfer	0	0	0	2	0	0	0	0	0	0	0.16	0	none	0	0
CUST00573	Singapore	SGD	0.74	23	freelancer	1	237007	175385.18	0.25	59251	43845.74	0	0	4562384	3376164.16	salary	life	16418	12149.32	0.07	bank_transfer	0	0	0	1	1	1	0	0	0	0	0.31	0	none	0	0
CUST00574	Malaysia	MYR	0.21	26	entrepreneur	1	220544	46314.24	0.22	48519	10188.99	0	0	930695	195445.95	grant	unit_link	28920	6073.2	0.13	bank_transfer	0	0	1	5	0	0	0	0	0	0	0.73	0	none	0	0
CUST00575	Indonesia	IDR	6.5e-05	55	consultant	25	1187987561	77219.19	0.11	3920358951	254823.33	0	0	8672309195	563700.1	salary	health	102952807	6691.93	0.09	third_party_transfer	0	0	1	2	0	0	0	0	0	0	0.94	1	none	0	0
CUST00576	Singapore	SGD	0.74	31	director	9	75915	56177.1	0.1	45549	33706.26	0	0	804699	595477.26	inheritance	life	10859	8035.66	0.14	third_party_transfer	0	0	0	5	1	0	0	0	0	0	0.37	0	none	0	0
CUST00577	Indonesia	IDR	6.5e-05	42	consultant	13	970063451	63054.12	0.17	2803483373	182226.42	0	0	11534054432	749713.54	business_income	endowment	281054829	18268.56	0.29	cash	0	0	0	3	0	0	1	0	0	0	0.02	0	none	0	0
CUST00578	United Kingdom	GBP	1.27	24	consultant	3	87829	111542.83	0.11	9661	12269.47	0	0	1239267	1573869.09	grant	life	9362	11889.74	0.11	credit_card	0	0	0	4	0	0	0	0	0	0	0.39	0	none	0	0
CUST00579	United Arab Emirates	AED	0.27	38	freelancer	13	97317	26275.59	0.28	354233	95642.91	0	0	1230086	332123.22	business_income	health	10050	2713.5	0.1	third_party_transfer	0	0	0	1	0	0	0	0	0	0	0.27	1	layering	0	0
CUST00580	Indonesia	IDR	6.5e-05	53	entrepreneur	25	946827673	61543.8	0.28	7423128956	482503.38	0	0	18785061032	1221028.97	salary	health	209124014	13593.06	0.22	bank_transfer	0	1	0	3	0	0	0	0	0	0	0.42	0	layering	0	0
CUST00581	United States	USD	1.0	57	freelancer	31	148819	148819.0	0.22	1047685	1047685.0	0	0	1494142	1494142.0	business_income	unit_link	29701	29701.0	0.2	bank_transfer	0	0	0	4	0	0	1	0	0	0	0.2	0	placement	0	0
CUST00582	Malaysia	MYR	0.21	42	entrepreneur	12	73113	15353.73	0.08	99433	20880.93	0	0	757450	159064.5	grant	endowment	12033	2526.93	0.16	cash	0	0	0	4	0	0	1	0	0	0	0.48	0	integration	0	0
CUST00583	United States	USD	1.0	30	employee	5	75476	75476.0	0.22	83023	83023.0	0	0	988735	988735.0	business_income	endowment	18406	18406.0	0.24	cash	1	0	1	2	0	0	0	0	0	0	0.39	0	layering	0	0
CUST00584	United Arab Emirates	AED	0.27	58	entrepreneur	34	60870	16434.9	0.29	582525	157281.75	0	0	1739055	469544.85	grant	life	12246	3306.42	0.2	third_party_transfer	0	0	1	2	0	0	0	0	0	0	0.26	0	none	0	0
CUST00585	Singapore	SGD	0.74	25	entrepreneur	1	192006	142084.44	0.16	30720	22732.8	0	0	1950780	1443577.2	inheritance	life	11864	8779.36	0.06	bank_transfer	0	1	1	5	0	0	0	0	0	0	0.44	0	none	0	0
CUST00586	United Arab Emirates	AED	0.27	65	consultant	37	112134	30276.18	0.11	493389	133215.03	0	0	1390461	375424.47	inheritance	endowment	8225	2220.75	0.07	third_party_transfer	0	0	0	2	0	0	0	0	0	0	0.43	0	none	0	0
CUST00587	Singapore	SGD	0.74	60	entrepreneur	36	246029	182061.46	0.12	1033321	764657.54	1	26079074	29080627	21519663.98	gift	life	33738	24966.12	0.14	cash	0	0	0	3	1	0	0	0	0	0	0.24	0	layering	0	0
CUST00588	United Arab Emirates	AED	0.27	37	entrepreneur	11	355609	96014.43	0.22	938807	253477.89	0	0	6628551	1789708.77	gift	health	15649	4225.23	0.04	third_party_transfer	0	0	1	2	0	0	0	0	0	0	0.71	0	none	0	0
CUST00589	United States	USD	1.0	49	entrepreneur	19	97168	97168.0	0.07	163242	163242.0	0	0	2009434	2009434.0	inheritance	endowment	3541	3541.0	0.04	cash	0	0	0	5	0	0	0	0	0	0	0.94	0	none	0	0
CUST00590	United Kingdom	GBP	1.27	24	consultant	3	91494	116197.38	0.18	16468	20914.36	0	0	1297384	1647677.68	gift	unit_link	9579	12165.33	0.1	bank_transfer	0	0	0	5	0	0	0	0	0	0	0.18	0	none	0	0
CUST00591	Singapore	SGD	0.74	54	director	26	118913	87995.62	0.27	931088	689005.12	0	0	1644566	1216978.84	grant	endowment	5363	3968.62	0.05	credit_card	0	0	1	3	0	0	1	0	0	0	0.12	0	none	0	0
CUST00592	Indonesia	IDR	6.5e-05	30	director	2	663444291	43123.88	0.24	796133149	51748.65	0	0	10747797514	698606.84	inheritance	health	65826373	4278.71	0.1	cash	0	0	1	4	0	0	0	0	0	0	0.89	0	placement	0	0
CUST00593	Malaysia	MYR	0.21	53	employee	30	321333	67479.93	0.26	2339304	491253.84	0	0	7480632	1570932.72	business_income	unit_link	11215	2355.15	0.03	credit_card	0	0	1	1	0	0	0	0	0	0	0.47	0	none	0	0
CUST00594	Singapore	SGD	0.74	51	director	24	60415	44707.1	0.3	471237	348715.38	0	0	1498292	1108736.08	inheritance	endowment	1898	1404.52	0.03	third_party_transfer	1	0	1	4	0	0	0	0	0	0	0.11	0	none	0	0
CUST00595	United States	USD	1.0	31	director	9	121646	121646.0	0.07	51091	51091.0	1	6812176	7714789	7714789.0	grant	health	30872	30872.0	0.25	credit_card	0	0	0	5	0	0	0	0	0	0	1.0	0	placement	0	0
CUST00596	Indonesia	IDR	6.5e-05	55	employee	25	447768653	29104.96	0.15	2014958938	130972.33	1	12985290937	19030167752	1236960.9	grant	health	105275317	6842.9	0.24	bank_transfer	1	0	0	3	0	0	0	0	0	0	0.68	0	none	0	0
CUST00597	United States	USD	1.0	29	employee	2	127926	127926.0	0.2	102340	102340.0	0	0	741970	741970.0	business_income	life	32538	32538.0	0.25	third_party_transfer	0	0	1	4	0	0	0	0	0	0	0.45	0	none	0	0
CUST00598	Malaysia	MYR	0.21	60	director	39	202714	42569.94	0.29	2057547	432084.87	1	20879542	26180513	5497907.73	grant	unit_link	22496	4724.16	0.11	credit_card	0	0	1	1	0	1	0	0	0	0	0.8	0	placement	0	0
CUST00599	Malaysia	MYR	0.21	42	entrepreneur	21	67079	14086.59	0.19	216665	45499.65	0	0	1155771	242711.91	inheritance	unit_link	3079	646.59	0.05	third_party_transfer	0	0	0	1	0	0	1	0	0	0	0.02	0	layering	0	0
CUST00600	Singapore	SGD	0.74	32	freelancer	5	234339	173410.86	0.15	246055	182080.7	0	0	1652089	1222545.86	gift	health	12600	9324.0	0.05	credit_card	0	0	0	3	0	0	0	0	0	0	0.67	0	none	0	0
CUST00601	Malaysia	MYR	0.21	54	director	30	286703	60207.63	0.16	1330301	279363.21	0	0	5344143	1122270.03	savings	endowment	43981	9236.01	0.15	bank_transfer	0	0	1	4	1	0	0	0	0	0	0.81	0	integration	0	0
CUST00602	United Kingdom	GBP	1.27	33	entrepreneur	6	190330	241719.1	0.16	243622	309399.94	0	0	814612	1034557.24	gift	unit_link	31163	39577.01	0.16	third_party_transfer	1	0	0	5	0	0	0	0	0	0	0.63	0	none	0	0
CUST00603	United Kingdom	GBP	1.27	27	consultant	2	147740	187629.8	0.16	47276	60040.52	0	0	2558856	3249747.12	business_income	unit_link	15381	19533.87	0.1	third_party_transfer	1	0	0	3	0	0	0	0	0	0	0.57	0	none	0	0
CUST00604	United Kingdom	GBP	1.27	26	director	5	159588	202676.76	0.08	12767	16214.09	0	0	2406587	3056365.49	gift	health	21647	27491.69	0.14	cash	0	0	0	3	0	0	0	0	0	0	0.59	0	none	0	0
CUST00605	United Kingdom	GBP	1.27	23	employee	1	198428	252003.56	0.17	33732	42839.64	0	0	1422728	1806864.56	salary	endowment	50800	64516.0	0.26	cash	0	0	0	3	0	0	0	0	0	0	0.59	1	none	0	0
CUST00606	United Arab Emirates	AED	0.27	64	entrepreneur	36	377056	101805.12	0.25	3676296	992599.92	0	0	8200968	2214261.36	business_income	unit_link	109603	29592.81	0.29	bank_transfer	0	0	0	5	0	0	0	0	0	0	0.26	0	placement	0	0
CUST00607	United States	USD	1.0	28	freelancer	1	170083	170083.0	0.05	25512	25512.0	0	0	2406674	2406674.0	business_income	endowment	8958	8958.0	0.05	third_party_transfer	0	0	0	5	0	0	0	0	0	0	0.73	1	placement	0	0
CUST00608	Malaysia	MYR	0.21	61	entrepreneur	31	219125	46016.25	0.22	1735470	364448.7	0	0	4803220	1008676.2	salary	unit_link	53751	11287.71	0.25	bank_transfer	0	0	1	2	0	1	0	0	0	0	0.11	0	none	0	0
CUST00609	Indonesia	IDR	6.5e-05	34	director	13	509316892	33105.6	0.17	779254844	50651.56	0	0	3835156196	249285.15	gift	unit_link	102844909	6684.92	0.2	bank_transfer	0	1	1	3	0	0	0	0	0	0	0.77	0	none	0	0
CUST00610	Singapore	SGD	0.74	52	freelancer	25	35719	26432.06	0.08	77153	57093.22	0	0	291467	215685.58	gift	endowment	8103	5996.22	0.23	bank_transfer	0	0	1	4	0	0	0	0	0	0	0.59	0	none	0	0
CUST00611	Singapore	SGD	0.74	40	freelancer	10	247435	183101.9	0.26	964996	714097.04	1	6433310	10367526	7671969.24	grant	endowment	5494	4065.56	0.02	third_party_transfer	0	0	0	5	1	0	0	0	0	0	0.6	0	none	0	0
CUST00612	United Kingdom	GBP	1.27	40	freelancer	19	152794	194048.38	0.15	343786	436608.22	0	0	3094078	3929479.06	savings	unit_link	28341	35993.07	0.19	bank_transfer	0	0	0	5	0	0	0	0	0	0	0.02	0	none	0	0
CUST00613	United Kingdom	GBP	1.27	42	freelancer	13	41648	52892.96	0.12	84961	107900.47	1	4248096	4957777	6296376.79	salary	health	11201	14225.27	0.27	third_party_transfer	1	0	1	4	0	0	0	0	0	0	0.02	0	none	0	0
CUST00614	Malaysia	MYR	0.21	34	consultant	6	210275	44157.75	0.16	302796	63587.16	0	0	4087746	858426.66	grant	endowment	17140	3599.4	0.08	credit_card	1	0	0	3	0	0	0	0	0	0	0.72	0	none	0	0
CUST00615	United Arab Emirates	AED	0.27	48	employee	22	467318	126175.86	0.17	1827213	493347.51	0	0	5098439	1376578.53	inheritance	endowment	90713	24492.51	0.19	credit_card	0	1	1	2	0	0	0	0	0	0	0.2	0	none	0	0
CUST00616	United Kingdom	GBP	1.27	53	director	31	134047	170239.69	0.29	1088461	1382345.47	0	0	3367260	4276420.2	business_income	life	14077	17877.79	0.11	bank_transfer	0	0	0	3	0	0	0	0	0	0	0.88	0	none	0	0
CUST00617	Malaysia	MYR	0.21	65	consultant	42	121600	25536.0	0.26	1264640	265574.4	0	0	3453440	725222.4	salary	endowment	3520	739.2	0.03	bank_transfer	0	0	0	5	0	0	0	1	0	0	0.23	0	none	0	0
CUST00618	United Kingdom	GBP	1.27	36	consultant	8	92586	117584.22	0.3	305533	388026.91	0	0	1509151	1916621.77	savings	unit_link	21797	27682.19	0.24	bank_transfer	0	0	0	1	0	0	0	0	0	0	0.93	0	none	0	0
CUST00619	United Arab Emirates	AED	0.27	51	director	29	105517	28489.59	0.25	685860	185182.2	0	0	1213445	327630.15	salary	life	26443	7139.61	0.25	credit_card	0	0	1	1	0	0	0	0	0	0	0.87	0	none	0	0
CUST00620	Malaysia	MYR	0.21	32	entrepreneur	7	261482	54911.22	0.24	439289	92250.69	0	0	4884483	1025741.43	salary	health	58863	12361.23	0.23	cash	0	0	0	2	0	0	0	0	0	0	0.12	0	none	0	0
CUST00621	Singapore	SGD	0.74	50	consultant	23	231646	171418.04	0.24	1389876	1028508.24	0	0	3474690	2571270.6	gift	health	58779	43496.46	0.25	credit_card	0	0	0	1	0	0	1	1	0	0	0.27	0	none	0	0
CUST00622	United States	USD	1.0	48	freelancer	22	195004	195004.0	0.22	986720	986720.0	0	0	2156744	2156744.0	savings	unit_link	45025	45025.0	0.23	credit_card	0	0	0	4	0	0	0	0	0	0	0.41	0	layering	0	0
CUST00623	United Arab Emirates	AED	0.27	51	director	22	466603	125982.81	0.22	2668969	720621.63	0	0	3602175	972587.25	salary	life	67154	18131.58	0.14	bank_transfer	0	0	0	3	0	0	0	0	0	0	0.31	1	none	0	0
CUST00624	Singapore	SGD	0.74	49	director	28	133092	98488.08	0.24	766609	567290.66	0	0	1565161	1158219.14	salary	health	36294	26857.56	0.27	third_party_transfer	0	0	0	4	0	0	0	0	0	0	0.89	0	layering	0	0
CUST00625	United States	USD	1.0	57	director	32	219150	219150.0	0.24	1683072	1683072.0	0	0	4532022	4532022.0	inheritance	unit_link	4867	4867.0	0.02	third_party_transfer	0	0	0	4	0	1	0	0	0	0	0.64	1	none	0	0
CUST00626	United Kingdom	GBP	1.27	61	freelancer	31	195927	248827.29	0.16	1128539	1433244.53	0	0	3675590	4667999.3	grant	unit_link	52615	66821.05	0.27	cash	0	0	0	1	0	0	0	0	0	0	0.04	0	placement	0	0
CUST00627	Malaysia	MYR	0.21	46	director	23	302876	63603.96	0.3	1908118	400704.78	0	0	5239754	1100348.34	savings	health	24183	5078.43	0.08	cash	0	0	0	2	0	0	0	0	0	0	0.02	0	none	0	0
CUST00628	United Kingdom	GBP	1.27	59	employee	34	88265	112096.55	0.26	780262	990932.74	0	0	1751177	2223994.79	savings	life	19720	25044.4	0.22	cash	0	0	1	3	0	0	0	0	0	0	0.63	0	none	0	0
CUST00629	Malaysia	MYR	0.21	29	employee	8	371291	77971.11	0.29	430697	90446.37	0	0	6371353	1337984.13	grant	endowment	38402	8064.42	0.1	cash	0	1	0	2	0	0	0	0	0	0	0.81	0	none	0	0
CUST00630	United Kingdom	GBP	1.27	58	director	29	181119	230021.13	0.11	657461	834975.47	0	0	2649770	3365207.9	grant	unit_link	18052	22926.04	0.1	third_party_transfer	0	0	0	5	0	0	0	0	0	0	0.74	0	integration	0	0
CUST00631	Indonesia	IDR	6.5e-05	42	freelancer	13	1310628012	85190.82	0.1	2228067620	144824.4	0	0	19266231776	1252305.07	business_income	endowment	192933205	12540.66	0.15	bank_transfer	0	0	1	1	0	0	0	0	0	0	0.06	0	integration	0	0
CUST00632	Singapore	SGD	0.74	52	director	28	146959	108749.66	0.07	277752	205536.48	0	0	2923014	2163030.36	savings	endowment	19511	14438.14	0.13	cash	0	0	1	5	0	0	0	0	0	0	0.5	1	none	0	0
CUST00633	United Arab Emirates	AED	0.27	50	freelancer	22	433630	117080.1	0.29	3143817	848830.59	0	0	6179227	1668391.29	business_income	endowment	26198	7073.46	0.06	credit_card	0	1	1	5	0	0	0	0	0	0	0.86	0	none	0	0
CUST00634	Indonesia	IDR	6.5e-05	35	employee	7	1076523340	69974.02	0.06	645914004	41984.41	0	0	8181577384	531802.53	inheritance	endowment	306098083	19896.38	0.28	bank_transfer	0	0	0	1	0	0	1	0	0	0	0.37	0	none	0	0
CUST00635	Malaysia	MYR	0.21	24	consultant	1	110375	23178.75	0.08	8830	1854.3	0	0	1222955	256820.55	inheritance	endowment	32834	6895.14	0.3	bank_transfer	0	0	0	2	0	0	0	0	0	0	0.14	0	layering	0	0
CUST00636	United Kingdom	GBP	1.27	48	freelancer	27	104996	133344.92	0.27	652025	828071.75	0	0	1491993	1894831.11	grant	life	7482	9502.14	0.07	bank_transfer	1	0	0	5	0	0	0	0	0	0	0.35	0	none	0	0
CUST00637	Indonesia	IDR	6.5e-05	48	freelancer	20	1290635030	83891.28	0.13	3858998739	250834.92	0	0	24509159219	1593095.35	gift	unit_link	351156547	22825.18	0.27	credit_card	0	0	0	5	0	0	0	0	0	0	0.64	0	none	0	0
CUST00638	United Arab Emirates	AED	0.27	64	director	36	128109	34589.43	0.27	1348987	364226.49	0	0	2886295	779299.65	savings	endowment	5765	1556.55	0.05	third_party_transfer	0	0	0	2	0	0	0	0	0	0	0.9	0	placement	0	0
CUST00639	Malaysia	MYR	0.21	56	employee	35	381505	80116.05	0.27	3193196	670571.16	0	0	7008246	1471731.66	business_income	health	76627	16091.67	0.2	bank_transfer	0	0	0	5	0	1	0	0	0	0	0.09	0	none	0	0
CUST00640	United Kingdom	GBP	1.27	56	employee	26	38860	49352.2	0.29	349351	443675.77	1	3341960	4002191	5082782.57	savings	life	8943	11357.61	0.23	credit_card	0	0	0	1	0	0	0	0	0	0	0.27	0	placement	0	0
CUST00641	Singapore	SGD	0.74	37	director	7	146452	108374.48	0.07	123019	91034.06	0	0	2905607	2150149.18	gift	life	27814	20582.36	0.19	third_party_transfer	0	1	0	1	1	0	0	0	0	0	0.34	0	none	0	0
CUST00642	Singapore	SGD	0.74	48	director	27	168386	124605.64	0.13	503474	372570.76	0	0	2187334	1618627.16	salary	unit_link	7659	5667.66	0.05	cash	0	0	0	2	0	0	0	0	0	0	0.18	1	none	0	0
CUST00643	Indonesia	IDR	6.5e-05	31	entrepreneur	6	934619472	60750.27	0.22	1233697703	80190.35	0	0	4037556119	262441.15	inheritance	life	179496585	11667.28	0.19	bank_transfer	1	0	1	3	0	0	0	1	0	0	0.39	0	none	0	0
CUST00644	Malaysia	MYR	0.21	31	director	4	199983	41996.43	0.11	131988	27717.48	1	6999405	7731342	1623581.82	savings	unit_link	15342	3221.82	0.08	third_party_transfer	0	0	0	5	0	0	0	0	0	0	0.75	0	none	0	0
CUST00645	United Arab Emirates	AED	0.27	29	employee	4	81788	22082.76	0.13	42529	11482.83	0	0	1596501	431055.27	gift	endowment	10958	2958.66	0.13	credit_card	0	0	1	1	0	0	0	0	0	0	0.27	0	none	0	0
CUST00646	United Kingdom	GBP	1.27	65	freelancer	43	89570	113753.9	0.24	859872	1092037.44	0	0	1397292	1774560.84	gift	life	9430	11976.1	0.11	credit_card	0	0	0	2	0	0	0	0	0	0	0.37	0	layering	0	0
CUST00647	Singapore	SGD	0.74	37	freelancer	8	141084	104402.16	0.29	490972	363319.28	0	0	3171568	2346960.32	salary	health	20667	15293.58	0.15	credit_card	0	0	1	1	0	0	0	0	0	0	0.06	0	none	0	0
CUST00648	United Arab Emirates	AED	0.27	39	entrepreneur	9	181538	49015.26	0.26	660798	178415.46	0	0	3202330	864629.1	grant	health	54422	14693.94	0.3	bank_transfer	0	0	0	2	1	0	0	0	0	0	0.74	0	layering	0	0
CUST00649	United Kingdom	GBP	1.27	26	director	1	48518	61617.86	0.15	7277	9241.79	0	0	249867	317331.09	grant	health	12252	15560.04	0.25	third_party_transfer	0	0	0	2	1	0	0	0	0	0	0.61	0	placement	0	0
CUST00650	Malaysia	MYR	0.21	65	consultant	39	363011	76232.31	0.12	1742452	365914.92	0	0	7550628	1585631.88	grant	health	35010	7352.1	0.1	credit_card	0	1	1	4	0	0	0	0	0	0	0.96	0	placement	0	0
CUST00651	Malaysia	MYR	0.21	23	entrepreneur	1	368922	77473.62	0.28	103298	21692.58	0	0	6374972	1338744.12	salary	endowment	7820	1642.2	0.02	third_party_transfer	0	0	0	4	0	0	0	0	0	0	0.54	0	integration	0	0
CUST00652	United States	USD	1.0	63	freelancer	41	171203	171203.0	0.06	390342	390342.0	0	0	3129590	3129590.0	inheritance	health	35649	35649.0	0.21	third_party_transfer	1	1	0	2	0	0	0	0	0	0	0.84	0	none	0	1
CUST00653	United States	USD	1.0	22	employee	1	151292	151292.0	0.14	21180	21180.0	0	0	1231516	1231516.0	business_income	health	21858	21858.0	0.14	cash	0	0	0	2	0	0	0	0	0	0	0.09	0	none	0	0
CUST00654	United Kingdom	GBP	1.27	62	consultant	37	82972	105374.44	0.11	337696	428873.92	0	0	1748220	2220239.4	salary	endowment	24131	30646.37	0.29	credit_card	0	0	0	1	0	0	0	0	0	0	0.2	0	none	0	0
CUST00655	United States	USD	1.0	47	director	25	102704	102704.0	0.19	429302	429302.0	0	0	2175270	2175270.0	business_income	unit_link	6956	6956.0	0.07	bank_transfer	0	0	0	5	0	0	0	0	0	0	0.13	0	none	0	0
CUST00656	Indonesia	IDR	6.5e-05	30	employee	5	1283857987	83450.77	0.26	1669015383	108486.0	1	110411786882	124919382135	8119759.84	grant	health	94643999	6151.86	0.07	third_party_transfer	1	0	0	1	0	0	0	0	0	0	0.94	0	none	0	0
CUST00657	United States	USD	1.0	65	director	44	114672	114672.0	0.16	733900	733900.0	0	0	2453980	2453980.0	grant	endowment	11092	11092.0	0.1	third_party_transfer	0	0	0	3	0	0	0	0	0	0	0.52	0	none	0	0
CUST00658	Indonesia	IDR	6.5e-05	36	freelancer	15	656856639	42695.68	0.28	2023118448	131502.7	0	0	14503394589	942720.65	salary	unit_link	95691675	6219.96	0.15	cash	0	0	1	1	0	1	0	0	0	0	0.88	0	none	0	0
CUST00659	Indonesia	IDR	6.5e-05	36	employee	9	219859468	14290.87	0.28	677167161	44015.87	0	0	2436042905	158342.79	inheritance	life	14522782	943.98	0.07	bank_transfer	0	0	0	4	0	0	0	0	0	0	0.43	0	none	0	0
CUST00660	Indonesia	IDR	6.5e-05	59	employee	33	597750246	38853.77	0.11	2235585920	145313.08	0	0	12397340102	805827.11	inheritance	health	51849202	3370.2	0.09	credit_card	0	0	1	1	0	0	0	0	0	0	0.78	0	layering	0	0
CUST00661	United Kingdom	GBP	1.27	50	employee	28	188931	239942.37	0.16	755724	959769.48	0	0	1700379	2159481.33	salary	endowment	8303	10544.81	0.04	cash	0	0	0	1	0	0	1	0	0	0	0.78	0	none	0	0
CUST00662	Indonesia	IDR	6.5e-05	50	employee	29	707404203	45981.27	0.2	3537021015	229906.37	0	0	14148084060	919625.46	grant	life	27179369	1766.66	0.04	cash	0	0	0	4	0	0	0	0	0	0	0.4	0	integration	0	0
CUST00663	United Kingdom	GBP	1.27	48	freelancer	24	182175	231362.25	0.25	1047506	1330332.62	0	0	1411856	1793057.12	gift	life	26771	33999.17	0.15	cash	0	0	0	1	0	0	0	0	0	0	0.45	0	none	0	0
CUST00664	Malaysia	MYR	0.21	59	director	35	86626	18191.46	0.08	235622	49480.62	0	0	582126	122246.46	business_income	unit_link	16113	3383.73	0.19	cash	1	1	0	3	1	0	0	0	0	0	0.42	0	none	0	1
CUST00665	United States	USD	1.0	61	director	33	78738	78738.0	0.11	311802	311802.0	0	0	548016	548016.0	inheritance	endowment	2908	2908.0	0.04	cash	0	0	0	3	0	0	0	0	0	0	0.58	0	placement	0	0
CUST00666	United Kingdom	GBP	1.27	31	director	8	148082	188064.14	0.13	115503	146688.81	0	0	1892487	2403458.49	salary	unit_link	15030	19088.1	0.1	bank_transfer	0	0	0	2	0	0	0	0	0	0	0.51	0	integration	0	0
CUST00667	United Kingdom	GBP	1.27	25	employee	1	115129	146213.83	0.1	11512	14620.24	0	0	932544	1184330.88	business_income	health	22951	29147.77	0.2	credit_card	0	0	0	4	0	0	0	0	0	0	0.69	0	layering	0	0
CUST00668	United Arab Emirates	AED	0.27	60	consultant	34	496697	134108.19	0.19	3303035	891819.45	0	0	9263399	2501117.73	gift	unit_link	95618	25816.86	0.19	bank_transfer	0	0	0	4	0	0	0	0	0	0	0.88	0	layering	0	0
CUST00669	Indonesia	IDR	6.5e-05	53	entrepreneur	29	67939403	4416.06	0.21	399483689	25966.44	0	0	1010938316	65710.99	business_income	endowment	10233732	665.19	0.15	cash	0	0	0	4	0	0	0	0	0	0	0.21	1	placement	0	0
CUST00670	Singapore	SGD	0.74	22	freelancer	1	32593	24118.82	0.07	2281	1687.94	1	749639	1371187	1014678.38	inheritance	unit_link	1703	1260.22	0.05	cash	0	0	0	1	0	0	0	0	0	0	0.98	0	placement	0	0
CUST00671	Singapore	SGD	0.74	34	entrepreneur	9	75651	55981.74	0.1	68085	50382.9	1	4009503	4607145	3409287.3	savings	unit_link	8711	6446.14	0.12	credit_card	0	0	0	1	0	0	1	0	0	0	0.18	0	none	0	0
CUST00672	Malaysia	MYR	0.21	28	consultant	7	385180	80887.8	0.08	92443	19413.03	1	39673540	41691883	8755295.43	business_income	endowment	44198	9281.58	0.11	credit_card	0	0	0	3	0	0	0	0	0	0	0.81	0	none	0	0
CUST00673	United States	USD	1.0	32	employee	3	239459	239459.0	0.3	502863	502863.0	0	0	4094748	4094748.0	salary	unit_link	63683	63683.0	0.27	credit_card	0	0	0	2	0	0	1	0	0	0	0.19	0	none	0	0
CUST00674	United Arab Emirates	AED	0.27	45	director	19	364336	98370.72	0.16	1165875	314786.25	0	0	4444899	1200122.73	savings	unit_link	101243	27335.61	0.28	cash	1	0	1	2	0	0	0	0	0	0	0.33	0	none	0	0
CUST00675	Indonesia	IDR	6.5e-05	62	employee	37	331567628	21551.9	0.26	3189680581	207329.24	0	0	9821033141	638367.15	business_income	endowment	88871265	5776.63	0.27	bank_transfer	1	0	0	2	0	0	0	0	0	0	0.51	0	none	0	0
CUST00676	United States	USD	1.0	54	freelancer	28	160701	160701.0	0.18	838859	838859.0	1	6749442	9516713	9516713.0	savings	endowment	35273	35273.0	0.22	third_party_transfer	0	0	0	3	0	0	0	0	0	0	0.58	0	none	0	0
CUST00677	United States	USD	1.0	59	freelancer	38	84316	84316.0	0.1	286674	286674.0	0	0	961202	961202.0	business_income	unit_link	12359	12359.0	0.15	cash	0	0	0	4	1	0	0	0	0	0	0.89	0	placement	0	0
CUST00678	United Kingdom	GBP	1.27	32	freelancer	6	91723	116488.21	0.19	121991	154928.57	0	0	672329	853857.83	inheritance	health	21137	26843.99	0.23	credit_card	1	0	0	5	1	0	0	0	0	0	0.04	0	none	0	0
CUST00679	United Kingdom	GBP	1.27	61	consultant	35	136700	173609.0	0.16	787392	999987.84	0	0	2837892	3604122.84	gift	health	18387	23351.49	0.13	third_party_transfer	0	0	0	1	0	0	0	0	0	0	0.18	0	placement	0	0
CUST00680	Singapore	SGD	0.74	38	employee	16	124134	91859.16	0.28	451847	334366.78	1	7075638	9761897	7223803.78	grant	health	20306	15026.44	0.16	credit_card	0	0	0	1	0	0	0	0	0	0	0.12	0	none	0	0
CUST00681	Malaysia	MYR	0.21	24	consultant	1	135018	28353.78	0.13	17552	3685.92	0	0	1637768	343931.28	grant	unit_link	12152	2551.92	0.09	credit_card	0	0	0	5	0	0	0	0	0	0	0.91	1	none	0	0
CUST00682	Indonesia	IDR	6.5e-05	41	employee	16	804387314	52285.18	0.25	3217549256	209140.7	0	0	14478971652	941133.16	savings	endowment	229112192	14892.29	0.28	credit_card	0	0	0	4	0	0	0	0	0	0	0.23	0	layering	0	0
CUST00683	United States	USD	1.0	35	freelancer	7	91269	91269.0	0.18	164284	164284.0	0	0	1898395	1898395.0	grant	health	21186	21186.0	0.23	bank_transfer	0	0	0	3	0	0	0	0	0	0	0.85	0	integration	0	0
CUST00684	United Arab Emirates	AED	0.27	48	director	24	279995	75598.65	0.16	1030381	278202.87	0	0	6350286	1714577.22	business_income	unit_link	7960	2149.2	0.03	cash	0	0	0	1	0	0	0	0	0	0	0.5	0	none	0	0
CUST00685	United States	USD	1.0	44	director	18	89111	89111.0	0.15	253966	253966.0	0	0	1501520	1501520.0	grant	health	20815	20815.0	0.23	cash	0	0	0	5	0	0	0	0	0	0	0.02	0	none	0	0
CUST00686	Indonesia	IDR	6.5e-05	30	entrepreneur	7	769207601	49998.49	0.19	730747220	47498.57	0	0	16114899240	1047468.45	gift	endowment	202105090	13136.83	0.26	bank_transfer	0	0	0	5	0	0	0	0	0	0	0.39	0	none	0	0
CUST00687	United Arab Emirates	AED	0.27	28	director	2	348589	94119.03	0.29	303272	81883.44	0	0	4137751	1117192.77	salary	unit_link	16072	4339.44	0.05	bank_transfer	0	0	1	5	0	0	0	0	0	0	0.49	0	integration	0	0
CUST00688	Singapore	SGD	0.74	34	employee	12	131159	97057.66	0.12	141651	104821.74	0	0	1322082	978340.68	savings	endowment	13313	9851.62	0.1	bank_transfer	1	0	0	3	0	0	0	0	0	0	0.52	0	placement	0	0
CUST00689	Singapore	SGD	0.74	42	freelancer	15	132525	98068.5	0.09	202763	150044.62	0	0	865388	640387.12	gift	life	7442	5507.08	0.06	third_party_transfer	0	0	1	2	0	0	0	0	0	0	0.13	0	none	0	0
CUST00690	Singapore	SGD	0.74	41	consultant	14	244406	180860.44	0.23	899414	665566.36	0	0	5054316	3740193.84	savings	unit_link	15754	11657.96	0.06	third_party_transfer	1	0	0	3	0	0	1	0	0	0	0.2	0	none	0	0
CUST00691	Singapore	SGD	0.74	50	freelancer	28	246159	182157.66	0.15	923096	683091.04	0	0	3138527	2322509.98	savings	endowment	41167	30463.58	0.17	third_party_transfer	0	0	1	5	0	0	0	0	0	0	0.04	0	none	0	0
CUST00692	Indonesia	IDR	6.5e-05	40	freelancer	12	804708323	52306.04	0.23	2776243714	180455.84	0	0	11628035267	755822.29	business_income	unit_link	104213995	6773.91	0.13	credit_card	0	0	0	5	0	0	0	0	0	0	0.73	0	none	0	0
CUST00693	United Arab Emirates	AED	0.27	46	entrepreneur	23	416226	112381.02	0.19	1660741	448400.07	0	0	7487905	2021734.35	salary	unit_link	89746	24231.42	0.22	cash	0	0	0	5	0	0	0	0	0	0	0.29	0	none	0	0
CUST00694	Indonesia	IDR	6.5e-05	35	employee	7	943213112	61308.85	0.3	2829639335	183926.56	0	0	20750688463	1348794.75	inheritance	life	50881230	3307.28	0.05	cash	0	0	0	4	1	0	0	0	0	0	0.45	0	placement	0	0
CUST00695	Malaysia	MYR	0.21	35	freelancer	6	53401	11214.21	0.17	90781	19064.01	0	0	304385	63920.85	grant	endowment	10620	2230.2	0.2	cash	0	0	0	4	0	0	0	0	0	0	0.86	0	layering	0	0
CUST00696	United Arab Emirates	AED	0.27	24	freelancer	3	181389	48975.03	0.08	14511	3917.97	0	0	1102845	297768.15	grant	endowment	20241	5465.07	0.11	third_party_transfer	0	0	0	1	0	0	0	0	0	0	0.08	0	none	0	0
CUST00697	United States	USD	1.0	37	employee	9	66767	66767.0	0.17	136204	136204.0	0	0	803874	803874.0	business_income	life	17068	17068.0	0.26	credit_card	0	0	0	3	0	0	0	0	0	0	0.12	0	none	0	0
CUST00698	United States	USD	1.0	47	freelancer	24	50338	50338.0	0.22	243635	243635.0	0	0	344311	344311.0	business_income	health	10554	10554.0	0.21	credit_card	0	0	1	2	0	0	1	0	0	0	0.71	0	none	0	0
CUST00699	United States	USD	1.0	56	employee	32	145882	145882.0	0.22	994915	994915.0	0	0	3620791	3620791.0	grant	endowment	29101	29101.0	0.2	cash	0	0	1	4	0	0	0	0	0	0	0.05	1	placement	0	0
CUST00700	Indonesia	IDR	6.5e-05	25	employee	1	493229155	32059.9	0.28	138104163	8976.77	0	0	6550083178	425755.41	business_income	life	135367623	8798.9	0.27	third_party_transfer	1	0	0	1	0	0	0	0	0	0	0.99	1	none	0	0
CUST00701	Malaysia	MYR	0.21	34	entrepreneur	12	145641	30584.61	0.29	380123	79825.83	0	0	1108328	232748.88	grant	unit_link	35410	7436.1	0.24	bank_transfer	0	0	0	4	0	0	0	0	0	0	0.51	0	placement	0	0
CUST00702	Malaysia	MYR	0.21	42	freelancer	13	358616	75309.36	0.1	609647	128025.87	0	0	3478575	730500.75	gift	life	100990	21207.9	0.28	credit_card	0	0	0	2	0	0	1	1	0	0	0.11	0	none	0	0
CUST00703	Malaysia	MYR	0.21	33	entrepreneur	12	240836	50575.56	0.21	404604	84966.84	0	0	886276	186117.96	gift	life	31061	6522.81	0.13	cash	0	0	0	5	0	0	0	0	0	0	0.37	0	none	0	0
CUST00704	Indonesia	IDR	6.5e-05	35	director	8	707539857	45990.09	0.24	1698095656	110376.22	0	0	13726273225	892207.76	salary	unit_link	208914372	13579.43	0.3	cash	0	0	0	1	0	0	1	0	0	0	0.6	0	integration	0	0
CUST00705	United States	USD	1.0	46	freelancer	23	117044	117044.0	0.09	221213	221213.0	1	13694148	15319889	15319889.0	grant	life	34392	34392.0	0.29	cash	1	0	0	1	0	0	0	0	1	0	0.61	0	none	0	1
CUST00706	United Kingdom	GBP	1.27	50	employee	23	158962	201881.74	0.21	834550	1059878.5	0	0	2265208	2876814.16	grant	unit_link	25586	32494.22	0.16	bank_transfer	0	0	1	5	0	0	1	0	0	0	0.76	0	none	0	0
CUST00707	Indonesia	IDR	6.5e-05	41	freelancer	17	980192165	63712.49	0.24	3763937913	244655.96	0	0	7684706573	499505.93	inheritance	health	36049943	2343.25	0.04	credit_card	0	0	0	2	0	1	0	0	0	0	0.38	1	layering	0	0
CUST00708	United States	USD	1.0	24	employee	1	220135	220135.0	0.2	44027	44027.0	1	16730260	19415907	19415907.0	inheritance	endowment	12678	12678.0	0.06	cash	0	0	1	1	0	0	0	0	0	0	0.23	0	none	0	0
CUST00709	United States	USD	1.0	43	entrepreneur	17	93504	93504.0	0.1	168307	168307.0	1	2431104	3440947	3440947.0	grant	endowment	22852	22852.0	0.24	cash	0	0	0	2	1	1	0	0	0	0	0.44	0	none	0	0
CUST00710	Indonesia	IDR	6.5e-05	26	entrepreneur	1	210291466	13668.95	0.29	60984525	3963.99	0	0	691858923	44970.83	business_income	unit_link	41558377	2701.29	0.2	bank_transfer	0	0	1	2	0	0	1	0	0	0	0.59	0	none	0	0
CUST00711	Singapore	SGD	0.74	37	entrepreneur	8	50490	37362.6	0.16	96940	71735.6	0	0	904780	669537.2	grant	unit_link	5413	4005.62	0.11	third_party_transfer	0	0	1	2	0	0	0	0	0	0	0.61	0	none	0	0
CUST00712	Malaysia	MYR	0.21	40	employee	10	265023	55654.83	0.29	1152850	242098.5	0	0	3273034	687337.14	gift	health	25474	5349.54	0.1	third_party_transfer	0	0	0	4	0	0	0	0	0	0	0.17	0	integration	0	0
CUST00713	United Arab Emirates	AED	0.27	49	employee	20	369498	99764.46	0.23	2039628	550699.56	0	0	4256616	1149286.32	gift	endowment	92185	24889.95	0.25	third_party_transfer	0	0	1	1	0	0	1	0	0	0	0.76	0	none	0	0
CUST00714	Malaysia	MYR	0.21	60	consultant	31	110110	23123.1	0.19	732231	153768.51	0	0	1503001	315630.21	gift	endowment	10134	2128.14	0.09	cash	0	0	0	4	0	0	0	0	0	0	0.56	0	layering	0	0
CUST00715	United Arab Emirates	AED	0.27	26	employee	1	121647	32844.69	0.23	27978	7554.06	0	0	1001154	270311.58	business_income	life	7703	2079.81	0.06	cash	0	0	1	4	0	0	0	0	0	0	0.4	0	layering	0	0
CUST00716	United Arab Emirates	AED	0.27	47	employee	21	251346	67863.42	0.17	940034	253809.18	0	0	5966954	1611077.58	salary	endowment	10040	2710.8	0.04	credit_card	1	0	0	2	0	0	0	0	0	0	0.76	0	none	0	0
CUST00717	Malaysia	MYR	0.21	44	freelancer	15	286178	60097.38	0.21	1141850	239788.5	0	0	4862164	1021054.44	grant	endowment	61530	12921.3	0.22	credit_card	0	0	1	2	1	0	0	0	0	0	0.48	1	none	0	0
CUST00718	Malaysia	MYR	0.21	62	entrepreneur	41	395675	83091.75	0.22	3220794	676366.74	1	15035650	22213194	4664770.74	grant	health	74989	15747.69	0.19	credit_card	0	0	1	5	0	0	0	0	1	0	0.58	0	none	0	1
CUST00719	United States	USD	1.0	32	employee	11	60600	60600.0	0.24	101808	101808.0	0	0	950208	950208.0	savings	unit_link	7959	7959.0	0.13	third_party_transfer	0	0	1	2	0	0	0	0	0	0	0.83	0	none	0	0
CUST00720	Malaysia	MYR	0.21	41	freelancer	12	309551	65005.71	0.21	1040091	218419.11	0	0	5373805	1128499.05	grant	life	56989	11967.69	0.18	bank_transfer	0	0	0	5	0	0	0	0	0	0	0.78	0	none	0	0
CUST00721	Malaysia	MYR	0.21	31	entrepreneur	6	139851	29368.71	0.28	234949	49339.29	0	0	2192863	460501.23	salary	endowment	30169	6335.49	0.22	bank_transfer	0	0	1	1	0	0	0	0	0	0	0.07	0	none	0	0
CUST00722	United States	USD	1.0	48	entrepreneur	19	139272	139272.0	0.21	672683	672683.0	0	0	2761763	2761763.0	inheritance	unit_link	9439	9439.0	0.07	credit_card	0	0	0	4	0	0	0	0	0	0	0.18	0	integration	0	0
CUST00723	Indonesia	IDR	6.5e-05	50	consultant	20	516497850	33572.36	0.1	1291244625	83930.9	0	0	2840738175	184647.98	business_income	endowment	118782319	7720.85	0.23	third_party_transfer	0	0	0	5	0	0	0	0	0	0	0.11	0	none	0	0
CUST00724	United States	USD	1.0	32	employee	10	106841	106841.0	0.07	52352	52352.0	0	0	586557	586557.0	inheritance	unit_link	10416	10416.0	0.1	third_party_transfer	0	0	0	4	1	0	0	0	0	0	0.67	0	none	0	0
CUST00725	Indonesia	IDR	6.5e-05	22	employee	1	631404057	41041.26	0.24	151536973	9849.9	1	12628081140	25407699253	1651500.45	salary	unit_link	152154491	9890.04	0.24	bank_transfer	0	0	0	4	0	0	0	0	0	0	0.6	0	placement	0	0
CUST00726	Malaysia	MYR	0.21	53	consultant	25	206700	43407.0	0.2	1157520	243079.2	0	0	3637920	763963.2	inheritance	unit_link	25593	5374.53	0.12	cash	0	0	0	4	0	0	0	0	0	0	0.38	0	layering	0	0
CUST00727	Indonesia	IDR	6.5e-05	44	employee	18	275129249	17883.4	0.05	261372786	16989.23	0	0	4113182272	267356.85	business_income	life	61370784	3989.1	0.22	cash	0	0	1	2	0	0	0	0	0	0	0.37	1	none	0	0
CUST00728	United Kingdom	GBP	1.27	65	consultant	37	159981	203175.87	0.15	959885	1219053.95	0	0	2239733	2844460.91	grant	life	3339	4240.53	0.02	cash	0	0	0	1	0	0	0	0	0	0	0.97	0	none	0	0
CUST00729	United States	USD	1.0	42	consultant	14	91225	91225.0	0.2	310165	310165.0	0	0	1587315	1587315.0	salary	endowment	20706	20706.0	0.23	third_party_transfer	0	0	1	1	0	0	0	0	0	0	0.73	0	integration	0	0
CUST00730	Malaysia	MYR	0.21	60	director	36	105057	22061.97	0.27	992788	208485.48	0	0	3093928	649724.88	grant	life	25188	5289.48	0.24	credit_card	0	0	0	4	0	0	0	0	0	0	0.8	0	placement	0	0
CUST00731	Malaysia	MYR	0.21	65	director	36	274739	57695.19	0.09	989060	207702.6	0	0	5384884	1130825.64	gift	unit_link	78963	16582.23	0.29	credit_card	0	1	0	2	0	0	0	0	0	0	0.17	0	placement	0	0
CUST00732	United States	USD	1.0	27	freelancer	5	144004	144004.0	0.3	86402	86402.0	0	0	374410	374410.0	inheritance	health	9340	9340.0	0.06	credit_card	0	0	0	3	0	0	0	0	0	0	0.67	0	layering	0	0
CUST00733	United States	USD	1.0	29	consultant	6	170127	170127.0	0.21	142906	142906.0	0	0	3035065	3035065.0	grant	unit_link	7710	7710.0	0.05	bank_transfer	0	0	1	3	0	0	0	0	0	0	0.38	0	none	0	0
CUST00734	United States	USD	1.0	46	employee	17	144547	144547.0	0.25	758871	758871.0	0	0	2059794	2059794.0	inheritance	life	13377	13377.0	0.09	bank_transfer	0	0	1	3	0	0	0	0	0	0	0.74	0	none	0	0
CUST00735	Singapore	SGD	0.74	29	employee	1	126400	93536.0	0.08	40448	29931.52	0	0	1557248	1152363.52	savings	health	36294	26857.56	0.29	bank_transfer	1	0	0	5	0	0	0	0	0	0	0.54	0	none	0	0
CUST00736	United Arab Emirates	AED	0.27	49	director	23	454373	122680.71	0.14	1526693	412207.11	0	0	4252931	1148291.37	savings	unit_link	75212	20307.24	0.17	bank_transfer	0	1	0	4	0	0	0	0	0	0	0.01	0	integration	0	0
CUST00737	United Arab Emirates	AED	0.27	42	entrepreneur	19	477896	129031.92	0.29	2356027	636127.29	0	0	6657091	1797414.57	gift	health	76440	20638.8	0.16	credit_card	0	1	0	1	0	0	0	0	0	0	0.6	0	integration	0	0
CUST00738	Malaysia	MYR	0.21	54	freelancer	32	173367	36407.07	0.3	1508292	316741.32	0	0	4975632	1044882.72	business_income	health	26684	5603.64	0.15	third_party_transfer	0	0	0	1	0	0	0	0	0	0	0.98	0	layering	0	0
CUST00739	Malaysia	MYR	0.21	31	freelancer	7	148002	31080.42	0.23	204242	42890.82	0	0	648248	136132.08	business_income	endowment	41216	8655.36	0.28	cash	0	0	0	2	0	0	0	0	0	0	0.99	0	integration	0	0
CUST00740	United Kingdom	GBP	1.27	47	employee	21	135739	172388.53	0.22	656976	834359.52	0	0	2421583	3075410.41	gift	health	31513	40021.51	0.23	cash	0	0	0	2	0	0	0	0	0	0	0.7	0	placement	0	0
CUST00741	United Kingdom	GBP	1.27	47	consultant	25	59314	75328.78	0.13	169638	215440.26	1	5575516	5923096	7522331.92	grant	endowment	15299	19429.73	0.26	credit_card	0	0	1	5	0	1	0	0	0	0	0.14	0	none	0	0
CUST00742	United States	USD	1.0	52	consultant	27	67964	67964.0	0.1	183502	183502.0	0	0	727214	727214.0	salary	life	15352	15352.0	0.23	credit_card	0	0	1	4	0	0	0	0	0	0	0.95	0	placement	0	0
CUST00743	United Arab Emirates	AED	0.27	65	employee	42	79533	21473.91	0.07	222692	60126.84	0	0	1574753	425183.31	salary	health	5590	1509.3	0.07	third_party_transfer	0	0	1	2	0	0	0	0	0	0	0.63	0	none	0	0
CUST00744	United Arab Emirates	AED	0.27	37	entrepreneur	16	112286	30317.22	0.11	148217	40018.59	0	0	2057079	555411.33	savings	endowment	11762	3175.74	0.1	bank_transfer	1	0	0	4	0	0	0	0	0	0	0.86	0	none	0	0
CUST00745	United States	USD	1.0	46	employee	21	195762	195762.0	0.21	863310	863310.0	0	0	3408216	3408216.0	salary	life	4551	4551.0	0.02	third_party_transfer	0	0	1	5	0	0	0	0	0	0	0.22	0	placement	0	0
CUST00746	United Kingdom	GBP	1.27	58	freelancer	28	150697	191385.19	0.12	596760	757885.2	0	0	1350245	1714811.15	business_income	endowment	36531	46394.37	0.24	third_party_transfer	0	0	1	3	0	0	0	0	0	0	0.57	0	none	0	0
CUST00747	Indonesia	IDR	6.5e-05	42	director	20	1214296228	78929.25	0.1	2064303587	134179.73	0	0	4492896043	292038.24	savings	endowment	158177909	10281.56	0.13	bank_transfer	0	0	0	5	0	0	0	0	0	0	0.84	0	none	0	0
CUST00748	United Kingdom	GBP	1.27	63	entrepreneur	41	79385	100818.95	0.29	874822	1111023.94	0	0	1271747	1615118.69	savings	life	5603	7115.81	0.07	third_party_transfer	0	0	0	3	0	0	0	0	0	0	0.12	0	none	0	0
CUST00749	Singapore	SGD	0.74	58	employee	34	201085	148802.9	0.09	597222	441944.28	0	0	4417837	3269199.38	salary	life	18478	13673.72	0.09	cash	0	0	0	3	0	1	0	0	0	0	0.97	0	none	0	0
CUST00750	Singapore	SGD	0.74	49	entrepreneur	28	95100	70374.0	0.13	296712	219566.88	1	8178600	9521412	7045844.88	gift	endowment	19454	14395.96	0.2	cash	0	0	0	5	0	0	0	0	0	0	0.91	0	none	0	0
CUST00751	Malaysia	MYR	0.21	60	entrepreneur	31	297696	62516.16	0.1	1041936	218806.56	0	0	2530416	531387.36	salary	life	61186	12849.06	0.21	credit_card	0	0	0	2	0	0	0	0	0	0	0.3	0	none	0	0
CUST00752	Singapore	SGD	0.74	30	director	1	174722	129294.28	0.1	87361	64647.14	0	0	2358747	1745472.78	grant	endowment	17065	12628.1	0.1	bank_transfer	0	0	1	5	0	0	0	0	1	0	0.25	0	none	0	1
CUST00753	United Arab Emirates	AED	0.27	63	entrepreneur	40	259746	70131.42	0.16	1579255	426398.85	0	0	4176715	1127713.05	grant	unit_link	54397	14687.19	0.21	bank_transfer	0	0	0	3	0	0	0	0	0	0	1.0	0	integration	0	0
CUST00754	United States	USD	1.0	63	entrepreneur	39	217287	217287.0	0.14	1155966	1155966.0	1	22597848	27664980	27664980.0	gift	health	41150	41150.0	0.19	third_party_transfer	0	0	1	4	0	0	0	0	0	0	0.03	0	none	0	0
CUST00755	United Kingdom	GBP	1.27	37	employee	15	95811	121679.97	0.08	91978	116812.06	1	3257574	5169961	6565850.47	inheritance	health	12828	16291.56	0.13	cash	1	0	0	3	0	0	0	0	0	0	0.15	0	none	0	0
CUST00756	Singapore	SGD	0.74	39	employee	18	55676	41200.24	0.14	109124	80751.76	0	0	610208	451553.92	salary	unit_link	7016	5191.84	0.13	cash	0	0	0	5	0	0	0	0	0	0	0.82	0	placement	0	0
CUST00757	United Arab Emirates	AED	0.27	28	employee	1	232924	62889.48	0.23	160717	43393.59	0	0	2722881	735177.87	savings	life	40629	10969.83	0.17	credit_card	0	0	0	3	0	0	0	1	0	0	0.95	0	none	0	0
CUST00758	United Arab Emirates	AED	0.27	33	freelancer	7	472620	127607.4	0.24	907430	245006.1	0	0	9887210	2669546.7	gift	unit_link	82457	22263.39	0.17	cash	0	1	1	1	0	0	0	0	0	0	0.69	0	none	0	0
CUST00759	United States	USD	1.0	31	consultant	8	67400	67400.0	0.14	56616	56616.0	0	0	730616	730616.0	grant	unit_link	2345	2345.0	0.03	third_party_transfer	0	1	0	4	0	1	1	0	0	0	0.18	0	none	0	0
CUST00760	Malaysia	MYR	0.21	51	entrepreneur	22	180376	37878.96	0.12	562773	118182.33	0	0	3268413	686366.73	grant	health	29900	6279.0	0.17	bank_transfer	0	0	0	3	0	1	0	0	0	0	0.41	0	none	0	0
CUST00761	Malaysia	MYR	0.21	27	employee	5	70209	14743.89	0.23	32296	6782.16	0	0	313132	65757.72	salary	health	4650	976.5	0.07	third_party_transfer	0	0	0	1	0	0	1	0	0	0	0.96	0	none	0	0
CUST00762	United Arab Emirates	AED	0.27	65	director	36	433148	116949.96	0.08	1386073	374239.71	0	0	8749589	2362389.03	grant	life	71124	19203.48	0.16	third_party_transfer	0	0	0	1	0	0	0	0	0	0	0.62	0	none	0	0
CUST00763	United States	USD	1.0	22	director	1	214180	214180.0	0.18	38552	38552.0	1	13707520	15673692	15673692.0	grant	life	63907	63907.0	0.3	third_party_transfer	0	0	0	2	1	0	0	0	0	0	0.67	0	placement	0	0
CUST00764	United Kingdom	GBP	1.27	36	freelancer	13	44692	56758.84	0.14	68825	87407.75	0	0	336977	427960.79	salary	endowment	7321	9297.67	0.16	third_party_transfer	0	0	0	2	0	0	0	0	0	0	0.37	0	none	0	0
CUST00765	Indonesia	IDR	6.5e-05	43	consultant	19	1217750561	79153.79	0.26	5699072625	370439.72	0	0	11787825430	766208.65	gift	health	123258430	8011.8	0.1	credit_card	0	0	0	1	1	0	1	0	0	0	0.74	0	placement	0	0
CUST00766	United Kingdom	GBP	1.27	47	freelancer	23	104906	133230.62	0.28	646220	820699.4	1	10700412	13234940	16808373.8	salary	endowment	26352	33467.04	0.25	bank_transfer	0	0	0	3	1	0	0	0	0	0	0.01	0	none	0	0
CUST00767	United Arab Emirates	AED	0.27	43	employee	18	235541	63596.07	0.08	339179	91578.33	1	15074624	17062590	4606899.3	salary	endowment	31227	8431.29	0.13	third_party_transfer	0	0	1	2	0	0	0	0	0	0	0.08	0	integration	0	0
CUST00768	United Kingdom	GBP	1.27	31	consultant	4	57464	72979.28	0.28	96539	122604.53	0	0	211467	268563.09	grant	unit_link	3653	4639.31	0.06	third_party_transfer	1	0	0	4	0	1	0	0	0	0	0.37	0	none	0	0
CUST00769	Malaysia	MYR	0.21	49	freelancer	26	311242	65360.82	0.25	1867452	392164.92	0	0	3423662	718969.02	grant	unit_link	92446	19413.66	0.3	credit_card	0	0	0	3	0	0	0	0	0	0	0.75	0	placement	0	0
CUST00770	Indonesia	IDR	6.5e-05	44	consultant	20	297652663	19347.42	0.1	565540059	36760.1	0	0	1458498048	94802.37	gift	life	17094339	1111.13	0.06	credit_card	0	0	0	2	0	0	0	0	0	0	0.95	0	none	0	0
CUST00771	United States	USD	1.0	39	entrepreneur	17	140387	140387.0	0.17	334121	334121.0	0	0	2720700	2720700.0	grant	health	34247	34247.0	0.24	third_party_transfer	0	0	0	5	0	0	0	0	0	0	0.73	0	placement	0	0
CUST00772	United States	USD	1.0	46	director	23	58765	58765.0	0.29	357878	357878.0	0	0	475408	475408.0	inheritance	life	3250	3250.0	0.06	credit_card	0	0	0	1	0	0	0	0	0	0	0.68	0	none	0	0
CUST00773	Malaysia	MYR	0.21	49	freelancer	19	34209	7183.89	0.16	131362	27586.02	0	0	507661	106608.81	salary	unit_link	3387	711.27	0.1	credit_card	0	0	0	5	0	0	0	0	0	0	0.19	0	placement	0	0
CUST00774	Malaysia	MYR	0.21	29	employee	4	397502	83475.42	0.11	174900	36729.0	0	0	6137430	1288860.3	grant	unit_link	30033	6306.93	0.08	credit_card	0	0	1	5	0	0	1	0	0	0	0.63	0	integration	0	0
CUST00775	Singapore	SGD	0.74	36	freelancer	14	64680	47863.2	0.15	106722	78974.28	0	0	753522	557606.28	business_income	life	19230	14230.2	0.3	credit_card	0	0	1	1	0	0	0	0	0	0	0.86	0	none	0	0
CUST00776	United Arab Emirates	AED	0.27	48	freelancer	19	210665	56879.55	0.23	1114417	300892.59	0	0	3010402	812808.54	gift	life	17294	4669.38	0.08	third_party_transfer	0	0	1	1	0	0	0	0	0	0	0.3	0	none	0	0
CUST00777	Malaysia	MYR	0.21	45	entrepreneur	20	214037	44947.77	0.23	984570	206759.7	0	0	2910903	611289.63	salary	life	23448	4924.08	0.11	bank_transfer	1	0	1	1	0	0	0	0	0	0	0.66	0	none	0	0
CUST00778	Malaysia	MYR	0.21	35	freelancer	10	277494	58273.74	0.12	332992	69928.32	0	0	1720462	361297.02	inheritance	health	39030	8196.3	0.14	cash	1	0	1	3	0	1	0	0	0	0	0.11	0	layering	0	0
CUST00779	United States	USD	1.0	22	director	1	231972	231972.0	0.27	62632	62632.0	0	0	2846296	2846296.0	inheritance	health	28059	28059.0	0.12	credit_card	1	0	1	3	0	0	0	0	0	0	0.21	0	none	0	0
CUST00780	United Arab Emirates	AED	0.27	27	entrepreneur	5	118411	31970.97	0.21	49732	13427.64	0	0	641787	173282.49	grant	unit_link	3728	1006.56	0.03	third_party_transfer	0	0	1	1	0	0	0	0	0	0	0.07	0	none	0	0
CUST00781	United Kingdom	GBP	1.27	61	employee	35	104030	132118.1	0.23	861368	1093937.36	0	0	1693608	2150882.16	business_income	unit_link	17622	22379.94	0.17	credit_card	1	0	0	4	0	0	0	0	0	0	0.55	0	layering	0	0
CUST00782	Malaysia	MYR	0.21	57	freelancer	31	221895	46597.95	0.16	1136102	238581.42	0	0	2245577	471571.17	salary	endowment	61029	12816.09	0.28	bank_transfer	1	0	1	2	0	0	0	0	0	0	0.6	0	integration	0	0
CUST00783	United States	USD	1.0	30	entrepreneur	5	41913	41913.0	0.29	60773	60773.0	0	0	186512	186512.0	grant	endowment	10160	10160.0	0.24	third_party_transfer	0	0	0	5	0	0	0	0	0	0	0.87	0	none	0	0
CUST00784	Indonesia	IDR	6.5e-05	32	entrepreneur	4	1153666969	74988.35	0.15	1211350317	78737.77	0	0	17362687883	1128574.71	inheritance	unit_link	152558276	9916.29	0.13	bank_transfer	0	0	0	2	0	0	0	0	0	0	0.57	0	none	0	0
CUST00785	United Kingdom	GBP	1.27	22	consultant	1	144391	183376.57	0.18	25990	33007.3	1	16171792	18796820	23871961.4	business_income	health	13352	16957.04	0.09	bank_transfer	0	0	1	2	0	0	0	0	0	0	0.22	0	none	0	0
CUST00786	United Kingdom	GBP	1.27	37	employee	12	35247	44763.69	0.21	88822	112803.94	0	0	441292	560440.84	inheritance	unit_link	9856	12517.12	0.28	credit_card	0	0	1	5	0	0	0	0	0	0	0.12	0	none	0	0
CUST00787	United States	USD	1.0	44	freelancer	14	126760	126760.0	0.13	313097	313097.0	0	0	2721537	2721537.0	business_income	health	11906	11906.0	0.09	cash	0	1	0	1	0	0	0	0	0	0	0.63	0	none	0	0
CUST00788	Indonesia	IDR	6.5e-05	44	employee	20	660629285	42940.9	0.09	1129676077	73428.95	0	0	2450934647	159310.75	savings	endowment	112616704	7320.09	0.17	cash	1	0	0	5	0	1	1	0	0	0	0.55	0	placement	0	0
CUST00789	United Arab Emirates	AED	0.27	36	freelancer	10	190925	51549.75	0.1	210017	56704.59	0	0	2882967	778401.09	business_income	health	12138	3277.26	0.06	credit_card	0	0	1	4	1	0	0	0	0	0	0.09	0	integration	0	0
CUST00790	Singapore	SGD	0.74	51	entrepreneur	28	243804	180414.96	0.27	1711504	1266512.96	0	0	3661936	2709832.64	grant	health	43763	32384.62	0.18	bank_transfer	0	0	0	3	0	0	0	0	0	0	0.16	0	none	0	0
CUST00791	Singapore	SGD	0.74	47	freelancer	17	79243	58639.82	0.07	122034	90305.16	0	0	439006	324864.44	gift	life	11045	8173.3	0.14	credit_card	0	0	0	1	0	0	0	0	0	0	0.6	0	integration	0	0
CUST00792	United Arab Emirates	AED	0.27	46	consultant	25	107690	29076.3	0.26	587987	158756.49	0	0	911057	245985.39	salary	unit_link	6139	1657.53	0.06	bank_transfer	0	0	0	1	0	0	0	0	0	0	0.96	0	none	0	0
CUST00793	Indonesia	IDR	6.5e-05	56	entrepreneur	30	242461362	15759.99	0.1	751630222	48855.96	0	0	4873473376	316775.77	gift	health	56422720	3667.48	0.23	cash	0	0	0	4	0	0	0	0	0	0	0.15	0	integration	0	0
CUST00794	Indonesia	IDR	6.5e-05	56	employee	31	1407515614	91488.51	0.19	8290266966	538867.35	1	30965343508	43478157316	2826080.23	inheritance	endowment	68670276	4463.57	0.05	credit_card	1	0	0	1	0	0	0	0	0	0	0.91	0	none	0	0
CUST00795	Indonesia	IDR	6.5e-05	36	freelancer	9	887603819	57694.25	0.09	878727780	57117.31	0	0	10642369789	691754.04	grant	life	73890914	4802.91	0.08	third_party_transfer	0	0	0	2	0	1	0	0	0	0	0.99	0	none	0	0
CUST00796	Singapore	SGD	0.74	28	employee	3	123666	91512.84	0.07	25969	19217.06	0	0	1509961	1117371.14	salary	unit_link	6571	4862.54	0.05	credit_card	0	0	0	4	0	0	0	0	0	0	0.53	0	none	0	0
CUST00797	United Kingdom	GBP	1.27	33	consultant	6	64379	81761.33	0.27	139058	176603.66	0	0	847227	1075978.29	inheritance	life	12549	15937.23	0.19	cash	0	0	0	4	0	0	0	0	0	0	0.66	0	none	0	0
CUST00798	Malaysia	MYR	0.21	26	freelancer	5	107931	22665.51	0.24	25903	5439.63	0	0	673489	141432.69	gift	endowment	11836	2485.56	0.11	bank_transfer	0	0	0	1	1	0	0	0	0	0	0.58	0	none	0	0
CUST00799	United States	USD	1.0	39	consultant	16	53710	53710.0	0.13	97752	97752.0	0	0	420012	420012.0	gift	health	3809	3809.0	0.07	third_party_transfer	0	0	0	4	0	0	0	0	0	0	0.48	0	none	0	0
CUST00800	United Arab Emirates	AED	0.27	60	freelancer	34	122467	33066.09	0.25	1071586	289328.22	0	0	2173789	586923.03	savings	endowment	15589	4209.03	0.13	credit_card	0	0	0	4	0	0	0	0	0	0	0.08	0	layering	0	0
CUST00801	United States	USD	1.0	48	consultant	19	181486	181486.0	0.24	1001802	1001802.0	1	20870890	23506066	23506066.0	business_income	life	39358	39358.0	0.22	credit_card	0	1	0	1	0	0	0	0	0	0	0.36	0	placement	0	0
CUST00802	United Arab Emirates	AED	0.27	30	consultant	8	81235	21933.45	0.28	113729	30706.83	0	0	1169784	315841.68	business_income	endowment	20930	5651.1	0.26	credit_card	0	0	0	5	0	0	0	0	0	0	0.97	0	none	0	0
CUST00803	United Arab Emirates	AED	0.27	37	entrepreneur	13	484017	130684.59	0.11	638902	172503.54	1	55661955	59204959	15985338.93	grant	endowment	25568	6903.36	0.05	bank_transfer	0	0	0	4	0	0	0	0	0	0	0.37	0	none	0	0
CUST00804	United States	USD	1.0	28	entrepreneur	1	49338	49338.0	0.17	25162	25162.0	0	0	370528	370528.0	inheritance	life	1403	1403.0	0.03	credit_card	0	0	0	1	1	0	0	0	0	0	0.01	0	none	0	0
CUST00805	United Arab Emirates	AED	0.27	31	freelancer	8	296292	79998.84	0.24	426660	115198.2	0	0	5759916	1555177.32	inheritance	endowment	63879	17247.33	0.22	cash	0	0	0	4	0	0	0	0	0	0	0.78	0	none	0	0
CUST00806	United States	USD	1.0	22	director	1	59167	59167.0	0.09	5325	5325.0	0	0	182826	182826.0	business_income	unit_link	11192	11192.0	0.19	bank_transfer	0	0	0	4	0	0	0	0	0	0	0.83	0	none	0	0
CUST00807	United States	USD	1.0	51	entrepreneur	22	216491	216491.0	0.26	1463479	1463479.0	0	0	5793299	5793299.0	grant	endowment	34752	34752.0	0.16	credit_card	0	0	0	3	0	0	0	0	0	0	0.97	0	integration	0	0
CUST00808	United Kingdom	GBP	1.27	46	director	23	80538	102283.26	0.15	253694	322191.38	0	0	495308	629041.16	business_income	life	6547	8314.69	0.08	third_party_transfer	0	0	1	4	0	0	0	0	0	0	0.31	0	placement	0	0
CUST00809	United States	USD	1.0	47	consultant	20	73207	73207.0	0.06	96633	96633.0	0	0	1048324	1048324.0	business_income	life	14719	14719.0	0.2	bank_transfer	0	0	0	1	0	0	0	0	0	0	0.36	0	none	0	0
CUST00810	Malaysia	MYR	0.21	23	employee	1	177957	37370.97	0.09	16016	3363.36	0	0	905801	190218.21	savings	health	6813	1430.73	0.04	credit_card	0	0	0	5	0	0	0	0	0	0	0.2	0	layering	0	0
CUST00811	Indonesia	IDR	6.5e-05	37	employee	12	242620617	15770.34	0.29	844319747	54880.78	0	0	5696732087	370287.59	gift	life	7900909	513.56	0.03	cash	0	0	0	1	0	0	0	0	0	0	0.94	0	none	0	0
CUST00812	Indonesia	IDR	6.5e-05	44	consultant	19	914991378	59474.44	0.18	3129270512	203402.58	0	0	14109167048	917095.86	grant	unit_link	210920002	13709.8	0.23	bank_transfer	0	0	0	3	0	0	0	0	0	0	0.41	0	none	0	0
CUST00813	United States	USD	1.0	54	freelancer	32	161642	161642.0	0.25	1171904	1171904.0	0	0	2141756	2141756.0	gift	life	4304	4304.0	0.03	cash	1	0	1	2	0	0	0	0	0	0	0.15	0	integration	0	0
CUST00814	United Arab Emirates	AED	0.27	27	director	5	426681	115203.87	0.11	93869	25344.63	1	20054007	22707962	6131149.74	business_income	health	100385	27103.95	0.24	third_party_transfer	0	0	0	2	0	1	0	0	0	0	0.34	0	placement	0	0
CUST00815	Malaysia	MYR	0.21	61	director	34	50978	10705.38	0.27	495506	104056.26	0	0	1209198	253931.58	savings	life	4432	930.72	0.09	credit_card	0	0	0	5	0	0	0	0	0	0	0.63	0	none	0	0
CUST00816	United Arab Emirates	AED	0.27	28	freelancer	7	124775	33689.25	0.24	89838	24256.26	0	0	1462363	394838.01	salary	life	21610	5834.7	0.17	third_party_transfer	0	0	1	3	0	0	0	0	0	0	0.17	0	none	0	0
CUST00817	Malaysia	MYR	0.21	32	freelancer	10	176862	37141.02	0.19	235226	49397.46	0	0	2534432	532230.72	business_income	health	7955	1670.55	0.04	third_party_transfer	0	0	1	3	0	0	1	0	0	0	0.76	0	none	0	0
CUST00818	United Arab Emirates	AED	0.27	63	freelancer	40	114994	31048.38	0.29	1267233	342152.91	0	0	3222131	869975.37	inheritance	endowment	3574	964.98	0.03	credit_card	0	0	0	4	0	0	0	0	0	0	0.37	0	none	0	0
CUST00819	United Kingdom	GBP	1.27	42	employee	16	46886	59545.22	0.22	175353	222698.31	0	0	1019301	1294512.27	grant	life	6846	8694.42	0.15	credit_card	0	0	0	5	0	0	0	0	0	0	0.01	0	none	0	0
CUST00820	Indonesia	IDR	6.5e-05	40	employee	13	399744383	25983.38	0.19	1139271491	74052.65	0	0	2738249023	177986.19	gift	health	32960667	2142.44	0.08	third_party_transfer	1	0	0	4	0	0	0	0	0	0	0.64	1	layering	0	0
CUST00821	United Arab Emirates	AED	0.27	28	freelancer	6	144515	39019.05	0.23	99715	26923.05	0	0	2122925	573189.75	business_income	health	33975	9173.25	0.24	bank_transfer	0	0	0	3	0	0	1	0	0	0	0.34	0	none	0	0
CUST00822	United Kingdom	GBP	1.27	53	freelancer	29	149838	190294.26	0.08	335637	426258.99	0	0	2733045	3470967.15	business_income	unit_link	4602	5844.54	0.03	credit_card	0	0	0	3	0	0	0	0	0	0	0.57	0	none	0	0
CUST00823	United Kingdom	GBP	1.27	46	employee	25	119763	152099.01	0.25	628755	798518.85	0	0	2664726	3384202.02	business_income	endowment	9552	12131.04	0.08	cash	0	0	1	3	0	0	0	0	0	0	0.64	0	none	0	0
CUST00824	Indonesia	IDR	6.5e-05	31	freelancer	9	648207189	42133.47	0.15	583386470	37920.12	0	0	7713665549	501388.26	gift	unit_link	171552731	11150.93	0.26	cash	0	0	0	2	0	0	0	0	0	0	0.83	0	placement	0	0
CUST00825	Indonesia	IDR	6.5e-05	49	freelancer	23	697598592	45343.91	0.09	1506812958	97942.84	0	0	10575594654	687413.65	gift	unit_link	197939178	12866.05	0.28	third_party_transfer	0	0	0	3	0	0	0	0	0	0	0.91	0	layering	0	0
CUST00826	United Kingdom	GBP	1.27	46	director	25	172038	218488.26	0.25	903199	1147062.73	0	0	2279503	2894968.81	grant	unit_link	7188	9128.76	0.04	cash	0	0	0	3	0	0	0	0	0	0	0.01	0	none	0	0
CUST00827	United Arab Emirates	AED	0.27	31	employee	3	215888	58289.76	0.08	103626	27979.02	0	0	3341946	902325.42	grant	endowment	20203	5454.81	0.09	credit_card	0	0	0	4	0	0	0	1	0	0	0.64	0	layering	0	0
CUST00828	United Kingdom	GBP	1.27	28	entrepreneur	7	82310	104533.7	0.24	59263	75264.01	0	0	717743	911533.61	savings	endowment	11329	14387.83	0.14	credit_card	0	0	0	3	0	0	0	0	0	0	0.21	0	none	0	0
CUST00829	Singapore	SGD	0.74	65	director	35	33767	24987.58	0.14	189095	139930.3	0	0	628066	464768.84	inheritance	life	828	612.72	0.02	third_party_transfer	0	0	0	4	0	0	0	0	0	0	0.41	0	none	0	0
CUST00830	Malaysia	MYR	0.21	44	freelancer	15	253267	53186.07	0.18	866173	181896.33	0	0	3905377	820129.17	business_income	endowment	13105	2752.05	0.05	cash	0	0	0	2	0	0	0	0	0	0	0.55	1	placement	0	0
CUST00831	Singapore	SGD	0.74	56	director	29	130024	96217.76	0.12	483689	357929.86	1	13522496	15956545	11807843.3	grant	life	25686	19007.64	0.2	bank_transfer	0	0	0	1	0	0	0	0	0	0	0.09	0	integration	0	0
CUST00832	Indonesia	IDR	6.5e-05	61	director	34	282641017	18371.67	0.17	1729763024	112434.6	0	0	7099942347	461496.25	gift	life	13543190	880.31	0.05	cash	0	0	0	4	0	0	0	0	0	0	0.21	0	none	0	0
CUST00833	United Arab Emirates	AED	0.27	57	freelancer	30	110031	29708.37	0.1	352099	95066.73	0	0	2222626	600109.02	inheritance	endowment	31485	8500.95	0.29	third_party_transfer	1	0	0	1	0	0	0	0	0	0	0.94	0	none	0	0
CUST00834	Singapore	SGD	0.74	54	entrepreneur	29	100152	74112.48	0.27	784190	580300.6	0	0	1785710	1321425.4	gift	life	10623	7861.02	0.11	third_party_transfer	0	0	0	1	0	0	0	0	0	0	0.02	0	none	0	0
CUST00835	Singapore	SGD	0.74	45	freelancer	16	244967	181275.58	0.24	1175841	870122.34	0	0	4115445	3045429.3	savings	unit_link	27883	20633.42	0.11	third_party_transfer	0	0	1	2	0	0	0	0	0	0	0.62	1	integration	0	0
CUST00836	United Arab Emirates	AED	0.27	25	freelancer	1	274973	74242.71	0.08	21997	5939.19	0	0	3871619	1045337.13	business_income	health	80748	21801.96	0.29	credit_card	1	0	0	4	1	0	0	0	0	0	0.23	0	none	0	0
CUST00837	United States	USD	1.0	30	consultant	1	61030	61030.0	0.21	64081	64081.0	0	0	918501	918501.0	grant	unit_link	15626	15626.0	0.26	cash	0	0	0	2	0	0	0	0	0	0	0.09	0	layering	0	0
CUST00838	Indonesia	IDR	6.5e-05	49	director	28	1410539852	91685.09	0.24	8124709547	528106.12	0	0	16587948659	1078216.66	grant	life	39197680	2547.85	0.03	third_party_transfer	0	0	0	1	0	0	0	0	0	0	0.74	0	none	0	0
CUST00839	Singapore	SGD	0.74	51	entrepreneur	25	78904	58388.96	0.11	225665	166992.1	0	0	935801	692492.74	savings	endowment	8138	6022.12	0.1	cash	1	1	0	1	0	0	0	0	0	0	0.27	1	integration	0	1
CUST00840	Singapore	SGD	0.74	62	employee	41	197349	146038.26	0.3	2190573	1621024.02	0	0	3177318	2351215.32	savings	life	10076	7456.24	0.05	credit_card	0	0	0	3	0	0	0	0	0	0	0.26	0	placement	0	0
CUST00841	Singapore	SGD	0.74	27	employee	5	159563	118076.62	0.26	82972	61399.28	0	0	1359476	1006012.24	gift	endowment	20651	15281.74	0.13	bank_transfer	0	0	0	4	1	0	1	0	0	0	0.96	0	none	0	0
CUST00842	Indonesia	IDR	6.5e-05	35	consultant	8	865852617	56280.42	0.27	2337802065	151957.13	0	0	16191443937	1052443.86	business_income	life	213340660	13867.14	0.25	credit_card	0	0	0	5	0	0	0	0	0	0	0.63	0	none	0	0
CUST00843	Indonesia	IDR	6.5e-05	29	consultant	3	804712371	52306.3	0.17	547204412	35568.29	0	0	15836739461	1029388.06	savings	life	17224124	1119.57	0.02	credit_card	0	0	1	5	0	0	0	0	0	0	0.03	0	layering	0	0
CUST00844	Indonesia	IDR	6.5e-05	55	employee	26	387160581	25165.44	0.1	1161481743	75496.31	0	0	6194569296	402647.0	business_income	health	20186850	1312.15	0.05	credit_card	0	1	0	2	0	0	0	0	0	0	0.08	0	none	0	0
CUST00845	United States	USD	1.0	30	consultant	5	101740	101740.0	0.17	86479	86479.0	0	0	493439	493439.0	savings	endowment	11964	11964.0	0.12	third_party_transfer	0	0	0	4	0	0	0	0	0	0	0.51	0	placement	0	0
CUST00846	United Arab Emirates	AED	0.27	34	director	9	140680	37983.6	0.1	126612	34185.24	0	0	1533412	414021.24	salary	health	40702	10989.54	0.29	credit_card	0	0	1	2	0	0	0	0	0	0	0.95	0	integration	0	0
CUST00847	United Arab Emirates	AED	0.27	49	freelancer	21	272160	73483.2	0.2	1306368	352719.36	1	14696640	19268928	5202610.56	savings	endowment	52912	14286.24	0.19	credit_card	0	0	0	5	0	0	0	0	0	0	0.35	0	none	0	0
CUST00848	United States	USD	1.0	26	consultant	1	73843	73843.0	0.27	19937	19937.0	0	0	1349111	1349111.0	gift	health	6709	6709.0	0.09	third_party_transfer	0	0	0	1	0	0	0	0	0	0	0.11	0	none	0	0
CUST00849	Malaysia	MYR	0.21	49	entrepreneur	26	217561	45687.81	0.11	574361	120615.81	0	0	2314849	486118.29	inheritance	health	44370	9317.7	0.2	bank_transfer	0	0	1	1	0	0	0	0	0	0	0.32	0	none	0	0
CUST00850	Indonesia	IDR	6.5e-05	43	employee	19	1059388694	68860.27	0.19	3623109333	235502.11	0	0	16335773661	1061825.29	savings	endowment	287781151	18705.77	0.27	cash	0	0	0	5	0	0	1	0	0	0	0.21	0	placement	0	0
CUST00851	Singapore	SGD	0.74	28	freelancer	1	102888	76137.12	0.23	70992	52534.08	0	0	482544	357082.56	grant	endowment	18592	13758.08	0.18	cash	0	0	0	3	0	0	1	0	0	0	0.2	0	none	0	0
CUST00852	Indonesia	IDR	6.5e-05	53	entrepreneur	25	160484714	10431.51	0.3	1348071597	87624.65	0	0	3755342307	244097.25	gift	health	8568684	556.96	0.05	third_party_transfer	0	0	0	2	0	0	0	0	0	0	0.58	0	none	0	0
CUST00853	Malaysia	MYR	0.21	23	employee	1	32436	6811.56	0.28	9082	1907.22	0	0	365878	76834.38	gift	life	1838	385.98	0.06	cash	0	0	0	1	0	1	0	0	0	0	0.07	0	none	0	0
CUST00854	Indonesia	IDR	6.5e-05	48	freelancer	23	649856953	42240.7	0.13	1943072289	126299.7	1	41590844992	52631914623	3421074.45	inheritance	life	27511576	1788.25	0.04	third_party_transfer	0	0	0	3	0	0	0	0	0	0	0.7	0	integration	0	0
CUST00855	United Arab Emirates	AED	0.27	53	employee	31	492014	132843.78	0.14	1928694	520747.38	0	0	4388764	1184966.28	salary	unit_link	13875	3746.25	0.03	bank_transfer	0	0	0	3	0	0	0	0	0	0	0.86	0	none	0	0
CUST00856	United States	USD	1.0	49	employee	25	74614	74614.0	0.07	125351	125351.0	1	8356768	9452101	9452101.0	savings	life	18543	18543.0	0.25	cash	0	0	0	1	0	0	1	0	0	0	0.11	0	none	0	0
CUST00857	Malaysia	MYR	0.21	26	entrepreneur	1	202663	42559.23	0.22	44585	9362.85	0	0	2881867	605192.07	business_income	endowment	19369	4067.49	0.1	bank_transfer	0	0	0	2	0	0	0	0	0	0	0.32	1	none	0	0
CUST00858	Singapore	SGD	0.74	59	director	32	196960	145750.4	0.16	1071462	792881.88	0	0	2056262	1521633.88	business_income	endowment	32713	24207.62	0.17	third_party_transfer	0	0	1	3	0	0	1	0	0	0	0.32	0	none	0	0
CUST00859	United States	USD	1.0	52	entrepreneur	28	54064	54064.0	0.12	175167	175167.0	1	3081648	3473071	3473071.0	business_income	life	6425	6425.0	0.12	bank_transfer	0	1	0	4	0	0	0	0	0	0	0.06	0	placement	0	0
CUST00860	Indonesia	IDR	6.5e-05	64	entrepreneur	40	1065345300	69247.44	0.25	10387116675	675162.58	0	0	18909879075	1229142.14	inheritance	health	166769963	10840.05	0.16	cash	0	1	0	4	0	0	0	0	0	0	0.66	0	none	0	0
CUST00861	United Kingdom	GBP	1.27	28	director	5	82353	104588.31	0.28	69176	87853.52	0	0	1222118	1552089.86	savings	unit_link	24130	30645.1	0.29	third_party_transfer	0	0	1	2	0	0	0	0	0	0	0.07	0	none	0	0
CUST00862	United Arab Emirates	AED	0.27	32	employee	7	352641	95213.07	0.21	518382	139963.14	1	13400358	19560996	5281468.92	grant	unit_link	93567	25263.09	0.27	bank_transfer	0	0	0	4	0	0	0	0	0	0	0.19	0	none	0	0
CUST00863	Indonesia	IDR	6.5e-05	52	consultant	23	1032038975	67082.53	0.14	3901107325	253571.98	0	0	9061302200	588984.64	salary	endowment	288495928	18752.24	0.28	credit_card	0	0	1	2	0	0	0	0	0	0	0.4	0	integration	0	0
CUST00864	United Arab Emirates	AED	0.27	54	freelancer	28	77869	21024.63	0.16	361312	97554.24	0	0	1373609	370874.43	grant	endowment	3690	996.3	0.05	credit_card	0	0	0	3	0	0	0	0	0	0	0.19	0	integration	0	0
CUST00865	Singapore	SGD	0.74	60	employee	35	168821	124927.54	0.2	1181747	874492.78	0	0	4220525	3123188.5	grant	unit_link	23871	17664.54	0.14	bank_transfer	0	0	1	2	0	0	0	0	0	0	0.12	0	none	0	0
CUST00866	Indonesia	IDR	6.5e-05	58	freelancer	33	572748512	37228.65	0.07	1323049062	85998.19	0	0	4186791622	272141.46	savings	endowment	55630291	3615.97	0.1	third_party_transfer	0	0	0	1	0	0	0	0	0	0	0.22	0	none	0	0
CUST00867	United States	USD	1.0	39	director	11	83924	83924.0	0.09	105744	105744.0	1	3860504	5057260	5057260.0	grant	health	16644	16644.0	0.2	bank_transfer	0	0	1	1	0	0	1	0	0	0	0.19	0	placement	0	0
CUST00868	United States	USD	1.0	61	employee	33	223748	223748.0	0.13	1047140	1047140.0	0	0	3060872	3060872.0	grant	unit_link	15139	15139.0	0.07	credit_card	0	0	0	3	0	0	0	0	0	0	0.9	0	none	0	0
CUST00869	Singapore	SGD	0.74	22	entrepreneur	1	142177	105210.98	0.13	18483	13677.42	0	0	1013722	750154.28	salary	life	41632	30807.68	0.29	cash	0	0	0	4	0	0	0	0	0	0	0.58	0	integration	0	0
CUST00870	United Arab Emirates	AED	0.27	37	entrepreneur	9	107349	28984.23	0.06	77291	20868.57	0	0	291989	78837.03	inheritance	unit_link	19197	5183.19	0.18	credit_card	0	0	0	1	0	1	0	1	0	0	0.1	1	none	0	0
CUST00871	United States	USD	1.0	43	consultant	15	158624	158624.0	0.23	656703	656703.0	0	0	3670559	3670559.0	gift	health	14602	14602.0	0.09	third_party_transfer	1	0	0	1	0	0	1	0	0	0	0.83	0	none	0	0
CUST00872	Malaysia	MYR	0.21	43	director	14	378094	79399.74	0.26	1769479	371590.59	0	0	8197077	1721386.17	grant	life	19499	4094.79	0.05	credit_card	0	0	1	4	0	0	0	0	0	0	0.86	0	none	0	0
CUST00873	United States	USD	1.0	31	consultant	5	160503	160503.0	0.06	57781	57781.0	0	0	3267841	3267841.0	gift	unit_link	36511	36511.0	0.23	bank_transfer	0	0	0	2	0	0	0	0	0	0	0.92	0	placement	0	0
CUST00874	United Arab Emirates	AED	0.27	62	director	40	193615	52276.05	0.27	1934213	522237.51	0	0	5612898	1515482.46	gift	unit_link	52621	14207.67	0.27	cash	0	0	0	3	0	0	0	0	0	0	0.89	0	none	0	0
CUST00875	United Arab Emirates	AED	0.27	59	consultant	32	194833	52604.91	0.13	861161	232513.47	0	0	1445660	390328.2	grant	life	35511	9587.97	0.18	third_party_transfer	0	0	0	4	0	0	0	0	0	0	0.57	0	none	0	0
CUST00876	Malaysia	MYR	0.21	40	director	18	34369	7217.49	0.17	87640	18404.4	0	0	293854	61709.34	business_income	health	5174	1086.54	0.15	credit_card	0	0	1	3	0	0	0	0	0	0	0.49	0	placement	0	0
CUST00877	Indonesia	IDR	6.5e-05	40	employee	19	1034653030	67252.45	0.06	931187727	60527.2	0	0	12312371057	800304.12	salary	endowment	259834244	16889.23	0.25	cash	0	0	1	1	1	0	0	0	0	0	0.43	0	placement	0	0
CUST00878	United States	USD	1.0	22	director	1	95911	95911.0	0.08	7672	7672.0	0	0	1062693	1062693.0	savings	unit_link	23006	23006.0	0.24	bank_transfer	0	0	1	3	0	0	1	0	0	0	0.14	0	placement	0	0
CUST00879	United States	USD	1.0	34	consultant	7	183413	183413.0	0.28	462200	462200.0	0	0	2479743	2479743.0	gift	unit_link	14907	14907.0	0.08	third_party_transfer	0	0	0	4	0	0	0	0	0	0	0.4	1	placement	0	0
CUST00880	Indonesia	IDR	6.5e-05	38	director	13	1342131052	87238.52	0.13	2268201477	147433.1	0	0	29110822517	1892203.46	inheritance	unit_link	190620935	12390.36	0.14	credit_card	1	0	0	3	1	0	0	0	0	0	0.14	0	layering	0	0
CUST00881	United Kingdom	GBP	1.27	34	director	9	104952	133289.04	0.07	66119	83971.13	0	0	2165159	2749751.93	gift	unit_link	29343	37265.61	0.28	third_party_transfer	0	0	1	4	0	1	0	0	0	0	0.1	0	none	0	0
CUST00882	United Kingdom	GBP	1.27	50	freelancer	24	157072	199481.44	0.28	1099504	1396370.08	0	0	3141440	3989628.8	gift	endowment	23740	30149.8	0.15	third_party_transfer	0	0	0	4	0	0	0	0	0	0	0.03	0	placement	0	0
CUST00883	United Kingdom	GBP	1.27	23	director	1	48181	61189.87	0.24	11563	14685.01	0	0	541554	687773.58	savings	health	11575	14700.25	0.24	credit_card	0	0	1	5	0	0	0	0	0	0	0.54	0	none	0	0
CUST00884	United Kingdom	GBP	1.27	40	freelancer	19	127933	162474.91	0.08	153519	194969.13	0	0	409385	519918.95	savings	life	19137	24303.99	0.15	bank_transfer	1	0	0	1	1	0	0	0	0	0	0.27	0	none	0	0
CUST00885	United States	USD	1.0	28	consultant	2	185802	185802.0	0.07	39018	39018.0	0	0	2082840	2082840.0	grant	life	33132	33132.0	0.18	bank_transfer	0	0	0	5	0	0	0	0	0	0	0.67	0	layering	0	0
CUST00886	United States	USD	1.0	25	entrepreneur	1	165335	165335.0	0.09	14880	14880.0	0	0	2825575	2825575.0	grant	health	9621	9621.0	0.06	cash	0	0	0	1	0	0	0	0	0	0	0.81	0	placement	0	0
CUST00887	United Kingdom	GBP	1.27	34	entrepreneur	12	42600	54102.0	0.05	19170	24345.9	0	0	232170	294855.9	business_income	life	7052	8956.04	0.17	third_party_transfer	0	0	1	1	0	0	0	0	0	0	0.83	0	integration	0	0
CUST00888	United Arab Emirates	AED	0.27	47	director	26	113864	30743.28	0.12	300600	81162.0	0	0	2236288	603797.76	business_income	health	33607	9073.89	0.3	third_party_transfer	0	0	0	5	0	0	0	0	0	0	0.12	0	layering	0	0
CUST00889	Singapore	SGD	0.74	62	director	41	78446	58050.04	0.09	261225	193306.5	0	0	967239	715756.86	grant	unit_link	5319	3936.06	0.07	third_party_transfer	0	0	1	4	0	0	0	0	0	0	0.29	0	none	0	0
CUST00890	United States	USD	1.0	28	employee	1	159227	159227.0	0.14	66875	66875.0	0	0	1659145	1659145.0	grant	endowment	20625	20625.0	0.13	third_party_transfer	1	0	0	4	0	0	0	0	0	0	0.15	0	none	0	0
CUST00891	Malaysia	MYR	0.21	51	director	29	325808	68419.68	0.15	1270651	266836.71	1	30625952	35480491	7450903.11	grant	endowment	9625	2021.25	0.03	bank_transfer	0	0	0	3	0	0	0	0	0	0	0.96	1	placement	0	0
CUST00892	United Arab Emirates	AED	0.27	51	entrepreneur	26	54781	14790.87	0.3	427291	115368.57	0	0	1139444	307649.88	savings	health	8774	2368.98	0.16	third_party_transfer	0	0	0	5	1	0	1	0	0	0	0.06	0	none	0	0
CUST00893	United States	USD	1.0	31	consultant	5	201949	201949.0	0.23	278689	278689.0	0	0	2702077	2702077.0	business_income	health	30020	30020.0	0.15	third_party_transfer	0	0	1	1	0	0	0	0	0	0	0.92	0	none	0	0
CUST00894	United States	USD	1.0	52	director	25	153667	153667.0	0.2	829801	829801.0	0	0	1905470	1905470.0	savings	health	27858	27858.0	0.18	credit_card	0	0	0	3	0	0	0	0	0	0	0.59	0	none	0	0
CUST00895	United Kingdom	GBP	1.27	44	entrepreneur	14	186867	237321.09	0.26	923122	1172364.94	0	0	1670590	2121649.3	grant	unit_link	6088	7731.76	0.03	bank_transfer	0	0	1	1	0	0	0	0	0	0	0.5	0	layering	0	0
CUST00896	United States	USD	1.0	52	freelancer	26	229205	229205.0	0.11	680738	680738.0	0	0	2743583	2743583.0	business_income	endowment	11350	11350.0	0.05	bank_transfer	0	0	1	1	0	0	0	0	0	0	0.61	0	none	0	0
CUST00897	Indonesia	IDR	6.5e-05	24	employee	2	1008175125	65531.38	0.24	241962030	15727.53	0	0	2258312280	146790.3	inheritance	endowment	280871779	18256.67	0.28	third_party_transfer	0	0	0	2	0	0	0	0	0	0	0.99	0	none	0	0
CUST00898	United Kingdom	GBP	1.27	57	entrepreneur	33	76306	96908.62	0.11	268597	341118.19	0	0	1489493	1891656.11	business_income	unit_link	16030	20358.1	0.21	third_party_transfer	0	0	1	5	0	0	0	0	0	0	0.81	0	integration	0	0
CUST00899	Singapore	SGD	0.74	27	employee	1	36355	26902.7	0.21	15269	11299.06	0	0	197044	145812.56	business_income	health	2799	2071.26	0.08	third_party_transfer	0	0	0	5	0	0	0	0	0	0	0.55	0	none	0	0
CUST00900	Indonesia	IDR	6.5e-05	43	freelancer	20	1439183531	93546.93	0.18	4662954640	303092.05	0	0	16176422888	1051467.49	savings	health	364218226	23674.18	0.25	cash	0	0	0	5	0	0	0	0	0	0	0.9	0	none	0	0
CUST00901	Singapore	SGD	0.74	26	director	1	142069	105131.06	0.21	29834	22077.16	0	0	598110	442601.4	business_income	health	25481	18855.94	0.18	bank_transfer	0	0	0	1	0	0	1	0	0	0	0.5	0	none	0	0
CUST00902	Indonesia	IDR	6.5e-05	60	freelancer	31	770644861	50091.92	0.06	1618354208	105193.02	0	0	10095447679	656204.1	inheritance	health	214421553	13937.4	0.28	bank_transfer	0	0	0	2	0	0	0	0	0	0	0.97	1	none	0	0
CUST00903	Indonesia	IDR	6.5e-05	56	employee	26	578399114	37595.94	0.26	4661896858	303023.3	0	0	15073080910	979750.26	savings	life	62135687	4038.82	0.11	third_party_transfer	1	0	0	3	0	0	0	0	0	0	0.65	0	layering	0	0
CUST00904	Indonesia	IDR	6.5e-05	43	consultant	16	620237911	40315.46	0.1	1116428239	72567.84	1	72567835587	75544977559	4910423.54	savings	life	36594542	2378.65	0.06	credit_card	0	0	0	4	0	0	0	0	0	0	0.07	0	none	0	0
CUST00905	United Kingdom	GBP	1.27	61	entrepreneur	40	115661	146889.47	0.3	1249138	1586405.26	1	8443253	10155035	12896894.45	gift	health	31055	39439.85	0.27	bank_transfer	0	0	1	1	0	0	0	0	0	0	0.04	0	none	0	0
CUST00906	United Kingdom	GBP	1.27	36	employee	10	138119	175411.13	0.17	258282	328018.14	0	0	1501353	1906718.31	salary	unit_link	3591	4560.57	0.03	third_party_transfer	0	0	1	1	0	0	0	0	0	0	0.55	0	none	0	0
CUST00907	Indonesia	IDR	6.5e-05	46	freelancer	19	328945260	21381.44	0.16	1105256073	71841.64	0	0	6039434973	392563.27	salary	life	57194560	3717.65	0.17	cash	0	0	0	3	0	0	0	0	0	0	0.19	0	layering	0	0
CUST00908	United Arab Emirates	AED	0.27	25	director	1	171652	46346.04	0.07	12015	3244.05	0	0	355319	95936.13	grant	life	14349	3874.23	0.08	bank_transfer	0	0	0	2	0	0	0	0	0	0	0.81	0	placement	0	0
CUST00909	Indonesia	IDR	6.5e-05	25	entrepreneur	2	1001791594	65116.45	0.1	100179159	6511.65	0	0	3105553941	201861.01	savings	health	108148659	7029.66	0.11	credit_card	0	0	0	5	0	0	0	0	0	0	0.4	0	layering	0	0
CUST00910	United States	USD	1.0	29	consultant	7	50022	50022.0	0.11	22009	22009.0	0	0	972427	972427.0	grant	unit_link	3883	3883.0	0.08	third_party_transfer	0	0	0	3	0	0	0	0	0	0	0.94	0	layering	0	0
CUST00911	United Kingdom	GBP	1.27	40	employee	16	163109	207148.43	0.27	660591	838950.57	0	0	2617899	3324731.73	savings	life	35129	44613.83	0.22	cash	0	0	0	4	0	0	0	0	0	0	0.71	0	none	0	0
CUST00912	United Kingdom	GBP	1.27	53	entrepreneur	28	45564	57866.28	0.1	127579	162025.33	0	0	400963	509223.01	savings	health	11646	14790.42	0.26	credit_card	0	0	1	1	0	0	0	0	0	1	0.37	0	none	0	1
CUST00913	Singapore	SGD	0.74	24	freelancer	1	213066	157668.84	0.16	34090	25226.6	0	0	3443146	2547928.04	salary	life	61118	45227.32	0.29	cash	0	0	0	3	0	0	0	0	0	0	0.59	0	none	0	0
CUST00914	Malaysia	MYR	0.21	27	freelancer	6	176324	37028.04	0.26	91688	19254.48	0	0	2560224	537647.04	gift	endowment	27982	5876.22	0.16	bank_transfer	0	0	0	2	1	0	0	0	0	0	0.21	0	placement	0	0
CUST00915	Singapore	SGD	0.74	64	employee	37	169589	125495.86	0.06	396838	293660.12	0	0	2262317	1674114.58	inheritance	health	4878	3609.72	0.03	cash	0	0	0	5	0	0	0	0	0	0	0.22	0	none	0	0
CUST00916	Indonesia	IDR	6.5e-05	43	freelancer	13	992171128	64491.12	0.27	4821951682	313426.86	0	0	7798465066	506900.23	savings	health	244144615	15869.4	0.25	third_party_transfer	0	0	0	4	0	0	0	0	0	0	0.57	0	none	0	0
CUST00917	United Kingdom	GBP	1.27	55	entrepreneur	30	67611	85865.97	0.29	588215	747033.05	0	0	1669991	2120888.57	business_income	life	15467	19643.09	0.23	cash	1	0	0	3	1	0	0	0	0	0	0.09	0	none	0	0
CUST00918	Singapore	SGD	0.74	56	consultant	31	118482	87676.68	0.19	697858	516414.92	0	0	1053304	779444.96	inheritance	health	22790	16864.6	0.19	bank_transfer	1	0	0	1	0	0	0	0	0	0	0.31	0	integration	0	0
CUST00919	United States	USD	1.0	42	employee	17	76867	76867.0	0.16	209078	209078.0	0	0	362812	362812.0	gift	health	11005	11005.0	0.14	third_party_transfer	0	0	1	5	0	0	1	0	0	0	0.22	0	placement	0	0
CUST00920	Indonesia	IDR	6.5e-05	59	freelancer	37	653662546	42488.07	0.27	6000622172	390040.44	0	0	18420210546	1197313.69	salary	unit_link	70548118	4585.63	0.11	cash	0	0	0	3	0	0	0	0	0	0	0.26	0	none	0	0
CUST00921	United Arab Emirates	AED	0.27	30	employee	6	380478	102729.06	0.09	171215	46228.05	0	0	1312649	354415.23	grant	unit_link	32397	8747.19	0.09	third_party_transfer	0	1	1	5	0	0	0	0	0	0	0.32	0	none	0	0
CUST00922	United Kingdom	GBP	1.27	36	director	15	92909	117994.43	0.29	296379	376401.33	0	0	482197	612390.19	inheritance	life	19506	24772.62	0.21	credit_card	0	0	1	3	0	0	0	0	0	0	0.11	0	none	0	0
CUST00923	United Kingdom	GBP	1.27	50	freelancer	28	158964	201884.28	0.07	278187	353297.49	0	0	1549899	1968371.73	inheritance	life	17680	22453.6	0.11	third_party_transfer	0	0	0	3	0	0	1	0	1	0	0.14	0	none	0	1
CUST00924	Malaysia	MYR	0.21	60	director	34	205629	43182.09	0.29	2087134	438298.14	0	0	4760311	999665.31	inheritance	life	31212	6554.52	0.15	credit_card	0	1	0	3	0	0	0	0	0	0	0.04	1	none	0	0
CUST00925	Singapore	SGD	0.74	59	director	38	57848	42807.52	0.2	393366	291090.84	0	0	1087542	804781.08	grant	health	9430	6978.2	0.16	credit_card	1	0	0	4	0	0	0	0	0	0	0.83	0	placement	0	0
CUST00926	Indonesia	IDR	6.5e-05	64	director	41	878383813	57094.95	0.24	8221672489	534408.71	0	0	11735207741	762788.5	business_income	endowment	252491618	16411.96	0.29	bank_transfer	0	0	0	5	0	0	0	0	0	0	0.8	0	placement	0	0
CUST00927	United Kingdom	GBP	1.27	52	consultant	23	161402	204980.54	0.16	697256	885515.12	0	0	2311276	2935320.52	savings	unit_link	12041	15292.07	0.07	cash	0	0	0	2	0	0	0	0	0	0	0.8	0	placement	0	0
CUST00928	Malaysia	MYR	0.21	36	freelancer	8	195054	40961.34	0.24	514942	108137.82	0	0	1490212	312944.52	gift	health	41753	8768.13	0.21	bank_transfer	1	0	1	3	0	0	0	1	0	0	0.56	0	none	0	0
CUST00929	Indonesia	IDR	6.5e-05	45	director	17	1359697014	88380.31	0.11	2991333430	194436.67	0	0	23386788640	1520141.26	business_income	unit_link	114668314	7453.44	0.08	third_party_transfer	1	0	0	5	1	0	0	0	0	0	0.67	0	layering	0	0
CUST00930	United Kingdom	GBP	1.27	38	entrepreneur	13	114540	145465.8	0.13	193572	245836.44	0	0	651732	827699.64	savings	endowment	15391	19546.57	0.13	credit_card	0	0	0	2	0	0	0	0	0	0	0.88	0	none	0	0
CUST00931	Indonesia	IDR	6.5e-05	32	employee	10	958991635	62334.46	0.12	805552973	52360.94	1	86309247150	103417657918	6722147.76	business_income	endowment	218649246	14212.2	0.23	bank_transfer	0	1	0	2	0	1	0	0	0	0	0.99	0	none	0	0
CUST00932	Singapore	SGD	0.74	54	director	25	131741	97488.34	0.28	1069736	791604.64	0	0	2782369	2058953.06	grant	unit_link	7336	5428.64	0.06	cash	1	0	0	1	0	0	0	0	0	0	0.34	0	none	0	0
CUST00933	Malaysia	MYR	0.21	59	freelancer	29	353291	74191.11	0.08	960951	201799.71	0	0	2020824	424373.04	inheritance	endowment	14361	3015.81	0.04	third_party_transfer	0	0	1	4	0	1	0	0	0	0	0.29	0	none	0	0
CUST00934	United Arab Emirates	AED	0.27	30	director	7	429431	115946.37	0.24	515317	139135.59	0	0	8245075	2226170.25	salary	health	18663	5039.01	0.04	third_party_transfer	0	0	0	4	0	0	0	0	0	0	0.32	0	layering	0	0
CUST00935	Singapore	SGD	0.74	54	consultant	24	103216	76379.84	0.29	868046	642354.04	0	0	1384126	1024253.24	gift	life	8776	6494.24	0.09	third_party_transfer	0	0	1	3	0	0	0	0	0	0	0.32	0	placement	0	0
CUST00936	Malaysia	MYR	0.21	33	director	10	51985	10916.85	0.25	103970	21833.7	0	0	519850	109168.5	inheritance	health	7306	1534.26	0.14	bank_transfer	0	0	0	3	0	0	0	0	0	0	0.28	0	none	0	0
CUST00937	Indonesia	IDR	6.5e-05	40	director	15	1105042263	71827.75	0.16	2652101431	172386.59	0	0	10387397272	675180.82	inheritance	life	111359606	7238.37	0.1	credit_card	0	0	1	3	0	1	0	0	0	0	0.14	1	none	0	0
CUST00938	Singapore	SGD	0.74	57	director	28	227883	168633.42	0.09	656303	485664.22	0	0	1339952	991564.48	savings	unit_link	65803	48694.22	0.29	bank_transfer	0	0	0	4	0	0	0	0	0	0	0.83	0	none	0	0
CUST00939	Indonesia	IDR	6.5e-05	45	entrepreneur	21	665241468	43240.7	0.29	3858400514	250796.03	1	61867456524	75704479058	4920791.14	savings	endowment	149669376	9728.51	0.22	cash	0	0	0	1	0	0	0	0	0	0	0.72	0	none	0	0
CUST00940	Indonesia	IDR	6.5e-05	50	employee	23	1119258226	72751.78	0.12	3357774678	218255.35	0	0	10073324034	654766.06	grant	health	333607931	21684.52	0.3	bank_transfer	0	1	0	2	0	0	0	0	0	0	0.73	0	integration	0	0
CUST00941	Malaysia	MYR	0.21	32	consultant	3	205813	43220.73	0.12	172882	36305.22	0	0	3877516	814278.36	salary	life	42846	8997.66	0.21	third_party_transfer	0	0	0	1	0	0	0	0	0	0	0.93	0	none	0	0
CUST00942	United Kingdom	GBP	1.27	42	employee	18	171320	217576.4	0.22	640736	813734.72	0	0	1154696	1466463.92	grant	unit_link	48958	62176.66	0.29	credit_card	0	1	0	5	0	1	1	0	0	0	0.38	0	none	0	0
CUST00943	Singapore	SGD	0.74	65	freelancer	41	99543	73661.82	0.17	676892	500900.08	0	0	2369123	1753151.02	grant	health	24675	18259.5	0.25	credit_card	0	0	0	2	1	0	0	0	0	0	0.63	0	none	0	0
CUST00944	Indonesia	IDR	6.5e-05	55	entrepreneur	31	66867038	4346.36	0.16	320961782	20862.52	0	0	1457701428	94750.59	business_income	life	11779725	765.68	0.18	third_party_transfer	0	0	0	3	0	0	0	0	0	0	0.61	0	none	0	0
CUST00945	United States	USD	1.0	59	consultant	35	197173	197173.0	0.14	938543	938543.0	0	0	4487657	4487657.0	business_income	unit_link	40212	40212.0	0.2	cash	0	0	0	4	0	0	0	0	0	0	0.49	0	integration	0	0
CUST00946	United States	USD	1.0	47	consultant	17	123618	123618.0	0.19	516723	516723.0	0	0	1876521	1876521.0	salary	endowment	5813	5813.0	0.05	third_party_transfer	0	0	0	3	0	0	0	0	0	0	0.25	0	placement	0	0
CUST00947	United Arab Emirates	AED	0.27	29	entrepreneur	6	293655	79286.85	0.29	340639	91972.53	0	0	1808914	488406.78	gift	endowment	34452	9302.04	0.12	third_party_transfer	0	0	0	5	0	0	1	1	0	0	0.41	0	integration	0	0
CUST00948	Singapore	SGD	0.74	23	consultant	1	100234	74173.16	0.18	18042	13351.08	0	0	1521552	1125948.48	inheritance	health	3711	2746.14	0.04	third_party_transfer	0	0	0	4	0	0	0	0	0	0	0.81	0	none	0	0
CUST00949	United Arab Emirates	AED	0.27	47	consultant	22	78643	21233.61	0.12	207617	56056.59	1	8886659	9802063	2646557.01	salary	endowment	9056	2445.12	0.12	third_party_transfer	0	0	0	2	0	0	0	0	0	0	0.57	0	placement	0	0
CUST00950	Singapore	SGD	0.74	56	employee	32	234354	173421.96	0.21	1525644	1128976.56	0	0	4337892	3210040.08	savings	life	13166	9742.84	0.06	third_party_transfer	0	0	0	1	0	0	0	0	0	0	0.78	0	none	0	0
CUST00951	Malaysia	MYR	0.21	44	entrepreneur	15	63273	13287.33	0.21	252459	53016.39	0	0	1391373	292188.33	savings	unit_link	4994	1048.74	0.08	third_party_transfer	0	0	0	2	0	0	1	0	0	0	0.29	0	placement	0	0
CUST00952	Singapore	SGD	0.74	45	employee	19	138369	102393.06	0.1	276738	204786.12	0	0	1522059	1126323.66	salary	life	39186	28997.64	0.28	third_party_transfer	0	0	0	4	1	0	0	0	0	0	0.04	0	none	0	0
CUST00953	Malaysia	MYR	0.21	41	employee	20	150588	31623.48	0.21	505975	106254.75	0	0	1861267	390866.07	grant	endowment	4435	931.35	0.03	third_party_transfer	1	0	0	2	0	0	0	0	0	0	0.82	0	none	0	0
CUST00954	Malaysia	MYR	0.21	27	director	5	68739	14435.19	0.18	24746	5196.66	0	0	1055831	221724.51	grant	unit_link	1762	370.02	0.03	bank_transfer	1	0	0	5	0	0	1	0	0	0	0.79	0	integration	0	0
CUST00955	Singapore	SGD	0.74	60	consultant	35	235723	174435.02	0.13	1072539	793678.86	0	0	5315553	3933509.22	inheritance	endowment	53786	39801.64	0.23	credit_card	0	0	0	1	0	0	0	0	0	0	0.26	0	none	0	0
CUST00956	United States	USD	1.0	58	consultant	30	128718	128718.0	0.12	509723	509723.0	1	3990258	5658443	5658443.0	savings	endowment	37421	37421.0	0.29	cash	0	0	1	5	0	0	0	0	0	0	0.51	0	none	0	0
CUST00957	United Arab Emirates	AED	0.27	23	employee	1	431449	116491.23	0.15	64717	17473.59	0	0	5673554	1531859.58	grant	endowment	100767	27207.09	0.23	credit_card	0	0	0	5	0	0	0	0	0	0	0.98	0	integration	0	0
CUST00958	United Arab Emirates	AED	0.27	36	entrepreneur	8	243893	65851.11	0.17	456079	123141.33	0	0	1675544	452396.88	inheritance	life	48775	13169.25	0.2	bank_transfer	0	0	0	5	0	0	0	1	0	0	0.17	0	none	0	0
CUST00959	United Arab Emirates	AED	0.27	59	entrepreneur	35	93981	25374.87	0.09	287581	77646.87	0	0	1885258	509019.66	savings	life	15652	4226.04	0.17	third_party_transfer	0	0	0	3	0	0	0	0	0	0	0.41	0	placement	0	0
CUST00960	United States	USD	1.0	43	consultant	20	39570	39570.0	0.13	92593	92593.0	0	0	883993	883993.0	salary	unit_link	7425	7425.0	0.19	third_party_transfer	0	0	1	5	0	0	1	0	0	0	0.5	0	none	0	0
CUST00961	United States	USD	1.0	37	employee	11	150945	150945.0	0.23	416608	416608.0	1	12830325	16114888	16114888.0	grant	life	39309	39309.0	0.26	third_party_transfer	0	0	1	1	0	0	0	0	0	0	0.38	0	none	0	0
CUST00962	Indonesia	IDR	6.5e-05	32	employee	3	320871359	20856.64	0.09	202148956	13139.68	0	0	5336090700	346845.9	salary	endowment	84559154	5496.35	0.26	third_party_transfer	0	0	1	2	0	0	0	0	0	0	0.63	0	none	0	0
CUST00963	United Kingdom	GBP	1.27	53	consultant	30	168415	213887.05	0.15	707343	898325.61	0	0	1044173	1326099.71	gift	health	17361	22048.47	0.1	cash	0	0	0	5	0	0	0	0	0	0	0.89	0	layering	0	0
CUST00964	United Kingdom	GBP	1.27	63	consultant	40	62097	78863.19	0.12	283162	359615.74	0	0	779938	990521.26	grant	health	15200	19304.0	0.24	third_party_transfer	0	0	0	4	0	1	0	0	0	0	0.21	0	placement	0	0
CUST00965	Malaysia	MYR	0.21	30	entrepreneur	7	304925	64034.25	0.23	350663	73639.23	0	0	5534388	1162221.48	gift	unit_link	6937	1456.77	0.02	third_party_transfer	0	0	0	1	0	0	0	0	0	0	0.99	0	none	0	0
CUST00966	Indonesia	IDR	6.5e-05	41	employee	17	487923998	31715.06	0.22	1717492472	111637.01	0	0	10988048434	714223.15	salary	endowment	72410947	4706.71	0.15	credit_card	0	0	0	1	0	0	1	0	0	0	0.35	0	none	0	0
CUST00967	United Kingdom	GBP	1.27	36	director	10	189841	241098.07	0.05	104412	132603.24	0	0	1623140	2061387.8	gift	health	18392	23357.84	0.1	cash	0	0	0	5	0	1	0	0	0	0	0.77	0	integration	0	0
CUST00968	Malaysia	MYR	0.21	57	entrepreneur	28	366382	76940.22	0.21	2462087	517038.27	0	0	3927615	824799.15	salary	health	68124	14306.04	0.19	credit_card	0	0	0	3	0	0	0	0	0	0	0.56	0	none	0	0
CUST00969	Singapore	SGD	0.74	55	director	25	199038	147288.12	0.24	1433073	1060474.02	0	0	3821529	2827931.46	savings	health	36062	26685.88	0.18	third_party_transfer	0	0	0	2	0	0	0	0	0	0	0.17	0	none	0	0
CUST00970	Singapore	SGD	0.74	35	consultant	13	240594	178039.56	0.2	481188	356079.12	1	9142572	11307918	8367859.32	salary	life	36842	27263.08	0.15	bank_transfer	0	0	0	2	0	0	0	0	0	0	0.51	0	none	0	0
CUST00971	United Arab Emirates	AED	0.27	49	freelancer	21	221489	59802.03	0.13	691045	186582.15	0	0	1798490	485592.3	gift	endowment	19361	5227.47	0.09	third_party_transfer	0	0	0	3	0	1	0	0	0	1	0.31	0	none	0	1
CUST00972	United Kingdom	GBP	1.27	42	consultant	13	45499	57783.73	0.27	208840	265226.8	0	0	572832	727496.64	grant	unit_link	13081	16612.87	0.29	third_party_transfer	0	0	0	5	0	1	0	0	0	0	0.44	0	none	0	0
CUST00973	United States	USD	1.0	38	freelancer	16	176251	176251.0	0.27	618641	618641.0	0	0	2909904	2909904.0	inheritance	health	12309	12309.0	0.07	third_party_transfer	0	0	0	2	1	0	0	0	0	0	0.62	0	none	0	0
CUST00974	Singapore	SGD	0.74	46	director	20	76925	56924.5	0.28	452319	334716.06	0	0	606169	448565.06	inheritance	unit_link	5756	4259.44	0.07	bank_transfer	0	0	0	5	0	1	1	0	0	0	0.31	0	none	0	0
CUST00975	Indonesia	IDR	6.5e-05	45	freelancer	20	1139740499	74083.13	0.28	6382546794	414865.54	0	0	17779951784	1155696.87	inheritance	endowment	33494572	2177.15	0.03	bank_transfer	0	0	1	3	0	0	0	0	0	0	0.27	0	integration	0	0
CUST00976	Indonesia	IDR	6.5e-05	58	director	37	1071055234	69618.59	0.3	10603446816	689224.04	0	0	27740330560	1803121.49	gift	life	168459996	10949.9	0.16	bank_transfer	0	0	0	3	0	0	0	0	0	0	0.03	0	none	0	0
CUST00977	United States	USD	1.0	31	employee	8	64510	64510.0	0.07	27094	27094.0	0	0	349644	349644.0	grant	health	2302	2302.0	0.04	bank_transfer	0	0	0	5	0	0	0	0	0	0	0.28	0	placement	0	0
CUST00978	Singapore	SGD	0.74	63	director	33	223319	165256.06	0.05	424306	313986.44	0	0	3104134	2297059.16	business_income	health	60601	44844.74	0.27	bank_transfer	0	0	1	4	0	0	0	0	0	0	0.42	0	none	0	0
CUST00979	United States	USD	1.0	64	employee	43	47027	47027.0	0.1	183405	183405.0	0	0	1029891	1029891.0	inheritance	unit_link	2882	2882.0	0.06	third_party_transfer	0	0	0	1	0	0	1	0	0	0	0.28	0	none	0	0
CUST00980	Singapore	SGD	0.74	54	consultant	27	75342	55753.08	0.21	458832	339535.68	0	0	609516	451041.84	savings	life	8071	5972.54	0.11	cash	0	0	0	4	0	0	0	0	0	0	0.57	0	none	0	0
CUST00981	United States	USD	1.0	27	entrepreneur	1	151374	151374.0	0.07	21192	21192.0	0	0	626688	626688.0	salary	health	10762	10762.0	0.07	bank_transfer	0	1	0	2	0	0	0	0	0	0	0.79	0	layering	0	0
CUST00982	Singapore	SGD	0.74	62	entrepreneur	36	150677	111500.98	0.07	390253	288787.22	0	0	1746346	1292296.04	grant	unit_link	15998	11838.52	0.11	cash	1	0	0	1	1	0	0	0	0	0	0.38	0	layering	0	0
CUST00983	Malaysia	MYR	0.21	33	consultant	8	103623	21760.83	0.19	157506	33076.26	0	0	1711851	359488.71	business_income	unit_link	8628	1811.88	0.08	credit_card	0	0	1	3	1	0	0	0	0	0	0.26	0	none	0	0
CUST00984	United Arab Emirates	AED	0.27	38	director	16	306841	82847.07	0.14	558450	150781.5	0	0	4547383	1227793.41	grant	endowment	36109	9749.43	0.12	credit_card	0	1	0	1	0	0	0	0	0	0	0.95	0	none	0	0
CUST00985	United Kingdom	GBP	1.27	46	consultant	23	166020	210845.4	0.19	662419	841272.13	1	18096180	21248899	26986101.73	grant	unit_link	19447	24697.69	0.12	cash	0	0	1	5	0	0	0	0	0	0	0.55	0	none	0	0
CUST00986	United States	USD	1.0	39	employee	17	164551	164551.0	0.24	552891	552891.0	0	0	2198401	2198401.0	inheritance	life	13346	13346.0	0.08	credit_card	1	0	0	4	0	0	0	0	0	0	0.14	0	none	0	0
CUST00987	United Kingdom	GBP	1.27	42	consultant	16	172788	219440.76	0.14	411235	522268.45	1	16414860	17344459	22027462.93	salary	life	19052	24196.04	0.11	credit_card	0	0	1	4	0	0	0	0	0	0	0.48	0	none	0	0
CUST00988	Malaysia	MYR	0.21	63	entrepreneur	41	128100	26901.0	0.28	1362984	286226.64	0	0	2772084	582137.64	savings	life	8399	1763.79	0.07	third_party_transfer	0	0	1	5	0	0	0	0	0	0	0.46	0	layering	0	0
CUST00989	United Kingdom	GBP	1.27	49	consultant	22	149144	189412.88	0.26	930658	1181935.66	0	0	2422098	3076064.46	savings	endowment	33191	42152.57	0.22	third_party_transfer	0	1	1	3	0	0	0	0	0	0	0.04	0	layering	0	0
CUST00990	Singapore	SGD	0.74	54	director	32	140358	103864.92	0.16	651261	481933.14	0	0	2054841	1520582.34	gift	life	40298	29820.52	0.29	credit_card	0	0	0	5	0	0	0	0	0	0	0.17	0	none	0	0
CUST00991	Malaysia	MYR	0.21	60	consultant	31	134051	28150.71	0.29	1360617	285729.57	0	0	4041637	848743.77	business_income	life	30901	6489.21	0.23	bank_transfer	0	0	0	3	0	1	0	0	0	0	0.79	0	none	0	0
CUST00992	Singapore	SGD	0.74	44	entrepreneur	16	133807	99017.18	0.09	228809	169318.66	0	0	496423	367353.02	business_income	health	27351	20239.74	0.2	cash	0	0	0	1	0	1	1	0	0	0	0.18	1	integration	0	0
CUST00993	Singapore	SGD	0.74	49	employee	27	219827	162671.98	0.11	580343	429453.82	0	0	4757056	3520221.44	inheritance	endowment	56448	41771.52	0.26	credit_card	1	0	1	3	0	0	0	0	0	0	0.1	0	none	0	0
CUST00994	United Kingdom	GBP	1.27	65	entrepreneur	38	80703	102492.81	0.28	903873	1147918.71	0	0	2033715	2582818.05	grant	life	20399	25906.73	0.25	third_party_transfer	0	0	0	2	0	0	0	0	0	0	0.32	0	none	0	0
CUST00995	Singapore	SGD	0.74	47	employee	21	104237	77135.38	0.25	573303	424244.22	0	0	2136858	1581274.92	savings	health	19507	14435.18	0.19	third_party_transfer	0	0	0	5	0	0	1	0	0	0	0.03	0	none	0	0
CUST00996	United Kingdom	GBP	1.27	33	director	9	121765	154641.55	0.14	136376	173197.52	0	0	2328146	2956745.42	savings	endowment	30502	38737.54	0.25	bank_transfer	0	0	1	2	1	0	0	0	0	0	0.14	0	none	0	0
CUST00997	Singapore	SGD	0.74	24	freelancer	1	109151	80771.74	0.16	17464	12923.36	0	0	1327276	982184.24	business_income	unit_link	13920	10300.8	0.13	cash	0	0	0	3	0	0	0	0	0	0	0.39	0	none	0	0
CUST00998	United Arab Emirates	AED	0.27	24	freelancer	1	271111	73199.97	0.09	24399	6587.73	0	0	3819953	1031387.31	salary	life	57219	15449.13	0.21	cash	1	0	0	1	0	0	0	0	0	0	0.66	0	none	0	0
CUST00999	United Arab Emirates	AED	0.27	22	employee	1	217261	58660.47	0.08	17380	4692.6	0	0	3928078	1060581.06	gift	endowment	27704	7480.08	0.13	third_party_transfer	1	0	0	4	0	0	1	0	0	0	0.77	0	integration	0	0
\.


--
-- TOC entry 4876 (class 2606 OID 16449)
-- Name: customers customers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customers
    ADD CONSTRAINT customers_pkey PRIMARY KEY (customer_id);


--
-- TOC entry 4880 (class 2606 OID 16481)
-- Name: funding_source pk_funding_source; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.funding_source
    ADD CONSTRAINT pk_funding_source PRIMARY KEY (customer_id);


--
-- TOC entry 4878 (class 2606 OID 16473)
-- Name: income_cust pk_income_cust; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.income_cust
    ADD CONSTRAINT pk_income_cust PRIMARY KEY (customer_id);


--
-- TOC entry 4882 (class 2606 OID 16489)
-- Name: insurance_info pk_insurance_info; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.insurance_info
    ADD CONSTRAINT pk_insurance_info PRIMARY KEY (customer_id);


--
-- TOC entry 4884 (class 2606 OID 16497)
-- Name: payment_behavior pk_payment_behavior; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.payment_behavior
    ADD CONSTRAINT pk_payment_behavior PRIMARY KEY (customer_id);


--
-- TOC entry 4886 (class 2606 OID 16482)
-- Name: funding_source fk_funding_source_customer; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.funding_source
    ADD CONSTRAINT fk_funding_source_customer FOREIGN KEY (customer_id) REFERENCES public.customers(customer_id);


--
-- TOC entry 4885 (class 2606 OID 16474)
-- Name: income_cust fk_income_cust_customer; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.income_cust
    ADD CONSTRAINT fk_income_cust_customer FOREIGN KEY (customer_id) REFERENCES public.customers(customer_id);


--
-- TOC entry 4887 (class 2606 OID 16490)
-- Name: insurance_info fk_insurance_info_customer; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.insurance_info
    ADD CONSTRAINT fk_insurance_info_customer FOREIGN KEY (customer_id) REFERENCES public.customers(customer_id);


--
-- TOC entry 4888 (class 2606 OID 16498)
-- Name: payment_behavior fk_payment_behavior_customer; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.payment_behavior
    ADD CONSTRAINT fk_payment_behavior_customer FOREIGN KEY (customer_id) REFERENCES public.customers(customer_id);


-- Completed on 2026-08-24 16:53:08

--
-- PostgreSQL database dump complete
--

\unrestrict aTJGqI2KS7ZVYYzYaQhmf3OWU6MsWuQoYW1cNFc9GPacpOfecXrECliFh6f41ug

