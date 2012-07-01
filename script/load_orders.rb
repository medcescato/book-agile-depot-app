Order.transaction do
  
  products = Product.all
  
  (1..100).each do |i|
    order = Order.create(name: "Customer #{i}", address: "#{i} Main Street",
    email: "customer-#{i}@example.com", pay_type: "Check")
    
    # uma ordem pode ter de um a 3 itens comprados
    order_itens_number = 1 + rand(3);
    # logger.info "\n\nOrdem #{order.id} com #{order_itens_number} itens."
    (1..order_itens_number).each do |actual_item_order|
    
      # sorteia um produto dentre os existentes e coloca na ordem. (bug-nao inclui produto igual)      
      product_sorted = products[rand(products.size)]
      # logger.info "Comprando item #{product_sorted.id}"
      current_item = order.line_items.find_by_product_id(product_sorted.id)
      if current_item
        current_item.quantity += 1
      else
        current_item = LineItem.create(order: order, product: product_sorted)
        order.line_items << current_item
      end
      
    end
    
    
  end
end