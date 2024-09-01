RSpec.describe 'Matcher Output' do
  it { expect{puts 'Uriel'}.to output.to_stdout}
  it { expect{print 'Uriel'}.to output('Uriel').to_stdout}
  it { expect{puts 'Uriel'}.to output(/Uriel/).to_stdout}

  it { expect{warn 'Uriel'}.to output.to_stderr}
  it { expect{warn 'Uriel'}.to output("Uriel\n").to_stderr}
  it { expect{warn 'Uriel'}.to output(/Uriel/).to_stderr}
end
