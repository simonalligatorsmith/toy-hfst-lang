# Makefile syntax
# <target_file> : <dependency1> ...
# <TAB> command to produce target file

# If the dependencies or recipe need to take up more than one line, the line
# must be continued using a backslash.

all : esperanto_roots.lexc\
	esperanto_verbs.lexc \
	esperanto_nouns.lexc \
	lexicon_esperanto.lexc \



lexicon_esperanto.lexc : esperanto_roots.lexc esperanto_verbs.lexc esperanto_verbs.lexc
	cat esperanto_roots.lexc esperanto_verbs.lexc esperanto_verbs.lexc > lexicon_esperanto.lexc

gen.hfst : lexicon_esperanto.lexc
	hfst-lexc <lexicon_esperanto.lexc >gen.hfst

gen.hfstol : gen.hfst
	hfst-fst2fst --optimized-lookup-unweighted -i gen.hfst -o gen.hfstol

.PHONY : clean
clean :
	-rm *.hfst *.hfstol esperanto_lexicon.lexc

.PHONY : test
test :
	sh tests.sh  # sh is a command to run the argument filename as a shell script (usually bash)
