class MycsController < ApplicationController
  before_action :set_myc, only: [:show, :edit, :update, :destroy]

  # GET /mycs
  # GET /mycs.json
  def index
    @mycs = Myc.all
  end

  # GET /mycs/1
  # GET /mycs/1.json
  def show
  end

  # GET /mycs/new
  def new
    @myc = Myc.new
  end

  # GET /mycs/1/edit
  def edit
  end

  # POST /mycs
  # POST /mycs.json
  def create
    @myc = Myc.new(myc_params)

    respond_to do |format|
      if @myc.save
        format.html { redirect_to @myc, notice: 'Myc was successfully created.' }
        format.json { render :show, status: :created, location: @myc }
      else
        format.html { render :new }
        format.json { render json: @myc.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mycs/1
  # PATCH/PUT /mycs/1.json
  def update
    respond_to do |format|
      if @myc.update(myc_params)
        format.html { redirect_to @myc, notice: 'Myc was successfully updated.' }
        format.json { render :show, status: :ok, location: @myc }
      else
        format.html { render :edit }
        format.json { render json: @myc.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mycs/1
  # DELETE /mycs/1.json
  def destroy
    @myc.destroy
    respond_to do |format|
      format.html { redirect_to mycs_url, notice: 'Myc was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_myc
      @myc = Myc.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def myc_params
      params.require(:myc).permit(:mya_id, :myb_id)
    end
end
