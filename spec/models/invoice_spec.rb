require 'rails_helper'

RSpec.describe Invoice do 
  before :each do
    producer = Producer.create(email:        "company1@gmail.com",
                               password:     "password",
                               company_name: "Company2",
                               website:      "www.company2.com",
                               description:  "Company1shtuff like makindaclothes",
                               location:     "San Fransisco")
    designer = Designer.create(email:        "company@gmail.com",
                               password:     "password",
                               company_name: "Company1",
                               website:      "www.company1.com",
                               description:  "Company1shtuff like makindaclothes",
                               location:     "San Fransisco")
    category = Category.create(title: "Fashuuuun")
    @order = designer.orders.create(specs: "Hi",
                                    category: category)
    @app = producer.applications.create(price_offer: 100,
                                        specs: "hello",
                                        order: @order)
  end

  describe "validations" do
    context "invalid attributes" do
      it "is invalid without payment due date" do
        invoice = Invoice.new(payment_status: "incomplete",
                              price: 10,
                              order_status: "incomplete",
                              due_date: "10-11-2016",
                              application: @app,
                              order: @order,
                              tracking_number: "123456789",
                              designer_rating: 4,
                              producer_rating: 2)

        expect(invoice).to be_invalid
      end

      it "is invalid without payment status" do
        invoice = Invoice.new(payment_due_date: "10-10-2016",
                              price: 10,
                              order_status: "incomplete",
                              due_date: "10-11-2016",
                              application: @app,
                              order: @order,
                              tracking_number: "123456789",
                              designer_rating: 4,
                              producer_rating: 2)

        expect(invoice).to be_invalid
      end

      it "is invalid without order status" do
        invoice = Invoice.new(payment_due_date: "10-10-2016",
                              payment_status: "incomplete",
                              price: 10,
                              due_date: "10-11-2016",
                              application: @app,
                              order: @order,
                              tracking_number: "123456789",
                              designer_rating: 4,
                              producer_rating: 2)

        expect(invoice).to be_invalid
      end

      it "is invalid without price" do
        invoice = Invoice.new(payment_due_date: "10-10-2016",
                              payment_status: "incomplete",
                              order_status: "incomplete",
                              due_date: "10-11-2016",
                              application: @app,
                              order: @order,
                              tracking_number: "123456789",
                              designer_rating: 4,
                              producer_rating: 2)

        expect(invoice).to be_invalid
      end

      it "is invalid without due date" do
        invoice = Invoice.new(payment_due_date: "10-10-2016",
                              payment_status: "incomplete",
                              price: 10,
                              order_status: "incomplete",
                              application: @app,
                              order: @order,
                              tracking_number: "123456789",
                              designer_rating: 4,
                              producer_rating: 2)

        expect(invoice).to be_invalid
      end

    end

    context "valid attributes" do 
      it "is valid with payment due date, payment status, price, order status, due date, application, order, tracking number, and ratings" do
        invoice = Invoice.new(payment_due_date: "10-10-2016",
                              payment_status: "incomplete",
                              price: 10,
                              order_status: "incomplete",
                              due_date: "10-11-2016",
                              application: @app,
                              order: @order,
                              tracking_number: "123456789",
                              designer_rating: 4,
                              producer_rating: 2)

        expect(invoice).to be_valid
      end
    end
  end

  describe "relationships" do
    it "belongs to an application" do
      invoice = Invoice.new(payment_due_date: "10-10-2016",
                            payment_status: "incomplete",
                            price: 10,
                            order_status: "incomplete",
                            due_date: "10-11-2016",
                            application: @app,
                            order: @order,
                            tracking_number: "123456789",
                            designer_rating: 4,
                            producer_rating: 2)
                      
      expect(invoice).to respond_to(:application)
    end

    it "belongs to an order" do
      invoice = Invoice.new(payment_due_date: "10-10-2016",
                            payment_status: "incomplete",
                            price: 10,
                            order_status: "incomplete",
                            due_date: "10-11-2016",
                            application: @app,
                            order: @order,
                            tracking_number: "123456789",
                            designer_rating: 4,
                            producer_rating: 2)
                      
      expect(invoice).to respond_to(:order)
    end
  end
end
