class Animal
	attr_reader :type, 
							:skills, 
							:name

	def initialize(info)
		@name = info[:name]
		@type = info[:type]
		@skills = info[:skills]
	end

	def forget_skill(skill)
		@skills.delete(skill)
	end

	def number_of_party_tricks
		@skills.count {|skill| skill.party_trick?}
	end

	def categorize_commands
		{
			party_tricks: @skills.select {|skill| skill.party_trick?},
			not_party_tricks: @skills.select {|skill| !skill.party_trick?}
		}
	end
end