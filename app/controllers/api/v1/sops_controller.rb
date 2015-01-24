class API::V1::SopsController < ApplicationController
  before_action :set_sop, only: [:show, :edit, :update, :destroy]

  def index
    @sops = Sop.all
  end

  def show
  end

  private
  def set_sop
    @sop = Sop.find(params[:id])
  end

  def sop_params
    params.require(:sop).permit(:title, :content)
  end
end
