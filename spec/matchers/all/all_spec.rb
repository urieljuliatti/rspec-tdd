describe 'all', 'Matchers para Coleção', type: 'collection' do
  it { expect([1,7,9]).to all (be_odd).and be_an(Integer)}
  it { expect(['ruby', 'rails']).to all(be_an(String).and include('r'))}
end
