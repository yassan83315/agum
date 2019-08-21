class ApplicationController < ActionController::Base

  def after_sign_in_path_for(resource_or_scope)
    if resource.is_a?(admin)#admin　model名
      admin_path
    else
      root_path
    end
  end

  def after_sign_out_path_for(resource_or_scope)
    if resource_or_scope == :user
      new_user_session_path
    else
      new_admin_session_path
    end
  end

end
