module ApplicationHelper
  def admin?
    return session[:admin] == true
  end
end
