class ClassroomController < ApplicationController

  before_action :authenticate_student!


  def index
    @post = Post.new
    @posts = Post.where(:department_id => current_student.department_id).where(:batch_id => current_student.batch_id).where(:class_section_id => current_student.class_section_id).order(created_at: :desc).all
    # @posts = Post.all
    puts @posts.count
  end

  def mates
    @mates  = current_student.mates
  end



end
