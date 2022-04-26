class ConfederationsController < ApplicationController
  before_action :set_confederation, only: %i[ show edit update destroy ]

  # GET /confederations or /confederations.json
  def index
    @confederations = Confederation.all
  end

  # GET /confederations/1 or /confederations/1.json
  def show
  end

  # GET /confederations/new
  def new
    @confederation = Confederation.new
  end

  # GET /confederations/1/edit
  def edit
  end

  # POST /confederations or /confederations.json
  def create
    @confederation = Confederation.new(confederation_params)

    respond_to do |format|
      if @confederation.save
        format.html { redirect_to confederation_url(@confederation), notice: "Confederation was successfully created." }
        format.json { render :show, status: :created, location: @confederation }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @confederation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /confederations/1 or /confederations/1.json
  def update
    respond_to do |format|
      if @confederation.update(confederation_params)
        format.html { redirect_to confederation_url(@confederation), notice: "Confederation was successfully updated." }
        format.json { render :show, status: :ok, location: @confederation }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @confederation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /confederations/1 or /confederations/1.json
  def destroy
    @confederation.destroy

    respond_to do |format|
      format.html { redirect_to confederations_url, notice: "Confederation was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_confederation
      @confederation = Confederation.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def confederation_params
      params.require(:confederation).permit(:name, :members, :continental_tournament, :description, :foundation_date, :football_organization_id)
    end
end
