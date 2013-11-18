require 'spec_helper'

describe UserSessionsController do
  describe "GET 'new'" do
    it "returns http success" do
      get 'new'
      expect(response).to be_success
    end
  end

  describe "POST 'create'" do
    before do
      @user = create(:user)
    end

    it "should not login invalid user" do
      post 'create', username: @user.username, password: 'test'
      expect(response).to render_template(:new)
    end

    it "should login valid user" do
      post 'create', username: @user.username, password: '123456'
      expect(response).to redirect_to('/')
    end
  end

  describe "POST 'destroy'" do
    it "returns http success" do
      post 'destroy'
      expect(response).to redirect_to(login_url)
    end
  end
end