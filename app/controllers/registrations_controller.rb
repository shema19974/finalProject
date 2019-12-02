class RegistrationsController < Devise::RegistrationsController
    private
  
    def sign_up_params
      params.require(:employee).permit(:first_name, :last_name, :email, :birth_date, :department_id, :password, :password_confirmation)
    end
  
    def account_update_params
      params.require(:employee).permit(:first_name, :last_name, :email, :birth_date, :department_id, :password, :password_confirmation, :current_password)
    end
end