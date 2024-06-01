class Topic < ApplicationRecord
  belongs_to :meeting

  enum status: {
    to_do: 1,
    doing: 2,
    done: 3
  }

  validates :title, presence: true

  after_create_commit -> { broadcast_replace_later_to meeting, partial: "meetings/meeting", locals: { meeting: meeting } }
  # after_update_commit -> { broadcast_replace_later_to self.meeting }

  def votes_string
    "5 of 5"
  end
end
