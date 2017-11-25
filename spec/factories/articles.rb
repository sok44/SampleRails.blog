FactoryGirl.define do   
  factory :article do
    #Указываем свойства, т.к. в модели они не могут быть пустыми
    title "Article title"
    text "Article text" 
  end  
end