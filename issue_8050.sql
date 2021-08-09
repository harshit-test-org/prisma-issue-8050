-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."Comment" (
    "id" text NOT NULL,
    "text" text NOT NULL,
    "postId" text NOT NULL,
    "authorId" text NOT NULL,
    "createdAt" timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" timestamp NOT NULL,
    CONSTRAINT "Comment_postId_fkey" FOREIGN KEY ("postId") REFERENCES "public"."Post"("id") ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT "Comment_authorId_fkey" FOREIGN KEY ("authorId") REFERENCES "public"."User"("id") ON DELETE CASCADE ON UPDATE CASCADE,
    PRIMARY KEY ("id")
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."Post" (
    "id" text NOT NULL,
    "title" text NOT NULL,
    "body" text NOT NULL,
    "published" bool NOT NULL,
    "authorId" text NOT NULL,
    "createdAt" timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" timestamp NOT NULL
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."User" (
    "id" text NOT NULL,
    "name" text NOT NULL,
    "email" text NOT NULL,
    "password" text,
    "createdAt" timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" timestamp NOT NULL
);

INSERT INTO "public"."Comment" ("id", "text", "postId", "authorId", "createdAt", "updatedAt") VALUES
('cks4by99n000008fj4etjccir', 'first post comment', 'cks4a9qin0000ncfj8jjdj2h4', 'cks4a8v4j0000vwfj671xa36i', '2021-08-09 07:45:26.123', '2021-08-09 07:43:47.246');
INSERT INTO "public"."Comment" ("id", "text", "postId", "authorId", "createdAt", "updatedAt") VALUES
('cks4by99n000108fjvxm654e7', 'first post comment', 'cks4a9qin0000ncfj8jjdj2h4', 'cks4a8v4j0000vwfj671xa36i', '2021-08-09 07:45:26.123', '2021-08-09 07:43:49.56');
INSERT INTO "public"."Comment" ("id", "text", "postId", "authorId", "createdAt", "updatedAt") VALUES
('cks4by99o000208fjlfpgr51z', 'second post comment', 'cks4a9z3m0000agfjhp0agigt', 'cks4a8v4j0000vwfj671xa36i', '2021-08-09 07:45:26.124', '2021-08-09 07:43:50.401');
INSERT INTO "public"."Comment" ("id", "text", "postId", "authorId", "createdAt", "updatedAt") VALUES
('cks4by99o000408fjp4xuijgz', 'second post comment', 'cks4a9z3m0000agfjhp0agigt', 'cks4a8v4j0000vwfj671xa36i', '2021-08-09 07:45:26.124', '2021-08-09 07:43:50.868'),
('cks4by99o000508fje0pe0u17', 'second post comment', 'cks4a9z3m0000agfjhp0agigt', 'cks4a8v4j0000vwfj671xa36i', '2021-08-09 07:45:26.124', '2021-08-09 07:43:51.372'),
('cks4by99o000608fjz305okfs', 'second post comment', 'cks4a9z3m0000agfjhp0agigt', 'cks4a8v4j0000vwfj671xa36i', '2021-08-09 07:45:26.124', '2021-08-09 07:43:51.932');

INSERT INTO "public"."Post" ("id", "title", "body", "published", "authorId", "createdAt", "updatedAt") VALUES
('cks4a9qin0000ncfj8jjdj2h4', 'one', 'test', 'f', 'cks4a8v4j0000vwfj671xa36i', '2021-08-09 06:58:22.463', '2021-08-09 06:58:06.503');
INSERT INTO "public"."Post" ("id", "title", "body", "published", "authorId", "createdAt", "updatedAt") VALUES
('cks4a9z3m0000agfjhp0agigt', 'two', 'test', 'f', 'cks4a8v4j0000vwfj671xa36i', '2021-08-09 06:58:33.586', '2021-08-09 06:58:24.034');
INSERT INTO "public"."Post" ("id", "title", "body", "published", "authorId", "createdAt", "updatedAt") VALUES
('cks4aa7k70000kcfj50bm387k', 'three', 'test', 'f', 'cks4a8v4j0000vwfj671xa36i', '2021-08-09 06:58:44.551', '2021-08-09 06:58:34.423');
INSERT INTO "public"."Post" ("id", "title", "body", "published", "authorId", "createdAt", "updatedAt") VALUES
('cks4aalgn00005ofjja1xdcg5', 'four', 'test', 'f', 'cks4a8v4j0000vwfj671xa36i', '2021-08-09 06:59:02.567', '2021-08-09 06:58:48.682');

INSERT INTO "public"."User" ("id", "name", "email", "password", "createdAt", "updatedAt") VALUES
('cks4a8v4j0000vwfj671xa36i', 'tester', 'test@test.com', 'tester', '2021-08-09 06:57:41.779', '2021-08-09 06:57:30.797');

