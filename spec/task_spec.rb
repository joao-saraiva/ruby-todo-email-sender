require 'spec_helper'
require 'task'

describe 'task' do
  describe "#set_name" do 
    it "should set name to instance variable based on user input`" do 
      task = Task.new
      allow($stdin).to receive(:gets).and_return("regular task\n")

      expect { task.set_name }.to output("Enter the task name: \n").to_stdout
      expect(task.name).to eq('regular task')
    end
  end
end