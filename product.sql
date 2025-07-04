PGDMP  9                    }            postgres    13.21    17.5     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                           false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                           false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                           false            �           1262    13442    postgres    DATABASE     �   CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
    DROP DATABASE postgres;
                     postgres    false            �           0    0    DATABASE postgres    COMMENT     N   COMMENT ON DATABASE postgres IS 'default administrative connection database';
                        postgres    false    3027            �            1259    24613    product    TABLE     �   CREATE TABLE public.product (
    type_it integer,
    name character varying(30) NOT NULL,
    supplier character varying(30) NOT NULL,
    description text NOT NULL,
    id integer NOT NULL
);
    DROP TABLE public.product;
       public         heap r       postgres    false            �            1259    24611    product_id_seq    SEQUENCE     �   CREATE SEQUENCE public.product_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.product_id_seq;
       public               postgres    false    208            �           0    0    product_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.product_id_seq OWNED BY public.product.id;
          public               postgres    false    207            F           2604    24616 
   product id    DEFAULT     h   ALTER TABLE ONLY public.product ALTER COLUMN id SET DEFAULT nextval('public.product_id_seq'::regclass);
 9   ALTER TABLE public.product ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    208    207    208            �          0    24613    product 
   TABLE DATA           K   COPY public.product (type_it, name, supplier, description, id) FROM stdin;
    public               postgres    false    208   N       �           0    0    product_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.product_id_seq', 40, true);
          public               postgres    false    207            H           2606    24621    product product_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.product
    ADD CONSTRAINT product_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.product DROP CONSTRAINT product_pkey;
       public                 postgres    false    208            I           2606    24622    product product_type_it_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.product
    ADD CONSTRAINT product_type_it_fkey FOREIGN KEY (type_it) REFERENCES public.product_type(id);
 F   ALTER TABLE ONLY public.product DROP CONSTRAINT product_type_it_fkey;
       public               postgres    false    208            �   d  x��VMo�8=ӿbN=%�)9qrt�Rq$EO{���Ě"������(��X,�¦n/�,r�y3� )n����XÖޕ��eo�
A��I�e��O��Lё��Q�MG��z�J��=^U�KҖV-{](��k��!z�2�b�^�3�p�6Dg�@��;zt}�p�����1�=oU�#|�B����Җ��ȼ|_ �m
]c��*� ��@�؟Q��;8��1��|J���{�5��B�g��1p9��W���t�T�k��(+zƭ1h��t���2���7�F�BDw�@*�/��.���'���T��*F�r�g4�ѝNr�j��9p����.8�l��уm���u��?��B��r�Ҟ�ꉲ��YQ|�[_@�s]+�g�t@���]�� ���jϘ����F�B\E��GV�����u�DN���(�D>��G�#��c0��YW�\��Y��)�lx�7T�����@� �r����V�M5)ѠT�{�&y�\Q� �4i������6��+ƽq?j[���[�C��J� d��nUd&^{�=, m��2��Q�_����<�Q2���o?�����/�g-�0��n�n�p

��A?r:2�=7��"t��%�a���/�\$�f_`�-��1pE���"�È��0�&�t��kՐ��z0���F���<��ȫ	V#�S�F^O5y3�m���b7��E�&�~��d���M�8��d��&�z1����~~B�J?�~4ü}�#w����z��ٱ�"C�S~�eק���f�m�󩶙˩��gSl3�����m�?�6���|yJ�̯'�f~�b����/�)g\�f�� �%x     