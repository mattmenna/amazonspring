PGDMP     0                    t            d3sjumuab5ri8e    9.5.2    9.5.0     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            �           1262    766213    d3sjumuab5ri8e    DATABASE     �   CREATE DATABASE "d3sjumuab5ri8e" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.UTF-8' LC_CTYPE = 'en_US.UTF-8';
     DROP DATABASE "d3sjumuab5ri8e";
             hsicsjamghzhmv    false                        2615    2200    public    SCHEMA        CREATE SCHEMA "public";
    DROP SCHEMA "public";
             hsicsjamghzhmv    false            �           0    0    SCHEMA "public"    COMMENT     8   COMMENT ON SCHEMA "public" IS 'standard public schema';
                  hsicsjamghzhmv    false    6            �            3079    13249    plpgsql 	   EXTENSION     C   CREATE EXTENSION IF NOT EXISTS "plpgsql" WITH SCHEMA "pg_catalog";
    DROP EXTENSION "plpgsql";
                  false            �           0    0    EXTENSION "plpgsql"    COMMENT     B   COMMENT ON EXTENSION "plpgsql" IS 'PL/pgSQL procedural language';
                       false    186            �            1259    768494    hibernate_sequence    SEQUENCE     v   CREATE SEQUENCE "hibernate_sequence"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE "public"."hibernate_sequence";
       public       hsicsjamghzhmv    false    6            �            1259    768462    product    TABLE     #  CREATE TABLE "product" (
    "productid" integer NOT NULL,
    "name" character varying(255) DEFAULT NULL::character varying,
    "description" character varying(255) DEFAULT NULL::character varying,
    "price" character varying(255) DEFAULT NULL::character varying,
    "userid" bigint
);
    DROP TABLE "public"."product";
       public         hsicsjamghzhmv    false    6            �            1259    768460    product_productid_seq    SEQUENCE     y   CREATE SEQUENCE "product_productid_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE "public"."product_productid_seq";
       public       hsicsjamghzhmv    false    6    181            �           0    0    product_productid_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE "product_productid_seq" OWNED BY "product"."productid";
            public       hsicsjamghzhmv    false    180            �            1259    768483 
   user_roles    TABLE     �   CREATE TABLE "user_roles" (
    "userid" integer NOT NULL,
    "username" character varying(45) NOT NULL,
    "role" character varying(45) NOT NULL,
    "rating" numeric(11,1) DEFAULT 0.0
);
 "   DROP TABLE "public"."user_roles";
       public         hsicsjamghzhmv    false    6            �            1259    768476    users    TABLE     �   CREATE TABLE "users" (
    "userid" integer NOT NULL,
    "username" character varying(45) NOT NULL,
    "password" character varying(450) NOT NULL,
    "enabled" smallint DEFAULT 1 NOT NULL
);
    DROP TABLE "public"."users";
       public         hsicsjamghzhmv    false    6            �            1259    768474    users_userid_seq    SEQUENCE     t   CREATE SEQUENCE "users_userid_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE "public"."users_userid_seq";
       public       hsicsjamghzhmv    false    183    6            �           0    0    users_userid_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE "users_userid_seq" OWNED BY "users"."userid";
            public       hsicsjamghzhmv    false    182            F           2604    768465 	   productid    DEFAULT     r   ALTER TABLE ONLY "product" ALTER COLUMN "productid" SET DEFAULT "nextval"('"product_productid_seq"'::"regclass");
 F   ALTER TABLE "public"."product" ALTER COLUMN "productid" DROP DEFAULT;
       public       hsicsjamghzhmv    false    180    181    181            J           2604    768479    userid    DEFAULT     h   ALTER TABLE ONLY "users" ALTER COLUMN "userid" SET DEFAULT "nextval"('"users_userid_seq"'::"regclass");
 A   ALTER TABLE "public"."users" ALTER COLUMN "userid" DROP DEFAULT;
       public       hsicsjamghzhmv    false    182    183    183            �           0    0    hibernate_sequence    SEQUENCE SET     ;   SELECT pg_catalog.setval('"hibernate_sequence"', 8, true);
            public       hsicsjamghzhmv    false    185            �          0    768462    product 
   TABLE DATA               S   COPY "product" ("productid", "name", "description", "price", "userid") FROM stdin;
    public       hsicsjamghzhmv    false    181            �           0    0    product_productid_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('"product_productid_seq"', 1, false);
            public       hsicsjamghzhmv    false    180            �          0    768483 
   user_roles 
   TABLE DATA               G   COPY "user_roles" ("userid", "username", "role", "rating") FROM stdin;
    public       hsicsjamghzhmv    false    184            �          0    768476    users 
   TABLE DATA               G   COPY "users" ("userid", "username", "password", "enabled") FROM stdin;
    public       hsicsjamghzhmv    false    183            �           0    0    users_userid_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('"users_userid_seq"', 1, false);
            public       hsicsjamghzhmv    false    182            N           2606    768473    product_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY "product"
    ADD CONSTRAINT "product_pkey" PRIMARY KEY ("productid");
 D   ALTER TABLE ONLY "public"."product" DROP CONSTRAINT "product_pkey";
       public         hsicsjamghzhmv    false    181    181            R           2606    768488    user_roles_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY "user_roles"
    ADD CONSTRAINT "user_roles_pkey" PRIMARY KEY ("userid");
 J   ALTER TABLE ONLY "public"."user_roles" DROP CONSTRAINT "user_roles_pkey";
       public         hsicsjamghzhmv    false    184    184            P           2606    768482 
   users_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY "users"
    ADD CONSTRAINT "users_pkey" PRIMARY KEY ("userid");
 @   ALTER TABLE ONLY "public"."users" DROP CONSTRAINT "users_pkey";
       public         hsicsjamghzhmv    false    183    183            S           2606    768489    user_roles_userid_fkey    FK CONSTRAINT        ALTER TABLE ONLY "user_roles"
    ADD CONSTRAINT "user_roles_userid_fkey" FOREIGN KEY ("userid") REFERENCES "users"("userid");
 Q   ALTER TABLE ONLY "public"."user_roles" DROP CONSTRAINT "user_roles_userid_fkey";
       public       hsicsjamghzhmv    false    183    184    2896            �   k   x�3�ɯTHN,�t,O-��MU(��R���29-��Ӏ��*(?9;���-'3�X!3O!��$�H�� 19���R���Ҍ3<3%=��3%����4-�*���� �� �      �   U   x�3��K-O/����q�w
�t�4�3�2��MF3�,J�H�JME�0��-IMII-242����� %�̸,8���u��qqq &��      �   S   x�3��-IMII-242�,H,..�/J���9�R��K+фM9s��B@�9gQbFRVj*X(`�Y���Y��XR�Z���qqq �D�     