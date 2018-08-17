class LandmarksController < ApplicationController

  get '/landmarks/new' do
    erb :'landmarks/new'
  end

  get '/landmarks' do
    @landmarks = Landmark.all
    erb :'landmarks/index'
  end

  get 'landmarks/:id' do
    #show.erb
  end

  get '/landmarks/:id/edit' do
    #binding.pry
    @landmark = Landmark.find(params["id"])
    erb :'landmark/edit'
  end

  post '/landmarks' do
    #binding.pry
    @landmark = Landmark.create(params["landmark"])
    redirect "/landmarks/#{@figure.id}"
  end

end
