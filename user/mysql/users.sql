-- ****************
-- version-flexible 
-- v1.0.0.1
-- ****************
CREATE TABLE users (
    -- id
    id                      BIGINT NOT NULL AUTO_INCREMENT,
    -- login: username
    username                VARCHAR(255), -- could use username for login
    email                   VARCHAR(255), -- could use email for login
    -- login: password
    password                VARCHAR(255) NOT NULL,
    salt                    VARCHAR(255),
    -- additional fields
    icon                    VARCHAR(255),
    -- default fields
    created_by              BIGINT,
    created_date            TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    modified_date           TIMESTAMP NOT NULL,
    last_login_date         TIMESTAMP,  
    -- restrictions
    PRIMARY KEY(id),
    FOREIGN KEY(created_by) REFERENCES users (id)
) ENGINE=InnoDB;


-- ****************
-- version-secluded 
-- v1.0.0.0
-- ****************
CREATE TABLE users (
    -- id
    id                      BIGINT NOT NULL AUTO_INCREMENT,
    -- login: username
    username                VARCHAR(255) NOT NULL, -- for login
    email                   VARCHAR(255), -- email is not for login
    -- login: password
    password                VARCHAR(255) NOT NULL,
    salt                    VARCHAR(255),
    -- additional fields
    icon                    VARCHAR(255),
    -- default fields
    created_by              BIGINT,
    created_date            TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    modified_date           TIMESTAMP NOT NULL,
    last_login_date         TIMESTAMP,  
    -- restrictions
    PRIMARY KEY(id),
    FOREIGN KEY(created_by) REFERENCES users (id)
) ENGINE=InnoDB;