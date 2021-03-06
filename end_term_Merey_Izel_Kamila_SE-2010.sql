PGDMP     2    :                y            merey_end_java    13.0    13.2 -    ?           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ?           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            ?           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            ?           1262    33999    merey_end_java    DATABASE     Y   CREATE DATABASE merey_end_java WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'C';
    DROP DATABASE merey_end_java;
                postgres    false            ?            1259    34098    clients    TABLE     ?   CREATE TABLE public.clients (
    id bigint NOT NULL,
    name character varying(255),
    surname character varying(255),
    username character varying(255),
    password character varying(255)
);
    DROP TABLE public.clients;
       public         heap    postgres    false            ?            1259    34117    clients_checks    TABLE     ?   CREATE TABLE public.clients_checks (
    id integer NOT NULL,
    client_id integer,
    wallet_id integer,
    date date,
    text character varying(255)
);
 "   DROP TABLE public.clients_checks;
       public         heap    postgres    false            ?            1259    34115    clients_checks_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.clients_checks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.clients_checks_id_seq;
       public          postgres    false    205            ?           0    0    clients_checks_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.clients_checks_id_seq OWNED BY public.clients_checks.id;
          public          postgres    false    204            ?            1259    34096    clients_id_seq    SEQUENCE     w   CREATE SEQUENCE public.clients_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.clients_id_seq;
       public          postgres    false    201            ?           0    0    clients_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.clients_id_seq OWNED BY public.clients.id;
          public          postgres    false    200            ?            1259    34153    clients_wallets    TABLE     o   CREATE TABLE public.clients_wallets (
    id integer NOT NULL,
    client_id integer,
    wallet_id integer
);
 #   DROP TABLE public.clients_wallets;
       public         heap    postgres    false            ?            1259    34151    clients_wallets_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.clients_wallets_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.clients_wallets_id_seq;
       public          postgres    false    209            ?           0    0    clients_wallets_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.clients_wallets_id_seq OWNED BY public.clients_wallets.id;
          public          postgres    false    208            ?            1259    34135    operation_checks    TABLE     o   CREATE TABLE public.operation_checks (
    id integer NOT NULL,
    client_id integer,
    check_id integer
);
 $   DROP TABLE public.operation_checks;
       public         heap    postgres    false            ?            1259    34133    operation_checks_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.operation_checks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.operation_checks_id_seq;
       public          postgres    false    207            ?           0    0    operation_checks_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.operation_checks_id_seq OWNED BY public.operation_checks.id;
          public          postgres    false    206            ?            1259    34109    wallets    TABLE     u   CREATE TABLE public.wallets (
    id integer NOT NULL,
    name character varying(255),
    cash double precision
);
    DROP TABLE public.wallets;
       public         heap    postgres    false            ?            1259    34107    wallets_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.wallets_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.wallets_id_seq;
       public          postgres    false    203            ?           0    0    wallets_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.wallets_id_seq OWNED BY public.wallets.id;
          public          postgres    false    202            F           2604    34101 
   clients id    DEFAULT     h   ALTER TABLE ONLY public.clients ALTER COLUMN id SET DEFAULT nextval('public.clients_id_seq'::regclass);
 9   ALTER TABLE public.clients ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    201    200    201            H           2604    34120    clients_checks id    DEFAULT     v   ALTER TABLE ONLY public.clients_checks ALTER COLUMN id SET DEFAULT nextval('public.clients_checks_id_seq'::regclass);
 @   ALTER TABLE public.clients_checks ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    204    205    205            J           2604    34156    clients_wallets id    DEFAULT     x   ALTER TABLE ONLY public.clients_wallets ALTER COLUMN id SET DEFAULT nextval('public.clients_wallets_id_seq'::regclass);
 A   ALTER TABLE public.clients_wallets ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    208    209    209            I           2604    34138    operation_checks id    DEFAULT     z   ALTER TABLE ONLY public.operation_checks ALTER COLUMN id SET DEFAULT nextval('public.operation_checks_id_seq'::regclass);
 B   ALTER TABLE public.operation_checks ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    206    207    207            G           2604    34112 
   wallets id    DEFAULT     h   ALTER TABLE ONLY public.wallets ALTER COLUMN id SET DEFAULT nextval('public.wallets_id_seq'::regclass);
 9   ALTER TABLE public.wallets ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    202    203    203            ?          0    34098    clients 
   TABLE DATA           H   COPY public.clients (id, name, surname, username, password) FROM stdin;
    public          postgres    false    201   ?3       ?          0    34117    clients_checks 
   TABLE DATA           N   COPY public.clients_checks (id, client_id, wallet_id, date, text) FROM stdin;
    public          postgres    false    205   4       ?          0    34153    clients_wallets 
   TABLE DATA           C   COPY public.clients_wallets (id, client_id, wallet_id) FROM stdin;
    public          postgres    false    209   ?4       ?          0    34135    operation_checks 
   TABLE DATA           C   COPY public.operation_checks (id, client_id, check_id) FROM stdin;
    public          postgres    false    207   ?4       ?          0    34109    wallets 
   TABLE DATA           1   COPY public.wallets (id, name, cash) FROM stdin;
    public          postgres    false    203   ?4       ?           0    0    clients_checks_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.clients_checks_id_seq', 2, true);
          public          postgres    false    204            ?           0    0    clients_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.clients_id_seq', 4, true);
          public          postgres    false    200            ?           0    0    clients_wallets_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.clients_wallets_id_seq', 2, true);
          public          postgres    false    208            ?           0    0    operation_checks_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.operation_checks_id_seq', 2, true);
          public          postgres    false    206            ?           0    0    wallets_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.wallets_id_seq', 2, true);
          public          postgres    false    202            P           2606    34122 "   clients_checks clients_checks_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.clients_checks
    ADD CONSTRAINT clients_checks_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.clients_checks DROP CONSTRAINT clients_checks_pkey;
       public            postgres    false    205            L           2606    34106    clients clients_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.clients
    ADD CONSTRAINT clients_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.clients DROP CONSTRAINT clients_pkey;
       public            postgres    false    201            T           2606    34158 $   clients_wallets clients_wallets_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.clients_wallets
    ADD CONSTRAINT clients_wallets_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.clients_wallets DROP CONSTRAINT clients_wallets_pkey;
       public            postgres    false    209            R           2606    34140 &   operation_checks operation_checks_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.operation_checks
    ADD CONSTRAINT operation_checks_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.operation_checks DROP CONSTRAINT operation_checks_pkey;
       public            postgres    false    207            N           2606    34114    wallets wallets_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.wallets
    ADD CONSTRAINT wallets_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.wallets DROP CONSTRAINT wallets_pkey;
       public            postgres    false    203            U           2606    34123 ,   clients_checks clients_checks_client_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.clients_checks
    ADD CONSTRAINT clients_checks_client_id_fkey FOREIGN KEY (client_id) REFERENCES public.clients(id);
 V   ALTER TABLE ONLY public.clients_checks DROP CONSTRAINT clients_checks_client_id_fkey;
       public          postgres    false    3148    205    201            V           2606    34128 ,   clients_checks clients_checks_wallet_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.clients_checks
    ADD CONSTRAINT clients_checks_wallet_id_fkey FOREIGN KEY (wallet_id) REFERENCES public.wallets(id);
 V   ALTER TABLE ONLY public.clients_checks DROP CONSTRAINT clients_checks_wallet_id_fkey;
       public          postgres    false    203    3150    205            Y           2606    34159 .   clients_wallets clients_wallets_client_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.clients_wallets
    ADD CONSTRAINT clients_wallets_client_id_fkey FOREIGN KEY (client_id) REFERENCES public.clients(id);
 X   ALTER TABLE ONLY public.clients_wallets DROP CONSTRAINT clients_wallets_client_id_fkey;
       public          postgres    false    209    3148    201            Z           2606    34164 .   clients_wallets clients_wallets_wallet_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.clients_wallets
    ADD CONSTRAINT clients_wallets_wallet_id_fkey FOREIGN KEY (wallet_id) REFERENCES public.wallets(id);
 X   ALTER TABLE ONLY public.clients_wallets DROP CONSTRAINT clients_wallets_wallet_id_fkey;
       public          postgres    false    3150    209    203            X           2606    34146 /   operation_checks operation_checks_check_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.operation_checks
    ADD CONSTRAINT operation_checks_check_id_fkey FOREIGN KEY (check_id) REFERENCES public.clients_checks(id);
 Y   ALTER TABLE ONLY public.operation_checks DROP CONSTRAINT operation_checks_check_id_fkey;
       public          postgres    false    205    3152    207            W           2606    34141 0   operation_checks operation_checks_client_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.operation_checks
    ADD CONSTRAINT operation_checks_client_id_fkey FOREIGN KEY (client_id) REFERENCES public.clients(id);
 Z   ALTER TABLE ONLY public.operation_checks DROP CONSTRAINT operation_checks_client_id_fkey;
       public          postgres    false    201    207    3148            ?   p   x??1?0??? ?E?? ?}??9+>a)??I3;i?X?
*??:?I&?^??E#+?[7X!)3??Ʃ???Fy??Z:?n?7?а_!8??%????zʉi??MD?n8*F      ?   ]   x?3?4?4?4202?50?54??,HU?OS?/H-J,???SpLIQ???K??QPHLIIM?250?3?2"?5<?$#?(???* 4?lH? i8%F      ?      x?3?4?4?2?F\1z\\\ W      ?      x?3?4?4?2?F\1z\\\ W      ?   $   x?3?,I?KO?4?2?t???I,?420?????? i0w     