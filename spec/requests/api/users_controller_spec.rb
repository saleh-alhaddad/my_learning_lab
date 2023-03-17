RSpec.describe Api::UsersController, type: :request do
  describe "GET index" do
    let(:active_user) { create_list(:user, 1000, status: :active) }
    let(:inactive_user) { create_list(:user, 100, status: :inactive) }

    context 'Test API' do
      it do
        active_user
        inactive_user
        get '/api/users'
        body = JSON.parse(response.body, symbolize_names: true).with_indifferent_access
        expect(body[:active][:data].count).to eq(User.active.count)
        expect(body[:inactive][:data].count).to eq(User.inactive.count)
      end
    end
  end
end