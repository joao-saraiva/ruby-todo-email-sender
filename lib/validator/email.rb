class InvalidEmailFormatError < StandardError
  def initialize(msg = "email format is invalid")
    super
  end
end

module Validator
  module Email
    EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

    def self.validate(email)
      raise InvalidEmailFormatError unless email.match?(EMAIL_REGEX)
    end
  end
end