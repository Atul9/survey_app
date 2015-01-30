class SurveysController < ApplicationController
  def index
    @surveys = Survey.all
  end
  def new
    @survey = Survey.new
    @question = @survey.questions.build
  end

  def create
    @survey = Survey.new(survey_params)
    #@question = @survey.questions.new(question_params)

    if @survey.save
      flash[:notice] = "Survey successfully created"
      redirect_to root_path
    else
      flash[:error] = "Something went wrong"
      render 'new'
    end
  end

  def edit
    @survey = Survey.find(params[:id])
    #@question = Survey.find(params[:id]).questions
  end
  def update
    @survey = Survey.find(params[:id])
    #@question = @survey.find(params[:id]).questions
    if @survey.update_attributes(survey_params)
      flash[:notice] = "Survey successfully saved"
      redirect_to root_path
    else
      flash[:error] = "Something went wrong"
      render 'edit'
    end
  end

  def show
    @survey = Survey.find(params[:id])
    @questions = @survey.questions
  end

  def destroy
    @survey = Survey.find(params[:id])
    @survey.destroy
    flash[:notice] = "Survey has been deleted."
    redirect_to root_path
  end

  private
  def survey_params
    params.require(:survey).permit(:name, :survey_type,:conducted_on, :count_people, :question_attributes)
  end

  def question_params
    params.require(:question).permit(:description,:survey_id)
  end
end
