-- drop all tables and references if needed
-- DROP TABLE IF EXISTS category CASCADE;
-- DROP TABLE IF EXISTS subcategory CASCADE;
-- DROP TABLE IF EXISTS contacts CASCADE;
-- DROP TABLE IF EXISTS campaign CASCADE;


-- create category table
CREATE TABLE category (
  	category_id VARCHAR(10) NOT NULL,
  	category VARCHAR(30) NOT NULL, 
	PRIMARY KEY (category_id)   
);	

-- create subcategory table
CREATE TABLE subcategory (
  	subcategory_id VARCHAR(10) NOT NULL,
  	subcategory VARCHAR(30) NOT NULL, 
	PRIMARY KEY (subcategory_id)   
);

-- create contacts table
CREATE TABLE contacts (
    contact_id INT NOT NULL,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    email VARCHAR(50) NOT NULL,
    PRIMARY KEY (contact_id)
);

-- create campaign table
CREATE TABLE campaign (
    cf_id INT NOT NULL, 
    contact_id INT NOT NULL REFERENCES contacts(contact_id), 
    company_name VARCHAR(50) NOT NULL,
    description VARCHAR(100) NOT NULL,
    goal FLOAT NOT NULL, 
    pledged FLOAT NOT NULL, 
    outcome VARCHAR(15) NOT NULL,
    backers_count INT NOT NULL, 
    country VARCHAR(5) NOT NULL,
    currency VARCHAR(5) NOT NULL,
    launch_date DATE NOT NULL, 
    end_date DATE NOT NULL, 
    category_id VARCHAR(10) NOT NULL REFERENCES category(category_id), 
    subcategory_id VARCHAR(10) NOT NULL REFERENCES subcategory(subcategory_id), 
    PRIMARY KEY (cf_id)
);

SELECT * FROM category;
SELECT * FROM subcategory;
SELECT * FROM contacts;
SELECT * FROM campaign;

