module ApplicationHelper
  def subscription
    @subscription ||= Subscription.new
  end

  def show_sidebar_subscription
    true
  end
end
