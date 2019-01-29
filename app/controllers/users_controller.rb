class UsersController < ApplicationController
  def index
  end

  def show
    require 'yaml'
    @value = YAML.load_file('config/prefecture-select.yml')
    @birthYear = YAML.load_file('config/birth-year.yml')
    @birthMonth = YAML.load_file('config/birth-month.yml')
    @birthDay = YAML.load_file('config/birth-day.yml')
  end
end
