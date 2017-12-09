jQuery(document).on 'turbolinks:load', ->
  comments = $('#comments')
if comments.length > 0
  App.global_chat = App.cable.subscriptions.create {
    channel: "CandidatesChannel"
    candidate_id: comments.data('candidate-id')
  },
  connected: ->
  disconnected: ->
  received: (data) ->
    comments.append data['comment']
  send_comment: (comment, candidate_id) ->
    @perform 'send_comment', comment: comment,  candidate_id:  candidate_id
  $('#new_comment').submit (e) ->
    $this = $(this)
    textarea = $this.find('#comment_content')

    if $.trim(textarea.val()).length > 1
      App.global_chat.send_comment textarea.val(),
      comments.data('candidate-id')
      textarea.val('')
      e.preventDefault()
      return false
