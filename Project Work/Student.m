% Author Name: Noah Yamanaka
% Email: yamana16@rowan.edu
% Course: MATLAB Programming - Fall 2024
% Assignment: Midterm
% Date: 11/12

% Class Definition For Student 
classdef Student
    %Defines properties of the class
    properties
        ID
        Name
        Age
        GPA
        Major
    end
    
    methods
    % Converts the ID, Name, Age, GPA, and Major variables into objects
        function obj = Student(id, name, age, gpa, major)
            obj.ID = id;
            obj.Name = name;
            obj.Age = age;
            obj.GPA = gpa;
            obj.Major = major;
        end
        % Displays the student information (objects)
        function displayInfo(obj)
            fprintf('ID: %s\nName: %s\nAge: %d\nGPA: %.2f\nMajor: %s\n', ...
                obj.ID, obj.Name, obj.Age, obj.GPA, obj.Major);
        end
        % Allows GPA to be updated by the user
        function obj = updateGPA(obj, newGPA)
            obj.GPA = newGPA; %Sets the GPA to a new value
        end
    end
end