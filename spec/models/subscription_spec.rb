require 'spec_helper'

describe Subscription do
  it { should be_a(Subscription) }

  it "should reject a record with an invalid email" do
    Subscription.new(email: "").should_not be_valid
    Subscription.new(email: "blah").should_not be_valid
    Subscription.new(email: "blah@foo").should_not be_valid
    Subscription.new(email: "blah.foo.com").should_not be_valid
  end

  it "should create and accept records that have valid emails" do
    Subscription.new(email: "test.b@thesanders.us").should be_valid
  end
end
