% Author Name: Noah Yamanaka
% Email: yamana16@rowan.edu
% Course: MATLAB Programming - Fall 2024
% Assignment: Midterm
% Date: 11/12

%Creates plot of average GPA by major
function averageGPAByMajor(students)
    majors = unique({students.Major});
    avgGPA = arrayfun(@(m) mean([students(strcmp({students.Major}, m)).GPA]), majors);
    bar(avgGPA);
    set(gca, 'XTickLabel', majors);
    title('Average GPA by Major');
    xlabel('Major');
    ylabel('Average GPA');
end
