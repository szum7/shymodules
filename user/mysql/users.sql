-- ****************
-- version-flexible 
-- v1.0.0.0
-- ****************
CREATE TABLE users (
    id                      BIGINT NOT NULL AUTO_INCREMENT,

    username                VARCHAR(255), -- could use username for login
    email                   VARCHAR(255), -- could use email for login

    password                VARCHAR(255) NOT NULL,
    salt                    VARCHAR(255),

    icon                    VARCHAR(255),

    created_by              BIGINT,
    created_date            TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    modified_date           TIMESTAMP NOT NULL,
    last_login_date         TIMESTAMP,  
  
    PRIMARY KEY(id),
    FOREIGN KEY(created_by) REFERENCES users (id)
) ENGINE=InnoDB;


-- ****************
-- version-secluded 
-- v1.0.0.0
-- ****************
CREATE TABLE users (
    id                      BIGINT NOT NULL AUTO_INCREMENT,

    username                VARCHAR(255) NOT NULL, -- for login
    email                   VARCHAR(255), -- email is not for login

    password                VARCHAR(255) NOT NULL,
    salt                    VARCHAR(255),

    icon                    VARCHAR(255),

    created_by              BIGINT,
    created_date            TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    modified_date           TIMESTAMP NOT NULL,
    last_login_date         TIMESTAMP,  
  
    PRIMARY KEY(id),
    FOREIGN KEY(created_by) REFERENCES users (id)
) ENGINE=InnoDB;