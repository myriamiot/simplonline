class ExercicesController < ApplicationController
  def new
    @exercice = Exercice.new
  end

  def create
    @exercice = Exercice.create(exercice_params)
    redirect_to exercice_path @exercice
  end

  def show
    @exercice = Exercice.find(params[:id])
  end

  def edit
  end

  def update
  end

  private
  def exercice_params
    params.require(:exercice).permit(:consigne, :validateur, :format_reponse, :echantillon, :reponse)
  end
end