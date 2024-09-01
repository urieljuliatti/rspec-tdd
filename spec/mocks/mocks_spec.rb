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

  it 'args' do
    student = Student.new
    expect(student).to receive(:foo).with(123)
    student.foo(123)
  end

  it 'repetição' do
    student = Student.new
    expect(student).to receive(:foo).with(123).twice
    student.foo(123)
    student.foo(123)
  end

  it 'com retorno' do
    student = Student.new
    expect(student).to receive(:foo).with(123).and_return(true)
    puts student.foo(123)
  end
end
