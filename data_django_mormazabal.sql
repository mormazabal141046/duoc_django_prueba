PGDMP         
                z            django_mormazabal    13.7    13.7     J           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            K           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            L           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            M           1262    16596    django_mormazabal    DATABASE     m   CREATE DATABASE django_mormazabal WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Spanish_Spain.1252';
 !   DROP DATABASE django_mormazabal;
                postgres    false            <          0    16647 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public          postgres    false    211   ?       >          0    16657    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public          postgres    false    213   ?       :          0    16639    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public          postgres    false    209          @          0    16665 	   auth_user 
   TABLE DATA           ?   COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public          postgres    false    215   ?       B          0    16675    auth_user_groups 
   TABLE DATA           A   COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
    public          postgres    false    217          D          0    16683    auth_user_user_permissions 
   TABLE DATA           P   COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public          postgres    false    219   +       1          0    16597    contacto 
   TABLE DATA           `   COPY public.contacto (codigo, nombres, apellidos, email, telefono, asunto, mensaje) FROM stdin;
    public          postgres    false    200   H       F          0    16743    django_admin_log 
   TABLE DATA           ?   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public          postgres    false    221   ?       8          0    16629    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public          postgres    false    207   ?       6          0    16618    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          postgres    false    205   ?       G          0    16774    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public          postgres    false    222   b       3          0    16605    usuario 
   TABLE DATA           i   COPY public.usuario (codigo, run, nombres, apellidos, email, telefono, membresia, fecha_nac) FROM stdin;
    public          postgres    false    202          Y           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
          public          postgres    false    210            Z           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
          public          postgres    false    212            [           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 72, true);
          public          postgres    false    208            \           0    0    auth_user_groups_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);
          public          postgres    false    216            ]           0    0    auth_user_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.auth_user_id_seq', 1, false);
          public          postgres    false    214            ^           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);
          public          postgres    false    218            _           0    0    contacto_codigo_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.contacto_codigo_seq', 7, true);
          public          postgres    false    201            `           0    0    django_admin_log_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1, false);
          public          postgres    false    220            a           0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 18, true);
          public          postgres    false    206            b           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 18, true);
          public          postgres    false    204            c           0    0    usuario_codigo_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.usuario_codigo_seq', 3, true);
          public          postgres    false    203            <      x?????? ? ?      >      x?????? ? ?      :   ?  x?u?K??0D??)|?????\#@ ؂G?XXr??}?f??nҋ??Wd?ďl?s?O??v?\??qޞ߅-????MMSr???((W?`E?m?7	?Rk?N????5????|L?:-sQ??X0-? ??C?e???Ѣ ?#p????\^_EE鷱g4???#=y??0RF+ ?]?u|58~[?????;??????ƹ???v?]???????N???X4??KG???(?	??????/?Ѧ?ɮ`mp??d?[??=2?3`b?G???z??U@?J^????L??K???΀+]?lXX??$??]2.ao?E/C???y?J???!l>?B?C???j [?+??\???p4TuZH -??$?PA@T?*?ЄL??d?????????$????C/?o??eB??2????a6u?^?ZX+????ˬ])?^We??NE??:T"??4?T?ס-E???b?o?Q???ҳ??P?)$C????@??$?ē浾?????[????	@?rcN???;?98?⫎?????d?n;S???h?F?x???s???H???H??ȅ??Qq7???S-???4?W?u??Sy??Fl휈=k???9'P?6}NEy???T?v?-?;?-3ٴT??*?P?EH????ZQ???i??9ln?t?5?M?f?J???.?SJEJ??IH)??(????????u?L6P?`Ad3?@$"Q??	???_??1?<:??      @      x?????? ? ?      B      x?????? ? ?      D      x?????? ? ?      1   l   x?3?L,N"8? ?^r????	g@QijR"gqJZ2?????hB?FSr5?s?&?Ur??&u? H?????????%T???[f^b??oj^qbV*W? RYp?      F      x?????? ? ?      8   ?   x?}Q?? <?cܾ?1i??X ,????F???]&3??4kþVI??1???~?D?h???6:?2?$=?LXֱ?8I%???LӴ_?Ʀh?8}?Qvt>?O????)??C?8R??z$J????#6g?픮???#E???j??a???Q?g?p8??c5??f?<?p5???Ξ ?/D??      6   ?  x???Mn? F??)z?F??,?J??dp?ܾ@]?TɆ???yx3 ??/?.)]V?h????4`??3?Ϙ?!?B??GF D~Jx0[z?? 8S%As???@?cFK?^XO~?u??v??V??{m??>BH?Da?+?\9??)9???Ɍ????)???
??????_??F/f?]?????M?fJ6?Ն??XJ*y=?/=?e?_uQ?a?
J6?Q[̋????RŔ?jzK)K-ǯ??GJ?Qm??`????TԻ??m??\!LV
4
?v?6???]i} ???\?S??|?ɝM?!???|г?ь?4^a??.???];w4+???h#???Bq??v?/
Ў????0"?5??0??5+?z??r3?=???N?zȠ?3??]???ж2?d???!???w??????b_?????RZ      G      x?????? ? ?      3   ^   x??K@0 ?????L?>?? ?lFY41$?n??{??;rU??C|??>??T>??*f?Q%?pA?v?=?gXө1+4T#?Ȍf?Ƙ1     