INSERT INTO Department (name)
VALUES ("FOH"),
       ("BOH"),
       ("Management");

INSERT INTO Role (title, salary, department_id)
VALUES ("Co-Owner", 50000.00, 3),
       ("Server", 24000.00, 1),
       ("Barista", 19000.00, 1),
       ("Host", 19000.00, 1),
       ("Chef", 31000.00, 2),
       ("Sous-Chef", 25000.00, 2),
       ("Line-cook", 22000.00, 2),
       ("Prep-cook", 20000.00, 2),
       ("Dishwasher", 18000.00, 2);

INSERT INTO Employee (first_name, last_name, role_id, manager_id)
VALUES ("Jeanne", "French", 1, null),
       ("Erin", "DelBaggio", 2, null),
       ("Al", "Libertine", 3, 1),
       ("Em", "Crews", 4, 1),
       ("Tatum", "Dilks", 5, 1),
       ("Yara", "Saad", 6, 2),
       ("Miki", "Sapiandante", 7, 2), 
       ("Cody", "Brown", 8, 2),
       ("Sara", "Lopez", 9, 2),
       ("Kyle", "Daniels", 10, 2);