CREATE TABLE STUDENT (
    STUDENT_ID INTEGER,
    STUDENT_NAAM VARCHAR(100) NOT NULL,
    STUDENT_TNOMMER CHAR(12) NOT NULL,
    CONSTRAINT STUDENT_TNOMMER UNIQUE(STUDENT_NAAM, STUDENT_TNOMMER),
    PRIMARY KEY (STUDENT_ID)
);

CREATE TABLE KURSUS (
    KURSUS_ID CHAR(5),
    KURSUS_GRAAD CHAR(2) NOT NULL,
    STUDENT_ID INTEGER NOT NULL,
    PRIMARY KEY (KURSUS_ID),
    FOREIGN KEY (STUDENT_ID) REFERENCES STUDENT ON UPDATE CASCADE ON DELETE CASCADE,
    CHECK(KURSUS_GRAAD IN ('A','B','C','D','E','F'))
);

CREATE TABLE KLUB (
    KLUB_ID SMALLINT,
    KLUB_NAAM VARCHAR(100) NOT NULL,
    STUDENT_ID INTEGER NOT NULL,
    PRIMARY KEY (KLUB_ID),
    FOREIGN KEY (STUDENT_ID) REFERENCES STUDENT ON UPDATE CASCADE
);