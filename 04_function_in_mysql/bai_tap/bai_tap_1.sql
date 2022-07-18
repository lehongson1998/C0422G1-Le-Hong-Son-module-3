USE quanlysinhvien;

-- Hiển thị tất cả các thông tin môn học (bảng subject) có credit lớn nhất.

SELECT 
    *
FROM
    subject
WHERE
    Credit = (SELECT 
            MAX(Credit)
        FROM
            subject);
 
 -- Hiển thị các thông tin môn học có điểm thi lớn nhất.
 
SELECT 
    su.SubId, su.SubName, su.Credit, m.Mark
FROM
    mark m
        JOIN
    subject su ON m.SubId = su.SubId
WHERE
    Mark = (SELECT 
            MAX(Mark)
        FROM
            mark);
            
-- Hiển thị các thông tin sinh viên và điểm trung bình của mỗi sinh viên, xếp hạng theo thứ tự điểm giảm dần
UPDATE `quanlysinhvien`.`mark` SET `Mark` = '11' WHERE (`MarkId` = '3');


SELECT 
    S.StudentId, S.StudentName, IFNULL(AVG(m.Mark), 0) AS TB
FROM
    Student S
        LEFT JOIN
    Mark M ON S.StudentId = M.StudentId
GROUP BY S.StudentId
ORDER BY TB DESC;













