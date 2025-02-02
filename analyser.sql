PGDMP         ;    	            x           sq_analyser    10.6    12.0 J    L           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            M           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            N           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            O           1262    16395    sq_analyser    DATABASE     }   CREATE DATABASE sq_analyser WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.UTF-8' LC_CTYPE = 'en_US.UTF-8';
    DROP DATABASE sq_analyser;
                in2code    false            P           0    0    SCHEMA public    ACL     �   REVOKE ALL ON SCHEMA public FROM rdsadmin;
REVOKE ALL ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO in2code;
GRANT ALL ON SCHEMA public TO PUBLIC;
                   in2code    false    3            �            1259    16474    se_asn    SEQUENCE     o   CREATE SEQUENCE public.se_asn
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
    DROP SEQUENCE public.se_asn;
       public          in2code    false            �            1259    16462    se_cdn    SEQUENCE     o   CREATE SEQUENCE public.se_cdn
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
    DROP SEQUENCE public.se_cdn;
       public          in2code    false            �            1259    16415    se_instituicao    SEQUENCE     w   CREATE SEQUENCE public.se_instituicao
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.se_instituicao;
       public          in2code    false            �            1259    16525    se_interface    SEQUENCE     u   CREATE SEQUENCE public.se_interface
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.se_interface;
       public          in2code    false            �            1259    16537    se_interface_detalhe    SEQUENCE     }   CREATE SEQUENCE public.se_interface_detalhe
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.se_interface_detalhe;
       public          in2code    false            �            1259    16545    se_port_influxdb    SEQUENCE     �   CREATE SEQUENCE public.se_port_influxdb
    START WITH 10000
    INCREMENT BY 1
    MINVALUE 10000
    MAXVALUE 19999
    CACHE 1;
 '   DROP SEQUENCE public.se_port_influxdb;
       public          in2code    false            �            1259    16547    se_port_nfcapd    SEQUENCE     �   CREATE SEQUENCE public.se_port_nfcapd
    START WITH 20000
    INCREMENT BY 1
    MINVALUE 20000
    MAXVALUE 29999
    CACHE 1;
 %   DROP SEQUENCE public.se_port_nfcapd;
       public          in2code    false            �            1259    16549    se_port_sfcapd    SEQUENCE     �   CREATE SEQUENCE public.se_port_sfcapd
    START WITH 30000
    INCREMENT BY 1
    MINVALUE 30000
    MAXVALUE 39999
    CACHE 1;
 %   DROP SEQUENCE public.se_port_sfcapd;
       public          in2code    false            �            1259    16513    se_porta    SEQUENCE     q   CREATE SEQUENCE public.se_porta
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
    DROP SEQUENCE public.se_porta;
       public          in2code    false            �            1259    16486 
   se_prefixo    SEQUENCE     s   CREATE SEQUENCE public.se_prefixo
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 !   DROP SEQUENCE public.se_prefixo;
       public          in2code    false            �            1259    16498    se_prefixo_detalhe    SEQUENCE     {   CREATE SEQUENCE public.se_prefixo_detalhe
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.se_prefixo_detalhe;
       public          in2code    false            �            1259    16447 	   se_router    SEQUENCE     r   CREATE SEQUENCE public.se_router
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
     DROP SEQUENCE public.se_router;
       public          in2code    false            �            1259    16432 
   se_usuario    SEQUENCE     s   CREATE SEQUENCE public.se_usuario
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 !   DROP SEQUENCE public.se_usuario;
       public          in2code    false            �            1259    16464    tb_asn    TABLE     A  CREATE TABLE public.tb_asn (
    id numeric(12,0) NOT NULL,
    nome_as character varying(255) NOT NULL,
    asn numeric(10,0) NOT NULL,
    id_router numeric(12,0),
    versao numeric(9,0) NOT NULL,
    data_ult_alteracao timestamp without time zone NOT NULL,
    usuario_ult_alteracao character varying(20) NOT NULL
);
    DROP TABLE public.tb_asn;
       public            in2code    false            �            1259    16449    tb_cdn    TABLE     r  CREATE TABLE public.tb_cdn (
    id numeric(12,0) NOT NULL,
    nome character varying(50) NOT NULL,
    descricao character varying(600),
    bloco character varying(30) NOT NULL,
    id_instituicao numeric(12,0),
    versao numeric(9,0) NOT NULL,
    data_ult_alteracao timestamp without time zone NOT NULL,
    usuario_ult_alteracao character varying(20) NOT NULL
);
    DROP TABLE public.tb_cdn;
       public            in2code    false            �            1259    16406    tb_instituicao    TABLE     �  CREATE TABLE public.tb_instituicao (
    id numeric(12,0) NOT NULL,
    codigo_cliente numeric(12,0) NOT NULL,
    nome character varying(600) NOT NULL,
    nome_fantasia character varying(255),
    cpfcnpj character varying(16) NOT NULL,
    situacao character varying(1) DEFAULT 'A'::character varying NOT NULL,
    tipo_logradouro character varying(30),
    logradouro character varying(255),
    numero character varying(6),
    complemento character varying(60),
    bairro character varying(60),
    uf character varying(2),
    cidade character varying(150),
    telefone_contato character varying(15),
    email_contato character varying(100),
    porta_influxdb numeric(12,0) NOT NULL,
    porta_nfcapd numeric(12,0) NOT NULL,
    porta_sfcapd numeric(12,0) NOT NULL,
    versao numeric(9,0) NOT NULL,
    data_ult_alteracao timestamp without time zone NOT NULL,
    usuario_ult_alteracao character varying(20) NOT NULL
);
 "   DROP TABLE public.tb_instituicao;
       public            in2code    false            �            1259    16515    tb_interface    TABLE     .  CREATE TABLE public.tb_interface (
    id numeric(12,0) NOT NULL,
    nome_interface character varying(255) NOT NULL,
    id_router numeric(12,0),
    versao numeric(9,0) NOT NULL,
    data_ult_alteracao timestamp without time zone NOT NULL,
    usuario_ult_alteracao character varying(20) NOT NULL
);
     DROP TABLE public.tb_interface;
       public            in2code    false            �            1259    16527    tb_interface_detalhe    TABLE     2  CREATE TABLE public.tb_interface_detalhe (
    id numeric(12,0) NOT NULL,
    codigo_interface numeric(19,0) NOT NULL,
    id_interface numeric(12,0),
    versao numeric(9,0) NOT NULL,
    data_ult_alteracao timestamp without time zone NOT NULL,
    usuario_ult_alteracao character varying(20) NOT NULL
);
 (   DROP TABLE public.tb_interface_detalhe;
       public            in2code    false            �            1259    16500    tb_porta    TABLE     �  CREATE TABLE public.tb_porta (
    id numeric(12,0) NOT NULL,
    porta_ini numeric(5,0) NOT NULL,
    porta_fim numeric(5,0),
    operador_ini character varying(2),
    operador_conexao character varying(3),
    operador_fim character varying(2),
    id_router numeric(12,0),
    versao numeric(9,0) NOT NULL,
    data_ult_alteracao timestamp without time zone NOT NULL,
    usuario_ult_alteracao character varying(20) NOT NULL,
    CONSTRAINT ck_porta_01 CHECK ((((operador_ini)::text = '>'::text) OR ((operador_ini)::text = '<'::text) OR ((operador_ini)::text = '>='::text) OR ((operador_ini)::text = '<='::text) OR ((operador_ini)::text = '='::text) OR ((operador_ini)::text = '!='::text) OR ((operador_ini)::text = NULL::text))),
    CONSTRAINT ck_porta_02 CHECK ((((operador_fim)::text = '>'::text) OR ((operador_fim)::text = '<'::text) OR ((operador_fim)::text = '>='::text) OR ((operador_fim)::text = '<='::text) OR ((operador_fim)::text = '='::text) OR ((operador_fim)::text = '!='::text) OR ((operador_fim)::text = NULL::text))),
    CONSTRAINT ck_porta_03 CHECK ((((operador_conexao)::text = 'and'::text) OR ((operador_ini)::text = 'or'::text) OR ((operador_ini)::text = NULL::text)))
);
    DROP TABLE public.tb_porta;
       public            in2code    false            �            1259    16476 
   tb_prefixo    TABLE     *  CREATE TABLE public.tb_prefixo (
    id numeric(12,0) NOT NULL,
    nome_prefixo character varying(255) NOT NULL,
    id_router numeric(12,0),
    versao numeric(9,0) NOT NULL,
    data_ult_alteracao timestamp without time zone NOT NULL,
    usuario_ult_alteracao character varying(20) NOT NULL
);
    DROP TABLE public.tb_prefixo;
       public            in2code    false            �            1259    16488    tb_prefixo_detalhe    TABLE     4  CREATE TABLE public.tb_prefixo_detalhe (
    id numeric(12,0) NOT NULL,
    codigo_prefixo character varying(30) NOT NULL,
    id_prefixo numeric(12,0),
    versao numeric(9,0) NOT NULL,
    data_ult_alteracao timestamp without time zone NOT NULL,
    usuario_ult_alteracao character varying(20) NOT NULL
);
 &   DROP TABLE public.tb_prefixo_detalhe;
       public            in2code    false            �            1259    16434 	   tb_router    TABLE     �  CREATE TABLE public.tb_router (
    id numeric(12,0) NOT NULL,
    nome_bgp character varying(255) NOT NULL,
    ip_flows character varying(15) NOT NULL,
    taxa_amostragem numeric(10,0) NOT NULL,
    intervalo_flow_ativo numeric(2,0),
    comunidade_snmp character varying(600),
    modo character varying(6) NOT NULL,
    id_instituicao numeric(12,0),
    versao numeric(9,0) NOT NULL,
    data_ult_alteracao timestamp without time zone NOT NULL,
    usuario_ult_alteracao character varying(20) NOT NULL
);
    DROP TABLE public.tb_router;
       public            in2code    false            �            1259    16417 
   tb_usuario    TABLE       CREATE TABLE public.tb_usuario (
    id numeric(12,0) NOT NULL,
    nome character varying(600) NOT NULL,
    email character varying(1200),
    usuario character varying(100) NOT NULL,
    senha character varying(100) NOT NULL,
    dica_senha character varying(600),
    situacao character varying(1),
    tipo_usuario character varying(2),
    id_instituicao numeric(12,0),
    versao numeric(9,0) NOT NULL,
    data_ult_alteracao timestamp without time zone NOT NULL,
    usuario_ult_alteracao character varying(20) NOT NULL
);
    DROP TABLE public.tb_usuario;
       public            in2code    false            ;          0    16464    tb_asn 
   TABLE DATA           p   COPY public.tb_asn (id, nome_as, asn, id_router, versao, data_ult_alteracao, usuario_ult_alteracao) FROM stdin;
    public          in2code    false    204   c       9          0    16449    tb_cdn 
   TABLE DATA              COPY public.tb_cdn (id, nome, descricao, bloco, id_instituicao, versao, data_ult_alteracao, usuario_ult_alteracao) FROM stdin;
    public          in2code    false    202   �d       3          0    16406    tb_instituicao 
   TABLE DATA           *  COPY public.tb_instituicao (id, codigo_cliente, nome, nome_fantasia, cpfcnpj, situacao, tipo_logradouro, logradouro, numero, complemento, bairro, uf, cidade, telefone_contato, email_contato, porta_influxdb, porta_nfcapd, porta_sfcapd, versao, data_ult_alteracao, usuario_ult_alteracao) FROM stdin;
    public          in2code    false    196   xf       C          0    16515    tb_interface 
   TABLE DATA           x   COPY public.tb_interface (id, nome_interface, id_router, versao, data_ult_alteracao, usuario_ult_alteracao) FROM stdin;
    public          in2code    false    212   �k       E          0    16527    tb_interface_detalhe 
   TABLE DATA           �   COPY public.tb_interface_detalhe (id, codigo_interface, id_interface, versao, data_ult_alteracao, usuario_ult_alteracao) FROM stdin;
    public          in2code    false    214   �m       A          0    16500    tb_porta 
   TABLE DATA           �   COPY public.tb_porta (id, porta_ini, porta_fim, operador_ini, operador_conexao, operador_fim, id_router, versao, data_ult_alteracao, usuario_ult_alteracao) FROM stdin;
    public          in2code    false    210   Mo       =          0    16476 
   tb_prefixo 
   TABLE DATA           t   COPY public.tb_prefixo (id, nome_prefixo, id_router, versao, data_ult_alteracao, usuario_ult_alteracao) FROM stdin;
    public          in2code    false    206   jo       ?          0    16488    tb_prefixo_detalhe 
   TABLE DATA              COPY public.tb_prefixo_detalhe (id, codigo_prefixo, id_prefixo, versao, data_ult_alteracao, usuario_ult_alteracao) FROM stdin;
    public          in2code    false    208   Op       7          0    16434 	   tb_router 
   TABLE DATA           �   COPY public.tb_router (id, nome_bgp, ip_flows, taxa_amostragem, intervalo_flow_ativo, comunidade_snmp, modo, id_instituicao, versao, data_ult_alteracao, usuario_ult_alteracao) FROM stdin;
    public          in2code    false    200   �q       5          0    16417 
   tb_usuario 
   TABLE DATA           �   COPY public.tb_usuario (id, nome, email, usuario, senha, dica_senha, situacao, tipo_usuario, id_instituicao, versao, data_ult_alteracao, usuario_ult_alteracao) FROM stdin;
    public          in2code    false    198   �s       Q           0    0    se_asn    SEQUENCE SET     5   SELECT pg_catalog.setval('public.se_asn', 27, true);
          public          in2code    false    205            R           0    0    se_cdn    SEQUENCE SET     5   SELECT pg_catalog.setval('public.se_cdn', 59, true);
          public          in2code    false    203            S           0    0    se_instituicao    SEQUENCE SET     =   SELECT pg_catalog.setval('public.se_instituicao', 66, true);
          public          in2code    false    197            T           0    0    se_interface    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.se_interface', 53, true);
          public          in2code    false    213            U           0    0    se_interface_detalhe    SEQUENCE SET     C   SELECT pg_catalog.setval('public.se_interface_detalhe', 53, true);
          public          in2code    false    215            V           0    0    se_port_influxdb    SEQUENCE SET     B   SELECT pg_catalog.setval('public.se_port_influxdb', 10065, true);
          public          in2code    false    216            W           0    0    se_port_nfcapd    SEQUENCE SET     @   SELECT pg_catalog.setval('public.se_port_nfcapd', 20065, true);
          public          in2code    false    217            X           0    0    se_port_sfcapd    SEQUENCE SET     @   SELECT pg_catalog.setval('public.se_port_sfcapd', 30065, true);
          public          in2code    false    218            Y           0    0    se_porta    SEQUENCE SET     7   SELECT pg_catalog.setval('public.se_porta', 15, true);
          public          in2code    false    211            Z           0    0 
   se_prefixo    SEQUENCE SET     9   SELECT pg_catalog.setval('public.se_prefixo', 31, true);
          public          in2code    false    207            [           0    0    se_prefixo_detalhe    SEQUENCE SET     A   SELECT pg_catalog.setval('public.se_prefixo_detalhe', 46, true);
          public          in2code    false    209            \           0    0 	   se_router    SEQUENCE SET     8   SELECT pg_catalog.setval('public.se_router', 71, true);
          public          in2code    false    201            ]           0    0 
   se_usuario    SEQUENCE SET     9   SELECT pg_catalog.setval('public.se_usuario', 98, true);
          public          in2code    false    199            �           2606    16468    tb_asn pk_asn 
   CONSTRAINT     K   ALTER TABLE ONLY public.tb_asn
    ADD CONSTRAINT pk_asn PRIMARY KEY (id);
 7   ALTER TABLE ONLY public.tb_asn DROP CONSTRAINT pk_asn;
       public            in2code    false    204            �           2606    16456    tb_cdn pk_cdn 
   CONSTRAINT     K   ALTER TABLE ONLY public.tb_cdn
    ADD CONSTRAINT pk_cdn PRIMARY KEY (id);
 7   ALTER TABLE ONLY public.tb_cdn DROP CONSTRAINT pk_cdn;
       public            in2code    false    202            �           2606    16414    tb_instituicao pk_instituicao 
   CONSTRAINT     [   ALTER TABLE ONLY public.tb_instituicao
    ADD CONSTRAINT pk_instituicao PRIMARY KEY (id);
 G   ALTER TABLE ONLY public.tb_instituicao DROP CONSTRAINT pk_instituicao;
       public            in2code    false    196            �           2606    16519    tb_interface pk_interface 
   CONSTRAINT     W   ALTER TABLE ONLY public.tb_interface
    ADD CONSTRAINT pk_interface PRIMARY KEY (id);
 C   ALTER TABLE ONLY public.tb_interface DROP CONSTRAINT pk_interface;
       public            in2code    false    212            �           2606    16531 )   tb_interface_detalhe pk_interface_detalhe 
   CONSTRAINT     g   ALTER TABLE ONLY public.tb_interface_detalhe
    ADD CONSTRAINT pk_interface_detalhe PRIMARY KEY (id);
 S   ALTER TABLE ONLY public.tb_interface_detalhe DROP CONSTRAINT pk_interface_detalhe;
       public            in2code    false    214            �           2606    16507    tb_porta pk_porta 
   CONSTRAINT     O   ALTER TABLE ONLY public.tb_porta
    ADD CONSTRAINT pk_porta PRIMARY KEY (id);
 ;   ALTER TABLE ONLY public.tb_porta DROP CONSTRAINT pk_porta;
       public            in2code    false    210            �           2606    16480    tb_prefixo pk_prefixo 
   CONSTRAINT     S   ALTER TABLE ONLY public.tb_prefixo
    ADD CONSTRAINT pk_prefixo PRIMARY KEY (id);
 ?   ALTER TABLE ONLY public.tb_prefixo DROP CONSTRAINT pk_prefixo;
       public            in2code    false    206            �           2606    16492 %   tb_prefixo_detalhe pk_prefixo_detalhe 
   CONSTRAINT     c   ALTER TABLE ONLY public.tb_prefixo_detalhe
    ADD CONSTRAINT pk_prefixo_detalhe PRIMARY KEY (id);
 O   ALTER TABLE ONLY public.tb_prefixo_detalhe DROP CONSTRAINT pk_prefixo_detalhe;
       public            in2code    false    208            �           2606    16441    tb_router pk_router 
   CONSTRAINT     Q   ALTER TABLE ONLY public.tb_router
    ADD CONSTRAINT pk_router PRIMARY KEY (id);
 =   ALTER TABLE ONLY public.tb_router DROP CONSTRAINT pk_router;
       public            in2code    false    200            �           2606    16424    tb_usuario pk_usuario 
   CONSTRAINT     S   ALTER TABLE ONLY public.tb_usuario
    ADD CONSTRAINT pk_usuario PRIMARY KEY (id);
 ?   ALTER TABLE ONLY public.tb_usuario DROP CONSTRAINT pk_usuario;
       public            in2code    false    198            �           2606    16540     tb_instituicao uk_porta_influxdb 
   CONSTRAINT     e   ALTER TABLE ONLY public.tb_instituicao
    ADD CONSTRAINT uk_porta_influxdb UNIQUE (porta_influxdb);
 J   ALTER TABLE ONLY public.tb_instituicao DROP CONSTRAINT uk_porta_influxdb;
       public            in2code    false    196            �           2606    16542    tb_instituicao uk_porta_nfcapd 
   CONSTRAINT     a   ALTER TABLE ONLY public.tb_instituicao
    ADD CONSTRAINT uk_porta_nfcapd UNIQUE (porta_nfcapd);
 H   ALTER TABLE ONLY public.tb_instituicao DROP CONSTRAINT uk_porta_nfcapd;
       public            in2code    false    196            �           2606    16544    tb_instituicao uk_porta_sfcapd 
   CONSTRAINT     a   ALTER TABLE ONLY public.tb_instituicao
    ADD CONSTRAINT uk_porta_sfcapd UNIQUE (porta_sfcapd);
 H   ALTER TABLE ONLY public.tb_instituicao DROP CONSTRAINT uk_porta_sfcapd;
       public            in2code    false    196            �           2606    16431    tb_usuario uk_username 
   CONSTRAINT     T   ALTER TABLE ONLY public.tb_usuario
    ADD CONSTRAINT uk_username UNIQUE (usuario);
 @   ALTER TABLE ONLY public.tb_usuario DROP CONSTRAINT uk_username;
       public            in2code    false    198            �           2606    16457    tb_cdn fk_acdn_instituicao    FK CONSTRAINT     �   ALTER TABLE ONLY public.tb_cdn
    ADD CONSTRAINT fk_acdn_instituicao FOREIGN KEY (id_instituicao) REFERENCES public.tb_instituicao(id) ON DELETE RESTRICT;
 D   ALTER TABLE ONLY public.tb_cdn DROP CONSTRAINT fk_acdn_instituicao;
       public          in2code    false    196    202    3734            �           2606    16469    tb_asn fk_asn_router    FK CONSTRAINT     �   ALTER TABLE ONLY public.tb_asn
    ADD CONSTRAINT fk_asn_router FOREIGN KEY (id_router) REFERENCES public.tb_router(id) ON DELETE RESTRICT;
 >   ALTER TABLE ONLY public.tb_asn DROP CONSTRAINT fk_asn_router;
       public          in2code    false    200    204    3746            �           2606    16532 *   tb_interface_detalhe fk_interface_idetalhe    FK CONSTRAINT     �   ALTER TABLE ONLY public.tb_interface_detalhe
    ADD CONSTRAINT fk_interface_idetalhe FOREIGN KEY (id_interface) REFERENCES public.tb_interface(id) ON DELETE RESTRICT;
 T   ALTER TABLE ONLY public.tb_interface_detalhe DROP CONSTRAINT fk_interface_idetalhe;
       public          in2code    false    214    3758    212            �           2606    16520 %   tb_interface fk_interface_instituicao    FK CONSTRAINT     �   ALTER TABLE ONLY public.tb_interface
    ADD CONSTRAINT fk_interface_instituicao FOREIGN KEY (id_router) REFERENCES public.tb_router(id) ON DELETE RESTRICT;
 O   ALTER TABLE ONLY public.tb_interface DROP CONSTRAINT fk_interface_instituicao;
       public          in2code    false    3746    200    212            �           2606    16508    tb_porta fk_porta_instituicao    FK CONSTRAINT     �   ALTER TABLE ONLY public.tb_porta
    ADD CONSTRAINT fk_porta_instituicao FOREIGN KEY (id_router) REFERENCES public.tb_router(id) ON DELETE RESTRICT;
 G   ALTER TABLE ONLY public.tb_porta DROP CONSTRAINT fk_porta_instituicao;
       public          in2code    false    210    3746    200            �           2606    16493 %   tb_prefixo_detalhe fk_prefixo_detalhe    FK CONSTRAINT     �   ALTER TABLE ONLY public.tb_prefixo_detalhe
    ADD CONSTRAINT fk_prefixo_detalhe FOREIGN KEY (id_prefixo) REFERENCES public.tb_prefixo(id) ON DELETE RESTRICT;
 O   ALTER TABLE ONLY public.tb_prefixo_detalhe DROP CONSTRAINT fk_prefixo_detalhe;
       public          in2code    false    3752    208    206            �           2606    16481 !   tb_prefixo fk_prefixo_instituicao    FK CONSTRAINT     �   ALTER TABLE ONLY public.tb_prefixo
    ADD CONSTRAINT fk_prefixo_instituicao FOREIGN KEY (id_router) REFERENCES public.tb_router(id) ON DELETE RESTRICT;
 K   ALTER TABLE ONLY public.tb_prefixo DROP CONSTRAINT fk_prefixo_instituicao;
       public          in2code    false    206    200    3746            �           2606    16442    tb_router fk_router_instituicao    FK CONSTRAINT     �   ALTER TABLE ONLY public.tb_router
    ADD CONSTRAINT fk_router_instituicao FOREIGN KEY (id_instituicao) REFERENCES public.tb_instituicao(id) ON DELETE RESTRICT;
 I   ALTER TABLE ONLY public.tb_router DROP CONSTRAINT fk_router_instituicao;
       public          in2code    false    196    3734    200            �           2606    16425 !   tb_usuario fk_usuario_instituicao    FK CONSTRAINT     �   ALTER TABLE ONLY public.tb_usuario
    ADD CONSTRAINT fk_usuario_instituicao FOREIGN KEY (id_instituicao) REFERENCES public.tb_instituicao(id) ON DELETE RESTRICT;
 K   ALTER TABLE ONLY public.tb_usuario DROP CONSTRAINT fk_usuario_instituicao;
       public          in2code    false    196    3734    198            ;   }  x�m��n�0����7�].�n��$�p �\��R Ia��QRj') P<�!g'�.�M�0z�uE2��BNl˧���6H���������k���$z6`��.���@��O��}<�Os�(` ��O�'�XZ(�_�?S1�׸B���.OM���"�X�W���j1�=��|hZ�
