class StudentsController < ApplicationController
  
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new

  end

  def create

    # byebug

    @student = Student.create(first_name: params[:student][:first_name], last_name: params[:student][:last_name])
    redirect_to @student #seek more clarification on this line.
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end

end
