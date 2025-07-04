PGDMP                      }            postgres    13.21    17.5     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                           false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                           false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                           false            �           1262    13442    postgres    DATABASE     �   CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
    DROP DATABASE postgres;
                     postgres    false            �           0    0    DATABASE postgres    COMMENT     N   COMMENT ON DATABASE postgres IS 'default administrative connection database';
                        postgres    false    3028            �            1259    24642    sales_order    TABLE     �  CREATE TABLE public.sales_order (
    cust_id integer,
    sales_person_id integer,
    time_order_taken timestamp without time zone NOT NULL,
    purchase_order_number bigint NOT NULL,
    credit_card_number character varying(16) NOT NULL,
    credit_card_exper_month smallint NOT NULL,
    credit_card_exper_day smallint NOT NULL,
    credit_card_secret_code smallint NOT NULL,
    name_on_card character varying(100) NOT NULL,
    id integer NOT NULL
);
    DROP TABLE public.sales_order;
       public         heap r       postgres    false            �            1259    24640    sales_order_id_seq    SEQUENCE     �   CREATE SEQUENCE public.sales_order_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.sales_order_id_seq;
       public               postgres    false    212            �           0    0    sales_order_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.sales_order_id_seq OWNED BY public.sales_order.id;
          public               postgres    false    211            F           2604    24645    sales_order id    DEFAULT     p   ALTER TABLE ONLY public.sales_order ALTER COLUMN id SET DEFAULT nextval('public.sales_order_id_seq'::regclass);
 =   ALTER TABLE public.sales_order ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    212    211    212            �          0    24642    sales_order 
   TABLE DATA           �   COPY public.sales_order (cust_id, sales_person_id, time_order_taken, purchase_order_number, credit_card_number, credit_card_exper_month, credit_card_exper_day, credit_card_secret_code, name_on_card, id) FROM stdin;
    public               postgres    false    212   �       �           0    0    sales_order_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.sales_order_id_seq', 500, true);
          public               postgres    false    211            H           2606    24647    sales_order sales_order_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.sales_order
    ADD CONSTRAINT sales_order_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.sales_order DROP CONSTRAINT sales_order_pkey;
       public                 postgres    false    212            I           2606    24648 $   sales_order sales_order_cust_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.sales_order
    ADD CONSTRAINT sales_order_cust_id_fkey FOREIGN KEY (cust_id) REFERENCES public.customer(id);
 N   ALTER TABLE ONLY public.sales_order DROP CONSTRAINT sales_order_cust_id_fkey;
       public               postgres    false    212            J           2606    24653 ,   sales_order sales_order_sales_person_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.sales_order
    ADD CONSTRAINT sales_order_sales_person_id_fkey FOREIGN KEY (sales_person_id) REFERENCES public.sales_person(id);
 V   ALTER TABLE ONLY public.sales_order DROP CONSTRAINT sales_order_sales_person_id_fkey;
       public               postgres    false    212            �      x��YM�[�<?�
�3�=_��1�`]b����LHX�5vW1�_���x�Y�-M��؜������KX��������9�s��3	�]HKTu���,�:��,qQ�o�n���?\^����ȡ�p����գ/�X�������Ĳ�PK�>E/��Ż%䥦�|��]��������p�K?�ɇS���y����|��"�"�z��jX����[�r��z}>�����~��dw�r
���Y��[�\�[|av�%W�Ź���ܢ▧�������ח�ߟ�^xg=Ȣ#d=y�YΡ��߹���R�%�8��R��Ju�p�t{��^��o�L<��=?�Nޝ\�#�;��	q���P��*)'�m��l^������I�wN-����9(B��I�9��8���˵"2O�K��<��ݾ\�?�?�����+|B�G�!�]j?C����T����*���dd����|���u�I9�����$��ή����丆X3�G�g>nK^A�����/Xg�vB���±��p�BE�/9���`���|w�������|?�O�3�������/)�� �ȯhŕ2��v姗[���)#f8���Ν]�1C�!�]t%:)�h�<*�1�}���_�[�ч2���G�B�gן��>��1V<B@�]FY��2����r;>]>��)+��SH|HA��

