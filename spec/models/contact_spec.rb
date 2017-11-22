#С какой то версии Rails надо указывать rails_helper,а не spec_helpers, т.к. о содержит ссылку на spec_helpers
require "rails_helper"

describe Contact do 

  it { should validate_presence_of :email }
  it { should validate_presence_of :message }
  
end