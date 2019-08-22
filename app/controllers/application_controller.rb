class ApplicationController < ActionController::Base

  def after_sign_in_path_for(resource)
    if resource.is_a?(Admin)#admin　model名
      admin_path
    else
      root_path
    end
  end

  def after_sign_out_path_for(resource)
   root_path
  end

before_action :configure_permitted_parameters, if: :devise_controller?

protected#ストロングパラメータ

  def configure_permitted_parameters
  	#ユーザ登録(sign_up)の際、ユーザ名(name)のデータ操作が許可される
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :email, :last_name, :first_name, :last_name_kana, :first_name_kana, :street_address, :postal_code, :phone_number])
    devise_parameter_sanitizer.permit(:sign_in, keys: [:email])
  end
end
