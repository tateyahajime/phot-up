class RoomChannel < ApplicationCable::Channel
  def subscribed
    stream_from "room_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def see(data)
    Phot.create!(content: data["message"])
    ActionCable.server.broadcast "room_channel", data["message"]
  end
end
