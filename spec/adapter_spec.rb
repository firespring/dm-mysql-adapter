require 'spec_helper'

require 'dm-core/spec/shared/adapter_spec'
require 'dm-do-adapter/spec/shared_spec'

require 'dm-migrations'
require 'dm-mysql-adapter/spec/setup'

ENV['ADAPTER']          = 'mysql'
ENV['ADAPTER_SUPPORTS'] = 'all'

describe 'DataMapper::Adapters::MysqlAdapter' do

  let(:adapter)    { DataMapper::Spec.adapter }
  let(:repository) { DataMapper.repository(adapter.name) }

  it_behaves_like 'An Adapter'
  it_behaves_like 'A DataObjects Adapter'
end
