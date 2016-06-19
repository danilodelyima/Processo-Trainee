class Language
	def initialize(name , creator)
		@name = name
		@creator = creator
	end

	def description
		puts "Eu sou #{@name} e fui criado por #{@creator}!"
	end
end

ruby = Language.new("Ruby", "Yukihiro Matsumoto")

ruby.description
