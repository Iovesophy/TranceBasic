MAIN = .main
OBJ = $(MAIN).c

all:    trancecalc.exe
trancecalc.exe: $(OBJ)
	ruby .trancebasicmaker.rb  && cc -o led  $(OBJ)

$(MAIN).obj:    $(MAIN).c

