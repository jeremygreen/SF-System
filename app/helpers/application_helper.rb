module ApplicationHelper
  
  def render_flash_messages
    result = ''
    for type in [:notice, :warning, :message]
      message = flash[type]
      result #{message}
    end
  end
  
  def render_boolean(value)
    puts value
    if value == true
      "Y"
    else
      "N"
    end
  end
  
  #def button(name,url)
  def button_helper(*args)
    if args.size == 2
      name = args[0]
      url = args[1]
      content_tag :button, :id => name.downcase, :class => 'button', :type => "button", :onclick => "window.location.href =  '#{url_for(url)}'; " do
        "#{name}"
      end
    elsif args.size == 1
      name = args[0]
      content_tag :button, :type => "button" do
        "#{name}"
      end
    end
  end
  
end
