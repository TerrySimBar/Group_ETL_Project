CREATE TABLE subcategory(
    subcategory_id VARCHAR(20),
    subcategory VARCHAR(40) NOT NULL UNIQUE,
    PRIMARY KEY (subcategory_id)  
);
CREATE TABLE category(
    category_id VARCHAR(20),
    category VARCHAR(40) NOT NULL UNIQUE,
    PRIMARY KEY (category_id) 
);

CREATE TABLE contacts(
    contact_id INT,
    first_name VARCHAR(40) NOT NULL,
    last_name VARCHAR(40) NOT NULL,
    email VARCHAR(50) NOT NULL UNIQUE,  
    PRIMARY KEY (contact_id)
);

CREATE TABLE campaign(
    cf_id INT,
    contact_id	INT NOT NULL,
    company_name VARCHAR(80) NOT NULL,	
    description VARCHAR(100) NOT NULL,	
    goal DECIMAL (20, 2) NOT NULL,
    pledged	DECIMAL (20, 2) NOT NULL,
    outcome	VARCHAR(20) NOT NULL,
    backers_count INT NOT NULL,
    country	VARCHAR(20) NOT NULL,
    currency VARCHAR(20) NOT NULL,	
    launched_date DATE NOT NULL,
    end_date DATE NOT NULL,
    category_id	VARCHAR(20) NOT NULL,
    subcategory_id VARCHAR(40) NOT NULL, 
    PRIMARY KEY (cf_id),
    FOREIGN KEY (contact_id) REFERENCES contacts(contact_id),
    FOREIGN KEY (category_id) REFERENCES category(category_id), 
    FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id)   
);




