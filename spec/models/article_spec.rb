#С какой то версии Rails надо указывать rails_helper,а не spec_helpers, т.к. о содержит ссылку на spec_helpers
require "rails_helper"

describe Article do 

  it { should have_many :comments }
  
end