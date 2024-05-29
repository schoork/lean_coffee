class Meeting < ApplicationRecord
  enum status: {
    backlog: 1,
    discussion: 2,
    finished: 3
  }

  after_update_commit -> { broadcast_replace_later_to self }
end
