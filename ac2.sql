/*Questão 01. Crie uma relação a partir da união das tabelas student e takes.*/
SELECT * FROM student JOIN takes on student.ID = takes.ID;

/*Questão 2. Contar a quantidade de cursos realizados pelos alunos do departamento de Civil Eng.*/
SELECT s.ID, s.name, COUNT(t.course_id) AS quantidade_de_cursos
FROM student s
JOIN takes t ON s.ID = t.ID
WHERE s.dept_name = 'Civil Eng.'
GROUP BY s.ID, s.name
ORDER BY quantidade_de_cursos DESC;

/*Questão 3. Criar uma view chamada 'civil_eng_students' a partir da relação construída na Questão 2.*/
CREATE VIEW civil_eng_students AS 
SELECT s.ID, s.name, COUNT(t.course_id) as quantidade_de_cursos
FROM student s
JOIN takes t ON s.ID = t.ID
WHERE s.dept_name = 'Civil Eng.'
GROUP BY s.ID, s.name;

SELECT * FROM civil_eng_students
ORDER BY quantidade_de_cursos DESC;