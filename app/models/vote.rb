class Vote < ActiveRecord::Base
  belongs_to :user
  belongs_to :voteable, polymorphic: true
  validates! :user, :voteable, presence: true

  validates! :user, uniqueness: {scope: [:voteable_id, :voteable_type]}
end
