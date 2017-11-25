class ClassroomsController < ApplicationController
  def show
    @classroom = Classroom.find(params[:id])
    @student = @classroom.oldest_student
    @students = @classroom.students
    binding.pry
  end

  def index
    @classrooms = Classroom.all
  end
end
