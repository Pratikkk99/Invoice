PGDMP                      }            postgres    13.21    17.5     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                           false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                           false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                           false            �           1262    13442    postgres    DATABASE     �   CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
    DROP DATABASE postgres;
                     postgres    false            �           0    0    DATABASE postgres    COMMENT     N   COMMENT ON DATABASE postgres IS 'default administrative connection database';
                        postgres    false    3031            �            1259    24662 
   sales_item    TABLE       CREATE TABLE public.sales_item (
    item_id integer,
    sales_order_id integer,
    quantity integer NOT NULL,
    discount numeric(3,2) DEFAULT 0,
    taxable boolean DEFAULT false NOT NULL,
    sales_tax_rate numeric(5,2) DEFAULT 0 NOT NULL,
    id integer NOT NULL
);
    DROP TABLE public.sales_item;
       public         heap r       postgres    false            �            1259    24660    sales_item_id_seq    SEQUENCE     �   CREATE SEQUENCE public.sales_item_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.sales_item_id_seq;
       public               postgres    false    214            �           0    0    sales_item_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.sales_item_id_seq OWNED BY public.sales_item.id;
          public               postgres    false    213            I           2604    24668    sales_item id    DEFAULT     n   ALTER TABLE ONLY public.sales_item ALTER COLUMN id SET DEFAULT nextval('public.sales_item_id_seq'::regclass);
 <   ALTER TABLE public.sales_item ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    214    213    214            �          0    24662 
   sales_item 
   TABLE DATA           n   COPY public.sales_item (item_id, sales_order_id, quantity, discount, taxable, sales_tax_rate, id) FROM stdin;
    public               postgres    false    214   �       �           0    0    sales_item_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.sales_item_id_seq', 2600, true);
          public               postgres    false    213            K           2606    24670    sales_item sales_item_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.sales_item
    ADD CONSTRAINT sales_item_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.sales_item DROP CONSTRAINT sales_item_pkey;
       public                 postgres    false    214            L           2606    24671 "   sales_item sales_item_item_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.sales_item
    ADD CONSTRAINT sales_item_item_id_fkey FOREIGN KEY (item_id) REFERENCES public.item(id);
 L   ALTER TABLE ONLY public.sales_item DROP CONSTRAINT sales_item_item_id_fkey;
       public               postgres    false    214            M           2606    24676 )   sales_item sales_item_sales_order_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.sales_item
    ADD CONSTRAINT sales_item_sales_order_id_fkey FOREIGN KEY (sales_order_id) REFERENCES public.sales_order(id);
 S   ALTER TABLE ONLY public.sales_item DROP CONSTRAINT sales_item_sales_order_id_fkey;
       public               postgres    false    214            �      x������ � �     