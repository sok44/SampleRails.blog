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
  
end