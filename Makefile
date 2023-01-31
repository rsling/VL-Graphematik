LX = xelatex
BX = biber

PREFLAGS = -no-pdf
TEXFLAGS = -output-directory=output
HANDIFLAGS = \def\HANDOUT{}
FINALFLAGS = \input{main}
FILEPRE = SchaeferSchriftSchreibung
HOSUFF = Handout
PRESUFF = Presentation

H01JOB = 01$(FILEPRE)$(HOSUFF)
P01JOB = 01$(FILEPRE)$(PRESUFF)
L01FLAGS = \def\TITLE{1. Graphematik und Schreibprinzipien}\def\LECTURE{01}

H02JOB = 02$(FILEPRE)$(HOSUFF)
P02JOB = 02$(FILEPRE)$(PRESUFF)
L02FLAGS = \def\TITLE{2. Wiederholung | Phonetik}\def\LECTURE{02}

H03JOB = 03$(FILEPRE)$(HOSUFF)
P03JOB = 03$(FILEPRE)$(PRESUFF)
L03FLAGS = \def\TITLE{3. Wiederholung | Phonologie}\def\LECTURE{03}

H04JOB = 04$(FILEPRE)$(HOSUFF)
P04JOB = 04$(FILEPRE)$(PRESUFF)
L04FLAGS = \def\TITLE{4. Phonographisches Schreibprinzip | Konsonanten}\def\LECTURE{04}

H05JOB = 05$(FILEPRE)$(HOSUFF)
P05JOB = 05$(FILEPRE)$(PRESUFF)
L05FLAGS = \def\TITLE{5. Phonographisches Schreibprinzip | Vokale}\def\LECTURE{05}

H06JOB = 06$(FILEPRE)$(HOSUFF)
P06JOB = 06$(FILEPRE)$(PRESUFF)
L06FLAGS = \def\TITLE{6. Silben und Dehnungsschreibung}\def\LECTURE{06}

H07JOB = 07$(FILEPRE)$(HOSUFF)
P07JOB = 07$(FILEPRE)$(PRESUFF)
L07FLAGS = \def\TITLE{7. Eszett, Dehnung und Konstanz}\def\LECTURE{07}

H08JOB = 08$(FILEPRE)$(HOSUFF)
P08JOB = 08$(FILEPRE)$(PRESUFF)
L08FLAGS = \def\TITLE{8. Spatien und Majuskeln}\def\LECTURE{08}

H09JOB = 09$(FILEPRE)$(HOSUFF)
P09JOB = 09$(FILEPRE)$(PRESUFF)
L09FLAGS = \def\TITLE{9. Komma}\def\LECTURE{09}

H10JOB = 10$(FILEPRE)$(HOSUFF)
P10JOB = 10$(FILEPRE)$(PRESUFF)
L10FLAGS = \def\TITLE{10. Punkt und sonstige Interpunktion}\def\LECTURE{10}

FULLJOB = $(FILEPRE)Handout


create:
	mkdir -p ./output/includes

all: handouts presentations
handouts: h01 h02 h03 h04
presentations: p01 p02 p03 p04

allq: handoutsq presentationsq
handoutsq: h01q h02q h03q h04q
presentationsq: p01q p02q p03q p04q

h01: create
	$(LX) $(TEXFLAGS) -jobname=$(H01JOB) $(PREFLAGS) "$(L01FLAGS)$(HANDIFLAGS)$(FINALFLAGS)"
	cd ./output; $(BX) $(H01JOB)
	$(LX) $(TEXFLAGS) -jobname=$(H01JOB) "$(L01FLAGS)$(HANDIFLAGS)$(FINALFLAGS)"

h01q: create
	$(LX) $(TEXFLAGS) -jobname=$(H01JOB) "$(L01FLAGS)$(HANDIFLAGS)$(FINALFLAGS)"

p01: create
	$(LX) $(TEXFLAGS) -jobname=$(P01JOB) $(PREFLAGS) "$(L01FLAGS)$(FINALFLAGS)"
	cd ./output; $(BX) $(P01JOB)
	$(LX) $(TEXFLAGS) -jobname=$(P01JOB) "$(L01FLAGS)$(FINALFLAGS)"

p01q: create
	$(LX) $(TEXFLAGS) -jobname=$(P01JOB) "$(L01FLAGS)$(FINALFLAGS)"

h02: create
	$(LX) $(TEXFLAGS) -jobname=$(H02JOB) $(PREFLAGS) "$(L02FLAGS)$(HANDIFLAGS)$(FINALFLAGS)"
	cd ./output; $(BX) $(H02JOB)
	$(LX) $(TEXFLAGS) -jobname=$(H02JOB) "$(L02FLAGS)$(HANDIFLAGS)$(FINALFLAGS)"

h02q: create
	$(LX) $(TEXFLAGS) -jobname=$(H02JOB) "$(L02FLAGS)$(HANDIFLAGS)$(FINALFLAGS)"

p02: create
	$(LX) $(TEXFLAGS) -jobname=$(P02JOB) $(PREFLAGS) "$(L02FLAGS)$(FINALFLAGS)"
	cd ./output; $(BX) $(P02JOB)
	$(LX) $(TEXFLAGS) -jobname=$(P02JOB) "$(L02FLAGS)$(FINALFLAGS)"

