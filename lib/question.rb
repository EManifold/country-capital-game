require 'restcountry'

class Question
  def generate
    countries = Restcountry::Country.all
    country = countries.sample
    answer = [country.name, country.capital]
  end
end
