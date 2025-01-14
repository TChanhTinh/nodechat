PGDMP         .                y            chat    13.1    13.1     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    32801    chat    DATABASE     h   CREATE DATABASE chat WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_United States.1252';
    DROP DATABASE chat;
                postgres    false            �            1259    32802    session    TABLE     �   CREATE TABLE public.session (
    sid character varying NOT NULL,
    sess json NOT NULL,
    expire timestamp(6) without time zone NOT NULL
);
    DROP TABLE public.session;
       public         heap    postgres    false            �            1259    32811    users    TABLE     �   CREATE TABLE public.users (
    userid integer NOT NULL,
    username character varying NOT NULL,
    password character varying NOT NULL,
    type character varying NOT NULL
);
    DROP TABLE public.users;
       public         heap    postgres    false            �            1259    32819    users_userid_seq    SEQUENCE     �   ALTER TABLE public.users ALTER COLUMN userid ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.users_userid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    201            �          0    32802    session 
   TABLE DATA           4   COPY public.session (sid, sess, expire) FROM stdin;
    public          postgres    false    200   �       �          0    32811    users 
   TABLE DATA           A   COPY public.users (userid, username, password, type) FROM stdin;
    public          postgres    false    201   e       �           0    0    users_userid_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.users_userid_seq', 3, true);
          public          postgres    false    202            *           2606    32809    session session_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.session
    ADD CONSTRAINT session_pkey PRIMARY KEY (sid);
 >   ALTER TABLE ONLY public.session DROP CONSTRAINT session_pkey;
       public            postgres    false    200            ,           2606    32818    users users_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (userid);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    201            (           1259    32810    IDX_session_expire    INDEX     J   CREATE INDEX "IDX_session_expire" ON public.session USING btree (expire);
 (   DROP INDEX public."IDX_session_expire";
       public            postgres    false    200            �   �   x�E��
�@E����j3���	�."*�Bj�AS���OW����=�}��k�
�E�����;����M��B4V��̔��*QE�o�6JF�)ȶRZր��.�.�� H��ypRc�m�w�F7ҁ*6鸘�0���Jm������/�1��"�g����4)      �   S   x�3�L�T1JT14P)I��0N	Mr	�2/)Ϊ���L�t�
�Kw�q2	�3K2*�063
����6J�,-N-����� O�L     