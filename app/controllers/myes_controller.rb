class MyesController < ApplicationController
  before_action :set_mye, only: [:show, :edit, :update, :destroy]

  # GET /myes
  # GET /myes.json
  def index
    @myes = Mye.all
  end

  # GET /myes/1
  # GET /myes/1.json
  def show
  end

  # GET /myes/new
  def new
    @mye = Mye.new
  end

  # GET /myes/1/edit
  def edit
  end

  # POST /myes
  # POST /myes.json
  def create
    @mye = Mye.new(mye_params)

    respond_to do |format|
      if @mye.save
        format.html { redirect_to @mye, notice: 'Mye was successfully created.' }
        format.json { render :show, status: :created, location: @mye }
      else
        format.html { render :new }
        format.json { render json: @mye.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /myes/1
  # PATCH/PUT /myes/1.json
  def update
    respond_to do |format|
      if @mye.update(mye_params)
        format.html { redirect_to @mye, notice: 'Mye was successfully updated.' }
        format.json { render :show, status: :ok, location: @mye }
      else
        format.html { render :edit }
        format.json { render json: @mye.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /myes/1
  # DELETE /myes/1.json
  def destroy
    @mye.destroy
    respond_to do |format|
      format.html { redirect_to myes_url, notice: 'Mye was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mye
      @mye = Mye.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mye_params
      params.require(:mye).permit(:mya_id, :myb_id, :myc_id)
    end
end
