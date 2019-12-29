require 'restcountry'

countries = Restcountry::Country.all
num = rand(40)
p countries[num].name
p countries[num].capital
