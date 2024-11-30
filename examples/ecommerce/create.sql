CREATE TABLE IF NOT EXISTS member (
  "id" UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  "email" STRING NOT NULL,
  "registered" TIMESTAMPTZ NOT NULL,

  UNIQUE("email")
);

CREATE TABLE IF NOT EXISTS product (
  "id" UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  "name" STRING NOT NULL,
  "price" DECIMAL NOT NULL,

  INDEX ("name")
);

CREATE TABLE IF NOT EXISTS purchase (
  "id" UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  "member_id" UUID NOT NULL REFERENCES member("id"),
  "amount" DECIMAL NOT NULL,
  "status" STRING NOT NULL,
  "ts" TIMESTAMPTZ NOT NULL,

  INDEX ("member_id")
);

CREATE TABLE IF NOT EXISTS purchase_line (
  "id" UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  "purchase_id" UUID NOT NULL REFERENCES purchase("id"),
  "product_id" UUID NOT NULL REFERENCES product("id"),
  "quantity" INT NOT NULL
);