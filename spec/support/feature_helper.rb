include Warden::Test::Helpers

module FeatureHelpers
  def login_user
    user = FactoryGirl.create(:user)
    log_in(user)
    user
  end


  def log_out
    logout
  end

  private
  def log_in(user)
    login_as user, scope: :user
  end
end