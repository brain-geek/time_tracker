class TimeEntry < ActiveRecord::Base
  after_initialize :set_default_started_at

  def set_default_started_at
    self.started_at ||= Time.now
    self.active ||= true
  end

  def stop_timer
    return unless active? 

    self.length = Time.now.to_i - started_at.to_i
    self.active = false

    save
  end
end
