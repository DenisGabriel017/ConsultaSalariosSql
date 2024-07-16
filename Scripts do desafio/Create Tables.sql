USE sys;


CREATE TABLE employee (
  id INT(11) NOT NULL AUTO_INCREMENT,
  name VARCHAR(255) NOT NULL,
  email VARCHAR(255) NOT NULL,
  PRIMARY KEY (id)
);


CREATE TABLE salary (
  id INT(11) NOT NULL,
  value DECIMAL(10,0) NOT NULL,
  payment_date DATE NOT NULL,
  employee_id INT(11) NOT NULL,
  primary key (id),
  KEY employee_id (employee_id),
  CONSTRAINT salary_ibfk_1 FOREIGN KEY (employee_id) REFERENCES employee (id)
);