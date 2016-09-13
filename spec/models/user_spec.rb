require 'rails_helper'

describe User do
  khaleda_khan = User.create(
  first_name: "Khaleda",
  last_name: "Khan"
  points: 0
  )
  logan_gants = User.create(
  first_name: "Logan",
  last_name: "Gants",
  king: true,
  points: 50
  )
  ece_zalp = User.create(
  first_name: "Ece",
  last_name: "Zalp",
  points: 150
  )
  andrew_klein = User.create(
  first_name: "Andrew",
  last_name: "Klein",
  points: 250
  )

  khaleda_khan1 = User.create(
  first_name: "Khaleda1",
  last_name: "Khan1"
  points: 0
  )
  logan_gants1 = User.create(
  first_name: "Logan1",
  last_name: "Gants1",
  king: true,
  points: 2000
  )
  ece_zalp1 = User.create(
  first_name: "Ece1",
  last_name: "Zalp",
  points: 12000
  )
  andrew_klein1 = User.create(
  first_name: "Andrew1",
  last_name: "Klein1",
  points: 11000
  )

  it 'it returns first name and last name with a space in between' do
    expect(khaleda_khan.full_name).to eq("Khaleda Khan")
  end
  it "it returns first name and last initial" do
    expect(khaleda_khan.abbreviated_full_name).to eq("Khaleda K.")
  end
  it "returns the current king" do
    expect(User.current_king).to eq(logan_gants)
  end
  if 'returns user rank'
    expect(khaleda_khan).to eq()
  end

end


# def show
#   @user = user
# end
#
# def check_rank
#   case
#   when self.points > 100000
#     "Monarch"
#   when self.points > 10000
#     "Noble"
#   when self.points > 1000
#     "Knight"
#   when self.points > 500
#     "Vassal"
#   when self.points > 250
#     "Merchant"
#   when self.points > 100
#     "Craftsman"
#   when self.points > 10
#     "Serf"
#   else
#     "Peasant"
#   end
# end
#
#
# private
#   def self.update_overthrow_points_success
#     Prompt.current.overthrows.each do |overthrow|
#       overthrow.subject.points += 25
#       overthrow.subject.save
#     end
#   end
#
#   def self.update_overthrow_points_failure
#     Prompt.current.overthrows.each do |overthrow|
#       overthrow.subject.points -= 100
#       overthrow.subject.save
#     end
#   end
