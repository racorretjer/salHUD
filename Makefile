all: ypll-2008.csv ypll-2007.csv ypll-2006.csv ypll-2005.csv ypll-2004.csv ypll-2003.csv ypll-2002.csv ypll-2001.csv ypll-2000.csv

ypll-2008.csv: basic-death-2008.txt basic-death.py
	python basic-death.py basic-death-2008.txt
	mv ypll.csv $@

ypll-2007.csv: basic-death-2007.txt basic-death.py
	python basic-death.py basic-death-2007.txt
	mv ypll.csv $@

ypll-2006.csv: basic-death-2006.txt basic-death.py
	python basic-death.py basic-death-2006.txt
	mv ypll.csv $@

ypll-2005.csv: basic-death-2005.txt basic-death.py
	python basic-death.py basic-death-2005.txt
	mv ypll.csv $@

ypll-2004.csv: basic-death-2004.txt basic-death.py
	python basic-death.py basic-death-2004.txt
	mv ypll.csv $@

ypll-2003.csv: basic-death-2003.txt basic-death.py
	python basic-death.py basic-death-2003.txt
	mv ypll.csv $@

ypll-2002.csv: basic-death-2002.txt basic-death.py
	python basic-death.py basic-death-2002.txt
	mv ypll.csv $@

ypll-2001.csv: basic-death-2001.txt basic-death.py
	python basic-death.py basic-death-2001.txt
	mv ypll.csv $@

ypll-2000.csv: basic-death-2000.txt basic-death.py
	python basic-death.py basic-death-2000.txt
	mv ypll.csv $@

basic-death-2008.txt:
	wget -O $@ 'http://www.estadisticas.gobierno.pr/iepr/LinkClick.aspx?fileticket=jqa80LaEXmY%3d&tabid=201'

basic-death-2007.txt:
	wget -O $@ 'http://www.estadisticas.gobierno.pr/iepr/LinkClick.aspx?fileticket=sDvkJgqvFgs%3d&tabid=201'

basic-death-2006.txt:
	wget -O $@ 'http://www.estadisticas.gobierno.pr/iepr/LinkClick.aspx?fileticket=0hnd27SLehE%3d&tabid=201'

basic-death-2005.txt:
	wget -O $@ 'http://www.estadisticas.gobierno.pr/iepr/LinkClick.aspx?fileticket=1HTnTID13zU%3d&tabid=201'

basic-death-2004.txt:
	wget -O $@ 'http://www.estadisticas.gobierno.pr/iepr/LinkClick.aspx?fileticket=kd00ECjPWBQ%3d&tabid=201'

basic-death-2003.txt:
	wget -O $@ 'http://www.estadisticas.gobierno.pr/iepr/LinkClick.aspx?fileticket=C0Jz_44N4ts%3d&tabid=201'

basic-death-2002.txt:
	wget -O $@ 'http://www.estadisticas.gobierno.pr/iepr/LinkClick.aspx?fileticket=ej6DESbG7PM%3d&tabid=201'

basic-death-2001.txt:
	wget -O $@ 'http://www.estadisticas.gobierno.pr/iepr/LinkClick.aspx?fileticket=HfmE7HeCNx0%3d&tabid=201'

basic-death-2000.txt:
	wget -O $@ 'http://www.estadisticas.gobierno.pr/iepr/LinkClick.aspx?fileticket=s0cenIA_WSY%3d&tabid=201'


