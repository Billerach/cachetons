// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"
import { Application } from "stimulus"
window.Stimulus = Application.start()

import AddCompanyController from "./controllers/add_company_controller.js"
Stimulus.register("add-company-button", AddCompanyController)
