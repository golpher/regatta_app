class RaceTypesController < ApplicationController
  before_action :set_race_type, only: [:show, :edit, :update, :destroy]

  # GET /race_types
  # GET /race_types.json
  def index
    @race_types = RaceType.all
  end

  # GET /race_types/1
  # GET /race_types/1.json
  def show
  end

  # GET /race_types/new
  def new
    @race_type = RaceType.new
  end

  # GET /race_types/1/edit
  def edit
  end

  # POST /race_types
  # POST /race_types.json
  def create
    @race_type = RaceType.new(race_type_params)

    respond_to do |format|
      if @race_type.save
        format.html { redirect_to @race_type, notice: 'Race type was successfully created.' }
        format.json { render :show, status: :created, location: @race_type }
      else
        format.html { render :new }
        format.json { render json: @race_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /race_types/1
  # PATCH/PUT /race_types/1.json
  def update
    respond_to do |format|
      if @race_type.update(race_type_params)
        format.html { redirect_to @race_type, notice: 'Race type was successfully updated.' }
        format.json { render :show, status: :ok, location: @race_type }
      else
        format.html { render :edit }
        format.json { render json: @race_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /race_types/1
  # DELETE /race_types/1.json
  def destroy
    @race_type.destroy
    respond_to do |format|
      format.html { redirect_to race_types_url, notice: 'Race type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_race_type
      @race_type = RaceType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def race_type_params
      params[:race_type]
    end
end
