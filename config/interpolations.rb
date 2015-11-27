Paperclip.interpolates :postid do |attachment, style|
  'post_' + attachment.instance.post.id
end