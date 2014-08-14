class SailorsController < ApplicationController
  before_action :set_sailor, only: [:show, :edit, :update, :destroy]

  # GET /sailors
  # GET /sailors.json
  def index
    @sailors = Sailor.all
  end

  # GET /sailors/1
  # GET /sailors/1.json
  def show
  end

  # GET /sailors/new
  def new
    @sailor = Sailor.new
  end

  # GET /sailors/1/edit
  def edit
  end

  # POST /sailors
  # POST /sailors.json
  def create
    @sailor = Sailor.new(sailor_params)

    respond_to do |format|
      if @sailor.save
        format.html { redirect_to @sailor, notice: 'Sailor was successfully created.' }
        format.json { render :show, status: :created, location: @sailor }
      else
        format.html { render :new }
        format.json { render json: @sailor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sailors/1
  # PATCH/PUT /sailors/1.json
  def update
    respond_to do |format|
      if @sailor.update(sailor_params)
        format.html { redirect_to @sailor, notice: 'Sailor was successfully updated.' }
        format.json { render :show, status: :ok, location: @sailor }
      else
        format.html { render :edit }
        format.json { render json: @sailor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sailors/1
  # DELETE /sailors/1.json
  def destroy
    @sailor.destroy
    respond_to do |format|
      format.html { redirect_to sailors_url, notice: 'Sailor was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sailor
      @sailor = Sailor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sailor_params
      params[:sailor]
    end
end
