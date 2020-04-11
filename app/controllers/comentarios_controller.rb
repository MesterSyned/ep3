class ComentariosController < ApplicationController
    before_action :authenticate_user!
    before_action :set_comentario, only: [:edit, :update, :show, :destroy]
    before_action :set_topico, only: [:create, :edit, :show, :update, :destroy]

    def create
        @comentario = @topico.comentarios.create(params[:comentario].permit(:comentario, :topico_id))
        @comentario.user_id = current_user.id

        respond_to do |format|
            if @comentario.save
                format.html { redirect_to topico_path(@topico) }
                format.js 
            else
                format.html { redirect_to topico_path(@topico), notice: 'Comentário não salvo. Tente novamente.'}
                format.js
            end
        end
    end

    def new
    end

    def destroy
        @comentario = @topico.comentarios.find(params[:id])
        @comentario.destroy
        redirect_to topico_path(@topico)
    end

    def edit
        @topico = Topico.find(params[:topico_id])
        @comentario = @topico.comentarios.find(params[:id])
    end

    def update
        @comentario = @topico.comentarios.find(params[:id])
        respond_to do |format|
            if @comentario.update(comentario_params)
                format.html {  redirect_to topico_path(@topico), notice: 'Comentário atualizado com sucesso.'}
            else
                format.html { render :edit }
                format.json { render json: @comentario.errors, status: :unprocessable_entity}
            end
        end
    end

    def show
    end

    private

    def set_topico
        @topico = Topico.find(params[:topico_id])
    end

    def set_comentario
        @comentario = Comentario.find(params[:id])
    end

    def comentario_params
        params.require(:comentario).permit(:comentario)
    end
end