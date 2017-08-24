module SessionsHelper
  def current_user
    @current_user ||= Employee.find_by(id: session[:employee_id])
  end

  def logged_in?
    !!current_user
  end

  def set_session(employee)
    session[:employee_id] = employee.id
  end

  def delete_session
    session.delete(:employee_id)
    @current_user = nil
  end
end
