# frozen_string_literal: false

class User
  attr_accessor :email, :name

  def set_email
    puts "Enter your email"

    self.email = $stdin.gets.chomp
  end

  def set_name
    puts "Enter your name"

    self.name = $stdin.gets.chomp
  end
end
