class MybsController < ApplicationController
  before_action :set_myb, only: [:show, :edit, :update, :destroy]

  # GET /mybs
  # GET /mybs.json
  def index
    @mybs = Myb.all
  end

  # GET /mybs/1
  # GET /mybs/1.json
  def show
  end

  # GET /mybs/new
  def new
    @myb = Myb.new
  end

  # GET /mybs/1/edit
  def edit
  end

  # POST /mybs
  # POST /mybs.json
  def create
    @myb = Myb.new(myb_params)

    respond_to do |format|
      if @myb.save
        format.html { redirect_to @myb, notice: 'Myb was successfully created.' }
        format.json { render :show, status: :created, location: @myb }
      else
        format.html { render :new }
        format.json { render json: @myb.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mybs/1
  # PATCH/PUT /mybs/1.json
  def update
    respond_to do |format|
      if @myb.update(myb_params)
        format.html { redirect_to @myb, notice: 'Myb was successfully updated.' }
        format.json { render :show, status: :ok, location: @myb }
      else
        format.html { render :edit }
        format.json { render json: @myb.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mybs/1
  # DELETE /mybs/1.json
  def destroy
    @myb.destroy
    respond_to do |format|
      format.html { redirect_to mybs_url, notice: 'Myb was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_myb
      @myb = Myb.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def myb_params
      params.require(:myb).permit(:mya_id, :title)
    end
end
