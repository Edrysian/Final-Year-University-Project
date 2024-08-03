-- The queries to prove the my database works.

-- What task do I have to do?
SELECT * FROM staffSubTask WHERE staffID = 2 AND completed = false;

-- What subtask am I on?
SELECT staff.staffid, staff.taskid, staff.subtaskid, sub.subtask_description FROM staffsubtask staff JOIN subtask sub ON staff.subtaskid = sub.subtaskid;

-- How many subtasks has an employee completed?
SELECT s.staffid as "Staff ID", s.taskid as "Task ID", sub.subtaskid as "Sub-Task ID", subt.subtask_title as "Sub-Task" FROM staffsubtask s JOIN task t ON s.taskid = t.taskid JOIN tasksubtask sub ON t.taskid = sub.taskid JOIN subtask subt ON subt.subtaskid = sub.subtaskid WHERE s.staffid = 2 AND s.completed = false AND sub.subtaskid <= s.subtaskid ORDER BY s.staffid;

-- Is an employee ND?
SELECT * FROM staff WHERE neurodivergent = true;

-- When did an employee start their latest task?
SELECT * FROM staffsubtask WHERE staffid = 7 ORDER BY timestarted DESC;

-- How many tasks has an employee completed?
SELECT * FROM staffsubtask WHERE staffid = 6 AND completed = true;

