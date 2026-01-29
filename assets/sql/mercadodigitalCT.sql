CREATE TABLE "usuarios" (
  "id_usuario" int PRIMARY KEY,
  "nombre" text NOT NULL,
  "email" text UNIQUE NOT NULL,
  "creado_en" timestamp DEFAULT (now())
);

CREATE TABLE "productos" (
  "id_producto" int PRIMARY KEY,
  "nombre" text NOT NULL,
  "precio" numeric(10,2) NOT NULL,
  "activo" boolean DEFAULT (true)
);

CREATE TABLE "inventario" (
  "id_producto" int PRIMARY KEY,
  "stock" int NOT NULL
);

CREATE TABLE "ordenes" (
  "id_orden" int PRIMARY KEY,
  "id_usuario" int,
  "fecha" date NOT NULL,
  "total" numeric(12,2)
);

CREATE TABLE "order_items" (
  "id_item" int PRIMARY KEY,
  "id_orden" int,
  "id_producto" int,
  "cantidad" int NOT NULL,
  "precio_unitario" numeric(10,2) NOT NULL
);

COMMENT ON COLUMN "inventario"."stock" IS 'Cantidad disponible, mínimo 0';

COMMENT ON COLUMN "ordenes"."id_usuario" IS 'FK, no borrar usuario con órdenes';

COMMENT ON COLUMN "ordenes"."total" IS 'Suma de los items de la orden';

COMMENT ON COLUMN "order_items"."id_orden" IS 'FK, borrar items si se borra la orden';

COMMENT ON COLUMN "order_items"."id_producto" IS 'FK al producto';

COMMENT ON COLUMN "order_items"."cantidad" IS 'Cantidad comprada, > 0';

COMMENT ON COLUMN "order_items"."precio_unitario" IS 'Precio al momento de la compra';

ALTER TABLE "inventario" ADD FOREIGN KEY ("id_producto") REFERENCES "productos" ("id_producto");

ALTER TABLE "ordenes" ADD FOREIGN KEY ("id_usuario") REFERENCES "usuarios" ("id_usuario");

ALTER TABLE "order_items" ADD FOREIGN KEY ("id_orden") REFERENCES "ordenes" ("id_orden");

ALTER TABLE "order_items" ADD FOREIGN KEY ("id_producto") REFERENCES "productos" ("id_producto");
