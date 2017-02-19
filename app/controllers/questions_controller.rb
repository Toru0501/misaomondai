class QuestionsController < ApplicationController
  def new
  end
  def create
    @question = Question.new
    @question.bangou = params[:bangou]
    @question.mondaibun = params[:mondaibun]
    @question.mondai1 = params[:mondai1]
    @question.mondai2 = params[:mondai2]
    @question.mondai3 = params[:mondai3]
    @question.mondai4 = params[:mondai4]
    @question.kaitou = params[:kaitou]
    @question.point = params[:point]
    @question.save
  end


  def index
    @questions = Question.all
  end

  def show
    @question = Question.find(params[:id])
  end

  def edit
    @question = Question.find(params[:id])
  end

  def update
    @question = Question.find(params[:id])
    @question.bangou = params[:bangou]
    @question.mondaibun = params[:modaibun]
    @question.mondai1 = params[:modai1]
    @question.mondai2 = params[:modai2]
    @question.mondai3 = params[:modai3]
    @question.mondai4 = params[:modai4]
    @question.kaitou = params[:kaitou]
    @question.point = params[:point]
    @question.save
    redirect_to question_path(@question.id)
  end

  def destroy
    @question = Question.find(params[:id])
    @question.destroy
    redirect_to questions_path
  end
  def test
  @question = Question.all.sample(10)
    end



end
