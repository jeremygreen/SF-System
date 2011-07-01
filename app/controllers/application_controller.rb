class ApplicationController < ActionController::Base
  protect_from_forgery
  
  helper_method :current_user
  
  ActionView::Base.field_error_proc = Proc.new do |html_tag, instance|
    msg = instance.error_message
    error_style = "background-color: #f2afaf"
    if html_tag =~ /<(input|textarea|select)[^>]+style=/
      style_attribute = html_tag =~ /style=['"]/
      html_tag.insert(style_attribute + 7, "#{error_style}; ")
    elsif html_tag =~ /<(input|textarea|select)/
      first_whitespace = html_tag =~ /\s/
      html_tag[first_whitespace] = " style='#{error_style}' "
    end
    html_tag  end
  
    private

    def current_user_session
      return @current_user_session if defined?(@current_user_session)
      @current_user_session = UserSession.find
    end

    def current_user
      return @current_user if defined?(@current_user)
      @current_user = current_user_session && current_user_session.record
    end
      
end
