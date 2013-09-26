if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="esercizi_svolti-2";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

import graph;
import markers;
texpreamble("\let\oldhat\hat
\renewcommand{\vec}[1]{\mathbf{#1}}
\renewcommand{\hat}[1]{\oldhat{\mathbf{#1}}}");
size(8cm);
real xmin=-8,xmax=8;
real ymin=-6,ymax=6;
xaxis(Label("\small $x$",position=EndPoint,align=SE),
xmin, xmax, arrow=EndArrow, NoTicks);
yaxis(Label("\small $y$",position=EndPoint,align=NW),
ymin, ymax, arrow=EndArrow, NoTicks);
draw(Label("\small $+\sigma$",position=EndPoint,N,p=black),
(-3,-6)--(-3,6),invisible,
CrossIntervalMarker(12,4,size=2,angle=45,bp+black,
dotframe(invisible)));
draw(Label("\small $+\sigma$",position=EndPoint,N,p=black),
(-1,-6)--(-1,6),invisible,
CrossIntervalMarker(12,4,size=2,angle=45,bp+black,
dotframe(invisible)));
draw(Label("\small $+\sigma$",position=EndPoint,N,p=black),
(1,-6)--(1,6),invisible,
CrossIntervalMarker(12,4,size=2,angle=45,bp+black,
dotframe(invisible)));
draw(Label("\small $+\sigma$",position=EndPoint,N,p=black),
(3,-6)--(3,6),invisible,
CrossIntervalMarker(12,4,size=2,angle=45,bp+black,
dotframe(invisible)));
draw(Label("\small $a$",align=Center,filltype=UnFill),
(-2.9,-4)--(-1.1,-4),arrow=Arrows(4bp,8));
draw(Label("\small $a$",align=Center,filltype=UnFill),
(-0.9,-4)--(0.9,-4),arrow=Arrows(4bp,8));
draw(Label("\small $a$",align=Center,filltype=UnFill),
(1.1,-4)--(2.9,-4),arrow=Arrows(4bp,8));
