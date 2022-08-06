class TokensController < ApplicationController
	def deposit
		@key = '890b07cf89-50136f1070-b1270f6fad-98354a36ff'
		@adress = '0xFb77E1A8286651B4988fEC3B4F824B7bECc46179'
		@amount = params[:amount]
		@url = params[:url]
		@uniq = params[:uniq]
		require 'open-uri'
		response = open("https://etherapi.net/api/v2/.track?key=#{@key}&address=#{@adress}&amount=#{@amount}&statusURL=#{@url}&uniqID=#{@uniq}").read
		
		render json: response
	end

	def withdraw
		@key = '890b07cf89-50136f1070-b1270f6fad-98354a36ff'
		@adress = params[:address]
		@from = '0xfb77e1a8286651b4988fec3b4f824b7becc46179'
		@token = 'NUR'
		@amount = params[:amount]
		@url = params[:url]
		@uniq = params[:uniq]
# "https://etherapi.net/api/v2/.send?key=#{@key}&from=#{@from}&address=#{@adress}&amount=#{@amount}&uniqID=#{@uniq}&returnTransaction=1&token=#{@token}&statusURL#{@url}"

		require 'open-uri'
		response = open("https://etherapi.net/api/v2/.send?key=#{@key}&from=#{@from}&address=#{@adress}&amount=#{@amount}&uniqID=#{@uniq}&returnTransaction=1&token=#{@token}").read
		
		render json: response
	end

	def get
		puts request.body.read
	end
end
