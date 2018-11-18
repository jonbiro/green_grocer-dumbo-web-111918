require "pry"
def consolidate_cart(cart)
  consolidated_cart = {}
  cart.each do |product|
    product.each do |label, details|
      if !consolidated_cart[label]
        consolidated_cart[label] = details
        consolidated_cart[label][:count] = 1
      else
        consolidated_cart[label][:count] += 1
      end
    end
  end
  consolidated_cart
end

def apply_coupons(cart, coupons)
  cart = consolidated_cart(cart)

  coupons.each do |coupon|
  binding.pry
  end
end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
