class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  #Настройки для devise: добавляем условие срабатывания если исп devise
  before_action  :configure_permitted_parameters, if: :devise_controller?

  private

  #Настройки для devise: добавляем использование username и в разрешенные параметры
  #Добавляем Username в соответствующие массивы
  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << :username
    #devise_parameter_sanitizer.for(:sign_in) << :username
    #devise_parameter_sanitizer.for(:account_update) << :username
  end

end
