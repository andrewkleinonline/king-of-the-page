FactoryGirl.define do
 factory :response do
    subject_id '1' 
  end
end

 # t.string   "content"
 #    t.integer  "king_id"
 #    t.boolean  "current",            default: false
 #    t.boolean  "pending",            default: true
 #    t.string   "image_file_name"
 #    t.string   "image_content_type"
 #    t.integer  "image_file_size"
 #    t.datetime "image_updated_at"
 #    t.datetime "created_at"
 #    t.datetime "updated_at"



# factory :user do
#   first_name "Joe"
#   last_name  "Blow"
#   email { "#{first_name}.#{last_name}@example.com".downcase }
# end

# create(:user, last_name: "Doe").email


# factory :user, aliases: [:author]

# factory :story do
#   title "My awesome story"
#   author

#   trait :published do
#     published true
#   end

#   trait :unpublished do
#     published false
#   end

#   trait :week_long_publishing do
#     start_at { 1.week.ago }
#     end_at   { Time.now }
#   end

#   trait :month_long_publishing do
#     start_at { 1.month.ago }
#     end_at   { Time.now }
#   end