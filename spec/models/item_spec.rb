require 'rails_helper'

RSpec.describe Item do
  describe "validations" do
    context "invalid attributes" do
      it "is invalid without name" do
        designer = Designer.new(email:        "company@gmail.com",
                                password:     "password",
                                company_name: "Company1",
                                website:      "www.company1.com",
                                description:  "Company1shtuff like makindaclothes",
                                location:     "San Fransisco")
        order = designer.orders.new(max_due_date: "10-10-2016",
                                    specs: "Hi")
        item = order.items.new(quantity: 2)

        expect(item).to be_invalid
      end

      it "is invalid without quantity" do
        designer = Designer.new(email:        "company@gmail.com",
                                password:     "password",
                                company_name: "Company1",
                                website:      "www.company1.com",
                                description:  "Company1shtuff like makindaclothes",
                                location:     "San Fransisco")
        order = designer.orders.new(max_due_date: "10-10-2016",
                                    specs: "Hi")
        item = order.items.new(name: "Skirt")

        expect(item).to be_invalid
      end
    end

    context "valid attributes" do
      it "is valid with name and quantity" do
        designer = Designer.new(email:        "company@gmail.com",
                                password:     "password",
                                company_name: "Company1",
                                website:      "www.company1.com",
                                description:  "Company1shtuff like makindaclothes",
                                location:     "San Fransisco")
        order = designer.orders.new(max_due_date: "10-10-2016",
                                    specs: "Hi")
        item = order.items.new(name: "Skirt",
                           quantity: 2)

        expect(item).to be_valid
      end
    end
  end

  
end
