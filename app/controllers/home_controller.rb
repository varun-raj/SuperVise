class HomeController < ApplicationController
  before_action :set_student, only: [:profile]

  def index
  end

  def profile

  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_student
      @student = Student.find(params[:id])
    end


end
