require './app.rb'
require 'spec_helper'

feature 'set value in url' do
  scenario 'setting and getting back value of query string' do
    visit '/set?key=value'
    expect(page).to have_content "value"
  end
  scenario 'setting and getting back value of query string' do
    visit '/set?key=value'
    visit '/get?key=key'
    expect(page).to have_content "value"
end
end
