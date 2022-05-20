require "application_system_test_case"

class TradesTest < ApplicationSystemTestCase
  setup do
    @trade = trades(:one)
  end

  test "visiting the index" do
    visit trades_url
    assert_selector "h1", text: "Trades"
  end

  test "should create trade" do
    visit trades_url
    click_on "New trade"

    check "Accept" if @trade.accept
    fill_in "Category", with: @trade.category
    fill_in "Description", with: @trade.description
    fill_in "Expiration", with: @trade.expiration
    fill_in "Image content type", with: @trade.image_content_type
    fill_in "Image file name", with: @trade.image_file_name
    fill_in "Image updated at", with: @trade.image_updated_at
    fill_in "Interested in", with: @trade.interested_in
    fill_in "Neighborhood", with: @trade.neighborhood
    fill_in "Product", with: @trade.product
    fill_in "User", with: @trade.user_id
    click_on "Create Trade"

    assert_text "Trade was successfully created"
    click_on "Back"
  end

  test "should update Trade" do
    visit trade_url(@trade)
    click_on "Edit this trade", match: :first

    check "Accept" if @trade.accept
    fill_in "Category", with: @trade.category
    fill_in "Description", with: @trade.description
    fill_in "Expiration", with: @trade.expiration
    fill_in "Image content type", with: @trade.image_content_type
    fill_in "Image file name", with: @trade.image_file_name
    fill_in "Image updated at", with: @trade.image_updated_at
    fill_in "Interested in", with: @trade.interested_in
    fill_in "Neighborhood", with: @trade.neighborhood
    fill_in "Product", with: @trade.product
    fill_in "User", with: @trade.user_id
    click_on "Update Trade"

    assert_text "Trade was successfully updated"
    click_on "Back"
  end

  test "should destroy Trade" do
    visit trade_url(@trade)
    click_on "Destroy this trade", match: :first

    assert_text "Trade was successfully destroyed"
  end
end
