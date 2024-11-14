% Author Name: Noah Yamanaka
% Email: yamana16@rowan.edu
% Course: MATLAB Programming - Fall 2024
% Assignment: Midterm
% Date: 11/12

% Class definition for StudentDatabase
classdef StudentDatabase
    % Properties of the StudentDatabase class
    properties
        Students = [];
    end
    methods
        % Method to add a student to the database
        function obj = addStudent(obj, student)
            obj.Students = [obj.Students; student];
        end
        % Method to search for a student by their unique ID
        function student = findStudentByID(obj, id)
            student = obj.Students(strcmp({obj.Students.ID}, id));
        end
        % Method to retrieve a list of students by their major
        function list = getStudentsByMajor(obj, major)
            list = obj.Students(strcmp({obj.Students.Major}, major));
        end
        % Method to save the current database to a file
        function saveToFile(obj, filename)
            save(filename, 'obj');
        end
        % Method to load a database from a specified file
        function obj = loadFromFile(obj, filename)
            loadedData = load(filename);
            obj = loadedData.obj;
        end
    end
end
