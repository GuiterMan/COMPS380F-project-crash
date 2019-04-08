/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 * Author:  allanlam
 * Created: 2019/4/8
 */

CREATE TABLE users (
    userid VARCHAR(50) NOT NULL,
    password VARCHAR(100) NOT NULL,
    PRIMARY KEY (userid)
);

CREATE TABLE user_roles (
    user_role_id INTEGER NOT NULL GENERATED ALWAYS AS IDENTITY (START WITH 1, INCREMENT BY 1),
    userid VARCHAR(50) NOT NULL,
    role VARCHAR(50) NOT NULL,
    PRIMARY KEY (user_role_id),
    FOREIGN KEY (userid) REFERENCES users(userid)
);

INSERT INTO users VALUES ('1174016', '12345');
INSERT INTO user_roles(userid, role) VALUES ('1174016', 'ROLE_USER');
INSERT INTO user_roles(userid, role) VALUES ('1174016', 'ROLE_ADMIN');