salHUD
======

"Heads Up Display" for public health data. This project is a
collaboration between hackers from three campuses of the [University of
Puerto Rico](http://www.upr.edu/), and presented at the [Puerto Rico Tech Summit
Hackathon](https://www.hackerleague.org/hackathons/puerto-rico-tech-summit-hackathon). Participants
were: Roberto Arce Corretjer [UPR-RRP](http://www.uprrp.edu/), 
Jose Conde [UPR-RCM](http://www.rcm.upr.edu/), 
Humberto Ortiz-Zuazaga [UPR-RRP](http://www.uprrp.edu/), 
and Juan Sol&aacute; Sloan [UPR-B](http://www.uprb.edu/).

![Years of Potential Life Lost](ypll-2008.png)

Figure 1: Years of Potential Life Lost by municipality of residence for 2008.

The last prototype uses
[atlaspr](https://github.com/commonwealth-of-puerto-rico/atlaspr/),
one of the API's released for the hackathon by the government of
Puerto Rico, to render interactive maps of the island. You can see the
[demo live](http://www.hpcf.upr.edu/~humberto/salHUD/). The
Commonwealth of Puerto Rico has a [github
repository](https://github.com/commonwealth-of-puerto-rico) with more
than a dozen free software projects.

The current prototype does not include atlaspr. It only uses D3's
libraries, and requires TopoJSON's functionality to generate a JSON
file from which to pull map polygons and map data. It also has
human-computer interaction which allows the user to analyze
the results visually.

Our next prototype includes a bar chart feature which will display
information of the town selected from that specific year.
