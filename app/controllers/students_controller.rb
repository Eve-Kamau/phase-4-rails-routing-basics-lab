class StudentsController < ApplicationController

    def index
       students = Student.all
       render json: students
    end

    def grades
        grades = Student.all.order(:grade).reverse
        render json: grades
    end

    def highest_grade
        highestgrade = Student.all.order(:grade).reverse.first
        render json: highestgrade
    end

end
