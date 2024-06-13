module Settable
  def set(attribute, custom_message: nil)
    puts custom_message || "Enter the #{attribute}"

    send("#{attribute.to_s}=", $stdin.gets.chomp)
  end
end