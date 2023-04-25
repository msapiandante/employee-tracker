INSERT INTO Department (id, name)
VALUES (FOH),
(BOH)
(Management);

INSERT INTO Role (id, title, salary, department_id)
VALUES (Co-Owner, 50,000.00, management),
(Co-owner, 50,000.00, management),
(server, 24,000.00, FOH),
(barista, 19,000.00, FOH),
(host, 19,000.00, FOH),
(Chef, 31,000.00, BOH),
(Sous-Chef, 25,000.00, BOH),
(Line-cook, 22,000.00, BOH),
(Prep-cook, 20,000.00, BOH),
(Dishwasher, 18,000.00, BOH);

INSERT INTO Employee (id, first_name, last_name, role_id, manager_id)
VALUES ( Jeanne, French, 1, null),
(Erin, DelBaggio, 2, null),
(Al, Libertine, 3, 1),
(Em, Crews, 4, 1),
(Tatum, Dilks, 5, 1),
(Yara, Saad, 6, 2 );
(Miki, Sapiandante, 7, 2), 
(Cody, Brown, 8, 2),
(Sara, Lopez, 9, 2),
(Kyle, Daniels, 10, 2); 