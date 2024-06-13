# frozen_string_literal: false
require_relative "modules/settable"

class User
  include Settable
  attr_accessor :email, :name

  def set_email
    set(:email, custom_message: "Enter your email")
  end

  def set_name
    set(:name, custom_message: "Enter your name")
  end
end