p02q: create
	$(LX) $(TEXFLAGS) -jobname=$(P02JOB) "$(L02FLAGS)$(FINALFLAGS)"


h03: create
	$(LX) $(TEXFLAGS) -jobname=$(H03JOB) $(PREFLAGS) "$(L03FLAGS)$(HANDIFLAGS)$(FINALFLAGS)"
	cd ./output; $(BX) $(H03JOB)
	$(LX) $(TEXFLAGS) -jobname=$(H03JOB) "$(L03FLAGS)$(HANDIFLAGS)$(FINALFLAGS)"

h03q: create
	$(LX) $(TEXFLAGS) -jobname=$(H03JOB) "$(L03FLAGS)$(HANDIFLAGS)$(FINALFLAGS)"

p03: create
	$(LX) $(TEXFLAGS) -jobname=$(P03JOB) $(PREFLAGS) "$(L03FLAGS)$(FINALFLAGS)"
	cd ./output; $(BX) $(P03JOB)
	$(LX) $(TEXFLAGS) -jobname=$(P03JOB) "$(L03FLAGS)$(FINALFLAGS)"

p03q: create
	$(LX) $(TEXFLAGS) -jobname=$(P03JOB) "$(L03FLAGS)$(FINALFLAGS)"



h04: create
	$(LX) $(TEXFLAGS) -jobname=$(H04JOB) $(PREFLAGS) "$(L04FLAGS)$(HANDIFLAGS)$(FINALFLAGS)"
	cd ./output; $(BX) $(H04JOB)
	$(LX) $(TEXFLAGS) -jobname=$(H04JOB) "$(L04FLAGS)$(HANDIFLAGS)$(FINALFLAGS)"

h04q: create
	$(LX) $(TEXFLAGS) -jobname=$(H04JOB) "$(L04FLAGS)$(HANDIFLAGS)$(FINALFLAGS)"

p04: create
	$(LX) $(TEXFLAGS) -jobname=$(P04JOB) $(PREFLAGS) "$(L04FLAGS)$(FINALFLAGS)"
	cd ./output; $(BX) $(P04JOB)
	$(LX) $(TEXFLAGS) -jobname=$(P04JOB) "$(L04FLAGS)$(FINALFLAGS)"

p04q: create
	$(LX) $(TEXFLAGS) -jobname=$(P04JOB) "$(L04FLAGS)$(FINALFLAGS)"


h05: create
	$(LX) $(TEXFLAGS) -jobname=$(H05JOB) $(PREFLAGS) "$(L05FLAGS)$(HANDIFLAGS)$(FINALFLAGS)"
	cd ./output; $(BX) $(H05JOB)
	$(LX) $(TEXFLAGS) -jobname=$(H05JOB) "$(L05FLAGS)$(HANDIFLAGS)$(FINALFLAGS)"

h05q: create
	$(LX) $(TEXFLAGS) -jobname=$(H05JOB) "$(L05FLAGS)$(HANDIFLAGS)$(FINALFLAGS)"

p05: create
	$(LX) $(TEXFLAGS) -jobname=$(P05JOB) $(PREFLAGS) "$(L05FLAGS)$(FINALFLAGS)"
	cd ./output; $(BX) $(P05JOB)
	$(LX) $(TEXFLAGS) -jobname=$(P05JOB) "$(L05FLAGS)$(FINALFLAGS)"

p05q: create
	$(LX) $(TEXFLAGS) -jobname=$(P05JOB) "$(L05FLAGS)$(FINALFLAGS)"



h06: create
	$(LX) $(TEXFLAGS) -jobname=$(H06JOB) $(PREFLAGS) "$(L06FLAGS)$(HANDIFLAGS)$(FINALFLAGS)"
	cd ./output; $(BX) $(H06JOB)
	$(LX) $(TEXFLAGS) -jobname=$(H06JOB) "$(L06FLAGS)$(HANDIFLAGS)$(FINALFLAGS)"

h06q: create
	$(LX) $(TEXFLAGS) -jobname=$(H06JOB) "$(L06FLAGS)$(HANDIFLAGS)$(FINALFLAGS)"

p06: create
	$(LX) $(TEXFLAGS) -jobname=$(P06JOB) $(PREFLAGS) "$(L06FLAGS)$(FINALFLAGS)"
	cd ./output; $(BX) $(P06JOB)
	$(LX) $(TEXFLAGS) -jobname=$(P06JOB) "$(L06FLAGS)$(FINALFLAGS)"

p06q: create
	$(LX) $(TEXFLAGS) -jobname=$(P06JOB) "$(L06FLAGS)$(FINALFLAGS)"


h07: create
	$(LX) $(TEXFLAGS) -jobname=$(H07JOB) $(PREFLAGS) "$(L07FLAGS)$(HANDIFLAGS)$(FINALFLAGS)"
	cd ./output; $(BX) $(H07JOB)
	$(LX) $(TEXFLAGS) -jobname=$(H07JOB) "$(L07FLAGS)$(HANDIFLAGS)$(FINALFLAGS)"

