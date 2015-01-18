class MydsController < ApplicationController
  before_action :set_myd, only: [:show, :edit, :update, :destroy]

  # GET /myds
  # GET /myds.json
  def index
    @myds = Myd.all
  end

  # GET /myds/1
  # GET /myds/1.json
  def show
  end

  # GET /myds/new
  def new
    @myd = Myd.new
  end

  # GET /myds/1/edit
  def edit
  end

  # POST /myds
  # POST /myds.json
  def create
    @myd = Myd.new(myd_params)

    respond_to do |format|
      if @myd.save
        format.html { redirect_to @myd, notice: 'Myd was successfully created.' }
        format.json { render :show, status: :created, location: @myd }
      else
        format.html { render :new }
        format.json { render json: @myd.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /myds/1
  # PATCH/PUT /myds/1.json
  def update
    respond_to do |format|
      if @myd.update(myd_params)
        format.html { redirect_to @myd, notice: 'Myd was successfully updated.' }
        format.json { render :show, status: :ok, location: @myd }
      else
        format.html { render :edit }
        format.json { render json: @myd.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /myds/1
  # DELETE /myds/1.json
  def destroy
    @myd.destroy
    respond_to do |format|
      format.html { redirect_to myds_url, notice: 'Myd was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_myd
      @myd = Myd.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def myd_params
      params.require(:myd).permit(:mya_id, :myb_id, :myc_id)
    end
end
