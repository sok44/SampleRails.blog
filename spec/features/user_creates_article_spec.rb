#С какой то версии Rails надо указывать rails_helper,а не spec_helpers, т.к. о содержит ссылку на spec_helpers
require "rails_helper"

#Тестируем создание статьи (залогиненым) пользователем
feature "Article Creation" do 
  #Перехват rspec before(:context) будет выполнен один раз перед всеми тестами в группе
  before(:example) do
    # Метод регистрации sign_up находится в ./spec/support/session_helper.rb
    sign_up
  end

  #Проверяем видна ли пользователю страница создания новой статьи
  scenario "allows user to visit new article page" do
    #Переход на страницу создания новой статью, используем вместо прямой ссылки хелпер
    visit new_article_path
    #Ищем на этой странице в содержимом указанный текст
    expect(page).to have_content 'New article'
  end  

end
