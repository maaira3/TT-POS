PGDMP     9                     y        
   puntoventa    13.3    13.3 B    ;           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            <           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            =           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            >           1262    16394 
   puntoventa    DATABASE     g   CREATE DATABASE puntoventa WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Spanish_Mexico.1252';
    DROP DATABASE puntoventa;
                postgres    false            �            1259    24624 
   categorias    TABLE     g   CREATE TABLE public.categorias (
    idcategoria bigint NOT NULL,
    nombrecategoria text NOT NULL
);
    DROP TABLE public.categorias;
       public         heap    postgres    false            �            1259    24637    complementos    TABLE     �   CREATE TABLE public.complementos (
    idcomplemento bigint NOT NULL,
    nombrecomplemento text NOT NULL,
    preciocomplemento bigint NOT NULL,
    idunidad bigint NOT NULL,
    descripcioncomplemento text
);
     DROP TABLE public.complementos;
       public         heap    postgres    false            �            1259    16464 	   cortecaja    TABLE     E  CREATE TABLE public.cortecaja (
    "idcorteCaja" bigint NOT NULL,
    subtotalcorte bigint NOT NULL,
    totalcorte bigint NOT NULL,
    cuenta bigint NOT NULL,
    saldoapertura bigint NOT NULL,
    saldocorte bigint NOT NULL,
    idusuario bigint NOT NULL,
    fechaapertura date NOT NULL,
    fechacorte date NOT NULL
);
    DROP TABLE public.cortecaja;
       public         heap    postgres    false            �            1259    24619    detalleventa    TABLE     �   CREATE TABLE public.detalleventa (
    iddetalleventa bigint NOT NULL,
    idventa bigint NOT NULL,
    cantidad bigint NOT NULL,
    precio bigint NOT NULL,
    idproducto bigint NOT NULL,
    descuentoproducto bigint
);
     DROP TABLE public.detalleventa;
       public         heap    postgres    false            �            1259    32837    empleados_idempleado_seq    SEQUENCE     �   CREATE SEQUENCE public.empleados_idempleado_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.empleados_idempleado_seq;
       public          postgres    false            �            1259    16403 	   empleados    TABLE     ,  CREATE TABLE public.empleados (
    idempleado bigint DEFAULT nextval('public.empleados_idempleado_seq'::regclass) NOT NULL,
    nombreempleado text NOT NULL,
    fechacontra date NOT NULL,
    dirempleado text NOT NULL,
    telempleado bigint NOT NULL,
    emailempleado text,
    idcargo bigint
);
    DROP TABLE public.empleados;
       public         heap    postgres    false    220            �            1259    16440    ingredientes    TABLE     �   CREATE TABLE public.ingredientes (
    idingrediente bigint NOT NULL,
    nombreingrediente text NOT NULL,
    unidadingrediente text NOT NULL,
    stockingrediente bigint NOT NULL,
    costoingrediente bigint NOT NULL,
    idproducto bigint
);
     DROP TABLE public.ingredientes;
       public         heap    postgres    false            �            1259    24599    ingredientesproveedores    TABLE     �   CREATE TABLE public.ingredientesproveedores (
    idproveedor bigint NOT NULL,
    idingrediente bigint NOT NULL,
    cantidad bigint NOT NULL,
    idunidad bigint NOT NULL,
    costo bigint NOT NULL,
    fecha date
);
 +   DROP TABLE public.ingredientesproveedores;
       public         heap    postgres    false            �            1259    16448    modificadores    TABLE     �   CREATE TABLE public.modificadores (
    idmodificador bigint NOT NULL,
    nombremodificador text NOT NULL,
    preciomodificador bigint NOT NULL,
    obligatorio boolean NOT NULL,
    multiple boolean NOT NULL,
    idproducto bigint NOT NULL
);
 !   DROP TABLE public.modificadores;
       public         heap    postgres    false            �            1259    16456    opcionesmodificador    TABLE     �   CREATE TABLE public.opcionesmodificador (
    idopcionmodificador bigint NOT NULL,
    nombreopcion text NOT NULL,
    precioopcionmodificador bigint NOT NULL,
    idmodificador bigint
);
 '   DROP TABLE public.opcionesmodificador;
       public         heap    postgres    false            �            1259    16411    pago    TABLE     U   CREATE TABLE public.pago (
    idpago bigint NOT NULL,
    tipopago text NOT NULL
);
    DROP TABLE public.pago;
       public         heap    postgres    false            �            1259    16395    perfil    TABLE     [   CREATE TABLE public.perfil (
    idcargo bigint NOT NULL,
    nombrecargo text NOT NULL
);
    DROP TABLE public.perfil;
       public         heap    postgres    false            �            1259    24586    permisosusuarios    TABLE     g   CREATE TABLE public.permisosusuarios (
    idpermiso bigint NOT NULL,
    idusuario bigint NOT NULL
);
 $   DROP TABLE public.permisosusuarios;
       public         heap    postgres    false            �            1259    16432 	   productos    TABLE     �  CREATE TABLE public.productos (
    idproducto bigint NOT NULL,
    ombreproducto text NOT NULL,
    descripcionproducto text,
    precioproducto bigint NOT NULL,
    costoproducto bigint NOT NULL,
    idcategoria bigint NOT NULL,
    cantidadinicialproducto bigint NOT NULL,
    cantidadnotificacionproducto bigint,
    "IdUnidad" bigint NOT NULL,
    idcomplemento bigint,
    cantidadtotalproducto bigint NOT NULL
);
    DROP TABLE public.productos;
       public         heap    postgres    false            �            1259    24632    productoscomplementos    TABLE     q   CREATE TABLE public.productoscomplementos (
    idcomplemento bigint NOT NULL,
    idproducto bigint NOT NULL
);
 )   DROP TABLE public.productoscomplementos;
       public         heap    postgres    false            �            1259    24609    productosingredientes    TABLE     �   CREATE TABLE public.productosingredientes (
    idproducto bigint NOT NULL,
    idingredientes bigint NOT NULL,
    porcion bigint NOT NULL,
    idunidad bigint NOT NULL
);
 )   DROP TABLE public.productosingredientes;
       public         heap    postgres    false            �            1259    24604    productosproveedores    TABLE     �   CREATE TABLE public.productosproveedores (
    idproveedor bigint NOT NULL,
    idproducto bigint NOT NULL,
    cantidad bigint NOT NULL,
    costo bigint NOT NULL,
    fecha date NOT NULL
);
 (   DROP TABLE public.productosproveedores;
       public         heap    postgres    false            �            1259    16469    proveedores    TABLE     �   CREATE TABLE public.proveedores (
    idproveedor bigint NOT NULL,
    "compañia" text NOT NULL,
    nombreproveedor text NOT NULL,
    direccionproveedor text NOT NULL,
    telproveedor bigint NOT NULL
);
    DROP TABLE public.proveedores;
       public         heap    postgres    false            �            1259    24614    unidades    TABLE     a   CREATE TABLE public.unidades (
    idunidad bigint NOT NULL,
    nombreunidad bigint NOT NULL
);
    DROP TABLE public.unidades;
       public         heap    postgres    false            �            1259    24591    usuarios    TABLE     �   CREATE TABLE public.usuarios (
    idusuario bigint NOT NULL,
    usuario text NOT NULL,
    "contraseña" text NOT NULL,
    estado boolean,
    intentos bigint,
    fechaalta date NOT NULL,
    fechavigencia date,
    idempleado bigint
);
    DROP TABLE public.usuarios;
       public         heap    postgres    false            �            1259    16427    venta    TABLE     �   CREATE TABLE public.venta (
    idventa bigint NOT NULL,
    fechaventa date NOT NULL,
    totalventa bigint NOT NULL,
    idpago bigint NOT NULL,
    qr bigint NOT NULL,
    descuento bigint NOT NULL,
    idusuario bigint
);
    DROP TABLE public.venta;
       public         heap    postgres    false            5          0    24624 
   categorias 
   TABLE DATA           B   COPY public.categorias (idcategoria, nombrecategoria) FROM stdin;
    public          postgres    false    217   �P       7          0    24637    complementos 
   TABLE DATA           }   COPY public.complementos (idcomplemento, nombrecomplemento, preciocomplemento, idunidad, descripcioncomplemento) FROM stdin;
    public          postgres    false    219   Q       ,          0    16464 	   cortecaja 
   TABLE DATA           �   COPY public.cortecaja ("idcorteCaja", subtotalcorte, totalcorte, cuenta, saldoapertura, saldocorte, idusuario, fechaapertura, fechacorte) FROM stdin;
    public          postgres    false    208   +Q       4          0    24619    detalleventa 
   TABLE DATA           p   COPY public.detalleventa (iddetalleventa, idventa, cantidad, precio, idproducto, descuentoproducto) FROM stdin;
    public          postgres    false    216   HQ       %          0    16403 	   empleados 
   TABLE DATA           ~   COPY public.empleados (idempleado, nombreempleado, fechacontra, dirempleado, telempleado, emailempleado, idcargo) FROM stdin;
    public          postgres    false    201   eQ       )          0    16440    ingredientes 
   TABLE DATA           �   COPY public.ingredientes (idingrediente, nombreingrediente, unidadingrediente, stockingrediente, costoingrediente, idproducto) FROM stdin;
    public          postgres    false    205   �Q       0          0    24599    ingredientesproveedores 
   TABLE DATA           o   COPY public.ingredientesproveedores (idproveedor, idingrediente, cantidad, idunidad, costo, fecha) FROM stdin;
    public          postgres    false    212   �Q       *          0    16448    modificadores 
   TABLE DATA              COPY public.modificadores (idmodificador, nombremodificador, preciomodificador, obligatorio, multiple, idproducto) FROM stdin;
    public          postgres    false    206   R       +          0    16456    opcionesmodificador 
   TABLE DATA           x   COPY public.opcionesmodificador (idopcionmodificador, nombreopcion, precioopcionmodificador, idmodificador) FROM stdin;
    public          postgres    false    207   +R       &          0    16411    pago 
   TABLE DATA           0   COPY public.pago (idpago, tipopago) FROM stdin;
    public          postgres    false    202   HR       $          0    16395    perfil 
   TABLE DATA           6   COPY public.perfil (idcargo, nombrecargo) FROM stdin;
    public          postgres    false    200   eR       .          0    24586    permisosusuarios 
   TABLE DATA           @   COPY public.permisosusuarios (idpermiso, idusuario) FROM stdin;
    public          postgres    false    210   �R       (          0    16432 	   productos 
   TABLE DATA           �   COPY public.productos (idproducto, ombreproducto, descripcionproducto, precioproducto, costoproducto, idcategoria, cantidadinicialproducto, cantidadnotificacionproducto, "IdUnidad", idcomplemento, cantidadtotalproducto) FROM stdin;
    public          postgres    false    204   �R       6          0    24632    productoscomplementos 
   TABLE DATA           J   COPY public.productoscomplementos (idcomplemento, idproducto) FROM stdin;
    public          postgres    false    218   �R       2          0    24609    productosingredientes 
   TABLE DATA           ^   COPY public.productosingredientes (idproducto, idingredientes, porcion, idunidad) FROM stdin;
    public          postgres    false    214   �R       1          0    24604    productosproveedores 
   TABLE DATA           _   COPY public.productosproveedores (idproveedor, idproducto, cantidad, costo, fecha) FROM stdin;
    public          postgres    false    213   �R       -          0    16469    proveedores 
   TABLE DATA           r   COPY public.proveedores (idproveedor, "compañia", nombreproveedor, direccionproveedor, telproveedor) FROM stdin;
    public          postgres    false    209   S       3          0    24614    unidades 
   TABLE DATA           :   COPY public.unidades (idunidad, nombreunidad) FROM stdin;
    public          postgres    false    215   0S       /          0    24591    usuarios 
   TABLE DATA           }   COPY public.usuarios (idusuario, usuario, "contraseña", estado, intentos, fechaalta, fechavigencia, idempleado) FROM stdin;
    public          postgres    false    211   MS       '          0    16427    venta 
   TABLE DATA           b   COPY public.venta (idventa, fechaventa, totalventa, idpago, qr, descuento, idusuario) FROM stdin;
    public          postgres    false    203   jS       ?           0    0    empleados_idempleado_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.empleados_idempleado_seq', 1, true);
          public          postgres    false    220            �           2606    24631    categorias Categorias_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.categorias
    ADD CONSTRAINT "Categorias_pkey" PRIMARY KEY (idcategoria);
 F   ALTER TABLE ONLY public.categorias DROP CONSTRAINT "Categorias_pkey";
       public            postgres    false    217            �           2606    24644    complementos Complementos_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.complementos
    ADD CONSTRAINT "Complementos_pkey" PRIMARY KEY (idcomplemento);
 J   ALTER TABLE ONLY public.complementos DROP CONSTRAINT "Complementos_pkey";
       public            postgres    false    219            �           2606    16468    cortecaja CorteCaja_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.cortecaja
    ADD CONSTRAINT "CorteCaja_pkey" PRIMARY KEY ("idcorteCaja");
 D   ALTER TABLE ONLY public.cortecaja DROP CONSTRAINT "CorteCaja_pkey";
       public            postgres    false    208            �           2606    24623    detalleventa DetalleVenta_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.detalleventa
    ADD CONSTRAINT "DetalleVenta_pkey" PRIMARY KEY (iddetalleventa);
 J   ALTER TABLE ONLY public.detalleventa DROP CONSTRAINT "DetalleVenta_pkey";
       public            postgres    false    216            }           2606    16410    empleados Empleados_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.empleados
    ADD CONSTRAINT "Empleados_pkey" PRIMARY KEY (idempleado);
 D   ALTER TABLE ONLY public.empleados DROP CONSTRAINT "Empleados_pkey";
       public            postgres    false    201                       2606    16418    pago FormaPago_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.pago
    ADD CONSTRAINT "FormaPago_pkey" PRIMARY KEY (idpago);
 ?   ALTER TABLE ONLY public.pago DROP CONSTRAINT "FormaPago_pkey";
       public            postgres    false    202            �           2606    24603 5   ingredientesproveedores Ingredientes-Proveedores_pkey 
   CONSTRAINT     ~   ALTER TABLE ONLY public.ingredientesproveedores
    ADD CONSTRAINT "Ingredientes-Proveedores_pkey" PRIMARY KEY (idproveedor);
 a   ALTER TABLE ONLY public.ingredientesproveedores DROP CONSTRAINT "Ingredientes-Proveedores_pkey";
       public            postgres    false    212            �           2606    16447    ingredientes Ingredientes_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.ingredientes
    ADD CONSTRAINT "Ingredientes_pkey" PRIMARY KEY (idingrediente);
 J   ALTER TABLE ONLY public.ingredientes DROP CONSTRAINT "Ingredientes_pkey";
       public            postgres    false    205            �           2606    16455     modificadores Modificadores_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY public.modificadores
    ADD CONSTRAINT "Modificadores_pkey" PRIMARY KEY (idmodificador);
 L   ALTER TABLE ONLY public.modificadores DROP CONSTRAINT "Modificadores_pkey";
       public            postgres    false    206            �           2606    16463 *   opcionesmodificador OpcionModificador_pkey 
   CONSTRAINT     {   ALTER TABLE ONLY public.opcionesmodificador
    ADD CONSTRAINT "OpcionModificador_pkey" PRIMARY KEY (idopcionmodificador);
 V   ALTER TABLE ONLY public.opcionesmodificador DROP CONSTRAINT "OpcionModificador_pkey";
       public            postgres    false    207            {           2606    16402    perfil Perfil_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.perfil
    ADD CONSTRAINT "Perfil_pkey" PRIMARY KEY (idcargo);
 >   ALTER TABLE ONLY public.perfil DROP CONSTRAINT "Perfil_pkey";
       public            postgres    false    200            �           2606    24590 '   permisosusuarios Permisos-Usuarios_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.permisosusuarios
    ADD CONSTRAINT "Permisos-Usuarios_pkey" PRIMARY KEY (idpermiso);
 S   ALTER TABLE ONLY public.permisosusuarios DROP CONSTRAINT "Permisos-Usuarios_pkey";
       public            postgres    false    210            �           2606    24636 1   productoscomplementos Productos-Complementos_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public.productoscomplementos
    ADD CONSTRAINT "Productos-Complementos_pkey" PRIMARY KEY (idcomplemento);
 ]   ALTER TABLE ONLY public.productoscomplementos DROP CONSTRAINT "Productos-Complementos_pkey";
       public            postgres    false    218            �           2606    24613 1   productosingredientes Productos-Ingredientes_pkey 
   CONSTRAINT     y   ALTER TABLE ONLY public.productosingredientes
    ADD CONSTRAINT "Productos-Ingredientes_pkey" PRIMARY KEY (idproducto);
 ]   ALTER TABLE ONLY public.productosingredientes DROP CONSTRAINT "Productos-Ingredientes_pkey";
       public            postgres    false    214            �           2606    24608 /   productosproveedores Productos-Proveedores_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.productosproveedores
    ADD CONSTRAINT "Productos-Proveedores_pkey" PRIMARY KEY (idproveedor);
 [   ALTER TABLE ONLY public.productosproveedores DROP CONSTRAINT "Productos-Proveedores_pkey";
       public            postgres    false    213            �           2606    16439    productos Productos_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.productos
    ADD CONSTRAINT "Productos_pkey" PRIMARY KEY (idproducto);
 D   ALTER TABLE ONLY public.productos DROP CONSTRAINT "Productos_pkey";
       public            postgres    false    204            �           2606    16476    proveedores Proveedor_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.proveedores
    ADD CONSTRAINT "Proveedor_pkey" PRIMARY KEY (idproveedor);
 F   ALTER TABLE ONLY public.proveedores DROP CONSTRAINT "Proveedor_pkey";
       public            postgres    false    209            �           2606    24618    unidades Unidades_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.unidades
    ADD CONSTRAINT "Unidades_pkey" PRIMARY KEY (idunidad);
 B   ALTER TABLE ONLY public.unidades DROP CONSTRAINT "Unidades_pkey";
       public            postgres    false    215            �           2606    24598    usuarios Usuarios_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT "Usuarios_pkey" PRIMARY KEY (idusuario);
 B   ALTER TABLE ONLY public.usuarios DROP CONSTRAINT "Usuarios_pkey";
       public            postgres    false    211            �           2606    16431    venta Venta_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY public.venta
    ADD CONSTRAINT "Venta_pkey" PRIMARY KEY (idventa);
 <   ALTER TABLE ONLY public.venta DROP CONSTRAINT "Venta_pkey";
       public            postgres    false    203            5      x������ � �      7      x������ � �      ,      x������ � �      4      x������ � �      %   _   x���	�0�s:EPl������=X!�N���<��LyI'2*ϰ�yG%��7]߈�>|����w�CQ��g��4x
a"^Ɖ(n.�ι=�v      )      x������ � �      0      x������ � �      *      x������ � �      +      x������ � �      &      x������ � �      $      x������ � �      .      x������ � �      (      x������ � �      6      x������ � �      2      x������ � �      1      x������ � �      -      x������ � �      3      x������ � �      /      x������ � �      '      x������ � �     