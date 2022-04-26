class FootballOrganizationsController < ApplicationController
  before_action :set_football_organization, only: %i[ show edit update destroy ]

  # GET /football_organizations or /football_organizations.json
  def index
    @football_organizations = FootballOrganization.all
  end

  # GET /football_organizations/1 or /football_organizations/1.json
  def show
  end

  # GET /football_organizations/new
  def new
    @football_organization = FootballOrganization.new
  end

  # GET /football_organizations/1/edit
  def edit
  end

  # POST /football_organizations or /football_organizations.json
  def create
    @football_organization = FootballOrganization.new(football_organization_params)

    respond_to do |format|
      if @football_organization.save
        format.html { redirect_to football_organization_url(@football_organization), notice: "Football organization was successfully created." }
        format.json { render :show, status: :created, location: @football_organization }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @football_organization.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /football_organizations/1 or /football_organizations/1.json
  def update
    respond_to do |format|
      if @football_organization.update(football_organization_params)
        format.html { redirect_to football_organization_url(@football_organization), notice: "Football organization was successfully updated." }
        format.json { render :show, status: :ok, location: @football_organization }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @football_organization.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /football_organizations/1 or /football_organizations/1.json
  def destroy
    @football_organization.destroy

    respond_to do |format|
      format.html { redirect_to football_organizations_url, notice: "Football organization was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_football_organization
      @football_organization = FootballOrganization.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def football_organization_params
      params.require(:football_organization).permit(:name, :description, :foundation_date)
    end
end
