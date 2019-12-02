class LeavesController < ApplicationController
  before_action :set_leafe, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_employee!
  def index
    @leaves = Leafe.all
  end

  def show
  end

  def new
    @leafe = Leafe.new
  end

  def edit
  end

  def create
    @leafe = Leafe.new(leafe_params)
    if @leafe.save
      redirect_to @leafe, notice: 'Leafe was successfully created.' 
    else
      render :new
    end
  end

  def update
    if @leafe.update(leafe_params)
      redirect_to @leafe, notice: 'Leafe was successfully updated.'
    else
      render :edit 
    end
  end

  def destroy
    @leafe.destroy
    redirect_to leaves_url, notice: 'Leafe was successfully destroyed.'
  end

  private
    def set_leafe
      @leafe = Leafe.find(params[:id])
    end

    def leafe_params
      params.require(:leafe).permit(:leave_type, :description, :status, :employee_id)
    end
end
