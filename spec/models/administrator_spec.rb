require 'rails_helper'

RSpec.describe Administrator do
  describe "validations" do 
    context "invalid attributes" do
      it "is invalid without an email" do
        admin = Administrator.new(password: "1234")

        expect(admin).to be_invalid
      end

      it "is invalid without a password" do
        admin = Administrator.new(email: "1234")

        expect(admin).to be_invalid
      end
    end
    
    context "valid attributes" do 
      it "is valid with both email and password" do
        admin = Administrator.new(password: "1234",
                                  email: "123@soso.com")
                            
        expect(admin).to be_valid    
      end  
    end
  end
end