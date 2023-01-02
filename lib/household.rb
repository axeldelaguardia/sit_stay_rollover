class Household
	attr_reader :animals
	
	def initialize(animals)
		@animals = animals
	end

	def animals_with_skill(skill)
		@animals.find_all {|animal| animal.skills.include?(skill)}
	end

	def no_party_tricks
		@animals.filter do |animal| 
			animal.skills.all? do |skill|
				!skill.party_trick?
			end
		end
	end
end