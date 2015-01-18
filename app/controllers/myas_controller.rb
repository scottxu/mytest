class MyasController < ApplicationController
  before_action :set_mya, only: [:show, :edit, :update, :destroy]

  # GET /myas
  # GET /myas.json
  def index
    @ms = Mya.first.to_json(:include => [{
                                              mybs: {
                                                  :include => {
                                                        :mycs => {
                                                            :include => [:myds, :myes]
                                                        }
                                                  }
                                              }
                                          }
                             ])
    render json:  @ms
  end

  # GET /myas/1
  # GET /myas/1.json
  def show
  end

  # GET /myas/new
  def new
    @mya = Mya.new
  end

  # GET /myas/1/edit
  def edit
  end

  # POST /myas
  # POST /myas.json
  def create
    @mya = Mya.new(mya_params)

    respond_to do |format|
      if @mya.save
        format.html { redirect_to @mya, notice: 'Mya was successfully created.' }
        format.json { render :show, status: :created, location: @mya }
      else
        format.html { render :new }
        format.json { render json: @mya.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /myas/1
  # PATCH/PUT /myas/1.json
  def update
    respond_to do |format|
      if @mya.update(mya_params)
        format.html { redirect_to @mya, notice: 'Mya was successfully updated.' }
        format.json { render :show, status: :ok, location: @mya }
      else
        format.html { render :edit }
        format.json { render json: @mya.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /myas/1
  # DELETE /myas/1.json
  def destroy
    @mya.destroy
    respond_to do |format|
      format.html { redirect_to myas_url, notice: 'Mya was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mya
      @mya = Mya.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mya_params
      params.require(:mya).permit(:title)
    end
end
