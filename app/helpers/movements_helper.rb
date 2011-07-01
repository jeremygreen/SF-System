module MovementsHelper
  
  def has_remarks(remarks)
    if remarks != nil && remarks != ""
      "Yes"
    else
      ""
    end
  end

  def edit_field(status, field)
    if status == field
        true
      else
        false
      end
  end
  
  def get_status
    params[:status].capitalize
  end
  
  def set_rate(current_rate)
    puts current_rate
    if current_rate == nil
      current_rate = ''
    end
    current_rate
  end
  
end
