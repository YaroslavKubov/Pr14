-- V3__drop_status.sql
-- Видалення стовпця status з enrollments

BEGIN;

ALTER TABLE college.enrollments
DROP COLUMN status;

COMMIT;

-- Зворотна міграція:
-- ALTER TABLE college.enrollments
-- ADD COLUMN status VARCHAR(20) NOT NULL DEFAULT 'active';