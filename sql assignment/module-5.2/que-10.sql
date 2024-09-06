CREATE TRIGGER after_employe_insert
AFTER INSERT ON employe
FOR EACH ROW
BEGIN
    INSERT INTO Employe_View (Employe_id, First_name, Last_name, Salary, Joining_date, Department)
    VALUES (NEW.Employe_id, NEW.First_name, NEW.Last_name, NEW.Salary, NEW.Joining_date, NEW.Department);
END;