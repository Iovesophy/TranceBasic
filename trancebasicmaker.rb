# coding: utf-8
puts "TranceBasic. you can use free operator name. but every operator is not same name. happy coding!! kazuya"
puts "☁️  is IF operator please input your IF operator call name."

IF = gets.chomp.to_s

puts "ELSE IF operator please input your ELSE IF operator call name."

ELSEIF = gets.chomp.to_s

puts "ELSE operator please input your ELSE operator call name."

ELSE = gets.chomp.to_s

puts "FOR operator please input your FOR operator call name and TO operator call name."

FOR = gets.chomp.to_s

TO = gets.chomp.to_s

puts "PRINT operator please input your PRINT operator call name."

PRINT = gets.chomp.to_s

puts "ENDIF operator please input your ENDIF operator call name."

ENDIF = gets.chomp.to_s

puts "ENDFOR operator please input your ENDFOR operator call name."

ENDFOR = gets.chomp.to_s

puts "EXIT operator please input your EXIT operator call name."

EXIT = gets.chomp.to_s

File.open("metaprocessor.l","w") do |code|

end

system('lex metaprocessor.l')
system('cc -o metaprocesor lex.yy.c')
