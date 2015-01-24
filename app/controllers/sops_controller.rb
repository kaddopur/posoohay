class SopsController < ApplicationController
  before_action :set_sop, only: [:show, :edit, :update, :destroy]

  # GET /sops
  # GET /sops.json
  def index
    @sops = Sop.all
  end

  # GET /sops/1
  # GET /sops/1.json
  def show
  end

  # GET /sops/new
  def new
    @sop = Sop.new
  end

  # GET /sops/1/edit
  def edit
  end

  # POST /sops
  # POST /sops.json
  def create
    @sop = Sop.new(sop_params)

    respond_to do |format|
      if @sop.save
        format.html { redirect_to @sop, notice: 'Sop was successfully created.' }
        format.json { render :show, status: :created, location: @sop }
      else
        format.html { render :new }
        format.json { render json: @sop.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sops/1
  # PATCH/PUT /sops/1.json
  def update
    respond_to do |format|
      if @sop.update(sop_params)
        format.html { redirect_to @sop, notice: 'Sop was successfully updated.' }
        format.json { render :show, status: :ok, location: @sop }
      else
        format.html { render :edit }
        format.json { render json: @sop.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sops/1
  # DELETE /sops/1.json
  def destroy
    @sop.destroy
    respond_to do |format|
      format.html { redirect_to sops_url, notice: 'Sop was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sop
      @sop = Sop.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sop_params
      params.require(:sop).permit(:title, :content)
    end
end
