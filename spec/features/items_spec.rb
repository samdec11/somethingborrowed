require 'spec_helper'

describe 'Items' do
  describe 'GET /' do
    it 'displays the New Item link' do
      visit root_path
      page.should have_link('New Item')
    end
  end
  describe 'GET /items/new' do
    it 'shows the new item form', :js => true do
      visit root_path
      click_link('New Item')
      page.should have_link('Cancel')
      page.should have_button('Create Item')
    end
  end
  describe 'Cancel' do
    it 'clears the form when the cancel button is clicked', :js => true do
      visit root_path
      click_link('New Item')
      click_link('Cancel')
      page.should_not have_link('Cancel')
      page.should_not have_button('Create Item')
    end
  end
  describe 'POST /items', :js => true do
    it 'creates a new item and clears the form' do
      visit root_path
      click_link('New Item')
      fill_in('item_name', :with => 'blender')
      fill_in('item_description', :with => "it grinds 'em up!")
      click_button('Create Item')
      page.should_not have_link('Cancel')
      page.should_not have_button('Create Item')
      expect(Item.first.name).to eq 'blender'
    end
    it 'does not create an item when it fails validation' do
      visit root_path
      click_link('New Item')
      click_button('Create Item')
      page.should have_link('Cancel')
      page.should have_button('Create Item')
      expect(Item.first).to be nil
    end
  end
end