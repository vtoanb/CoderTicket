class SessionsController < Devise::SessionsController
  def create
    super do |resource|
      @after_sign_in_path = after_sign_in_path_for(resource)
    end
  end

  def new
    super
  end
end
