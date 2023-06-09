# Copyright 2023 Yoshida Shin
#
# This is part of the ``WEBASSEMBLY What's the right thing to write?''.
#
# Permission is granted to copy, distribute and/or modify this
# document under the terms of the GNU Free Documentation License,
# Version 1.3 or any later version published by the Free Software
# Foundation; with one Invariant Sections:
# ``Shin Yoshida wrote this document with the goal of contributing to a fair and safe world.
# Funai Soken Digital Incorporated agrees with the vision and compensated him for his work.''
# no Front-Cover Texts, and no Back-Cover Text. A copy of the license is
# included in the section entitled ``GNU Free Documentation License''.


TEX = *.tex

test: ${TEX} clean
	platex slide
	dvipdfmx slide.dvi
	rm -f *.aux *.log *.dvi *.nav *.out *.snm *.toc *.vrb

clean:
	rm -f *.aux *.log *.dvi *.nav *.out *.snm *.toc *.vrb *.pdf

all: clean
	platex slide
	platex slide
	dvipdfmx slide.dvi
	rm -f *.aux *.log *.dvi *.nav *.out *.snm *.toc *.vrb
