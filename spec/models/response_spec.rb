require 'rails_helper'
require 'spec_helper'


# don't forget to add rspec_rails and factory_girl_rails to your gemfile!!!!

describe Response do

  it 'has a subject' do 
    resp = create(:response)
    expect(resp.subject_id).not_to eq(nil)
  end

end