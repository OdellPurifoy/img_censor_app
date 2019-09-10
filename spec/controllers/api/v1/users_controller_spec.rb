require 'rails_helper'

RSpec.describe Api::V1::UsersController do
  describe 'GET #index' do
    before do
      get :index
    end

    it 'returns http success' do
      expect(response).to have_http_status(:success)
    end

    it 'assigns @users' do
      user = User.create(first_name: 'Spec', last_name: 'User', username: 'specuser', email: 'spec@user.com', password: 'spec')
      get :index
      expect(assigns(:users)).to eq([user])
    end
  end
end
