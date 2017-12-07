class CandidatesChannel < ApplicationCable::Channel

  def subscribed
    stream_from "candidates_#{params['candidate_id']}_channel"
  end
  def unsubscribed
  end

  def send_comment(data)
    current_user.comments.create!(content: data['comment'],candidate_id: data['candidate_id'])
  end
end
