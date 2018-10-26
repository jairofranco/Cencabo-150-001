class SecurityElementsController < ApplicationController
  before_action :set_security_element, only: [:show, :edit, :update, :destroy]

  # GET /security_elements
  # GET /security_elements.json
  def index
    @security_elements = SecurityElement.all
  end

  # GET /security_elements/1
  # GET /security_elements/1.json
  def show
  end

  # GET /security_elements/new
  def new
    @security_element = SecurityElement.new
  end

  # GET /security_elements/1/edit
  def edit
  end

  # POST /security_elements
  # POST /security_elements.json
  def create
    @security_element = SecurityElement.new(security_element_params)

    respond_to do |format|
      if @security_element.save
        format.html { redirect_to @security_element, notice: 'Security element was successfully created.' }
        format.json { render :show, status: :created, location: @security_element }
      else
        format.html { render :new }
        format.json { render json: @security_element.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /security_elements/1
  # PATCH/PUT /security_elements/1.json
  def update
    respond_to do |format|
      if @security_element.update(security_element_params)
        format.html { redirect_to @security_element, notice: 'Security element was successfully updated.' }
        format.json { render :show, status: :ok, location: @security_element }
      else
        format.html { render :edit }
        format.json { render json: @security_element.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /security_elements/1
  # DELETE /security_elements/1.json
  def destroy
    @security_element.destroy
    respond_to do |format|
      format.html { redirect_to security_elements_url, notice: 'Security element was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_security_element
      @security_element = SecurityElement.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def security_element_params
      params.require(:security_element).permit(:descripcion, :nombre, :reglamentario)
    end
end
