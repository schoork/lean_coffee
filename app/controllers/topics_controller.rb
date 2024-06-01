class TopicsController < ApplicationController
  before_action :set_topic, only: %i[update destroy]

  def create
    @topic = Topic.new(topic_params)

    if @topic.save
      redirect_to @topic.meeting
    end
  end

  def update
    if @topic.update(topic_params)
      redirect_to @topic.meeting
    end
  end

  def destroy
    if @topic.destroy
      redirect_to @topic.meeting
    end
  end

  private

  def set_topic
    @topic = Topic.find(params[:id])
  end

  def topic_params
    params.require(:topic).permit(:title, :meeting_id)
  end
end
