if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="esercizi_svolti-1";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

import graph;
import cse5;
texpreamble("\let\oldhat\hat
\renewcommand{\vec}[1]{\mathbf{#1}}
\renewcommand{\hat}[1]{\oldhat{\mathbf{#1}}}");
size(8cm);
real xmin=-2,xmax=12;
real ymin=-8,ymax=8;
xaxis(Label("\small $x$",position=EndPoint,align=SE),
xmin, xmax, arrow=EndArrow, NoTicks);
yaxis(Label("\small $y$",position=EndPoint,align=NW),
ymin, ymax, arrow=EndArrow, NoTicks);
dot(Label("$P(x,\,y,\,z)$",align=NNE),(10,0));
draw("$\vec{r}$",(0,0)--(10,0),1bp+black,Arrow(10bp,8));
draw(Label("$\vec{r}-\vec{r'}$",position=MidPoint,NE),
(0,4)--(10,0),1bp+black,Arrow(8bp,8));
draw(Label("$\vec{r'}$",position=MidPoint,W),
(-0.2,0)--(-0.2,4),1bp+black,Arrow(8bp,8));
draw((0,-6)--(0,6),solid+1.5bp);
MarkAngle("\vartheta",black,(0,4),(10,0),(0,0),2,black);
labely("$a$",6,W);
labely("$-a$",-6,W);
