require('spec_helper')

describe(Band) do
  it('validates the presence of name') do
    band = Band.new({:name => ""})
    expect(band.save()).to(eq(false))
  end
  it('capitalizes the first letter of every word in the band name') do
    band = Band.create({:name => 'the beetles'})
    expect(band.name()).to(eq('The Beetles'))
  end
end