� �1��$5;Y��9I	|b1I��X2����~W�cq^!�����F�bC��U���xz=�՗���vz����Ώ�j�a�Dg��$�,�y��@�qh�8�n݃s�a����+9ho��ub�xE�QDɖ`]�[�c{i�����n�o�k�C�^tU)��ĥ�W�{��l� ���      9   �  x���Kn�0�5}
��9Ç(�$���R�
Hٸ��M9~�T\�pc7 [�����XS֡����K6��!T|�P[��J��m�«C'�G��_[̀I��L�ť�i���
?�r�h� tk��h��ah7��m�	Q�1�����Q��0�dD��n���6�B�,�ʅ�G3��D F���!��� �rf�06��q����פ<I6I}xg�Y��kRHu*iV�G)F,��Nȩ�KE�>*G����X�뾍e�I;��j���>Tuj�M�w���+�����O`i.��
�L�#ӗ�1BC��٥��.����yx����m:��,a���`
/��
��t��x����/�s+^���Ei��V��q�~<�>�R3nY4de]Ս��cNN�5�Y�~v9(9��i#eSKi��3���)�|Q�K9�i9
�N
d�9�G�v��<��j�f�      3   !  x����n�F��㧘UW11o��8LERҊd3�����q)��}��Z /�e�b=3E
FQ�>�}���C�#J(��._R�e�?TM���j*�Xfn�E�V����ObBb$Qu�(��m��j0��?����n�Ǆ�O���U��T���ۮ�{4��֛'�6��J�����]$pD�[Joi�i��(�����ڭ�́3��LI�y�O���u�VyZ�x��l2e�X4s9ހ�F�\>$�|ԽDK������4O��Ƕׇ�{FE�&G#?u���SD��E"H�������{f�=�r�pb��j��v��O���2� �n�)9��� ��vrQݫ,WNe����#|��-�uǾ;t�\!�< r'}�1c			��<�p�@
��橬��VټR�6�4?���4
Cas��9�l�ۍ�k�=$mw�� U��q��rl7��;�?�����w}�8�0&4���5���턡��,S�*3<��L�:_��Uw����ID�+�?('����Q�x���I@,�^C:!<9Տ�^��_�ND�Q8�gS?�ND>�/CM�\�F�� �V��M�ʉf����	}!8�ýK�������k�^��A��?��^��`�w�N9b�&l�H|��|���	����c����s��A�G��nL���˶�f�Z�Zu�/f�n�8Tg�׻/}Pf)!�S)AqBh"�����3]Xkyu�z��>�ʳ�lЅ|���l�y���o0�a� ��������lA_���f���w��3,�#;���K�
�'�yڶ9v�7�n
��;^.����q�&']��9��ة����j%1h��w��3�{��y��	�JZQ�>\p+��� �-a����q���	ʊ&KqV,UVKkpXV��.��լ��������}	JO����+���?�- Cb00�Ǽ�o���0�W��z��^��z҈��L�L&���b̨5A��N��IT���+3�ͽ�/�e �@��C7�|p���/��w����` �j�8	��U+���r\���i�����
�r�G\�R@8*�TU�zUU`���S��
���$\>C�A���Ƣہ��1�lm����9ZJ,�L�YU��U�����I����0�:)ب|xa��_`��jZX����z{}$�����3����N��/��S����w$��$��ͣ�g`)�H��MB�l�y��G�t����}�����d0�J�������^���?\����ǩ|��@�.���bb f��q����������      C   *  x���;S�0 �Z�+T^
ivWow<�Ł��qi�p&
���g-3���NW�Vڗ0������ק}���{y��Px 0)DE$

���� �#�N3�>3;-�8벣���	��2I4:��CwQ3.͌�1K;.���e�ƥ34v��	�i���D���6���\������!I
:p�[�ƀ33&'ghH�4��Ki�v]��0�����ab�B7
g�K)W��`�6/?��svޠ\��f�4�n֧�զ� �����(I#R��Q���ms�a�C��Dc�\ޔ�g�I�olA ��lsm�T���*
z�c*�̭˳`� GDƫՉ��f͗��� �tx<�P��V������UW�f&F�uv|T��V�f:��Ў�M��L���i�oη�L�n��yo�axV�긚�D�v��A-iPKU]��ca�qKyպ�Dq�p���ʟ{��mMaxYl�ځ��^�;���0���1�";:r��������<g��cA^�o|{�4���`N����Wf���Y�"��>N*�D��/z�X�u}�      E   Z  x�uӹ�!P[E'0�NĲ�Z����=T���HBȠN2�IY�S�z1/��uq��z ��+�q#䪤R�<JH6|S�[K�u�[)R��̍�DH�P�@�@YQ�q:DF�+��U�@]�K���1*�UR��E>Ig�$N]���^��'�Keq���&�B�fM*uND�L5|O90+��=U�h��R}O9��W	浧�+��M*_�K��2(Ă�]
v��+�V��r�V�~vyBy���r����Y�����q�x�}��!����݋��_6�kS�=��ϟ
ӗ�#��]=G�'��m�$G��y)㽭�T[�ް��x<���ȶ      A      x������ � �      =   �   x�u��N1�k�S�$�ر��(H[��t���d�8�+3�.�}'(��Q���"5�M%f1��ZPi;_��t�{خo��@@]a͸�էBx:Sd!+����	�S������o?ގZp������#p�����~H�
�f�R���ZB?���\�L��߼<@�+J3="cl��ӫxJ�)�^���8�c�6��G\��^FE      ?   =  x���Ir� �5>�/`Z_��v��MV��"��"��e{C�,4 
P��k�s�
L���A�CY���sj��)f�^	�o�5�J�A,`���H-QS��� ��K?�5�9�b���L.E�)$p%_�J�=䕐)r@���y,^�'��I�܉�AD�� ��"<�4O�K4��z��_�E�o���hTZB/~7�S��������e|'x�L�b�Τ:���{����ҍ�bʍI�Q,������3e�M�x{>�9��F;�G �'�-[�vԖ��$��w�"����|�`1������.�ٓ��m����\      7     x�}��n�@������p���8n�C��r)������r�ʰ~��n�3�x��wȕ��|!vpo�{
���⏽;|���\,��0�����[���ߛ:��L��,1�1_2��blT�f�h�gf*��B�U&�LYTc
�GӫCNLe%�<���_A��Ca����ܠ���|2��8������֡$U`��$��� h�I0��;�8�:�=����4�Xx����g�R�x�w�������2oH
���V�y'������إ���б�Nx�q?[�H�rv�^�P�]�� �qV����,�+U�mHҗ��t��~@jZPM?�1�;��9�;���9����e����KB=ì�gΟ��P{�����YQezOT���`V�{x^��;t��n�=����X�V%�2�b=��b��z���i%q޺ 	��o�c8�Vr/;���z�Q�E��<e]�A�A��T�T����WS��$�í-=���t���d3WLm���>u������}Z��4w�����z��f��C��      5   �  x���Kn�H�ץS�rf!��_${%���v0�l�dK�N�t��&�"��/�i=�	�`5U_���T R��<�J0բ����UT�u��_T����n8|���9P`�9�ń1-�4����1���5��)[O��7�_��/�s�ip����5�hK{$oRA3�ַ���
p�<'r�B#��bP��,�{a��j�Waw����tR��P���&�� JI'DB0�Bj.��^T��j�z�Ԓ�k�6�v��
Q�RXԦ�nW��7�;���q4�T<�FUlfs���r̓h�ǉbxq:ru[����4
��6�	�鱷�g̓��N�h�"�NrX�'[�e��n��[W5�?����b��	tR� F��r�"��5��Q���6[_�ޑw��ꖼY�o����\.������z�Am|�v����Տ�[�K۵P䛂�Erf^r�"'(�@�1�h<�a_��yv����Lc�бo�~+{���>��zl1=H�$Y�ق j�I����Qr�6�!oǽ �{����Q�q�`�ۮ��f���1 ��!8]%M���ThƣT�)����wm �C�+���=w��{�J�k)4��
F��%��)�з�y����%4CSbwEx��	[�ۺ-Lsv�� _��\�*�JX�5X(�DN����	�qZhM��M5���uJ�ٸ��D#�b5~�pr�yr��LX�OC�i��Y4B���B��/�LN��`�)j�F4}��C4��~��     