require 'Professor'
require 'Section'
require 'Checkin'
require 'date'

class MainController < ApplicationController

  def prof
  	@title=Section.find_by(id:params[:id]).name
  	@section=Section.find_by(id:params[:id])
	@user= Professor.find_by! email: current_user.email
	@sections=[]
	Section.where(professor_id: @user.id).each do |s|
	  @sections.push(s.name)
	end
	@date_arrays=[]
	Checkin.all.each do |s|
		@date_arrays.push(s.time)
	end
	@date_arrays=@date_arrays.group_by(&:to_date)
	@date_keys=@date_arrays.keys
	@date_keys=@date_keys.map{ |e| e.to_s }
	@date_keys=@date_keys.sort_by {|s| Date.strptime(s, '%Y-%m-%d')}
	@date_values=[]
	@date_arrays.each do |key,value|
		@date_values.push(value.length)
	end
	@checkins=[]
	Checkin.where(section_id: params[:id]).each do |s|
		@checkins.push(s)
	end
	k=0
	m=0
	@checkins.each do |x|
		if x.time.strftime("%I:%M%p") <= @section.start.strftime("%I:%M%p")
			k+=1
		else
			m+=1
		end
	end
	@presence_array=[k,m]
	end

	def stud
		@user= Student.find_by! email: current_user.email
		@checkins=[]
		Checkin.where(student_id: @user.id).each do |s|
			@checkins.push(s)
		end
		@classdeets=[]
		@checkins.each do |x|
			y=Section.find_by(id:x.section_id)
			@classdeets.push(y)
		end
		@checkins.reverse!

		@present=0
		@tardy=0
		@absent=0
		@user.checkins.each do |x|
			if x.status == 'Present'
			 @present+=1
			elsif x.status == 'Tardy'
			 @tardy+=1
			else
			@absent+=1
		end
	end
	end

	def post
		if Time.now.strftime("%I:%M%p") <= Section.find_by(id: params[:section_id]).start.strftime("%I:%M%p")
			Checkin.create(student_id: params[:student_id], section_id: params[:section_id], time: Time.now, status: 'Present')
		else
			Checkin.create(student_id: params[:student_id], section_id: params[:section_id], time: Time.now, status: 'Tardy')
		end
	end

	def splash
	end

 end
