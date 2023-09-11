-- create Tables to import CSVs

-- create category table
CREATE TABLE IF NOT EXISTS category (
    category_id VARCHAR(10) NOT NULL,
    category_name VARCHAR(50) NOT NULL,
    PRIMARY KEY (category_id)
);

-- verify successful table creation
SELECT * FROM category;

-- ************************************
-- create subcategory table

CREATE TABLE IF NOT EXISTS subcategory (
    subcategory_id VARCHAR(10) NOT NULL,
    subcategory_name VARCHAR(50) NOT NULL,
    PRIMARY KEY (subcategory_id)
);

-- verify successful table creation
SELECT * FROM subcategory;

-- ************************************

-- create contacts table
CREATE TABLE IF NOT EXISTS contacts (
    contact_id INT NOT NULL,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL,
    PRIMARY KEY (contact_id)
);

-- verify successful table creation
SELECT * FROM contacts;

-- ************************************

-- create campaign table
CREATE TABLE IF NOT EXISTS campagin (
    cf_id INT NOT NULL,
    contact_id INT NOT NULL,
    company_name VARCHAR(100) NOT NULL,
    description VARCHAR(255) NOT NULL,
    goal NUMERIC(10, 2) NOT NULL,
    pledged NUMERIC(10, 2) NOT NULL,
    outcome VARCHAR(50) NOT NULL,
    backers_count INT NOT NULL,
    country VARCHAR(10) NOT NULL,
    currency VARCHAR(10) NOT NULL,
    launch_date DATE NOT NULL,
    end_date DATE NOT NULL,
    category_id VARCHAR(10) NOT NULL,
    subcategory_id VARCHAR(10) NOT NULL,
    FOREIGN KEY (category_id) REFERENCES category(category_id),
    FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id),
    FOREIGN KEY (contact_id) REFERENCES contacts(contact_id),
    PRIMARY KEY (cf_id)
);

-- verify successful table creation
SELECT * FROM campaign;

-- ************************************
