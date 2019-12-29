require 'sinatra/base'
require './lib/game.rb'
require './lib/question.rb'

class Capitals < Sinatra::Base

  get '/' do
    $game = Game.new
    @game = $game
    question = Question.new
    @new_question = question.generate
    @game.question(@new_question)
    erb :Q1
  end

  post '/Q1' do
    @game = $game
    @game.answer(params[:answer])
    @game.result
    redirect '/Q2'
  end

  get '/Q2' do
    @game = $game
    question = Question.new
    @new_question = question.generate
    @game.question(@new_question)
    erb :Q2
  end

  post '/Q2' do
    @game = $game
    @game.answer(params[:answer])
    @game.result
    redirect '/Q3'
  end

  get '/Q3' do
    @game = $game
    question = Question.new
    @new_question = question.generate
    @game.question(@new_question)
    erb :Q3
  end

  post '/Q3' do
    @game = $game
    @game.answer(params[:answer])
    @game.result
    p @game.rounds
    p @game.questions
    redirect '/Q4'
  end

  get '/Q4' do
    @game = $game
    question = Question.new
    @new_question = question.generate
    @game.question(@new_question)
    erb :Q4
  end

  post '/Q4' do
    @game = $game
    @game.answer(params[:answer])
    @game.result
    redirect '/Q5'
  end

  get '/Q5' do
    @game = $game
    question = Question.new
    @new_question = question.generate
    @game.question(@new_question)
    erb :Q5
  end

  post '/Q5' do
    @game = $game
    @game.answer(params[:answer])
    @game.result
    redirect '/Q6'
  end

  get '/Q6' do
    @game = $game
    question = Question.new
    @new_question = question.generate
    @game.question(@new_question)
    erb :Q6
  end

  post '/Q6' do
    @game = $game
    @game.answer(params[:answer])
    @game.result
    redirect '/Q7'
  end

  get '/Q7' do
    @game = $game
    question = Question.new
    @new_question = question.generate
    @game.question(@new_question)
    erb :Q7
  end

  post '/Q7' do
    @game = $game
    @game.answer(params[:answer])
    @game.result
    redirect '/Q8'
  end

  get '/Q8' do
    @game = $game
    question = Question.new
    @new_question = question.generate
    @game.question(@new_question)
    erb :Q8
  end

  post '/Q8' do
    @game = $game
    @game.answer(params[:answer])
    @game.result
    redirect '/Q9'
  end

  get '/Q9' do
    @game = $game
    question = Question.new
    @new_question = question.generate
    @game.question(@new_question)
    erb :Q9
  end

  post '/Q9' do
    @game = $game
    @game.answer(params[:answer])
    @game.result
    redirect '/Q10'
  end

  get '/Q10' do
    @game = $game
    question = Question.new
    @new_question = question.generate
    @game.question(@new_question)
    erb :Q10
  end

  post '/Q10' do
    @game = $game
    @game.answer(params[:answer])
    @game.result
    redirect '/results'
  end

  get '/results' do
    @game = $game
    @answers = @game.answers
    @questions = @game.questions
    @results = @game.results
    erb :results
  end

  run! if app_file == $0
end
