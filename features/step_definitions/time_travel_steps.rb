Then(/^travel "(.*?)"$/) do |time|
  # examples: https://github.com/bebanjo/delorean/blob/master/spec/delorean_spec.rb#L36
  Delorean.time_travel_to time

  # reload page
  visit current_path
end
