module TopicosHelper

  def topico_author(topico)
   user_signed_in? && current_user.id == topico.user_id
  end

  def comentario_author(comentario)
   user_signed_in? && current_user.id == comentario.user_id
  end


end
