require 'rails_helper'

feature "Client can make a new order" do
  scenario "Client navigates to new order page" do
    business = Business.create(name: "wash", email: "wash@wash.com", hash_password: "password")
    client = Client.create(name: "Client", phone: "1231234123", business: business, email: "client@client.com", password: "password")
    visit new_client_session_path
    within(".new_client") do
      fill_in("Enter Email", with: 'client@client.com')
      fill_in("Password", with: 'password')
    end
    click_on('Log in')

    within(".admin-header") do
      click_on("New Order")
    end

    expect(page).to have_current_path new_order_path
    expect(page).to have_content "Set Box Direction"
  end

end
