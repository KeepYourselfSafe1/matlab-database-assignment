db = StudentDatabase();

% Creates 5 students with vaiorus attriutes
student1 = Student('1', 'Rob', 21, 3.9, 'Math');
student2 = Student('2', 'Bob', 22, 3.2, 'MECHE');
student3 = Student('3', 'Bobby', 20, 3.3, 'Computer Science');
student4 = Student('4', 'Robby', 19, 3.1, 'Physics');
student5 = Student('5', 'Hebert', 23, 3.2, 'Business');

% Add the 5 initalized students to the database db
db = db.addStudent(student1);
db = db.addStudent(student2);
db = db.addStudent(student3);
db = db.addStudent(student4);
db = db.addStudent(student5);

% Saves the database to a .mat file
db.saveToFile('studentDatabase.mat');

% Load database from said .mat file
loadedDB = db.loadFromFile('studentDatabase.mat');

% Find a student whose ID is #002 (example)
studentFound = loadedDB.findStudentByID('002');
if ~isempty(studentFound)
    studentFound.displayInfo();
end

% Get students by major (MECHE)
meStudents = loadedDB.getStudentsByMajor('MECHE');
for i = 1:length(meStudents)
    meStudents(i).displayInfo();
end

% Generates the three graphs/visualizations together in one figure
figure;
subplot(3, 1, 1);
plotGPADistribution(loadedDB.Students);

subplot(3, 1, 2);
plotAverageGPAByMajor(loadedDB.Students);

subplot(3, 1, 3);
plotAgeDistribution(loadedDB.Students);