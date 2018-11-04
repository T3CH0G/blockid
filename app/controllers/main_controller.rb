require 'professor'
require 'section'
require 'checkin'
require 'date'
require "digest"  
require "pp"   

class MainController < ApplicationController

skip_before_action :authenticate_user!, only: [:splash,:post]

	def prof
		@user= Professor.find_by! email: current_user.email
		@checkins=[]
		Checkin.where(professor_id: params[:id]).each do |s|
			@checkins.push(s)
		end
		@names = []
		@checkins.each do |s|
			x = Student.find_by! id: s.student_id
			@names.push(x)
		end



		#@messages=Message.all
		#@users=[]

		
		#@messages.each do |x|
		#	if Professor.find_by(email: x.user.email)
		#		@users.push(Professor.find_by(email: x.user.email))
		#	else
		#		@users.push(Student.find_by(email: x.user.email))
		#	end
		#end
		#@data = @messages.zip(@users).to_h
	end


	def stud
		@user= Student.find_by! email: current_user.email
		@checkins=[]
		Checkin.where(student_id: @user.id).each do |s|
			@checkins.push(s)
		end
		#@messages=Message.all
		#@users=[]
		#@messages.each do |x|
		#	if Professor.find_by(email: x.user.email)
		#		@users.push(Professor.find_by(email: x.user.email))
		#	else
		#		@users.push(Student.find_by(email: x.user.email))
		#	end
		#end
	end

	def post
		x = Checkin.last()
		sha = Digest::SHA256.new
			sha.update( x.id.to_s + Time.now.to_s + params[:data]+ x.hashkey )
		sha.hexdigest
		Checkin.create(student_id: params[:student_id], professor_id: params[:professor_id], time: Time.now, status: params[:data].to_s, hashkey: sha, previous_hashkey: x.hashkey)
	end

	def splash
	end

	def refresh
  # get whatever data you need to a variable named @data
  		@messages=Message.all
		@users=[]
		@messages.each do |x|
			if Professor.find_by(email: x.user.email)
				@users.push(Professor.find_by(email: x.user.email))
			else
				@users.push(Student.find_by(email: x.user.email))
			end
		end
		@data = @messages.zip(@users).to_h
  		respond_to do |format|
        format.js
  		end
	end

 end
