class CompanyLinksController < ApplicationController
  def create
    @user = User.find_by(email: params[:email])
    @company = Company.find(params[:company_id])
    isLinked = CompanyLink.find_by(user: @user, company: @company)
    if isLinked
      redirect_to company_path(@company), alert: "#{params[:email]} est déjà lié à #{@company.name} !"
    elsif @user && @company
      CompanyLink.create(user: @user, company: @company)
      redirect_to company_path(@company), notice: "#{params[:email]} a bien été lié à #{@company.name}"
    else
      redirect_to company_path(@company), alert: "Email non valide."
    end
  end
end
