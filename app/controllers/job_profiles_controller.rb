class JobProfilesController < ApplicationController
  def index
    @job_profiles = current_user.job_profiles
  end

  def show
    @job_profile = JobProfile.find(params[:id])
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
    notice = "Le modèle #{@job_profile.name} a été supprimé définitivement."
    redirect_to job_profiles_path, notice: notice
  end

  def edit
    @job_profile = JobProfile.find(params[:id])
    new
  end

  def update
    @job_profile = JobProfile.find(params[:id])
    job_profile_params[:artist] == "1" ? @job_profile.artist = true : @job_profile.artist = false
    job_profile_params[:executive] == "1" ? @job_profile.executive = true : @job_profile.executive = false
    @job_profile.contributions_links.destroy_all
    new_contributions_ids = job_profile_params[:contributions_list].map(&:to_i)
    new_contributions_ids.each do |new_contribution_id|
      new_contribution = Contribution.find(new_contribution_id)
      ContributionsLink.create!(job_profile: @job_profile, contribution: new_contribution)
    end
    redirect_to @job_profile, notice: "Le modèle à été mis à jour." if @job_profile.save
  end

  private

  def job_profile_params
    params.require(:job_profile).permit(:name, :executive, :artist, contributions_list: [])
  end
end
