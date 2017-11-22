class Planet < ApplicationRecord
	validates :name, :population, :flag_url, :lang, :president, presence: true

	validates :population, numericality: { greater_than: 1000, less_than: 5000, 
	message: "Yo, your message is wrong" }

	validates :president, length: { minimum: 4, maximum: 20, message: "Sorry you idiot!" }

	validates :flag_url, format: { with: URI.regexp }

	validates :flag_url, uniqueness: true
end
