class CelularsController < ApplicationController
  before_action :set_celular, only: %i[ show edit update destroy ]

  # GET /celulars or /celulars.json
  def index
    @celulars = Celular.all
  end

  # GET /celulars/1 or /celulars/1.json
  def show
  end

  # GET /celulars/new
  def new
    @celular = Celular.new
  end

  # GET /celulars/1/edit
  def edit
  end

  # POST /celulars or /celulars.json
  def create
    @celular = Celular.new(celular_params)

    respond_to do |format|
      if @celular.save
        format.html { redirect_to @celular, notice: "Celular was successfully created." }
        format.json { render :show, status: :created, location: @celular }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @celular.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /celulars/1 or /celulars/1.json
  def update
    respond_to do |format|
      if @celular.update(celular_params)
        format.html { redirect_to @celular, notice: "Celular was successfully updated." }
        format.json { render :show, status: :ok, location: @celular }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @celular.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /celulars/1 or /celulars/1.json
  def destroy
    @celular.destroy!

    respond_to do |format|
      format.html { redirect_to celulars_path, status: :see_other, notice: "Celular was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_celular
      @celular = Celular.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def celular_params
      params.expect(celular: [ :marca, :color ])
    end
end
