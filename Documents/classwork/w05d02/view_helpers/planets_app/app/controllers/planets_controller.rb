class PlanetsController < ApplicationController
  def index
    @planets = Planet.all

  end

  def show
    @planet = Planet.find(params[:id])
  end

  def new
    @planet = Planet.new
  end

  def create
    planet_params = params.require(:planet).permit(:name, :population, :lang, :flag_url, :president)

    new_planet = Planet.create(planet_params)
    new_planet.save

    redirect_to new_planet
  end

  def edit
    @planet = Planet.find(params[:id])
  end

  def update
    planet_params = params.require(:planet).permit(:name, :population, :lang, :flag_url, :president)

    planet = Planet.find(params[:id])
    planet.update(planet_params)

    redirect_to planet

  end

  def destroy
    Planet.destroy(params[:id])
    redirect_to planets_url
  end
end
