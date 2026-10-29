Select st.student_id, st.student_name, s.subject_name, count(e.subject_name) as attended_exams from Students st CROSS JOIN Subjects s LEFT JOIN Examinations as e ON st.student_id = e.student_id and s.subject_name = e.subject_name
GROUP BY st.student_id, s.subject_name, st.student_name
ORDER BY st.student_id, s.subject_name
