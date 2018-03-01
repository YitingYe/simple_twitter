class ApplicationController < ActionController::Base
<<<<<<< HEAD

  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  private

  def authenticate_admin
    unless current_user.admin?
      flash[:alert] = "Not allow!"
      redirect_to root_path
    end
  end

  def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
      devise_parameter_sanitizer.permit(:account_update, keys: [:name])
  end


=======
  protect_from_forgery with: :exception

  # 請參考 Devise 文件自訂表單後通過 Strong Parameters 的方法
  # https://github.com/plataformatec/devise#strong-parameters
  # 注意有 sign_up 和 account_update 兩種參數要處理
>>>>>>> 3f687d8450c1b3408c06805c3dccba381bd73b72
end
