require 'rails_helper'

RSpec.describe Category do
    describe "validations" do
        context "invalid attributes" do
            it "is invalid without title" do
                category = Category.new

                expect(category).to be_invalid
            end
        end

        context "valid attributes" do
            it "is valid with a title" do 
                category = Category.new(title: "Fashunn")
                
                expect(category).to be_valid
            end
        end
    end

    describe "relationships" do
        it "has many orders" do 
            category = Category.new(title: "Fashunn")
            
            expect(category).to respond_to(:orders)
        end
    end
end