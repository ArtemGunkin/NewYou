class UsersController < ApplicationController
 def after_sign_in_path_for(resource)
  current_user_path
end

  def after_sign_out_path_for(resource_or_scope)
  	request.referrer
  end
  def profile
  	@orders = Order.where(user_id: current_user.id)
  	@perfomer = Order.where(order_perfomer_id: current_user.id)


  end
end
