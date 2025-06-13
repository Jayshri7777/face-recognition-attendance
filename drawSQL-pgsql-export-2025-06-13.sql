CREATE TABLE "User profiles Table"(
    "user_id" VARCHAR(255) NOT NULL,
    "employee_id" VARCHAR(255) NOT NULL,
    "first_name" VARCHAR(255) NOT NULL,
    "last_name" VARCHAR(255) NOT NULL,
    "email" VARCHAR(255) NOT NULL,
    "phone_number" VARCHAR(255) NOT NULL,
    "department" CHAR(255) NOT NULL,
    "position" CHAR(255) NOT NULL,
    "face_encoding" TEXT NOT NULL,
    "is_active" BOOLEAN NOT NULL,
    "created_at" TIMESTAMP(0) WITHOUT TIME ZONE NOT NULL,
    "updated_at" TIMESTAMP(0) WITHOUT TIME ZONE NOT NULL
);
ALTER TABLE
    "User profiles Table" ADD PRIMARY KEY("user_id");
CREATE TABLE "Attendance records Table"(
    "attendance_id" VARCHAR(255) NOT NULL,
    "user_id" VARCHAR(255) NOT NULL,
    "check_in_time" TIMESTAMP(0) WITHOUT TIME ZONE NOT NULL,
    "check_out_time" TIMESTAMP(0) WITHOUT TIME ZONE NOT NULL,
    "date" DATE NOT NULL,
    "status" BOOLEAN NOT NULL,
    "confidence_score" FLOAT(53) NOT NULL,
    "location" GEOMETRY NOT NULL,
    "created_at" TIMESTAMP(0) WITHOUT TIME ZONE NOT NULL
);
ALTER TABLE
    "Attendance records Table" ADD PRIMARY KEY("attendance_id");
CREATE TABLE "Face Images Table"(
    "image_id" VARCHAR(255) NOT NULL,
    "user_id" VARCHAR(255) NOT NULL,
    "image_path" VARCHAR(255) NOT NULL,
    "encoding_vector" BIGINT NOT NULL,
    "is_primary" BOOLEAN NOT NULL,
    "created_at" TIMESTAMP(0) WITHOUT TIME ZONE NOT NULL
);
ALTER TABLE
    "Face Images Table" ADD PRIMARY KEY("image_id");
ALTER TABLE
    "Attendance records Table" ADD CONSTRAINT "attendance records table_user_id_foreign" FOREIGN KEY("user_id") REFERENCES "User profiles Table"("user_id");
ALTER TABLE
    "Face Images Table" ADD CONSTRAINT "face images table_user_id_foreign" FOREIGN KEY("user_id") REFERENCES "User profiles Table"("user_id");