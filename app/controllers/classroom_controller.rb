class ClassroomController < ApplicationController

  def index
    @post = Post.new
    @posts = Post.where(:department_id => current_student.department_id).where(:batch_id => current_student.batch_id).where(:class_section_id => current_student.class_section_id).all
    # @posts = Post.all
    puts @posts.count
  end

  def mates
  end



end
