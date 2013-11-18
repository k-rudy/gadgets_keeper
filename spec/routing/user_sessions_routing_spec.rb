require "spec_helper"

describe UserSessionsController do
  describe "routing" do

    it "routes to /login" do
      get("/login").should route_to("user_sessions#new")
    end

    it "routes to #create" do
      post("/user_sessions").should route_to("user_sessions#create")
    end

    it "routes to /logout" do
      post("/logout").should route_to("user_sessions#destroy")
    end

  end
end
