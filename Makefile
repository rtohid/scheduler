# Copyright (c) 2019 R. Tohid
#
# Distributed under the Boost Software License, Version 1.0. (See accompanying
# file LICENSE_1_0.txt or copy at http://www.boost.org/LICENSE_1_0.txt)
#
all: pdf 

pdf: DAG-schedule.tex
	latexmk -pdf $<

clean :
	latexmk -c DAG-schedule.tex
	rm -f DAG-schedule.synctex.gz
	rm -f executiong-eps-converted-to.pdf

