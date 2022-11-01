class AttendantsController < ApplicationController
  before_action :set_attendant, only: %i[ show edit update destroy ]
  
  def index
    @attendants = Attendant.all
    render json: @attendants
  end

  # GET /attendants/1 or /attendants/1.json
  def show
  end

  # GET /attendants/new
  def new
    @attendant = Attendant.new
  end

  # GET /attendants/1/edit
  def edit
  end

  # POST /attendants or /attendants.json
  def create
    @attendant = Attendant.create(
      fname: params[:fname],
      lname: params[:lname],
      email: params[:email],
    )
    
  end

  # PATCH/PUT /attendants/1 or /attendants/1.json
  def update
    respond_to do |format|
      if @attendant.update(attendant_params)
        format.html { redirect_to attendant_url(@attendant), notice: "Attendant was successfully updated." }
        format.json { render :show, status: :ok, location: @attendant }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @attendant.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /attendants/1 or /attendants/1.json
  def destroy
    @attendant.destroy

    respond_to do |format|
      format.html { redirect_to attendants_url, notice: "Attendant was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_attendant
      @attendant = Attendant.find(params[:id])
    end
    
end