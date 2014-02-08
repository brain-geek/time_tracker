class TimeEntry < ActiveRecord::Base
  after_initialize :set_default_started_at

  def set_default_started_at
    self.started_at ||= Time.now
  end  
end
