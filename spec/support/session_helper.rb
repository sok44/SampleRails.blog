#Вынесли в отдельный метод чтобы использовать код в различных местах
def sign_up
   #Для получения ссылки по которой необходимо зайти можно воспользоваться картой маршрутов
    #Можно и лучше для указания ссылки спользовать хелпер
    visit new_user_registration_path

    fill_in :user_email, with: 'user@example.com'
    fill_in :user_username, with: 'Make'
    fill_in :user_password, with: 'secure111'
    fill_in :user_password_confirmation, with: 'secure111'

    click_button 'Sign up'
end