class StudentsController < ApplicationController

    def index
        stud =  Student.all
        render json: stud
    end

    def grades
        stud =  Student.all
        render json: stud.sort_by(&:grade)
    end

    def highest_grade
        stud =  Student.all
        studs = stud.sort_by(&:grade)
        render json:studs[studs.length-1]
    end

end
