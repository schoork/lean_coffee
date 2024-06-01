# frozen_string_literal: true

class TopicComponent < ViewComponent::Base
  def initialize(title:)
    @title = title
  end
end
