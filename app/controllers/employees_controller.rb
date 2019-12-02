class EmployeesController < ApplicationController
  before_action :set_employee, only: [:show]
  # before_action :authenticate_employee!
  def show
    @employee = Employee.find(params[:id])
  
  end
  def index
    @employees = Employee.order(created_at DESC)
  end

  private
  def set_employee
    
  end
end
