class Kitten < ApplicationRecord
  belongs_to :litter, inverse_of: :kittens, optional: true
  belongs_to :user

  private

    def dob_cannot_be_in_the_future
      if dob.present? && dob.future?
        errors.add(:dob, "can't be in the future")
      end
    end
end
