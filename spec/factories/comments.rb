FactoryGirl.define do   
  factory :comment do
    author "author: Mike"
    #Создаем комментарии с уникальным текстом (если в документации к фактори герл)
    sequence(:body) { |n| "comment body #{n}" }
  end  
end