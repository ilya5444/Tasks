PGDMP      4                }            practice_db    17.4    17.4 #    L           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                           false            M           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                           false            N           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                           false            O           1262    16588    practice_db    DATABASE     q   CREATE DATABASE practice_db WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'ru-RU';
    DROP DATABASE practice_db;
                     postgres    false            �            1259    16589    Groups    TABLE     j   CREATE TABLE public."Groups" (
    group_number character(7) NOT NULL,
    institute smallint NOT NULL
);
    DROP TABLE public."Groups";
       public         heap r       postgres    false            �            1259    16592 
   Institutes    TABLE     G  CREATE TABLE public."Institutes" (
    institute_id smallint NOT NULL,
    institute_name character varying(100) NOT NULL,
    dean_lastname character varying(25) NOT NULL,
    dean_firstname character varying(25) NOT NULL,
    dean_patronymic character varying(25) NOT NULL,
    dean_degree character varying(100) NOT NULL
);
     DROP TABLE public."Institutes";
       public         heap r       postgres    false            �            1259    16595    Institutes_institute_id_seq    SEQUENCE     �   ALTER TABLE public."Institutes" ALTER COLUMN institute_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Institutes_institute_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
    CYCLE
);
            public               postgres    false    218            �            1259    16627    Roles    TABLE     h   CREATE TABLE public."Roles" (
    role_id smallint NOT NULL,
    name character varying(30) NOT NULL
);
    DROP TABLE public."Roles";
       public         heap r       postgres    false            �            1259    16596    Specializations    TABLE     }   CREATE TABLE public."Specializations" (
    specialization_id smallint NOT NULL,
    name character varying(100) NOT NULL
);
 %   DROP TABLE public."Specializations";
       public         heap r       postgres    false            �            1259    16599 $   Specialization_specialization_id_seq    SEQUENCE     �   ALTER TABLE public."Specializations" ALTER COLUMN specialization_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Specialization_specialization_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public               postgres    false    220            �            1259    16600    Students    TABLE     G  CREATE TABLE public."Students" (
    student_id integer NOT NULL,
    lastname character varying(25) NOT NULL,
    firstname character varying(25) NOT NULL,
    specialization smallint NOT NULL,
    "group" character(7) NOT NULL,
    year smallint NOT NULL,
    admission_year smallint NOT NULL,
    birthdate date NOT NULL
);
    DROP TABLE public."Students";
       public         heap r       postgres    false            �            1259    16603    Students_student_id_seq    SEQUENCE     �   ALTER TABLE public."Students" ALTER COLUMN student_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Students_student_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public               postgres    false    222            �            1259    16668    Users    TABLE     �   CREATE TABLE public."Users" (
    user_id integer NOT NULL,
    name character varying(25) NOT NULL,
    email character varying(320) NOT NULL,
    password character varying(100) NOT NULL,
    role smallint NOT NULL
);
    DROP TABLE public."Users";
       public         heap r       postgres    false            �            1259    16667    Users_user_id_seq    SEQUENCE     �   ALTER TABLE public."Users" ALTER COLUMN user_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Users_user_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
    CYCLE
);
            public               postgres    false    226            @          0    16589    Groups 
   TABLE DATA           ;   COPY public."Groups" (group_number, institute) FROM stdin;
    public               postgres    false    217   �*       A          0    16592 
   Institutes 
   TABLE DATA           �   COPY public."Institutes" (institute_id, institute_name, dean_lastname, dean_firstname, dean_patronymic, dean_degree) FROM stdin;
    public               postgres    false    218   �*       G          0    16627    Roles 
   TABLE DATA           0   COPY public."Roles" (role_id, name) FROM stdin;
    public               postgres    false    224   ,       C          0    16596    Specializations 
   TABLE DATA           D   COPY public."Specializations" (specialization_id, name) FROM stdin;
    public               postgres    false    220   J,       E          0    16600    Students 
   TABLE DATA              COPY public."Students" (student_id, lastname, firstname, specialization, "group", year, admission_year, birthdate) FROM stdin;
    public               postgres    false    222   .-       I          0    16668    Users 
   TABLE DATA           G   COPY public."Users" (user_id, name, email, password, role) FROM stdin;
    public               postgres    false    226   .       P           0    0    Institutes_institute_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public."Institutes_institute_id_seq"', 3, true);
          public               postgres    false    219            Q           0    0 $   Specialization_specialization_id_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('public."Specialization_specialization_id_seq"', 6, true);
          public               postgres    false    221            R           0    0    Students_student_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public."Students_student_id_seq"', 6, true);
          public               postgres    false    223            S           0    0    Users_user_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public."Users_user_id_seq"', 23, true);
          public               postgres    false    225            �           2606    16605    Groups Groups_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public."Groups"
    ADD CONSTRAINT "Groups_pkey" PRIMARY KEY (group_number);
 @   ALTER TABLE ONLY public."Groups" DROP CONSTRAINT "Groups_pkey";
       public                 postgres    false    217            �           2606    16607    Institutes Institutes_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public."Institutes"
    ADD CONSTRAINT "Institutes_pkey" PRIMARY KEY (institute_id);
 H   ALTER TABLE ONLY public."Institutes" DROP CONSTRAINT "Institutes_pkey";
       public                 postgres    false    218            �           2606    16631    Roles Roles_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public."Roles"
    ADD CONSTRAINT "Roles_pkey" PRIMARY KEY (role_id);
 >   ALTER TABLE ONLY public."Roles" DROP CONSTRAINT "Roles_pkey";
       public                 postgres    false    224            �           2606    16609 #   Specializations Specialization_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public."Specializations"
    ADD CONSTRAINT "Specialization_pkey" PRIMARY KEY (specialization_id);
 Q   ALTER TABLE ONLY public."Specializations" DROP CONSTRAINT "Specialization_pkey";
       public                 postgres    false    220            �           2606    16611    Students Students_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public."Students"
    ADD CONSTRAINT "Students_pkey" PRIMARY KEY (student_id);
 D   ALTER TABLE ONLY public."Students" DROP CONSTRAINT "Students_pkey";
       public                 postgres    false    222            �           2606    16674    Users Users_email_key 
   CONSTRAINT     U   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_email_key" UNIQUE (email);
 C   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_email_key";
       public                 postgres    false    226            �           2606    16672    Users Users_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_pkey" PRIMARY KEY (user_id);
 >   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_pkey";
       public                 postgres    false    226            �           2606    16612    Groups Groups_institute_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Groups"
    ADD CONSTRAINT "Groups_institute_fkey" FOREIGN KEY (institute) REFERENCES public."Institutes"(institute_id);
 J   ALTER TABLE ONLY public."Groups" DROP CONSTRAINT "Groups_institute_fkey";
       public               postgres    false    218    217    4768            �           2606    16617    Students Students_group_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Students"
    ADD CONSTRAINT "Students_group_fkey" FOREIGN KEY ("group") REFERENCES public."Groups"(group_number);
 J   ALTER TABLE ONLY public."Students" DROP CONSTRAINT "Students_group_fkey";
       public               postgres    false    217    222    4766            �           2606    16622 %   Students Students_specialization_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Students"
    ADD CONSTRAINT "Students_specialization_fkey" FOREIGN KEY (specialization) REFERENCES public."Specializations"(specialization_id);
 S   ALTER TABLE ONLY public."Students" DROP CONSTRAINT "Students_specialization_fkey";
       public               postgres    false    222    220    4770            �           2606    16675    Users Users_role_fkey    FK CONSTRAINT     |   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_role_fkey" FOREIGN KEY (role) REFERENCES public."Roles"(role_id);
 C   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_role_fkey";
       public               postgres    false    226    224    4774            @   9   x�ɹ�0��[b�3���l�au[\+n�2��^B��sT��.�Gg���ma
�      A   C  x�}�1R�@Ek�> 0\��$NERPP�0��f�����+|݈'���w�/��o��k���JV���J;u6R���Z�۬RB3U&��Ʈ�g�<Iig3�Y[~+��BK�I����n9t�mLh��F�P�Q֐j!�)tG��'þ[��4F�g b��V�d�H����(�D߷}�� ������6��&��"fՅѾxW�ǝ�c�㳍l�q':\����S�ͼ��W�F6��ە�p�K���*�3r� �����?�����5�X���TůP��"�,�
�[����$GHt��42N�q��O�Ľ _ʫ��,? ����      G      x�3�,-N-�2�LL�������� :�      C   �   x�mPI�0;7��@b}��P!�8!PJS4���IzA�H�qc�=8"��cu����śMč�B�!Z^W�Vx�|3.p�m������	�D!���}E��ݢI0H)[3)pB%k�t��x�R�l����&oD�v=)��3�F��������u�湌��5{�����l���^����2/pa��@���H��s�]�{Y������      E   �   x�U�]JC1F�'{I��$�{q1�����&.��T����ș����sOLX����}���U�
��ߊe_\�^����s�↣_�����x�L�H��梹<$��?&�;&(|J�R���}���^cpt��~9�ҟ��HF�V�6/wނo�l��0����·ًGB����*"G,�Jmx�則sp'O��M�6MM���-kI����/l|��      I   �   x�u���0 ��c,<���Ċ���%^ADd�*~���9L�6 	����f9K���dMެٳ�SK7 	�ʦ�o�H�m�K��Ld=���v�[�=vd/(�x��R?��h��T��������0;UL�u�9�ط��y��Jq{�v���V�]L\z9þj����v���P��}t �^��E{     