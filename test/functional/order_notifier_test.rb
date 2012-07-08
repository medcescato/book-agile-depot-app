# encoding: utf-8

require 'test_helper'

class OrderNotifierTest < ActionMailer::TestCase
  
  test "received" do
    # mail = OrderNotifier.received(orders(:one))
    order = orderInRightEncoding
    mail = OrderNotifier.received(order)
    assert_equal "Pragmatic Store Order Confirmation", mail.subject
    assert_equal ["dave@example.org"], mail.to
    assert_equal ["depot@example.com"], mail.from
    assert_match /1 x Programming Ruby 1.9/, mail.body.encoded
  end

  test "shipped" do
    #mail = OrderNotifier.shipped(orders(:one))
    order = orderInRightEncoding
    mail = OrderNotifier.shipped(order)
    assert_equal "Pragmatic Store Order Shipped", mail.subject
    assert_equal ["dave@example.org"], mail.to
    assert_equal ["depot@example.com"], mail.from
    assert_match /1 x Programming Ruby 1.9/, mail.body.encoded
  end

  def orderInRightEncoding
    ruby = Product.new(title: "Programming Ruby 1.9")
    line_item = LineItem.new(product: ruby)
    order = Order.new(name: "Dave Thomas", address: "MyText", email: "dave@example.org", pay_type: "Check", line_items: [line_item])
  end
  
end
