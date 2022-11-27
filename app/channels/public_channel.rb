class PublicChannel < ApplicationCable::Channel
  def subscribed
    stream_from 'public'
  end
end
