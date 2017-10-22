require 'rails_helper'

describe Designer do
  describe "validations" do
    context "invalid attributes" do
      it "is invalid without email" do
        designer = Designer.new(password:     "password",
                                company_name: "Company1",
                                website:      "www.company1.com",
                                description:  "Company1shtuff like makindaclothes",
                                location:     "San Fransisco")

        expect(designer).to be_invalid
      end

      it "is invalid without password" do
        designer = Designer.new(email:        "company@gmail.com",
                                company_name: "Company1",
                                website:      "www.company1.com",
                                description:  "Company1shtuff like makindaclothes",
                                location:     "San Fransisco")

        expect(designer).to be_invalid
      end

      it "is invalid without company name" do
        designer = Designer.new(email:        "company@gmail.com",
                                password:     "password",
                                website:      "www.company1.com",
                                description:  "Company1shtuff like makindaclothes",
                                location:     "San Fransisco")

        expect(designer).to be_invalid
      end

      it "is invalid without website" do
        designer = Designer.new(email:        "company@gmail.com",
                                password:     "password",
                                company_name: "Company1",
                                description:  "Company1shtuff like makindaclothes",
                                location:     "San Fransisco")

        expect(designer).to be_invalid
      end

      it "is invalid without desciption" do
        designer = Designer.new(email:        "company@gmail.com",
                                password:     "password",
                                company_name: "Company1",
                                website:      "www.company1.com",
                                location:     "San Fransisco")

        expect(designer).to be_invalid
      end

      it "is invalid without location" do
        designer = Designer.new(email:        "company@gmail.com",
                                password:     "password",
                                company_name: "Company1",
                                website:      "www.company1.com",
                                description:  "Company1shtuff like makindaclothes")

        expect(designer).to be_invalid
      end
    end

    context "valid attributes" do

      it "is valid with email, password, company name, website, description, location" do
        designer = Designer.new(email:        "company@gmail.com",
                                password:     "password",
                                company_name: "Company1",
                                website:      "www.company1.com",
                                description:  "Company1shtuff like makindaclothes",
                                location:     "San Fransisco")

        expect(designer).to be_valid
      end
    end
  end

  describe "relationships" do
    it "has many orders" do
      designer = Designer.new(email:        "company@gmail.com",
                              password:     "password",
                              company_name: "Company1",
                              website:      "www.company1.com",
                              description:  "Company1shtuff like makindaclothes",
                              location:     "San Fransisco")

      expect(designer).to respond_to(:orders)
    end
  end
end
