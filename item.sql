PGDMP                      }            postgres    13.21    17.5     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                           false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                           false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                           false            �           1262    13442    postgres    DATABASE     �   CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
    DROP DATABASE postgres;
                     postgres    false            �           0    0    DATABASE postgres    COMMENT     N   COMMENT ON DATABASE postgres IS 'default administrative connection database';
                        postgres    false    3027            �            1259    24629    item    TABLE     �   CREATE TABLE public.item (
    product_id integer,
    size integer NOT NULL,
    color character varying(30) NOT NULL,
    picture character varying(256) NOT NULL,
    price numeric(6,2) NOT NULL,
    id integer NOT NULL
);
    DROP TABLE public.item;
       public         heap r       postgres    false            �            1259    24627    item_id_seq    SEQUENCE     �   CREATE SEQUENCE public.item_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.item_id_seq;
       public               postgres    false    210            �           0    0    item_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.item_id_seq OWNED BY public.item.id;
          public               postgres    false    209            F           2604    24632    item id    DEFAULT     b   ALTER TABLE ONLY public.item ALTER COLUMN id SET DEFAULT nextval('public.item_id_seq'::regclass);
 6   ALTER TABLE public.item ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    210    209    210            �          0    24629    item 
   TABLE DATA           K   COPY public.item (product_id, size, color, picture, price, id) FROM stdin;
    public               postgres    false    210   #       �           0    0    item_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.item_id_seq', 701, true);
          public               postgres    false    209            H           2606    24634    item item_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.item
    ADD CONSTRAINT item_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.item DROP CONSTRAINT item_pkey;
       public                 postgres    false    210            I           2606    24635    item item_product_id_fkey    FK CONSTRAINT     }   ALTER TABLE ONLY public.item
    ADD CONSTRAINT item_product_id_fkey FOREIGN KEY (product_id) REFERENCES public.product(id);
 C   ALTER TABLE ONLY public.item DROP CONSTRAINT item_product_id_fkey;
       public               postgres    false    210            �   �  x����n1���S�	�8?�ٖV�eS�U[h{Q!�{�,n'S�tw9�8���tk�?��M�Ώ�O�W��秄�@%Q����������1��	j��$��* l�m� ����R�����$]?�|�~)�MM02����?�� �*h�b{�������}��ߧKA)����19ª$2�f�Qh��a�2%}����u5��d�E����o�撚��>Q�n�`��t�Y��3�^�o�[_p�.������1%��2Y�� k�6���k����F����љ��p=b��n�Zcj����͡ �wmޒ7Z�꺞�a��Y���:r��U��-���-OK����y~wK4����{+l�+Ѽ�5f@;�˚NJ��� 7|��M�f˞�V-I�(�|�e[[��[ji�h����Z-�%#�4�E@�.䁘���2�}��G�@w���_,ڻ�h^j��;4���eBw7������LӍ�����n6(�Zԛ7�Nz(}���M�[,%�E��2{�l@�5���	��u�a���Z�y���DKʺ�N��L�({���j�1�F��j��F������bPQ*�@E�( E�� T��BPq*>*�@�A�A��8��c��T�J"PI*9*�A%�$����c��TzT�JCPi*@��4 �F�� T�6���z�����R��ߥ�w�|�q����ڇ�3��$�z�     