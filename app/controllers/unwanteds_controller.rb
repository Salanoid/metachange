class UnwantedsController < ApplicationController
  before_action :set_unwanted, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /unwanteds
  # GET /unwanteds.json
  def index
    @unwanteds = Unwanted.all
  end

  # GET /unwanteds/1
  # GET /unwanteds/1.json
  def show
  end

  # GET /unwanteds/new
  def new
    @unwanted = Unwanted.new
  end

  # GET /unwanteds/1/edit
  def edit
  end

  # POST /unwanteds
  # POST /unwanteds.json
  def create
    @unwanted = Unwanted.new(unwanted_params)

    respond_to do |format|
      if @unwanted.save
        format.html { redirect_to @unwanted, notice: 'Unwanted was successfully created.' }
        format.json { render :show, status: :created, location: @unwanted }
      else
        format.html { render :new }
        format.json { render json: @unwanted.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /unwanteds/1
  # PATCH/PUT /unwanteds/1.json
  def update
    respond_to do |format|
      if @unwanted.update(unwanted_params)
        format.html { redirect_to @unwanted, notice: 'Unwanted was successfully updated.' }
        format.json { render :show, status: :ok, location: @unwanted }
      else
        format.html { render :edit }
        format.json { render json: @unwanted.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /unwanteds/1
  # DELETE /unwanteds/1.json
  def destroy
    @unwanted.destroy
    respond_to do |format|
      format.html { redirect_to unwanteds_url, notice: 'Unwanted was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_unwanted
      @unwanted = Unwanted.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def unwanted_params
      params.require(:unwanted).permit(:title, :description, :image)
    end
end
