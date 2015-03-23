class Greeter
	attr_accessor :names

	def initialize(names = {:world => "world"})
		@names = names
	end


public
def say_hi_to_everyone
=begin
	if @names.respond_to?("each")
		@names.each do |name|
			say_hi(name)
		end
	else
		say_hi(names)
end
=end
	@names.each do |key, value|
		say_hi(key, value)
	end
end

private
=begin
def say_hi(name)
	if name == "TH" or name == "JS"
		puts "hi ta #{name}"
	elsif name == "BGC"
		puts "hi prof #{name}"
	else
		puts "hi #{name}"
	end
end
=end
def say_hi(position, name)
#	if position.include? "ta"
	if position == :ta1 or position == :ta2 
		puts "hi #{position.to_s} #{name}!"
	elsif position == :prof
		puts "hello #{position.to_s} #{name}!"
	else
		puts "hi #{name}!"
	end
end
end

hellohash = {:ta1 => "TH",
						 :ta2 => "JS",
						 :prof => "BGH",
	:hh => "eeee"}
#end
#g = Greeter.new(["TH","JS","BGC","hihi"])
#g.say_hi_to_everyone
#g.names = "TH"
g = Greeter.new(hellohash)
g.say_hi_to_everyone
puts hellohash["hh".to_sym]
