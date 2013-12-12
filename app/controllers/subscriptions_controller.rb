class SubscriptionsController < ApplicationController
  helper SubscriptionsHelper
  before_action :set_subscription, only: [:show, :edit, :update, :destroy]

  # GET /subscriptions/1
  # GET /subscriptions/1.json
  def show
  end

  # GET /subscriptions/new
  def new
    @subscription = Subscription.new
  end

  # POST /subscriptions
  # POST /subscriptions.json
  def create
    @subscription = Subscription.new(subscription_params)

    respond_to do |format|
      if @subscription.save
        subscribe_to_friends_of_solseed_list(@subscription.email)
        format.html { redirect_to @subscription, notice: "Thanks for subscribing! Visit your email to confirm your subscription." }
        format.json { render action: 'subscriptions#show', status: :created, location: @subscription }
      else
        format.html { render action: 'new' }
        format.json { render json: @subscription.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    def subscribe_to_friends_of_solseed_list(email)
      gb = Gibbon::API.new(ENV['MAILCHIMP_API_KEY'])
      list_id_for_friends_of_solseed_list = '9c0e91fd66'
      gb.lists.subscribe id: list_id_for_friends_of_solseed_list, email: {email: email}
    end

    # Use callbacks to share common setup or constraints between actions.
    def set_subscription
      @subscription = Subscription.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def subscription_params
      params.require(:subscription).permit(:email)
    end
end
