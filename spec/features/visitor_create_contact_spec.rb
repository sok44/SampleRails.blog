#С какой то версии Rails надо указывать rails_helper,а не spec_helpers, т.к. о содержит ссылку на spec_helpers
require "rails_helper"

#Тестируем создание контакта
feature "Contact Creation" do 
  
  #Проверяем открывается ли данная страница
  scenario "allows accees to contacts page" do
    #Заходим на указанную страницу
    visit '/contacts'
    #Ищем на этой странице в содержимом указанный текст, текст указан с помощью механизма I18n 'config/locales/en.yml'
    expect(page).to have_content  I18n.t 'contacts.contact_us'
  end  

  #Проверяем может ли гость создать контакт
  scenario "allows a guest to create contact" do
    #Заходим на указанную страницу
    visit '/contacts'

    #Заполняем указнные поля
    fill_in :contact_email, with: 'user@example.com'
    fill_in :contact_message, with: 'something'

    #Нажимаем на указанную кнопку 
    click_button 'Send message'

    #Ищем на этой странице в содержимом указанный текст
    expect(page).to have_content 'Thanks!'
  end

end