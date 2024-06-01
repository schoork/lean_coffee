class Meeting < ApplicationRecord
  has_many :topics, dependent: :destroy

  enum status: {
    backlog: 1,
    discussion: 2,
    finished: 3
  }

  after_update_commit -> { broadcast_replace_later_to self }

  def to_do_topics
    topics.where(status: "to_do")
  end

  def doing_topics
    topics.where(status: "doing")
  end

  def done_topics
    topics.where(status: "done")
  end
end
