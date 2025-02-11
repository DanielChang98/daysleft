class HomeController < ApplicationController
  before_action :set_user_session_id

  def index
  end

  private

  def set_user_session_id
    cookies.permanent.signed[:session_uuid] ||= SecureRandom.uuid
  end
end
