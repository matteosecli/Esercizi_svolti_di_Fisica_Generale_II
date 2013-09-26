if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="esercizi_svolti-4";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

import graph;
import patterns;
texpreamble("\let\oldhat\hat
\renewcommand{\vec}[1]{\mathbf{#1}}
\renewcommand{\hat}[1]{\oldhat{\mathbf{#1}}}");
size(8cm);
real xmin=-8,xmax=8;
real ymin=-6,ymax=6;
xaxis(Label("\small $y$",position=EndPoint,align=SE),
xmin, xmax, arrow=EndArrow, NoTicks);
yaxis(Label("\small $z$",position=EndPoint,align=NW),
ymin, ymax, arrow=EndArrow, NoTicks);
draw((-2,-4)--(-2,4));
draw((2,-4)--(2,4));
draw(Label("\small $\infty$",align=Center,filltype=UnFill),
(-2,4)--(2,4),dashed);
draw(Label("\small $\infty$",align=Center,filltype=UnFill),
(-2,-4)--(2,-4),dashed);
labelx("\small $-a$",-2,WSW);
labelx("\small $+a$",2,ESE);
picture fillpattern()
{
picture tiling;
draw(tiling,(0,-2)--(0,2));
draw(tiling,(-2,0)--(2,0));
draw(tiling,(0,-3)--(0,3),invisible);
draw(tiling,(-3,0)--(3,0),invisible);
return tiling;
}
add("fillpattern",fillpattern());
path fillarea = (-2,-4)--(-2,4)--(2,4)--(2,-4)--cycle;
fill(fillarea,pattern("fillpattern"));
