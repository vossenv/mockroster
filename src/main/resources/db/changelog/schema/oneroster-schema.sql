-- ;
-- CREATE USER IF NOT EXISTS "ROOT" SALT 'fd4c98b82787d650' HASH 'f2d014014e3237a51142ae569f8348f9507aa70a3c4f3ccd54013ed8defe9714' ADMIN;
-- CREATE SEQUENCE "PUBLIC"."SYSTEM_SEQUENCE_5C5456A3_5288_44D8_A6B7_BCF5FC215731" START WITH 16 BELONGS_TO_TABLE;
-- CREATE MEMORY TABLE "PUBLIC"."DATABASECHANGELOGLOCK"(
--     "ID" INT NOT NULL,
--     "LOCKED" BOOLEAN NOT NULL,
--     "LOCKGRANTED" TIMESTAMP,
--     "LOCKEDBY" VARCHAR(255)
-- );
-- ALTER TABLE "PUBLIC"."DATABASECHANGELOGLOCK" ADD CONSTRAINT "PUBLIC"."PK_DATABASECHANGELOGLOCK" PRIMARY KEY("ID");
-- -- 1 +/- SELECT COUNT(*) FROM PUBLIC.DATABASECHANGELOGLOCK;
-- INSERT INTO "PUBLIC"."DATABASECHANGELOGLOCK" VALUES
-- (1, FALSE, NULL, NULL);
-- CREATE MEMORY TABLE "PUBLIC"."DATABASECHANGELOG"(
--     "ID" VARCHAR(255) NOT NULL,
--     "AUTHOR" VARCHAR(255) NOT NULL,
--     "FILENAME" VARCHAR(255) NOT NULL,
--     "DATEEXECUTED" TIMESTAMP NOT NULL,
--     "ORDEREXECUTED" INT NOT NULL,
--     "EXECTYPE" VARCHAR(10) NOT NULL,
--     "MD5SUM" VARCHAR(35),
--     "DESCRIPTION" VARCHAR(255),
--     "COMMENTS" VARCHAR(255),
--     "TAG" VARCHAR(255),
--     "LIQUIBASE" VARCHAR(20),
--     "CONTEXTS" VARCHAR(255),
--     "LABELS" VARCHAR(255),
--     "DEPLOYMENT_ID" VARCHAR(10)
-- );
-- -- 4 +/- SELECT COUNT(*) FROM PUBLIC.DATABASECHANGELOG;
-- INSERT INTO "PUBLIC"."DATABASECHANGELOG" VALUES
-- ('1', 'admin', '/db/changelog/changes/create-person-table-changelog-1.xml', TIMESTAMP '2019-05-30 22:40:00.177', 1, 'EXECUTED', '8:4f31fce033aaff8756ced00c20ced396', 'createTable tableName=person', '', NULL, '3.6.3', NULL, NULL, '9274000165'),
-- ('2', 'admin', '/db/changelog/changes/insert-person-table-changelog-2.xml', TIMESTAMP '2019-05-30 22:40:00.179', 2, 'EXECUTED', '8:310c7be3b922e5d41b41ad087fe1439d', 'insert tableName=person', '', NULL, '3.6.3', NULL, NULL, '9274000165'),
-- ('3', 'liquibase-docs', '/db/changelog/changes/insert-person-table-changelog-2.xml', TIMESTAMP '2019-05-30 22:40:00.21', 3, 'EXECUTED', '8:57d8926677504d09523ab8e3909f3ffe', 'loadUpdateData tableName=person', '', NULL, '3.6.3', NULL, NULL, '9274000165'),
-- ('3', 'admin', '/db/changelog/changes/update-person-table-precondition-3.xml', TIMESTAMP '2019-05-30 22:40:00.211', 4, 'EXECUTED', '8:f39ca163b085f8fc433b1ca8c150702c', 'update tableName=person', '', NULL, '3.6.3', NULL, NULL, '9274000165');
-- CREATE MEMORY TABLE "PUBLIC"."PERSON"(
--     "ID" INT DEFAULT (NEXT VALUE FOR "PUBLIC"."SYSTEM_SEQUENCE_5C5456A3_5288_44D8_A6B7_BCF5FC215731") NOT NULL NULL_TO_DEFAULT SEQUENCE "PUBLIC"."SYSTEM_SEQUENCE_5C5456A3_5288_44D8_A6B7_BCF5FC215731",
--     "NAME" VARCHAR(255) NOT NULL,
--     "ADDRESS" VARCHAR(255)
-- );
-- ALTER TABLE "PUBLIC"."PERSON" ADD CONSTRAINT "PUBLIC"."PK_PERSON" PRIMARY KEY("ID");
-- 2 +/- SELECT COUNT(*) FROM PUBLIC.PERSON;  
INSERT INTO "PUBLIC"."PERSON" VALUES
(14, 'Tom', 'India'),
(17, 'person', 'ronald');
CREATE MEMORY TABLE "PUBLIC"."USER"(
    "SOURCED_ID" VARCHAR(255) NOT NULL,
    "DATE_LAST_MODIFIED" TIMESTAMP,
    "METADATA" VARCHAR(255),
    "STATUS" BOOLEAN,
    "AGENTS" VARCHAR(255),
    "EMAIL" VARCHAR(255),
    "ENABLED_USER" BOOLEAN,
    "FAMILY_NAME" VARCHAR(255),
    "GIVEN_NAME" VARCHAR(255),
    "GRADES" VARCHAR(255),
    "IDENTIFIER" VARCHAR(255),
    "MIDDLE_NAME" VARCHAR(255),
    "ORGS" VARCHAR(255),
    "PASSWORD" VARCHAR(255),
    "PHONE" VARCHAR(255),
    "ROLE" VARCHAR(255),
    "SMS" VARCHAR(255),
    "USER_IDS" VARCHAR(255),
    "USERNAME" VARCHAR(255)
);
ALTER TABLE "PUBLIC"."USER" ADD CONSTRAINT "PUBLIC"."CONSTRAINT_2" PRIMARY KEY("SOURCED_ID");
-- 1 +/- SELECT COUNT(*) FROM PUBLIC.USER;
INSERT INTO "PUBLIC"."USER" VALUES
('4ff34829-c73b-4b97-a389-6e5e08a56434', TIMESTAMP '2019-05-30 22:40:01.128', NULL, TRUE, NULL, NULL, FALSE, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
