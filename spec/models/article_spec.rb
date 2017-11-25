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
  
end