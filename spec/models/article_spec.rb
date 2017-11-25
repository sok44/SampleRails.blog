#С какой то версии Rails надо указывать rails_helper,а не spec_helpers, т.к. о содержит ссылку на spec_helpers
require "rails_helper"

describe Article do 
 
  #Для удобства можно разделять тесты по логическому смыслу
  
  describe "validations" do
    it { should validate_presence_of :title }
    it { should validate_presence_of :text }
  end 

  describe "associations" do
    it { should have_many :comments }
  end

  #Тесты для метода subject 
  describe "#subject" do
    it "returns the article title" do
      #создаем объект средствами гема factory girl, который заменяет ActiveRecord 
      article = create(:article, title: 'Lorem Ipsum')
      
      #assert, проверка
      expect(article.subject).to eq 'Lorem Ipsum'
    end
  end

  #Тест для метода last_comment
  describe "#last_comment" do
    it "return the last comment" do
      # 1. Сначала создадим фабрику для комментариев
      # 2. Создаем фабрику для статей

      # Создаем статью, но в этот раз с комментариями
      article = create(:article_with_comments)

      #Проверка
      expect(article.last_comment.body).to eq "comment body 3"
    end
  end
  
end