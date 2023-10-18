class HomeController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index ]

  def home
    # require 'open-uri'
    # require 'json'

    # response = URI.open("https://www.culture.gouv.fr/api/appel-a-projet?limit=10&offset=0",
    #   "User-Agent" => "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36",
    #   :read_timeout => 5)
    # full_json = JSON.parse(response.read)
    # @json = full_json["results"]
  end
end
