module Settable
  def set(attribute, custom_message: nil)
    puts custom_message || "Enter the #{attribute}"
    value = $stdin.gets.chomp
    yield(value) if block_given?
    send("#{attribute.to_s}=", value)
  end
end