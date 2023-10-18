class JobProfilesController < ApplicationController
  def index
    @job_profiles = current_user.job_profile
  end

  def show
    @job_profile = JobProfile.find(params[:id])
    @contributions = []
    JSON.parse(@job_profile.contributions_list).each do |contribution|
      @contributions << Contribution.find(contribution)
    end
  end

  def new
    @contributions = Contribution.all
  end

  def create
    if job_profile_params[:contributions_list].nil? || job_profile_params[:name] == ""
      redirect_to new_job_profile_url, notice: "Vous devez entrer un nom et des cotisations dans votre modèle de fiche de paie !"
    else
      @job_profile = JobProfile.new(job_profile_params)
      @job_profile.contributions_list = job_profile_params[:contributions_list].map(&:to_i)
      @job_profile.user_id = current_user.id
      job_profile_params[:artist] == "1" ? @job_profile.artist = true : @job_profile.artist = false
      job_profile_params[:executive] == "1" ? @job_profile.executive = true : @job_profile.executive = false
      @job_profile.save
      redirect_to job_profiles_url
    end
  end

  def destroy
    @job_profile = JobProfile.find(params[:id])
    @job_profile.destroy
    notice = "#{@job_profile.name} a été supprimé définitivement."
    redirect_to job_profiles_path, notice: notice
  end

  def edit
    @job_profile = JobProfile.find(params[:id])
    @previous_contributions = JSON.parse(@job_profile[:contributions_list])
    new
  end

  def update
    @job_profile = JobProfile.find(params[:id])
    job_profile_params[:artist] == "1" ? @job_profile.artist = true : @job_profile.artist = false
    job_profile_params[:executive] == "1" ? @job_profile.executive = true : @job_profile.executive = false
    new_contributions = job_profile_params[:contributions_list].map(&:to_i)
    redirect_to @job_profile, notice: "Le modèle à été mis à jour." if @job_profile.update(contributions_list: new_contributions)
  end

  private

  def job_profile_params
    params.require(:job_profile).permit(:name, :executive, :artist, contributions_list: [])
  end
end
