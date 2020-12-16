class ApplicationController < ActionController::Base
	def show_student
		current_student = Student.find_by_id(cookies[:student_id])
		redirect_to root_path if current_student.nil?
	end
end
