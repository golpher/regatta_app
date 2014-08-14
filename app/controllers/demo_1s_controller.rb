class Demo1sController < ApplicationController
  before_action :set_demo_1, only: [:show, :edit, :update, :destroy]

  # GET /demo_1s
  # GET /demo_1s.json
  def index
    @demo_1s = Demo1.all
  end

  # GET /demo_1s/1
  # GET /demo_1s/1.json
  def show
  end

  # GET /demo_1s/new
  def new
    @demo_1 = Demo1.new
  end

  # GET /demo_1s/1/edit
  def edit
  end

  # POST /demo_1s
  # POST /demo_1s.json
  def create
    @demo_1 = Demo1.new(demo_1_params)

    respond_to do |format|
      if @demo_1.save
        format.html { redirect_to @demo_1, notice: 'Demo 1 was successfully created.' }
        format.json { render :show, status: :created, location: @demo_1 }
      else
        format.html { render :new }
        format.json { render json: @demo_1.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /demo_1s/1
  # PATCH/PUT /demo_1s/1.json
  def update
    respond_to do |format|
      if @demo_1.update(demo_1_params)
        format.html { redirect_to @demo_1, notice: 'Demo 1 was successfully updated.' }
        format.json { render :show, status: :ok, location: @demo_1 }
      else
        format.html { render :edit }
        format.json { render json: @demo_1.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /demo_1s/1
  # DELETE /demo_1s/1.json
  def destroy
    @demo_1.destroy
    respond_to do |format|
      format.html { redirect_to demo_1s_url, notice: 'Demo 1 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_demo_1
      @demo_1 = Demo1.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def demo_1_params
      params.require(:demo_1).permit(:new_demo, :new_demo_1)
    end
end
