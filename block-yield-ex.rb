def call_block
	puts "start of method"
	yield
#	yield
#	yield

	puts("\n")
	3.times{yield("a","b")}
#e	yield("aa","bb")
#e	yield("aa","bb")
#e	yield("aa","bb")
	puts "end of mothed"

end

call_block{|a,b|puts "next",a,b}
call_block{puts "next"}
#call_block{puts |a,b|"next",a,b}
#call_block{puts "next1"}

#call_block{puts "next2"}


