class ElementosController < ApplicationController
  before_action :set_elemento, only: %i[ show edit update destroy ]

  def index
    ###
  end

  # GET /elementos or /elementos.json
  def index
    @elementos = Elemento.all
  end

  # GET /elementos/1 or /elementos/1.json
  def show
  end

  # GET /elementos/new
  def new
    @elemento = Elemento.new
  end

  # GET /elementos/1/edit
  def edit
  end

  # POST /elementos or /elementos.json
  def create
    @elemento = Elemento.new(elemento_params)

    respond_to do |format|
      if @elemento.save
        format.html { redirect_to @elemento, notice: "O Elemento foi criado com sucesso" }
        format.json { render :show, status: :created, location: @elemento }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @elemento.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /elementos/1 or /elementos/1.json
  def update
    respond_to do |format|
      if @elemento.update(elemento_params)
        format.html { redirect_to @elemento, notice: "O Elemento foi atualizado com sucesso" }
        format.json { render :show, status: :ok, location: @elemento }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @elemento.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /elementos/1 or /elementos/1.json
  def destroy
    @elemento.destroy
    respond_to do |format|
      format.html { redirect_to elementos_url, notice: "Elemento foi apagado com sucesso" }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_elemento
      @elemento = Elemento.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def elemento_params
      params.require(:elemento).permit(:componente, :estado, :massa)
    end
end
