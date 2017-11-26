#С какой то версии Rails надо указывать rails_helper,а не spec_helpers, т.к. о содержит ссылку на spec_helpers
require "rails_helper"

#Тестируем создание контакта
feature "Contact Creation" do 
  #Проверяем открывается ли данная страница
  scenario "allows acces to contacts page" do
    #Заходим на указанную страницу
    visit '/contacts'
    #Ищем на этой странице в содержимом указанный текст, текст указан с помощью механизма I18n
    expect(page).to have_content  I18n.t 'contacts.contact_us'
  end  
end