require 'rails_helper'

describe User do

  # it 'returns first name and last name with a space in between' do
  #   expect(khaleda_khan.full_name).to eq("Khaleda Khan")
  # end

  # it "returns first name and last initial" do
  #   expect(khaleda_khan.abbreviated_full_name).to eq("Khaleda K.")
  # end

  # it "returns the current king" do
  #   # User.reset_all_king
  #   logan_gants.update(king:true)
  #   expect(User.current_king).to eq(logan_gants)
  # end

  it 'test factory girl. user should have id' do
    user_1 = create(:user)
    expect(user_1).to be_valid
  end

  it "returns Peasant rank" do
    user_1 = create(:user,points: 0)
    user_2 = create(:user,points: 10)
    user_3 = create(:user, points: 5)
    expect(user_1.check_rank).to eq('Peasant')
    expect(user_2.check_rank).to eq('Peasant')
    expect(user_3.check_rank).to eq('Peasant')
  end

  it "returns Serf rank" do
    user_1 = create(:user,points: 11)
    user_2 = create(:user,points: 20)
    user_3 = create(:user, points: 100)
    expect(user_1.check_rank).to eq('Serf')
    expect(user_2.check_rank).to eq('Serf')
    expect(user_3.check_rank).to eq('Serf')
  end

    it "returns Craftsman rank" do
      user_1 = create(:user,points: 101)
      user_2 = create(:user,points: 120)
      user_3 = create(:user, points: 250)
      expect(user_1.check_rank).to eq('Craftsman')
      expect(user_2.check_rank).to eq('Craftsman')
      expect(user_3.check_rank).to eq('Craftsman')
    end

    it "returns Merchant rank" do
      user_1 = create(:user,points: 251)
      user_2 = create(:user,points: 300)
      user_3 = create(:user, points: 500)
      expect(user_1.check_rank).to eq('Merchant')
      expect(user_2.check_rank).to eq('Merchant')
      expect(user_3.check_rank).to eq('Merchant')
    end

    it "returns Vassal rank" do
      user_1 = create(:user,points: 501)
      user_2 = create(:user,points: 600)
      user_3 = create(:user, points: 1000)
      expect(user_1.check_rank).to eq('Vassal')
      expect(user_2.check_rank).to eq('Vassal')
      expect(user_3.check_rank).to eq('Vassal')
    end

    it "returns Knight rank" do
      user_1 = create(:user,points: 1001)
      user_2 = create(:user,points: 3000)
      user_3 = create(:user, points: 10000)
      expect(user_1.check_rank).to eq('Knight')
      expect(user_2.check_rank).to eq('Knight')
      expect(user_3.check_rank).to eq('Knight')
    end

    it "returns Noble rank" do
      user_1 = create(:user,points: 10001)
      user_2 = create(:user,points: 30000)
      user_3 = create(:user, points: 100000)
      expect(user_1.check_rank).to eq('Noble')
      expect(user_2.check_rank).to eq('Noble')
      expect(user_3.check_rank).to eq('Noble')
    end
    
    it "returns Monarch rank" do
      user_1 = create(:user,points: 100001)
      user_2 = create(:user,points: 300000)
      expect(user_1.check_rank).to eq('Monarch')
      expect(user_2.check_rank).to eq('Monarch')
    end

  end


