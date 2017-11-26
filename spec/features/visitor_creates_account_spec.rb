#С какой то версии Rails надо указывать rails_helper,а не spec_helpers, т.к. о содержит ссылку на spec_helpers
require "rails_helper"

#Тестируем создание аккаунта
feature "Account Creation" do 
  
  #Проверяем может ли гость создать аккаунт
  scenario "allows guest to create account" do
    # Метод sign_up находится в ./spec/support/session_helper.rb
    sign_up
    #Ищем на этой странице в содержимом указанный текст, текст указан с помощью механизма I18n 'config/locales/devise.en.yml'
    expect(page).to have_content I18n.t('devise.registrations.signed_up')
  end  

end

