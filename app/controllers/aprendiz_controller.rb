class AprendizController < ApplicationController
  def estudiante
    @bienvenido = "hola mundo"
    @aprendiz = Aprendiz.find(1)
  end
  def email
    @chora = "choreando"
  end
end
