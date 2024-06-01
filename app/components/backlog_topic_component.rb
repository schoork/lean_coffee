# frozen_string_literal: true

class BacklogTopicComponent < ViewComponent::Base
  def initialize(topic:)
    @topic = topic
  end
end
