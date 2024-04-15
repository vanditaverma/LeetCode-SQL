# Write your MySQL query statement below
SELECT stud.student_id,
       stud.student_name,
       sub.subject_name,
       COALESCE(COUNT(exam.student_id), 0) AS attended_exams
FROM students stud
CROSS JOIN subjects sub
LEFT JOIN examinations exam 
ON stud.student_id = exam.student_id AND sub.subject_name = exam.subject_name
GROUP BY stud.student_id, stud.student_name, sub.subject_name
ORDER BY stud.student_id, sub.subject_name;

