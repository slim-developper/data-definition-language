CREATE TABLE Product(
    Product_id VARCHAR2(20) CONSTRAINT pk_pdct PRIMARY KEY,
    Product_Name VARCHAR2(20) CONSTRAINT notnull_pdct NOT NULL,
    Price NUMBER CHECK(Price>0)
);

CREATE TABLE Customer(
    Customer_id VARCHAR2(20) CONSTRAINT pk_cust PRIMARY KEY,
    Customer_Name VARCHAR2(20)  CONSTRAINT notnull_cust NOT NULL,
    Customer_tel NUMBER 
);

CREATE TABLE Orders (
    Quantity NUMBER,
    Total_amount NUMBER,
    CONSTRAINT fk_cust FOREIGN KEY (Custumer_id) REFERENCES Customer(Costumer_id),
    CONSTRAINT fk_pdct FOREIGN KEY (Product_id) REFERENCES Product(Product_id),
);
-- Add a column Category (VARCHAR2(20)) to the PRODUCT table. 
ALTER TABLE Product ADD Category VARCHAR2(20);
-- Add a column OrderDate (DATE) to the Orders table which have SYSDATE as a default value.
ALTER TABLE Orders ADD OrderDate DATE DEFAULT SYSDATE;