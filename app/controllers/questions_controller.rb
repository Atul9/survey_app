class QuestionsController < ApplicationController
  def index
    @survey = Survey.find(params[:survey_id])
    @questions = @survey.questions
  end

  def new

    @survey = Survey.find(params[:survey_id])
    @question = @survey.questions.build
    4.times do
      @option = @question.options.build
    end

  end

  def create
    q = params[:question]
    @survey = Survey.find(q["survey_id"])
    @question = @survey.questions.build(question_params)
    if @question.save
      flash[:notice] = "Question created Successfully"
      redirect_to survey_path(@survey)
    else
      flash[:notice] = "Something went wrong!!!"
      render 'new'
    end
  end

  def edit
    @survey = Survey.find(params[:id])
    @question = @survey.questions.find(params[:id])
    @options = @question.options
  end

  def update
    @survey = Survey.find(params[:id])
    @question = @survey.questions.find(params[:id])
    if @question.update_attributes(question_params)
      flash[:notice] = "Question successfully saved"
      redirect_to root_path
    else
      flash[:error] = "Something went wrong"
      render 'edit'
    end

  end
  def show
    @survey = Survey.find(params[:id])
    @question = @survey.questions.find(params[:id])
    @options = @question.options
  end
  private
  def question_params
    params.require(:question).permit(:description, :survey_id, :options_attributes => [:id, :description])
  end
end
