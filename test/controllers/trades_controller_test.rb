require "test_helper"

class TradesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @trade = trades(:one)
  end

  test "should get index" do
    get trades_url
    assert_response :success
  end

  test "should get new" do
    get new_trade_url
    assert_response :success
  end

  test "should create trade" do
    assert_difference("Trade.count") do
      post trades_url, params: { trade: { accept: @trade.accept, category: @trade.category, description: @trade.description, expiration: @trade.expiration, image_content_type: @trade.image_content_type, image_file_name: @trade.image_file_name, image_updated_at: @trade.image_updated_at, interested_in: @trade.interested_in, neighborhood: @trade.neighborhood, product: @trade.product, user_id: @trade.user_id } }
    end

    assert_redirected_to trade_url(Trade.last)
  end

  test "should show trade" do
    get trade_url(@trade)
    assert_response :success
  end

  test "should get edit" do
    get edit_trade_url(@trade)
    assert_response :success
  end

  test "should update trade" do
    patch trade_url(@trade), params: { trade: { accept: @trade.accept, category: @trade.category, description: @trade.description, expiration: @trade.expiration, image_content_type: @trade.image_content_type, image_file_name: @trade.image_file_name, image_updated_at: @trade.image_updated_at, interested_in: @trade.interested_in, neighborhood: @trade.neighborhood, product: @trade.product, user_id: @trade.user_id } }
    assert_redirected_to trade_url(@trade)
  end

  test "should destroy trade" do
    assert_difference("Trade.count", -1) do
      delete trade_url(@trade)
    end

    assert_redirected_to trades_url
  end
end
