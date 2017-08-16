# coding: utf-8
base1 = "code.puts \""
base2 = "\""
File.open("metaprocessor.l","r") do |n|
	n.each_line do |code|
		puts(base1.chomp+code.chomp+base2.chomp)
	end
end
