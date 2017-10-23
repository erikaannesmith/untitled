require 'rails_helper'

RSpec.describe Application do
  describe "validations" do
    context "invalid attributes" do
      it "is invalid without price_offer" do
        producer = Producer.create(email:        "company@gmail.com",
                                   password:     "password",
                                   company_name: "Company1",
                                   website:      "www.company1.com",
                                   description:  "Company1shtuff like makindaclothes",
                                   location:     "San Fransisco")
        app = producer.applications.new(specs: "hello der")

        expect(app).to be_invalid
      end

      it "is invalid without specs" do
        producer = Producer.create(email:        "company@gmail.com",
                                   password:     "password",
                                   company_name: "Company1",
                                   website:      "www.company1.com",
                                   description:  "Company1shtuff like makindaclothes",
                                   location:     "San Fransisco")
        app = producer.applications.new(price_offer: 100)

        expect(app).to be_invalid
      end
    end

    context "valid attributes" do
      it "is valid with a price offer and specs" do
        producer = Producer.create(email:        "company1@gmail.com",
                                    password:     "password",
                                    company_name: "Company2",
                                    website:      "www.company2.com",
                                    description:  "Company1shtuff like makindaclothes",
                                    location:     "San Fransisco")
        app = producer.applications.create!(price_offer: 100,
                                        specs: "hello")

        expect(app).to be_valid
      end
    end
  end
end
