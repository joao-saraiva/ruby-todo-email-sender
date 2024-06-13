# frozen_string_literal: false
require_relative "modules/settable"


class Task
  include Settable
  attr_accessor :name, :hour, :description, :day

  def set_name
    set(:name, custom_message: "Enter the task name: ")
  end

  def set_hour
    set(:hour, custom_message: "Enter the task hour FORMAT(00::00 AM || PM)")
  end

  def set_description
    set(:description, custom_message: "Enter task description")
  end

  def set_day
    set(:day)
  end
end
