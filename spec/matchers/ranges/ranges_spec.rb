describe (1..5), 'Matchers para Ranges' do
  it '#cover' do
    expect(subject).to cover(2)
    expect(subject).to cover(2, 5)
  end

  # is_expected já infere o subject e é boa para one-liner
  it { is_expected.not_to cover(0, 6) }
end
