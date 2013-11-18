require 'spec_helper'

describe "UserSessions" do
  describe "GET /login" do
    it "should successfully render login page" do
      get login_path
      response.status.should be(200)
    end
  end

  describe "POST /user_sessions" do
    it "should successfully submit login page" do
      post user_sessions_path
      response.status.should be(200)
    end
  end

  describe "POST /logout" do
    it "should successfully process logout requests and redirect to " do
      post logout_path
      response.status.should be(302)
    end
  end
end