h07q: create
	$(LX) $(TEXFLAGS) -jobname=$(H07JOB) "$(L07FLAGS)$(HANDIFLAGS)$(FINALFLAGS)"

p07: create
	$(LX) $(TEXFLAGS) -jobname=$(P07JOB) $(PREFLAGS) "$(L07FLAGS)$(FINALFLAGS)"
	cd ./output; $(BX) $(P07JOB)
	$(LX) $(TEXFLAGS) -jobname=$(P07JOB) "$(L07FLAGS)$(FINALFLAGS)"

p07q: create
	$(LX) $(TEXFLAGS) -jobname=$(P07JOB) "$(L07FLAGS)$(FINALFLAGS)"


h08: create
	$(LX) $(TEXFLAGS) -jobname=$(H08JOB) $(PREFLAGS) "$(L08FLAGS)$(HANDIFLAGS)$(FINALFLAGS)"
	cd ./output; $(BX) $(H08JOB)
	$(LX) $(TEXFLAGS) -jobname=$(H08JOB) "$(L08FLAGS)$(HANDIFLAGS)$(FINALFLAGS)"

h08q: create
	$(LX) $(TEXFLAGS) -jobname=$(H08JOB) "$(L08FLAGS)$(HANDIFLAGS)$(FINALFLAGS)"

p08: create
	$(LX) $(TEXFLAGS) -jobname=$(P08JOB) $(PREFLAGS) "$(L08FLAGS)$(FINALFLAGS)"
	cd ./output; $(BX) $(P08JOB)
	$(LX) $(TEXFLAGS) -jobname=$(P08JOB) "$(L08FLAGS)$(FINALFLAGS)"

p08q: create
	$(LX) $(TEXFLAGS) -jobname=$(P08JOB) "$(L08FLAGS)$(FINALFLAGS)"


h09: create
	$(LX) $(TEXFLAGS) -jobname=$(H09JOB) $(PREFLAGS) "$(L09FLAGS)$(HANDIFLAGS)$(FINALFLAGS)"
	cd ./output; $(BX) $(H09JOB)
	$(LX) $(TEXFLAGS) -jobname=$(H09JOB) "$(L09FLAGS)$(HANDIFLAGS)$(FINALFLAGS)"

h09q: create
	$(LX) $(TEXFLAGS) -jobname=$(H09JOB) "$(L09FLAGS)$(HANDIFLAGS)$(FINALFLAGS)"

p09: create
	$(LX) $(TEXFLAGS) -jobname=$(P09JOB) $(PREFLAGS) "$(L09FLAGS)$(FINALFLAGS)"
	cd ./output; $(BX) $(P09JOB)
	$(LX) $(TEXFLAGS) -jobname=$(P09JOB) "$(L09FLAGS)$(FINALFLAGS)"

p09q: create
	$(LX) $(TEXFLAGS) -jobname=$(P09JOB) "$(L09FLAGS)$(FINALFLAGS)"

h10: create
	$(LX) $(TEXFLAGS) -jobname=$(H10JOB) $(PREFLAGS) "$(L10FLAGS)$(HANDIFLAGS)$(FINALFLAGS)"
	cd ./output; $(BX) $(H10JOB)
	$(LX) $(TEXFLAGS) -jobname=$(H10JOB) "$(L10FLAGS)$(HANDIFLAGS)$(FINALFLAGS)"

h10q: create
	$(LX) $(TEXFLAGS) -jobname=$(H10JOB) "$(L10FLAGS)$(HANDIFLAGS)$(FINALFLAGS)"

p10: create
	$(LX) $(TEXFLAGS) -jobname=$(P10JOB) $(PREFLAGS) "$(L10FLAGS)$(FINALFLAGS)"
	cd ./output; $(BX) $(P10JOB)
	$(LX) $(TEXFLAGS) -jobname=$(P10JOB) "$(L10FLAGS)$(FINALFLAGS)"

p10q: create
	$(LX) $(TEXFLAGS) -jobname=$(P10JOB) "$(L10FLAGS)$(FINALFLAGS)"

full: create
	$(LX) $(TEXFLAGS) -jobname=$(FULLJOB) $(PREFLAGS) "$(HANDIFLAGS)$(FINALFLAGS)"
	cd ./output; $(BX) $(FULLJOB)
	$(LX) $(TEXFLAGS) -jobname=$(FULLJOB) "$(HANDIFLAGS)$(FINALFLAGS)"

fullq: create
	$(LX) $(TEXFLAGS) -jobname=$(FULLJOB) "$(HANDIFLAGS)$(FINALFLAGS)"

clean:
	cd ./output/; \rm -f *.adx *.and *.aux *.bbl *.blg *.idx *.ilg *.ldx *.lnd *.log *.out *.rdx *.run.xml *.sdx *.snd *.toc *.wdx *.xdv *.nav *.snm *.bcf *.vrb
	cd ./output/includes/; \rm -f *.aux

edit:
	mvim -c ':set spell spelllang=de' -c ':nnoremap <F15> ]s' -c ':nnoremap <F14> [s' main.tex includes/*.tex
