# coding: utf-8


puts "TranceBasic. you can use free operator name. but every operator is not same name. happy coding!! kazuya"
puts "☁️  is IF operator. please input your IF operator call name."

IF = gets.to_s.gsub(/(\r\n|\r|\n|\f)/,"")

puts "☁-☂  is ELSE IF operator. please input your ELSE IF operator call name."

ELSEIF = gets.to_s.gsub(/(\r\n|\r|\n|\f)/,"")

puts "☂ is ELSE operator. please input your ELSE operator call name."

ELSE = gets.to_s.gsub(/(\r\n|\r|\n|\f)/,"")

puts "x☁️ is ENDIF operator. please input your ENDIF operator call name."

ENDIF = gets.to_s.gsub(/(\r\n|\r|\n|\f)/,"")

puts "↺ is FOR operator. please input your FOR operator call name." 

FOR = gets.to_s.gsub(/(\r\n|\r|\n|\f)/,"")

puts "~ is TO operator call name."

TO = gets.to_s.gsub(/(\r\n|\r|\n|\f)/,"")

puts "⌒  is STEP operator call name."

STEP = gets.to_s.gsub(/(\r\n|\r|\n|\f)/,"")

puts "x↺ is ENDFOR operator. please input your ENDFOR operator call name."

ENDFOR = gets.to_s.gsub(/(\r\n|\r|\n|\f)/,"")

puts "☀ is PRINT operator. please input your PRINT operator call name."

PRINT = gets.to_s.gsub(/(\r\n|\r|\n|\f)/,"")

puts "✔ is EXIT operator. please input your EXIT operator call name."

EXIT = gets.to_s.gsub(/(\r\n|\r|\n|\f)/,"")

puts "≫  is # (COMMENT) operator. please inputs your # operator call name."

COMMENT = gets.to_s.gsub(/(\r\n|\r|\n|\f)/,"")

puts "→ is INPUT operator. please input your INPUT operator call name."

INPUT = gets.to_s.gsub(/(\r\n|\r|\n|\f)/,"")

puts "❖ is SYSTEM operator. please input your SYSTEM operator call name."

SYSTEM = gets.to_s.gsub(/(\r\n|\r|\n|\f)/,"")


File.open(".metaprocessor.l","w") do |code|

	code.puts "%{"
	code.puts ""
	code.puts "/* metaprocessor made by kazuya yuda -- *"
	code.puts "* this program for trunceLED main.c */"
	code.puts ""
	code.puts "  #include <stdio.h>"
	code.puts "  #include <stdlib.h>"
	code.puts "  #include \"string.h\""
	code.puts ""
	code.puts "%}"
	code.puts ""
	code.puts "%%"
	code.puts ""
	code.puts "[\s ]+ { printf(\"%s\",yytext); }"
	code.puts ""
	code.puts ""
	code.puts "#{IF}                { printf(\"☁️ \"); }"
	code.puts ""
	code.puts "#{ELSEIF}            { printf(\"☁-☂ \"); }"
	code.puts ""
	code.puts "#{ELSE}              { printf(\"☂ \"); }"
	code.puts ""
	code.puts "#{FOR}                  { printf(\"↺ \"); }"
	code.puts ""
	code.puts "#{TO}                   { printf(\"~\"); }"
	code.puts ""
	code.puts "#{STEP}                  { printf(\"⌒ \"); }"
	code.puts ""
	code.puts "#{PRINT}                 { printf(\"☀ \"); }"
	code.puts ""
	code.puts "#{EXIT}                { printf(\"✔ \"); }"
	code.puts ""
	code.puts "#{ENDIF}               { printf(\"x☁️ \"); }"
	code.puts ""
	code.puts "#{ENDFOR}              { printf(\"x↺ \"); }"
	code.puts ""
	code.puts "#{COMMENT}             { printf(\"≫ \"); }"
	code.puts ""
	code.puts "#{INPUT}               { printf(\"→\"); }"
	code.puts ""
	code.puts "#{SYSTEM}               { printf(\"❖ \"); }"
	code.puts ""
	code.puts "[^\\x00-\\x7F] \|"
	code.puts "[ぁ-んァ-ヶ]+ 	{ printf(\"%s\",yytext); }"
	code.puts ""
	code.puts "[a-zA-Z]+ 	{ printf(\"%s\", yytext); }"
	code.puts ""
	code.puts "\.\|\\n		{ ECHO; }"
	code.puts ""
	code.puts "%%"
	code.puts ""
	code.puts " int main( int argc, char **argv )"
	code.puts "{"
	code.puts " ++argv, --argc;"
	code.puts " if ( argc > 0 )"
	code.puts " 	yyin = fopen( argv[0], \"r\" );"
	code.puts " else"
	code.puts " 	yyin = stdin;"
	code.puts " if(yyin==NULL) { "
	code.puts "	fprintf(stderr,\"Not open a input file!\\n\"); exit(1);"
	code.puts "}"
	code.puts " 	yylex();"
	code.puts " return(0);"
	code.puts "}"


end

system('rm -f .metaprocessor')
system('lex .metaprocessor.l')
system('cc -o .metaprocessor lex.yy.c -ll')
system('rm -f lex.yy.c')
system('lex .originpro.l')
system('cc -o .originprocessor lex.yy.c -ll')
system('rm -f lex.yy.c')

