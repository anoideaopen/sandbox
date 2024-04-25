-- example of test database
CREATE USER "developer" WITH PASSWORD 'test';
\connect "test";
GRANT ALL PRIVILEGES ON SCHEMA "test" TO "test";
