class RegistrationsController < Devise::RegistrationsController
  before_filter :update_sanitized_params, if: :devise_controller?

  def update_sanitized_params
    devise_parameter_sanitizer.for(:sign_up) {|u| u.permit(:name, :email, :password, :password_confirmation)}

    devise_parameter_sanitizer.for(:account_update) {|u| u.permit(
      :name, :email, :password, :password_confirmation, :current_password,
      :address1, :address2, :number, :zipcode, :cpf, :corporate_name, :trade_name, :cnpj, :profile
    )}
  end

  def after_sign_up_path_for(resource)
    edit_user_registration_path
  end

end
