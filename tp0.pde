PImage P;

void setup() {
  
  size(800, 400);
  P = loadImage("P.jpg"); 
  P.resize(400, 400);

}

void draw(){
  
  background (255);
  image(P, width/2, 0);
  fill(110);
  noStroke();
  
  //centro
  circle(104, 189, 45);  
  quad(111,187,149,183,140,161,112,162); 
  triangle(148,183,175,169,139,160);
  quad(109,192,108,216,136,222,150,203);
  triangle(149,202,173,219,135,222);
    
  //punta arriba
  beginShape();
  vertex(91,185);
  vertex(20,170);
  vertex(21,165);
  vertex(47,157);
  vertex(67,156);
  vertex(89,159);
  vertex(99,162);
  vertex(96,185);
  endShape();
  
  //punta abajo
  quad(97,216,102,190,18,199,18,205);
  triangle(18,205,38,214,44,206);
  quad(38,214,61,219,65,210,40,207);
  triangle(61,219,97,216,64,208);

  //detalle pinza
  fill(50);
  quad(48,176,50,171,81,178,81,183);
  quad(48,196,48,200,80,197,80,192);
  
  //mango amarillo arriba
  fill(216,174,81);
  quad(136,160,179,171,191,151,141,140);
  quad(178,171,165,146,222,127,235,152);
  quad(221,128,235,152,270,144,257,122);
  quad(256,122,293,123,303,147,252,146);
  quad(290,123,334,123,338,145,300,147);
  quad(330,123,361,118,364,142,337,145);
  ellipse(365,129,28,25);
  triangle(140,141,144,137,150,143);
  
  //mango amarillo abajo
  beginShape();
  vertex(131,225);
  vertex(136,222);
  vertex(172,219);
  vertex(177,217);
  vertex(181,218);
  vertex(218,238);
  vertex(258,252);
  vertex(271,255);
  vertex(306,257);
  vertex(326,260);
  vertex(344,263);
  vertex(362,267);
  vertex(371,273);
  vertex(372,279);
  vertex(372,284);
  vertex(367,291);
  vertex(360,292);
  vertex(349,290);
  vertex(332,285);
  vertex(311,282);
  vertex(293,280);
  vertex(269,278);
  vertex(250,276);
  vertex(232,272);
  vertex(210,266);
  vertex(186,255);
  vertex(172,248);
  vertex(162,243);
  vertex(157,241);
  vertex(146,241);
  vertex(137,247);
  vertex(132,236);
  vertex(131,224);
  endShape(); 
  
  //detalles mangos
  stroke(30);
  strokeWeight(3);
  line(182,140,221,128);
  
  //detalle mango arriba 
  noStroke();
  fill(30);
  triangle(216,131,226,133,222,127);
  quad(221,127,246,123,248,130,225,134);
  quad(245,123,267,122,270,129,248,130);
  quad(266,122,300,123,301,130,268,129);
  quad(299,123,332,123,333,130,299,130);
  quad(328,123,352,120,356,128,332,130);
  quad(355,128,369,126,364,118,350,121);
  quad(367,126,376,121,371,118,358,118);
  quad(354,120,362,117,369,117,363,123);
  
  //detalle mango abajo 
  beginShape();
  vertex(171,247);
  vertex(175,246);
  vertex(187,252);
  vertex(198,257);
  vertex(205,260);
  vertex(215,261);
  vertex(218,259);
  vertex(231,264);
  vertex(245,267);
  vertex(261,270);
  vertex(274,271);
  vertex(291,273);
  vertex(307,274);
  vertex(321,276);
  vertex(332,278);
  vertex(349,282);
  vertex(359,284);
  vertex(367,290);
  vertex(362,292);
  vertex(355,291);
  vertex(340,287);
  vertex(326,284);
  vertex(313,282);
  vertex(298,281);
  vertex(273,279);
  vertex(253,277);
  vertex(238,274);
  vertex(219,269);
  vertex(205,263);
  vertex(193,258);
  vertex(181,253);
  vertex(173,248);
  endShape();
  
  //detalles centro
  quad(148,182,172,170,168,168,146,180);
  stroke(0);
  line(148,203,168,217);
  stroke(50);
  strokeWeight(1);
  line(139,161,167,168);
  line(136,221,168,218);
  
  //detalle linea circulo 
  noFill();
  strokeWeight(1);
  stroke(70);
  arc(104,190,45,45,radians(195),radians(257));
  arc(104,189,45,45,radians(19),radians(79));
    
  //delineado con primitivo
  stroke(0);
  line(82,183,20,170);
  line(20,170,21,165);
  line(21,165,45,157);
  line(45,157,59,156);
  line(59,156,68,156);
  line(68,156,82,158);
  line(82,158,89,159);
  line(89,159,98,162);
  line(98,162,98,167);
  arc(104,190,45,45,radians(257),radians(290));
  line(111,168,112,161);
  line(112,161,139,161);
  line(139,161,136,160);  
  line(136,160,141,141);
  line(141,141,144,137);
  line(144,137,149,141);
  line(149,141,160,144);
  line(160,144,166,145);
  line(166,145,182,139);
  line(345,121,356,118);
  line(356,118,361,116);
  line(361,116,366,116);
  line(366,116,370,117);
  line(370,117,374,120);
  line(374,120,378,124);
  line(378,124,379,128);
  line(379,128,378,133);
  line(378,133,374,137);
  line(374,137,371,140);
  line(371,140,346,144);
  line(346,144,330,145);
  line(330,145,316,146);
  line(316,146,302,147);
  line(302,147,286,147);
  line(286,147,261,146);
  line(261,146,236,152);
  line(236,152,210,160);
  line(210,160,178,171);
  line(178,171,172,170);
  line(172,170,149,182);
  line(149,182,126,185);
  arc(104,189,45,45,radians(75),radians(110));
  line(126,185,126,191);
  line(126,191,125,196);
  line(125,196,148,202);

  //delineado con vertex
  beginShape();
  vertex(170,218);
  vertex(177,217);
  vertex(189,222);
  vertex(203,230);
  vertex(218,238);
  vertex(236,244);
  vertex(254,250);
  vertex(270,255);
  vertex(290,256);
  vertex(306,257);
  vertex(327,260);
  vertex(344,263);
  vertex(361,267);
  vertex(366,270);
  vertex(371,273);
  vertex(372,277);
  vertex(372,283);
  vertex(370,286);
  vertex(367,289);
  vertex(362,291);
  endShape();
  beginShape();
  vertex(182,252);
  vertex(172,248);
  vertex(158,241);
  vertex(152,241);
  vertex(145,241);
  vertex(137,247);
  vertex(132,237);
  vertex(131,233);
  vertex(130,226);
  vertex(135,221);
  vertex(108,216);
  vertex(108,211);
  endShape();
  beginShape();
  vertex(96,211);
  vertex(96,216);
  vertex(62,219);
  vertex(54,218);
  vertex(44,215);
  vertex(34,212);
  vertex(18,205);
  vertex(19,198);
  vertex(81,192);
  vertex(81,187);
  vertex(82,184);
  endShape();
  
  //hay varios beginShape y endShape para saltear algunas partes negras
  //que ya tenian contorno
  
  //letras
  fill(0);
  //P
  beginShape();
  vertex(205,242);
  vertex(205,243);
  vertex(201,251);
  vertex(196,249);
  vertex(195,247);
  vertex(196,245);
  vertex(198,243);
  vertex(200,244);
  vertex(201,244);
  vertex(203,241);
  endShape();
  //r
  beginShape();
  vertex(198,239);
  vertex(195,244);
  vertex(191,243);
  vertex(192,242);
  vertex(193,242);
  vertex(196,238);
  endShape();
  //o
  beginShape();
  vertex(187,235);
  vertex(185,238);
  vertex(186,241);
  vertex(188,242);
  vertex(191,241);
  vertex(192,239);
  vertex(192,236);
  vertex(190,234);
  vertex(187,235);
  endShape();
  
  fill(216,174,81);
  circle(199,247,3);
  circle(189,238,4);

}
