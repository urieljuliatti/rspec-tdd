require "course"
require "student"

RSpec.describe 'Mocks' do
  it '#bar' do
    # setup / stub
    student = Student.new
    # verify
    expect(student).to receive(:bar)
    # exercise
    student.bar
  end
end
