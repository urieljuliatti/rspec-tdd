describe (1..5), 'Matchers para Ranges' do
  it '#cover' do
    expect(subject).to cover(2)
    expect(subject).to cover(2, 5)
  end
end
