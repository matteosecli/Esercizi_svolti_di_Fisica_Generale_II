if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="esercizi_svolti-5";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

import markers;
texpreamble("\let\oldhat\hat
\renewcommand{\vec}[1]{\mathbf{#1}}
\renewcommand{\hat}[1]{\oldhat{\mathbf{#1}}}");
size(8cm);
draw(circle((0,0),0.9));
draw(circle((0,0),1),invisible,
CrossIntervalMarker(20,4,size=2,angle=45,bp+black,
dotframe(invisible)));
draw(Label("\small $S$"),circle((0,0),1.5),dashed);
draw((0,0)--rotate(15)*(4,0),dashed);
draw(Label("\small $R$"),(0,0)--rotate(-45)*(0.9,0));
draw(Label("\small $r$"),(0,0)--rotate(45)*(-1.5,0));
draw(rotate(15)*(1.5,-0.1)--rotate(15)*(1.5,0.1),2bp+black);
draw(Label("\small $d\vec{S}$",position=EndPoint,align=NNW),
rotate(15)*(1.5,0)--rotate(15)*(2,0),arrow=Arrow);
draw(Label("\small $\vec{E}$",position=EndPoint,align=S),
rotate(15)*(1.5,0)--rotate(15)*(2.5,0),arrow=Arrow);
draw(Label("\small $r$",position=EndPoint,align=S),
(0,0)--(4,0),arrow=Arrow);
