/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 * Author:  allanlam
 * Created: 2019/4/8
 */
CREATE TABLE lecture (
    id INTEGER NOT NULL GENERATED ALWAYS AS IDENTITY (START WITH 1, INCREMENT BY 1),
    title VARCHAR(255) NOT NULL,
    comment VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE attachment (
    id INTEGER NOT NULL GENERATED ALWAYS AS IDENTITY (START WITH 1, INCREMENT BY 1),
    filename VARCHAR(255) DEFAULT NULL,
    content_type VARCHAR(255) DEFAULT NULL,
    content BLOB DEFAULT NULL,
    lecture_id INTEGER DEFAULT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (lecture_id) REFERENCES lecture(id) 
);
