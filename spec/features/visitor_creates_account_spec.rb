#С какой то версии Rails надо указывать rails_helper,а не spec_helpers, т.к. о содержит ссылку на spec_helpers
require "rails_helper"

#Тестируем создание аккаунта
feature "Account Creation" do 
  
  #Проверяем может ли гость создать аккаунт
  scenario "allows guest to create account" do
    #Для получения ссылки по которой необходимо зайти можно воспользоваться картой маршрутов
    #Можно и лучше для указания ссылки спользовать хелпер
    visit new_user_registration_path

    fill_in :user_email, with: 'user@example.com'
    fill_in :user_username, with: 'Make'
    fill_in :user_password, with: 'secure111'
    fill_in :user_password_confirmation, with: 'secure111'

    click_button 'Sign up'

    #Ищем на этой странице в содержимом указанный текст, текст указан с помощью механизма I18n 'config/locales/devise.en.yml'
    expect(page).to have_content I18n.t('devise.registrations.signed_up')
  end  

end