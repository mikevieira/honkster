class HonksController < ApplicationController
  before_action :set_honk, only: [:show, :edit, :update, :destroy]

  # GET /honks
  # GET /honks.json
  def index
    @honks = Honk.all
  end

  # GET /honks/1
  # GET /honks/1.json
  def show
  end

  # GET /honks/new
  def new
    @honk = Honk.new
  end

  # GET /honks/1/edit
  def edit
  end

  # POST /honks
  # POST /honks.json
  def create
    @honk = Honk.new(honk_params)

    respond_to do |format|
      if @honk.save
        format.html { redirect_to @honk, notice: 'Honk was successfully created.' }
        format.json { render :show, status: :created, location: @honk }
      else
        format.html { render :new }
        format.json { render json: @honk.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /honks/1
  # PATCH/PUT /honks/1.json
  def update
    respond_to do |format|
      if @honk.update(honk_params)
        format.html { redirect_to @honk, notice: 'Honk was successfully updated.' }
        format.json { render :show, status: :ok, location: @honk }
      else
        format.html { render :edit }
        format.json { render json: @honk.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /honks/1
  # DELETE /honks/1.json
  def destroy
    @honk.destroy
    respond_to do |format|
      format.html { redirect_to honks_url, notice: 'Honk was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_honk
      @honk = Honk.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def honk_params
      params.require(:honk).permit(:content, :user_id)
    end
end
