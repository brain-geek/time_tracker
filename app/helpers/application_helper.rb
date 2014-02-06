module ApplicationHelper
  def title(value)
    unless value.nil?
      @title = "#{value} | TimeTracker"      
    end
  end
end
