# == Schema Information
#
# Table name: participants
#
#  id         :bigint           not null, primary key
#  role       :integer
#  user_id    :bigint           not null
#  task_id    :bigint           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
FactoryBot.define do
  factory :participant do
    association :user
    trait :responsible do
      role { Participant::ROLES[:responsible] }
    end

    trait :follower do
      role { Participant::ROLES[:follower] }
    end

    after(:build) do |participant, _|
      participant.user.save
    end
  end
end
