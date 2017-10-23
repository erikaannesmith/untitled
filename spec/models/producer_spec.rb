require 'rails_helper'

RSpec.describe Producer do
  describe "validations" do
    context "invalid attributes" do
      it "is invalid without email" do
        producer = Producer.new(password:     "password",
                                company_name: "Company1",
                                website:      "www.company1.com",
                                description:  "Company1shtuff like makindaclothes",
                                location:     "San Fransisco")

        expect(producer).to be_invalid
      end

      it "is invalid without password" do
        producer = Producer.new(email:        "company@gmail.com",
                                company_name: "Company1",
                                website:      "www.company1.com",
                                description:  "Company1shtuff like makindaclothes",
                                location:     "San Fransisco")

        expect(producer).to be_invalid
      end

      it "is invalid without company_name" do
        producer = Producer.new(email:        "company@gmail.com",
                                password:     "password",
                                website:      "www.company1.com",
                                description:  "Company1shtuff like makindaclothes",
                                location:     "San Fransisco")

        expect(producer).to be_invalid
      end

      it "is invalid without a website" do
        producer = Producer.new(email:        "company@gmail.com",
                                password:     "password",
                                company_name: "Company1",
                                description:  "Company1shtuff like makindaclothes",
                                location:     "San Fransisco")

        expect(producer).to be_invalid
      end

      it "is invalid without description" do
        producer = Producer.new(email:        "company@gmail.com",
                                password:     "password",
                                company_name: "Company1",
                                website:      "www.company1.com",
                                location:     "San Fransisco")

        expect(producer).to be_invalid
      end

      it "is invalid without a location" do
        producer = Producer.new(email:        "company@gmail.com",
                                password:     "password",
                                company_name: "Company1",
                                website:      "www.company1.com",
                                description:  "Company1shtuff like makindaclothes")

        expect(producer).to be_invalid
      end
    end

    context "valid attributes" do
      it "is valid with email, password, company name, website, description, and location " do
        producer = Producer.new(email:        "company@gmail.com",
                                password:     "password",
                                company_name: "Company1",
                                website:      "www.company1.com",
                                description:  "Company1shtuff like makindaclothes",
                                location:     "San Fransisco")

        expect(producer).to be_valid
      end
    end
  end

  describe "relationships" do
    it "has many applications" do
      producer = Producer.new(email:        "company@gmail.com",
                              password:     "password",
                              company_name: "Company1",
                              website:      "www.company1.com",
                              description:  "Company1shtuff like makindaclothes",
                              location:     "San Fransisco")

      expect(producer).to respond_to(:applications)
    end
  end
end
