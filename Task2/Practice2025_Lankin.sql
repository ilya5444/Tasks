PGDMP  ;    !                }            Practice2025_Lankin    17.4    17.4     9           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                           false            :           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                           false            ;           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                           false            <           1262    16388    Practice2025_Lankin    DATABASE     {   CREATE DATABASE "Practice2025_Lankin" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'ru-RU';
 %   DROP DATABASE "Practice2025_Lankin";
                     postgres    false            �            1259    16522    Groups    TABLE     j   CREATE TABLE public."Groups" (
    group_number character(7) NOT NULL,
    institute smallint NOT NULL
);
    DROP TABLE public."Groups";
       public         heap r       postgres    false            �            1259    16517 
   Institutes    TABLE     G  CREATE TABLE public."Institutes" (
    institute_id smallint NOT NULL,
    institute_name character varying(100) NOT NULL,
    dean_lastname character varying(25) NOT NULL,
    dean_firstname character varying(25) NOT NULL,
    dean_patronymic character varying(25) NOT NULL,
    dean_degree character varying(100) NOT NULL
);
     DROP TABLE public."Institutes";
       public         heap r       postgres    false            �            1259    16516    Institutes_institute_id_seq    SEQUENCE     �   ALTER TABLE public."Institutes" ALTER COLUMN institute_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Institutes_institute_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
    CYCLE
);
            public               postgres    false    220            �            1259    16410    Specializations    TABLE     }   CREATE TABLE public."Specializations" (
    specialization_id smallint NOT NULL,
    name character varying(100) NOT NULL
);
 %   DROP TABLE public."Specializations";
       public         heap r       postgres    false            �            1259    16409 $   Specialization_specialization_id_seq    SEQUENCE     �   ALTER TABLE public."Specializations" ALTER COLUMN specialization_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Specialization_specialization_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public               postgres    false    218            �            1259    16533    Students    TABLE     G  CREATE TABLE public."Students" (
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
       public         heap r       postgres    false            �            1259    16532    Students_student_id_seq    SEQUENCE     �   ALTER TABLE public."Students" ALTER COLUMN student_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Students_student_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public               postgres    false    223            4          0    16522    Groups 
   TABLE DATA                 public               postgres    false    221   �       3          0    16517 
   Institutes 
   TABLE DATA                 public               postgres    false    220   C       1          0    16410    Specializations 
   TABLE DATA                 public               postgres    false    218   *        6          0    16533    Students 
   TABLE DATA                 public               postgres    false    223   �!       =           0    0    Institutes_institute_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public."Institutes_institute_id_seq"', 3, true);
          public               postgres    false    219            >           0    0 $   Specialization_specialization_id_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('public."Specialization_specialization_id_seq"', 6, true);
          public               postgres    false    217            ?           0    0    Students_student_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public."Students_student_id_seq"', 6, true);
          public               postgres    false    222            �           2606    16526    Groups Groups_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public."Groups"
    ADD CONSTRAINT "Groups_pkey" PRIMARY KEY (group_number);
 @   ALTER TABLE ONLY public."Groups" DROP CONSTRAINT "Groups_pkey";
       public                 postgres    false    221            �           2606    16521    Institutes Institutes_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public."Institutes"
    ADD CONSTRAINT "Institutes_pkey" PRIMARY KEY (institute_id);
 H   ALTER TABLE ONLY public."Institutes" DROP CONSTRAINT "Institutes_pkey";
       public                 postgres    false    220            �           2606    16414 #   Specializations Specialization_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public."Specializations"
    ADD CONSTRAINT "Specialization_pkey" PRIMARY KEY (specialization_id);
 Q   ALTER TABLE ONLY public."Specializations" DROP CONSTRAINT "Specialization_pkey";
       public                 postgres    false    218            �           2606    16537    Students Students_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public."Students"
    ADD CONSTRAINT "Students_pkey" PRIMARY KEY (student_id);
 D   ALTER TABLE ONLY public."Students" DROP CONSTRAINT "Students_pkey";
       public                 postgres    false    223            �           2606    16527    Groups Groups_institute_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Groups"
    ADD CONSTRAINT "Groups_institute_fkey" FOREIGN KEY (institute) REFERENCES public."Institutes"(institute_id);
 J   ALTER TABLE ONLY public."Groups" DROP CONSTRAINT "Groups_institute_fkey";
       public               postgres    false    4759    221    220            �           2606    16538    Students Students_group_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Students"
    ADD CONSTRAINT "Students_group_fkey" FOREIGN KEY ("group") REFERENCES public."Groups"(group_number);
 J   ALTER TABLE ONLY public."Students" DROP CONSTRAINT "Students_group_fkey";
       public               postgres    false    223    4761    221            �           2606    16543 %   Students Students_specialization_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Students"
    ADD CONSTRAINT "Students_specialization_fkey" FOREIGN KEY (specialization) REFERENCES public."Specializations"(specialization_id);
 S   ALTER TABLE ONLY public."Students" DROP CONSTRAINT "Students_specialization_fkey";
       public               postgres    false    4757    223    218            4   �   x���v
Q���W((M��L�Sr/�/-(VR�H1��Js�R�t2�K2KJKR5�}B]�4�M����u5��<)6��ܘJ�����3��0cSCS3�fjlbhbf
4̘r�,̌M����� dS�      3   �  x��S=O�P��/.@�&��dbc�($�&N��&���t�������l*X-Ŗ�p�?�[��2���{�{�s��9-�z:�����Y\Yҫ˴�,��$�484K)1�����%�P=,�\xl�?ŵ�U?��W��('u�H�̾���[zz[�rymW�o��i�oN$VS"N�Ȗ�ɓ�lK[И\�$�^(���ɮ 5
��#/� SI����0���ø:����a���5�]�eh@/����|�w���%�7�|���g� ��<E- �6�)��}!h"�4z�ɍ����1�[4�2��9'�Ii(0�5�4�W,��=��YM��f�u&ѓl�+Vu�@UX��>��㦎2e=�^�e��FH�
6Q��������4�E7a=2ዴ?n5����C��=��q���-���gs���+�V�����z��7�{��b=TT]PA���Q�9�} ѝp      1   L  x����J�@��y����P/��4�l,x�X{�Z�^<i�x�Ճ'�bl���f�ș�^�^�ٙd������7���6�N�qw�&��n����2��j�-�9��Z0��{Mhw� ��<ı�C���6
h����OX�s���A��(|��bAO�*��f���YC�����_�u}�M'����H��Q��3�J{��yJ�$~ NMY�DO* �`�gL��lf���)s�;&�u(���HQ� Q+�GIe��N0��
�:̬bI�g���p�%��Wp��?o�m�~��X�ʔn3�+m�J�h~��C�m��\���q~ ����      6   �  x�͓]K�P���oT�b�e��*HbP
΄�d�U�p��n-��R��gx��zΎBD`0��?�؏�v�)��Įԫd0ju��A։F�ߋ�,ɇjl�F:n�ܮ���`�Á��Np�FA������?d5r�C��^7C�i��
�э�F~�T�Z�>�+�Ĺt��s�8>�(��C�T#9x�9l�V����
��1��,����(&�f0�g�0��5r����Z<��0���$~�ǰ��p�x�I�2�H�����\!���u�0݈\�§2��戭,�N�)��?�Ni��z�@IQ��a�y��>��\\�ԴT}U(TK7J�/������D(D��������*,S#"U��V�O���M���N���t��/�r�dq�����/-�'&3�"ٹ     