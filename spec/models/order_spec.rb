require 'rails_helper'

RSpec.describe Order do
  describe "validations" do
    context "invalid attributes" do
      it "is invalid without max due date" do
        designer = Designer.create!(email:        "company@gmail.com",
                                password:     "password",
                                company_name: "Company1",
                                website:      "www.company1.com",
                                description:  "Company1shtuff like makindaclothes",
                                location:     "San Fransisco")
        category = Category.create!(title: "Fashuuuun")
        order = designer.orders.new(specs: "Hi",
                                    status: "incomplete",        
                                    category: category)
        
        expect(order).to be_invalid
      end

      it "is invalid without specs" do
        designer = Designer.create!(email:        "company@gmail.com",
                                password:     "password",
                                company_name: "Company1",
                                website:      "www.company1.com",
                                description:  "Company1shtuff like makindaclothes",
                                location:     "San Fransisco")
        category = Category.create!(title: "Fashuuuun")                                
        order = designer.orders.new(max_due_date: "10-10-2016",
                                    status: "incomplete",
                                    category: category)
        
        expect(order).to be_invalid
      end

      it "is invalid without category" do
        designer = Designer.create!(email:        "company@gmail.com",
                                password:     "password",
                                company_name: "Company1",
                                website:      "www.company1.com",
                                description:  "Company1shtuff like makindaclothes",
                                location:     "San Fransisco")
        category = Category.create!(title: "Fashuuuun")                                
        order = designer.orders.new(max_due_date: "10-10-2016",
                                    status: "incomplete",
                                    specs: "Hello friennn")
        
        expect(order).to be_invalid
      end

    end
    
    context "valid attributes" do 
      it "is valid with a max due date and specs" do
        designer = Designer.create!(email:        "company@gmail.com",
                                password:     "password",
                                company_name: "Company1",
                                website:      "www.company1.com",
                                description:  "Company1shtuff like makindaclothes",
                                location:     "San Fransisco")
        category = Category.create!(title: "Fashuuuun")
        order = designer.orders.new(max_due_date: "10-10-2016",
                                    specs: "Hi",
                                    status: "incomplete",
                                    category: category)

        expect(order).to be_valid
      end
    end
  end

  describe "relationships" do
    it "has many items" do
      designer = Designer.create!(email:        "company@gmail.com",
                                  password:     "password",
                                  company_name: "Company1",
                                  website:      "www.company1.com",
                                  description:  "Company1shtuff like makindaclothes",
                                  location:     "San Fransisco")
      category = Category.create!(title: "Fashuuuun")
      order = designer.orders.new(max_due_date: "10-10-2016",
                                  specs: "Hi",
                                  status: "incomplete",                                  
                                  category: category)

      expect(order).to respond_to(:items)
    end

    it "belongs to a category" do
      designer = Designer.create!(email:        "company@gmail.com",
                                  password:     "password",
                                  company_name: "Company1",
                                  website:      "www.company1.com",
                                  description:  "Company1shtuff like makindaclothes",
                                  location:     "San Fransisco")
      category = Category.create!(title: "Fashuuuun")
      order = designer.orders.new(max_due_date: "10-10-2016",
                                  specs: "Hi",
                                  status: "incomplete",                                  
                                  category: category)

      expect(order).to respond_to(:category)
    end

    it "belongs to a designer" do
      designer = Designer.create!(email:        "company@gmail.com",
                                  password:     "password",
                                  company_name: "Company1",
                                  website:      "www.company1.com",
                                  description:  "Company1shtuff like makindaclothes",
                                  location:     "San Fransisco")
      category = Category.create!(title: "Fashuuuun")
      order = designer.orders.new(max_due_date: "10-10-2016",
                                  specs: "Hi",
                                  status: "incomplete",                                  
                                  category: category)

      expect(order).to respond_to(:designer)
    end
  end
end
