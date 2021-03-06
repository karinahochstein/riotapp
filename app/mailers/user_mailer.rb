class UserMailer < ApplicationMailer

	default from: "rine@nurfuerspam.de"

	def contact_form(email, name, message)
	@message = message
	  mail(:from => email,
	      :to => 'rine@nurfuerspam.de',
	      :subject => "A new contact form message from #{name}")
	end

	def welcome(user)
	  @appname = "Riot Bike Shop"
	  mail( :to => user.email,
	        :subject => "Welcome to #{@appname}!")
	end
	
end