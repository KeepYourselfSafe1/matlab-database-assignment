% Author Name: Noah Yamanaka
% Email: yamana16@rowan.edu
% Course: MATLAB Programming - Fall 2024
% Assignment: Midterm
% Date: 11/12

% Main Script for Database Initialization and Operations

% Initialize StudentDB
db = StudentDatabase();

% Creates 5 students with vaiorus attriutes
student1 = Student('1', 'Rob', 21, 3.9, 'Math');
student2 = Student('2', 'Bob', 22, 3.2, 'MECHE');
student3 = Student('3', 'Bobby', 20, 3.3, 'Computer Science');
student4 = Student('4', 'Robby', 19, 3.1, 'Physics');
student5 = Student('5', 'Hebert', 23, 3.2, 'Business');

% Adds the 5 initalized students to the database db
db = db.addStudent(student1);
db = db.addStudent(student2);
db = db.addStudent(student3);
db = db.addStudent(student4);
db = db.addStudent(student5);

% Saves the database to a .mat file
db.saveToFile('studentDatabase.mat');

% Loads database from said .mat file
loadedDB = db.loadFromFile('studentDatabase.mat');

% Locates a student whose ID is #002 (example)
studentFound = loadedDB.findStudentByID('002');
if ~isempty(studentFound)
    studentFound.displayInfo();
end

% Get students by major (MECHE)
meStudents = loadedDB.getStudentsByMajor('MECHE');
for i = 1:length(meStudents)
    meStudents(i).displayInfo();
end

% Generate visualizations
figure;

%Generates the GPA Distribution Plot
subplot(3, 1, 1);
GPADistribution(loadedDB.Students);

%Generates the GPA average for each major plot
subplot(3, 1, 2);
averageGPAByMajor(loadedDB.Students);

%Generates the age distribution plot
subplot(3, 1, 3);
ageDistribution(loadedDB.Students);

%Saves the plots as a .png file titled Visualizations.png
saveas(gcf, 'Visualizations.png');