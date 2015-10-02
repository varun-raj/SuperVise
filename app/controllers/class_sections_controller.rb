class ClassSectionsController < ApplicationController
  before_action :set_class_section, only: [:show, :edit, :update, :destroy]

  # GET /class_sections
  # GET /class_sections.json
  def index
    @class_sections = ClassSection.all
  end

  # GET /class_sections/1
  # GET /class_sections/1.json
  def show
  end

  # GET /class_sections/new
  def new
    @class_section = ClassSection.new
  end

  # GET /class_sections/1/edit
  def edit
  end

  # POST /class_sections
  # POST /class_sections.json
  def create
    @class_section = ClassSection.new(class_section_params)

    respond_to do |format|
      if @class_section.save
        format.html { redirect_to @class_section, notice: 'Class section was successfully created.' }
        format.json { render :show, status: :created, location: @class_section }
      else
        format.html { render :new }
        format.json { render json: @class_section.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /class_sections/1
  # PATCH/PUT /class_sections/1.json
  def update
    respond_to do |format|
      if @class_section.update(class_section_params)
        format.html { redirect_to @class_section, notice: 'Class section was successfully updated.' }
        format.json { render :show, status: :ok, location: @class_section }
      else
        format.html { render :edit }
        format.json { render json: @class_section.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /class_sections/1
  # DELETE /class_sections/1.json
  def destroy
    @class_section.destroy
    respond_to do |format|
      format.html { redirect_to class_sections_url, notice: 'Class section was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_class_section
      @class_section = ClassSection.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def class_section_params
      params.require(:class_section).permit(:name)
    end
end
