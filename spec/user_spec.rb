require 'spec_helper'
require 'user'

describe 'user' do
  describe "#set_email" do 
    it "should set email to instance variable based on user input`" do 
      user = User.new
      allow($stdin).to receive(:gets).and_return("johndoe@gmail.com\n")

      expect { user.set_email }.to output("Enter your email\n").to_stdout
      expect(user.email).to eq('johndoe@gmail.com')
    end
  end

  describe "#set_name" do 
  it "should set name to instance variable based on user input`" do 
      user = User.new
      allow($stdin).to receive(:gets).and_return("john doe\n")

      expect { user.set_name }.to output("Enter your name\n").to_stdout
      expect(user.name).to eq('john doe')
    end
  end
end