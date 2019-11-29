class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @event = Event.new
    @event.lists.build
    # @event.user = current_user

    # if !@event.user
    #   redirect_to new_user_registration
    # else
    #   redirect_to events_path
    # end
  end

  private

  def event_params
    params.require(:event).permit(:name, :date)
  end
end

# if !current_user.braintree_customer_id?
#   session[:stored_product_id] = @product.id
#   redirect_to "/customer/new"
# else
#   redirect_to view_item_path(@product.id)
# end