'�ٹR�5�r5�q��.�w$�ϗ��;�Y*�Kz=:�0��/���$\7F`�J�Q#XQ}~�4���~�̘(�2��ef��s�g�K�3����ߒ82��j���x���_~�!AB>|X�1��]b�bG9P��Ң�I��2��V����y�X��I�Q2� �^�,pV���՚p|\<�|�����.�}zyE�r��N>���u��A�(�,E8^����,�o�w��?h6���3��Q��[#�
���'+��7Y�0%�UL�g߱�Q/ѣt�	�1��ƖL¹|���T��p<S</,dD'gWή�i-�W�����A�o�7Ȅp�+��16�1�[p"`�J�:s���������o��s��~8��j��X�"!���%!L��n��p��ү��L��� md��Dj��BHNз<��(�ї' C�Qld 5��v�{��R��\Ax*5��䇲[�y�����v�D�L���L����hn�5���V�����}@J�����wx������dp4��u�j���/d��|bʮ����ѣ*���C��ZC��{O�����/���7�����e6�>"�r�A4h���`_3��J�l�|,$ej�I2�q���B8��R.u��"s �P3�
@Xs���{�2��5i�5*O�vC}A�x��K�:A�h�
����Z�@"OI���l�k�li�w$�S� �ε�@!�_�A��]�G��bF��N1��9B�dU��&��_
 ���=ۢ�0_O�+��� ��J �t�X���ՠ(X��_n[^�a��:�Q�٧����Ԙ &q5��{e���`�e�I�oҦ���! ���$���N�.�%R7,���+ݴ~�>��F?�ʧ[-4B�fU�h�5�-q��R���C�?-���ڠ<D���Sx�Bd�(�#ΊJ0� 4l=Ȧ8
M����5;0�R25$&P�(�o__~ōՑp6��R� ��PI�Ă���R�P@�Iy_�j�	T�kǩ�֧HV�Q��T@���X��[6	2ѢMw� R!�pa)`*VV@z��#&@���Suy��gc��S���D���ᘒ2;z|�TdF}��d���H��G����cX�4��UF�!#������BƧR[����qfOU��V����M��P����i"��4,҂~MZ�b~�L	����5�Md#���ô�y%\����2�u(ʻ.�6�VԈ_o�sE���)GQ��
$b�@�p��`f��F4�Bq�g$w��P'J˂Dg�#�T!wH^�~���g)k=�iz�W7��褈���F���4�)�w�1�=e�,�C^6pC��K)�iwH>A� +�pYDƝkbS���9��bNT#�#���aIh$�� 
G+̬>`���&�H`3ۭ�dp�>���I�#rf�qSQ�K�����lemR�>7��^�[��I�l�
(aBw����=G
��};s.�������z)s�����NF��H�l��r���!�U8��Bƀ�ˆ�s�%oZn��7;nߴv�w���v�L�X0���j&& A���Eʯm�s}� �K/�����̐���c�_h8�o9�F�9ߺ��s��mL��	�@��ΐ6.���Z��-Zb]9���˃h16�� bL+��k	�_Đ��\gO��Mr�zi$�����Bbc#!�����ӄH#�<'��H�g5oB�N�0fR?�0U$И�h�xD�����Y()����|˥¾�����zn7T���h-nR$�J��RZ#�	��JA#��h;�,G�Y�����u�vĝ���'t�����\���.H#;���Й�*F�\�3Wj#)��-*C�J/E"4j�����1�Q�0�i�D�E�܌�eP�wKB�@��k\�]�W�s���i�-m`V��j$#�O��P��+R�k�He�n���YtL��1��b�L�܀,�8�9���MK���[_	��P�RF�qh�"褎�
͹�m���Dgǈ;�T��\E	X&38P.�XM)c��j���l�ؙl2l`06UW���&Q��9�#�8%���㮣� �e�3}C�w;ST��a*�R�ku-%$��2Yq�th�`+���L���+�a��� ���Eǭ=�e����~����$u#���\5g�f<<�P�q@��h����!�	 �.�!����4�@��O�)�mt�Qf�����(9A�\O�d=����"������KS����	�rt�Sh����	�
��ùg�೮Vѕ���ʍa��4���0�{P'����Y����a@o��\�i"�GP�����e
x
��J��3*��H3����mUJR-��sU�p8SB	W�c�8S��Q߅�֋=����fZ��&�+s���F�-dHI��*�u�<�z	S�t�f<E��!���w�K�qF
�6��4Cs9�U�h�}����gʭ!��J�S'nj-�0��.4E9�l[ܰ��RC��K 5����
\��๼.q�W� �$e�)A�2d��̐�4U��J����sJ��UҜ��B�5H^@
�����>��N`O�P�~�9����c#d:9�\��;׈v�gx<�d���e��IZ�9!�y�����a2�P�����U���)��w����gjB�F�9�Hu�(�1���Y�E���<�[�ە���8-�1�m\䰈��va6���d����C���ʬ�e����_�6"T�@X'����R��XS��	��qz���]Z���.@���e!8�9g�Z�-��Z#h��b �@c��R�k�N4C�lg�u�h��IkMy��Xt&��BB�y/xKΏ�Ӥ�uX�q�	Om����+�#3n�M����>�N�\��xkR�>�}Eh����s!�	F�Jݐ�S�������|X�P�sk-un
���dg���o�����5������yOY7Gˍ�P�EAX��21)�l�-M���Ԅj��CR��3���L��8qc�������ܮq��^�{�b�ŋ�/�^�X{�b�ŋ�/�^��z�� /^�x1���ڋ�x��/^L�x1���ڋk/^l�x1���ڋc/^��x����؋k/^�ŋ�/�^�<k/^�x1���؋c/^��x����֋S/^L�x1���ދs/^L�x����^��{�b�ŋ�/�^�{�b�ŋ�/�^��{�b���#�x1���؋k/^��x����ڋc/^�x1���ڋs/^L�x1���ҋs/^L�x����֋c/^̽xy�/�^�X{�b�ŋ�/�^�X{�b�ŋ�/�^��z�b�ŋ�/�^��{�b�ŋ�/�^�Xz� �  b�ŋ���^�{�j�ū���^�Z{�j�ū���^��z�� /^��x5���ڋ�x��/^M�x5���ڋWk/^m�x5���ڋWc/^��x����؋Wk/^�ū���^�>Wk/^��x5���؋Wc/^��x����֋WS/^M�x5���ދWs/^M�x����^��{�j�ū���^�{�j�ū���^��{�j���#�x5���؋Wk/^��x����ڋWc/^��x5���ڋWs/^M�x5���ҋWs/^M�x����֋Wc/^ͽx}���^�Z{�j�ū���^�Z{�j�ū���^��z�j�ū���^��{�j�ū���^�Zz�j�ū���s�Ms���@��=!,��m�g@�B`��oU����^��]�n���|��x���� �|�     