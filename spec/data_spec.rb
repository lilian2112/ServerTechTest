require './app.rb'
require 'spec_helper'

feature 'store key and value in array' do

  before :each do
    @data = DataHandler.new
    @data.set("christmas", "happy")
  end

  scenario 'set value' do
    expect(@data.data["christmas"]).to eq ("happy")
  end
  scenario 'get value' do
    expect(@data.get("christmas")).to eq ("happy")
  end
end
