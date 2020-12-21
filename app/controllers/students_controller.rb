class StudentsController < ApplicationController
  before_action :find_student, only: %i[edit update destroy show]
  before_action :build_student, only: %i[new create]

  def index
    @students = Student.all
  end
  
  def myinfo; end

  def fees; end

  def new; end

  def edit; end

  def show; end

  def create
    @student = Student.new(student_params)
    if @student.save
      redirect_to students_path
      flash[:success] = 'Student Successfully Created'
    else
      render :new
      flash[:notice] = 'Student Not Create!'
    end
  end

  def update
    if @student.update_attributes(student_params)
      redirect_to students_path
      flash[:success] = 'Student Successfully Update'
    else
      render :edit
      flash[:notice] = 'Student Not Update!'
    end
  end
  def destroy
  	if @student.delete
      redirect_to students_path
      flash[:success] = 'Student Successfully Deleted'
    else
      flash[:notice] = 'Student Not Deleted!'
    end
  end

  private

  def find_student
    @student = Student.find(params[:id])
  end

  def build_student
    @student = Student.new
  end

  def student_params
    params.require(:student).permit(:first_name, :last_name, :gender, :birth_date, :contact, :address, :standard, :is_active)
  end
end