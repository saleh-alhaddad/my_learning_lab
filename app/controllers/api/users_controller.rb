class Api::UsersController < ActionController::API

  def index
    @users ||= User.all

    render json: {
      active: UserSerializer.new(@users.active).serializable_hash,
      inactive: UserSerializer.new(@users.inactive).serializable_hash
    }
  end
end
