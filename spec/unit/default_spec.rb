require 'unit/spec_helper'

describe 'sprout-mysql::default' do
  let(:runner) { ChefSpec::SoloRunner.new }

  before do
    stub_command(/mysql /)
    stub_command('which git')
  end

  it 'includes the install recipe' do
    runner.converge(described_recipe)
    expect(runner).to include_recipe('sprout-mysql::install')
  end
end
