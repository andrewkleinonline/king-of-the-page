require 'rails_helper'
require 'spec_helper'


# don't forget to add rspec_rails and factory_girl_rails to your gemfile!!!!

describe Response do

  it 'has a subject' do
    res = create(:response)
    expect(res.subject_id).not_to eq(nil)
  end

  it "has content" do
    res = create(:response)
    expect(res.subject_id).not_to eq(nil)
  end

  it "has a prompt" do
    res = create(:response)
    expect(res.prompt_id).not_to eq(nil)
  end

  it "has votes" do
     res = create(:response)
     vote1 = create(:vote)
     res.votes << vote1
     expect(res.votes).not_to eq(nil)
  end

  it "performs the king check method correctly" do 
    user = create(:user)
    res = create(:response)
    until res.votes.size == 5
      res.votes << create(:vote)
    end
    res.king_check
    expect(res.subject_id).to eq(User.current_king)
  end


end
