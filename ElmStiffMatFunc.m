function ElmStiffMat = ElmStiffMatFunc(ElmLength,ElasticMod,BaseRad,TopRad,ElmPointA_Height,Height)
K11 = ElmLength^3*((12*ElasticMod*pi*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height)^4)/ElmLength^6 + (48*ElasticMod*pi*(BaseRad - TopRad)*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height)^3)/(Height*ElmLength^5) + (18*ElasticMod*pi*(BaseRad - TopRad)^2*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height)^2)/(Height^2*ElmLength^4)) - ElmLength^4*((36*ElasticMod*pi*(BaseRad - TopRad)*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height)^3)/(Height*ElmLength^6) + (9*ElasticMod*pi*(BaseRad - TopRad)^3*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height))/(Height^3*ElmLength^4) + (54*ElasticMod*pi*(BaseRad - TopRad)^2*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height)^2)/(Height^2*ElmLength^5)) + ElmLength^5*((9*ElasticMod*pi*(BaseRad - TopRad)^4)/(5*Height^4*ElmLength^4) + (144*ElasticMod*pi*(BaseRad - TopRad)^3*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height))/(5*Height^3*ElmLength^5) + (216*ElasticMod*pi*(BaseRad - TopRad)^2*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height)^2)/(5*Height^2*ElmLength^6)) - ElmLength^2*((18*ElasticMod*pi*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height)^4)/ElmLength^5 + (18*ElasticMod*pi*(BaseRad - TopRad)*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height)^3)/(Height*ElmLength^4)) - ElmLength^6*((6*ElasticMod*pi*(BaseRad - TopRad)^4)/(Height^4*ElmLength^5) + (24*ElasticMod*pi*(BaseRad - TopRad)^3*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height))/(Height^3*ElmLength^6)) + (9*ElasticMod*pi*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height)^4)/ElmLength^3 + (36*ElasticMod*ElmLength*pi*(BaseRad - TopRad)^4)/(7*Height^4);
K12 = ElmLength^3*(((24*ElasticMod*pi*(BaseRad - TopRad)*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height)^3)/(Height*ElmLength^2) + (24*ElasticMod*pi*(BaseRad - TopRad)^2*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height)^2)/(Height^2*ElmLength))/(2*ElmLength^2) + ((6*ElasticMod*pi*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height)^4)/ElmLength^2 + (16*ElasticMod*pi*(BaseRad - TopRad)*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height)^3)/(Height*ElmLength))/ElmLength^3) - ElmLength^4*((3*((24*ElasticMod*pi*(BaseRad - TopRad)*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height)^3)/(Height*ElmLength^2) + (24*ElasticMod*pi*(BaseRad - TopRad)^2*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height)^2)/(Height^2*ElmLength)))/(4*ElmLength^3) + (3*((16*ElasticMod*pi*(BaseRad - TopRad)^3*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height))/(Height^3*ElmLength) + (36*ElasticMod*pi*(BaseRad - TopRad)^2*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height)^2)/(Height^2*ElmLength^2)))/(8*ElmLength^2)) + ElmLength^5*((3*((16*ElasticMod*pi*(BaseRad - TopRad)^3*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height))/(Height^3*ElmLength) + (36*ElasticMod*pi*(BaseRad - TopRad)^2*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height)^2)/(Height^2*ElmLength^2)))/(5*ElmLength^3) + (3*((4*ElasticMod*pi*(BaseRad - TopRad)^4)/(Height^4*ElmLength) + (24*ElasticMod*pi*(BaseRad - TopRad)^3*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height))/(Height^3*ElmLength^2)))/(10*ElmLength^2)) - ElmLength^6*(((4*ElasticMod*pi*(BaseRad - TopRad)^4)/(Height^4*ElmLength) + (24*ElasticMod*pi*(BaseRad - TopRad)^3*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height))/(Height^3*ElmLength^2))/(2*ElmLength^3) + (3*ElasticMod*pi*(BaseRad - TopRad)^4)/(2*Height^4*ElmLength^4)) - ElmLength^2*((3*((6*ElasticMod*pi*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height)^4)/ElmLength^2 + (16*ElasticMod*pi*(BaseRad - TopRad)*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height)^3)/(Height*ElmLength)))/(4*ElmLength^2) + (6*ElasticMod*pi*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height)^4)/ElmLength^4) + (6*ElasticMod*pi*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height)^4)/ElmLength^2 + (18*ElasticMod*ElmLength^2*pi*(BaseRad - TopRad)^4)/(7*Height^4);
K13 = ElmLength^4*((36*ElasticMod*pi*(BaseRad - TopRad)*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height)^3)/(Height*ElmLength^6) + (9*ElasticMod*pi*(BaseRad - TopRad)^3*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height))/(Height^3*ElmLength^4) + (54*ElasticMod*pi*(BaseRad - TopRad)^2*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height)^2)/(Height^2*ElmLength^5)) - ElmLength^3*((12*ElasticMod*pi*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height)^4)/ElmLength^6 + (48*ElasticMod*pi*(BaseRad - TopRad)*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height)^3)/(Height*ElmLength^5) + (18*ElasticMod*pi*(BaseRad - TopRad)^2*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height)^2)/(Height^2*ElmLength^4)) - ElmLength^5*((9*ElasticMod*pi*(BaseRad - TopRad)^4)/(5*Height^4*ElmLength^4) + (144*ElasticMod*pi*(BaseRad - TopRad)^3*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height))/(5*Height^3*ElmLength^5) + (216*ElasticMod*pi*(BaseRad - TopRad)^2*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height)^2)/(5*Height^2*ElmLength^6)) + ElmLength^2*((18*ElasticMod*pi*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height)^4)/ElmLength^5 + (18*ElasticMod*pi*(BaseRad - TopRad)*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height)^3)/(Height*ElmLength^4)) + ElmLength^6*((6*ElasticMod*pi*(BaseRad - TopRad)^4)/(Height^4*ElmLength^5) + (24*ElasticMod*pi*(BaseRad - TopRad)^3*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height))/(Height^3*ElmLength^6)) - (9*ElasticMod*pi*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height)^4)/ElmLength^3 - (36*ElasticMod*ElmLength*pi*(BaseRad - TopRad)^4)/(7*Height^4);
K14 = ElmLength^3*(((24*ElasticMod*pi*(BaseRad - TopRad)*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height)^3)/(Height*ElmLength^2) + (12*ElasticMod*pi*(BaseRad - TopRad)^2*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height)^2)/(Height^2*ElmLength))/(2*ElmLength^2) + ((6*ElasticMod*pi*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height)^4)/ElmLength^2 + (8*ElasticMod*pi*(BaseRad - TopRad)*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height)^3)/(Height*ElmLength))/ElmLength^3) - ElmLength^4*((3*((24*ElasticMod*pi*(BaseRad - TopRad)*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height)^3)/(Height*ElmLength^2) + (12*ElasticMod*pi*(BaseRad - TopRad)^2*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height)^2)/(Height^2*ElmLength)))/(4*ElmLength^3) + (3*((8*ElasticMod*pi*(BaseRad - TopRad)^3*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height))/(Height^3*ElmLength) + (36*ElasticMod*pi*(BaseRad - TopRad)^2*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height)^2)/(Height^2*ElmLength^2)))/(8*ElmLength^2)) + ElmLength^5*((3*((8*ElasticMod*pi*(BaseRad - TopRad)^3*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height))/(Height^3*ElmLength) + (36*ElasticMod*pi*(BaseRad - TopRad)^2*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height)^2)/(Height^2*ElmLength^2)))/(5*ElmLength^3) + (3*((2*ElasticMod*pi*(BaseRad - TopRad)^4)/(Height^4*ElmLength) + (24*ElasticMod*pi*(BaseRad - TopRad)^3*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height))/(Height^3*ElmLength^2)))/(10*ElmLength^2)) - ElmLength^6*(((2*ElasticMod*pi*(BaseRad - TopRad)^4)/(Height^4*ElmLength) + (24*ElasticMod*pi*(BaseRad - TopRad)^3*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height))/(Height^3*ElmLength^2))/(2*ElmLength^3) + (3*ElasticMod*pi*(BaseRad - TopRad)^4)/(2*Height^4*ElmLength^4)) - ElmLength^2*((3*((6*ElasticMod*pi*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height)^4)/ElmLength^2 + (8*ElasticMod*pi*(BaseRad - TopRad)*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height)^3)/(Height*ElmLength)))/(4*ElmLength^2) + (3*ElasticMod*pi*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height)^4)/ElmLength^4) + (3*ElasticMod*pi*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height)^4)/ElmLength^2 + (18*ElasticMod*ElmLength^2*pi*(BaseRad - TopRad)^4)/(7*Height^4);
K21 = ElmLength^3*(((24*ElasticMod*pi*(BaseRad - TopRad)*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height)^3)/(Height*ElmLength^2) + (24*ElasticMod*pi*(BaseRad - TopRad)^2*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height)^2)/(Height^2*ElmLength))/(2*ElmLength^2) + ((6*ElasticMod*pi*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height)^4)/ElmLength^2 + (16*ElasticMod*pi*(BaseRad - TopRad)*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height)^3)/(Height*ElmLength))/ElmLength^3) - ElmLength^4*((3*((24*ElasticMod*pi*(BaseRad - TopRad)*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height)^3)/(Height*ElmLength^2) + (24*ElasticMod*pi*(BaseRad - TopRad)^2*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height)^2)/(Height^2*ElmLength)))/(4*ElmLength^3) + (3*((16*ElasticMod*pi*(BaseRad - TopRad)^3*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height))/(Height^3*ElmLength) + (36*ElasticMod*pi*(BaseRad - TopRad)^2*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height)^2)/(Height^2*ElmLength^2)))/(8*ElmLength^2)) + ElmLength^5*((3*((16*ElasticMod*pi*(BaseRad - TopRad)^3*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height))/(Height^3*ElmLength) + (36*ElasticMod*pi*(BaseRad - TopRad)^2*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height)^2)/(Height^2*ElmLength^2)))/(5*ElmLength^3) + (3*((4*ElasticMod*pi*(BaseRad - TopRad)^4)/(Height^4*ElmLength) + (24*ElasticMod*pi*(BaseRad - TopRad)^3*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height))/(Height^3*ElmLength^2)))/(10*ElmLength^2)) - ElmLength^6*(((4*ElasticMod*pi*(BaseRad - TopRad)^4)/(Height^4*ElmLength) + (24*ElasticMod*pi*(BaseRad - TopRad)^3*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height))/(Height^3*ElmLength^2))/(2*ElmLength^3) + (3*ElasticMod*pi*(BaseRad - TopRad)^4)/(2*Height^4*ElmLength^4)) - ElmLength^2*((3*((6*ElasticMod*pi*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height)^4)/ElmLength^2 + (16*ElasticMod*pi*(BaseRad - TopRad)*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height)^3)/(Height*ElmLength)))/(4*ElmLength^2) + (6*ElasticMod*pi*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height)^4)/ElmLength^4) + (6*ElasticMod*pi*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height)^4)/ElmLength^2 + (18*ElasticMod*ElmLength^2*pi*(BaseRad - TopRad)^4)/(7*Height^4);
K22 = ElmLength^3*((3*ElasticMod*pi*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height)^4)/ElmLength^4 + (16*ElasticMod*pi*(BaseRad - TopRad)*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height)^3)/(Height*ElmLength^3) + (8*ElasticMod*pi*(BaseRad - TopRad)^2*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height)^2)/(Height^2*ElmLength^2)) - ElmLength^4*((9*ElasticMod*pi*(BaseRad - TopRad)*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height)^3)/(Height*ElmLength^4) + (4*ElasticMod*pi*(BaseRad - TopRad)^3*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height))/(Height^3*ElmLength^2) + (18*ElasticMod*pi*(BaseRad - TopRad)^2*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height)^2)/(Height^2*ElmLength^3)) + ElmLength^5*((4*ElasticMod*pi*(BaseRad - TopRad)^4)/(5*Height^4*ElmLength^2) + (48*ElasticMod*pi*(BaseRad - TopRad)^3*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height))/(5*Height^3*ElmLength^3) + (54*ElasticMod*pi*(BaseRad - TopRad)^2*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height)^2)/(5*Height^2*ElmLength^4)) - ElmLength^2*((6*ElasticMod*pi*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height)^4)/ElmLength^3 + (8*ElasticMod*pi*(BaseRad - TopRad)*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height)^3)/(Height*ElmLength^2)) - ElmLength^6*((2*ElasticMod*pi*(BaseRad - TopRad)^4)/(Height^4*ElmLength^3) + (6*ElasticMod*pi*(BaseRad - TopRad)^3*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height))/(Height^3*ElmLength^4)) + (4*ElasticMod*pi*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height)^4)/ElmLength + (9*ElasticMod*ElmLength^3*pi*(BaseRad - TopRad)^4)/(7*Height^4);
K23 = ElmLength^4*((3*((24*ElasticMod*pi*(BaseRad - TopRad)*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height)^3)/(Height*ElmLength^2) + (24*ElasticMod*pi*(BaseRad - TopRad)^2*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height)^2)/(Height^2*ElmLength)))/(4*ElmLength^3) + (3*((16*ElasticMod*pi*(BaseRad - TopRad)^3*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height))/(Height^3*ElmLength) + (36*ElasticMod*pi*(BaseRad - TopRad)^2*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height)^2)/(Height^2*ElmLength^2)))/(8*ElmLength^2)) - ElmLength^3*(((24*ElasticMod*pi*(BaseRad - TopRad)*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height)^3)/(Height*ElmLength^2) + (24*ElasticMod*pi*(BaseRad - TopRad)^2*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height)^2)/(Height^2*ElmLength))/(2*ElmLength^2) + ((6*ElasticMod*pi*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height)^4)/ElmLength^2 + (16*ElasticMod*pi*(BaseRad - TopRad)*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height)^3)/(Height*ElmLength))/ElmLength^3) - ElmLength^5*((3*((16*ElasticMod*pi*(BaseRad - TopRad)^3*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height))/(Height^3*ElmLength) + (36*ElasticMod*pi*(BaseRad - TopRad)^2*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height)^2)/(Height^2*ElmLength^2)))/(5*ElmLength^3) + (3*((4*ElasticMod*pi*(BaseRad - TopRad)^4)/(Height^4*ElmLength) + (24*ElasticMod*pi*(BaseRad - TopRad)^3*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height))/(Height^3*ElmLength^2)))/(10*ElmLength^2)) + ElmLength^6*(((4*ElasticMod*pi*(BaseRad - TopRad)^4)/(Height^4*ElmLength) + (24*ElasticMod*pi*(BaseRad - TopRad)^3*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height))/(Height^3*ElmLength^2))/(2*ElmLength^3) + (3*ElasticMod*pi*(BaseRad - TopRad)^4)/(2*Height^4*ElmLength^4)) + ElmLength^2*((3*((6*ElasticMod*pi*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height)^4)/ElmLength^2 + (16*ElasticMod*pi*(BaseRad - TopRad)*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height)^3)/(Height*ElmLength)))/(4*ElmLength^2) + (6*ElasticMod*pi*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height)^4)/ElmLength^4) - (6*ElasticMod*pi*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height)^4)/ElmLength^2 - (18*ElasticMod*ElmLength^2*pi*(BaseRad - TopRad)^4)/(7*Height^4);
K24 = ElmLength^3*(((24*ElasticMod*pi*(BaseRad - TopRad)*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height)^3)/(Height*ElmLength^2) + (12*ElasticMod*pi*(BaseRad - TopRad)^2*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height)^2)/(Height^2*ElmLength))/(3*ElmLength) + ((6*ElasticMod*pi*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height)^4)/ElmLength^2 + (8*ElasticMod*pi*(BaseRad - TopRad)*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height)^3)/(Height*ElmLength))/(2*ElmLength^2)) - ElmLength^4*((3*((24*ElasticMod*pi*(BaseRad - TopRad)*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height)^3)/(Height*ElmLength^2) + (12*ElasticMod*pi*(BaseRad - TopRad)^2*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height)^2)/(Height^2*ElmLength)))/(8*ElmLength^2) + ((8*ElasticMod*pi*(BaseRad - TopRad)^3*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height))/(Height^3*ElmLength) + (36*ElasticMod*pi*(BaseRad - TopRad)^2*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height)^2)/(Height^2*ElmLength^2))/(4*ElmLength)) + ElmLength^5*((3*((8*ElasticMod*pi*(BaseRad - TopRad)^3*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height))/(Height^3*ElmLength) + (36*ElasticMod*pi*(BaseRad - TopRad)^2*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height)^2)/(Height^2*ElmLength^2)))/(10*ElmLength^2) + ((2*ElasticMod*pi*(BaseRad - TopRad)^4)/(Height^4*ElmLength) + (24*ElasticMod*pi*(BaseRad - TopRad)^3*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height))/(Height^3*ElmLength^2))/(5*ElmLength)) - ElmLength^6*(((2*ElasticMod*pi*(BaseRad - TopRad)^4)/(Height^4*ElmLength) + (24*ElasticMod*pi*(BaseRad - TopRad)^3*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height))/(Height^3*ElmLength^2))/(4*ElmLength^2) + (ElasticMod*pi*(BaseRad - TopRad)^4)/(Height^4*ElmLength^3)) - ElmLength^2*(((6*ElasticMod*pi*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height)^4)/ElmLength^2 + (8*ElasticMod*pi*(BaseRad - TopRad)*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height)^3)/(Height*ElmLength))/(2*ElmLength) + (3*ElasticMod*pi*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height)^4)/(2*ElmLength^3)) + (2*ElasticMod*pi*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height)^4)/ElmLength + (9*ElasticMod*ElmLength^3*pi*(BaseRad - TopRad)^4)/(7*Height^4);
K31 = ElmLength^4*((36*ElasticMod*pi*(BaseRad - TopRad)*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height)^3)/(Height*ElmLength^6) + (9*ElasticMod*pi*(BaseRad - TopRad)^3*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height))/(Height^3*ElmLength^4) + (54*ElasticMod*pi*(BaseRad - TopRad)^2*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height)^2)/(Height^2*ElmLength^5)) - ElmLength^3*((12*ElasticMod*pi*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height)^4)/ElmLength^6 + (48*ElasticMod*pi*(BaseRad - TopRad)*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height)^3)/(Height*ElmLength^5) + (18*ElasticMod*pi*(BaseRad - TopRad)^2*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height)^2)/(Height^2*ElmLength^4)) - ElmLength^5*((9*ElasticMod*pi*(BaseRad - TopRad)^4)/(5*Height^4*ElmLength^4) + (144*ElasticMod*pi*(BaseRad - TopRad)^3*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height))/(5*Height^3*ElmLength^5) + (216*ElasticMod*pi*(BaseRad - TopRad)^2*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height)^2)/(5*Height^2*ElmLength^6)) + ElmLength^2*((18*ElasticMod*pi*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height)^4)/ElmLength^5 + (18*ElasticMod*pi*(BaseRad - TopRad)*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height)^3)/(Height*ElmLength^4)) + ElmLength^6*((6*ElasticMod*pi*(BaseRad - TopRad)^4)/(Height^4*ElmLength^5) + (24*ElasticMod*pi*(BaseRad - TopRad)^3*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height))/(Height^3*ElmLength^6)) - (9*ElasticMod*pi*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height)^4)/ElmLength^3 - (36*ElasticMod*ElmLength*pi*(BaseRad - TopRad)^4)/(7*Height^4);
K32 = ElmLength^4*((3*((24*ElasticMod*pi*(BaseRad - TopRad)*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height)^3)/(Height*ElmLength^2) + (24*ElasticMod*pi*(BaseRad - TopRad)^2*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height)^2)/(Height^2*ElmLength)))/(4*ElmLength^3) + (3*((16*ElasticMod*pi*(BaseRad - TopRad)^3*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height))/(Height^3*ElmLength) + (36*ElasticMod*pi*(BaseRad - TopRad)^2*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height)^2)/(Height^2*ElmLength^2)))/(8*ElmLength^2)) - ElmLength^3*(((24*ElasticMod*pi*(BaseRad - TopRad)*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height)^3)/(Height*ElmLength^2) + (24*ElasticMod*pi*(BaseRad - TopRad)^2*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height)^2)/(Height^2*ElmLength))/(2*ElmLength^2) + ((6*ElasticMod*pi*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height)^4)/ElmLength^2 + (16*ElasticMod*pi*(BaseRad - TopRad)*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height)^3)/(Height*ElmLength))/ElmLength^3) - ElmLength^5*((3*((16*ElasticMod*pi*(BaseRad - TopRad)^3*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height))/(Height^3*ElmLength) + (36*ElasticMod*pi*(BaseRad - TopRad)^2*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height)^2)/(Height^2*ElmLength^2)))/(5*ElmLength^3) + (3*((4*ElasticMod*pi*(BaseRad - TopRad)^4)/(Height^4*ElmLength) + (24*ElasticMod*pi*(BaseRad - TopRad)^3*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height))/(Height^3*ElmLength^2)))/(10*ElmLength^2)) + ElmLength^6*(((4*ElasticMod*pi*(BaseRad - TopRad)^4)/(Height^4*ElmLength) + (24*ElasticMod*pi*(BaseRad - TopRad)^3*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height))/(Height^3*ElmLength^2))/(2*ElmLength^3) + (3*ElasticMod*pi*(BaseRad - TopRad)^4)/(2*Height^4*ElmLength^4)) + ElmLength^2*((3*((6*ElasticMod*pi*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height)^4)/ElmLength^2 + (16*ElasticMod*pi*(BaseRad - TopRad)*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height)^3)/(Height*ElmLength)))/(4*ElmLength^2) + (6*ElasticMod*pi*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height)^4)/ElmLength^4) - (6*ElasticMod*pi*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height)^4)/ElmLength^2 - (18*ElasticMod*ElmLength^2*pi*(BaseRad - TopRad)^4)/(7*Height^4);
K33 = ElmLength^3*((12*ElasticMod*pi*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height)^4)/ElmLength^6 + (48*ElasticMod*pi*(BaseRad - TopRad)*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height)^3)/(Height*ElmLength^5) + (18*ElasticMod*pi*(BaseRad - TopRad)^2*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height)^2)/(Height^2*ElmLength^4)) - ElmLength^4*((36*ElasticMod*pi*(BaseRad - TopRad)*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height)^3)/(Height*ElmLength^6) + (9*ElasticMod*pi*(BaseRad - TopRad)^3*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height))/(Height^3*ElmLength^4) + (54*ElasticMod*pi*(BaseRad - TopRad)^2*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height)^2)/(Height^2*ElmLength^5)) + ElmLength^5*((9*ElasticMod*pi*(BaseRad - TopRad)^4)/(5*Height^4*ElmLength^4) + (144*ElasticMod*pi*(BaseRad - TopRad)^3*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height))/(5*Height^3*ElmLength^5) + (216*ElasticMod*pi*(BaseRad - TopRad)^2*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height)^2)/(5*Height^2*ElmLength^6)) - ElmLength^2*((18*ElasticMod*pi*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height)^4)/ElmLength^5 + (18*ElasticMod*pi*(BaseRad - TopRad)*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height)^3)/(Height*ElmLength^4)) - ElmLength^6*((6*ElasticMod*pi*(BaseRad - TopRad)^4)/(Height^4*ElmLength^5) + (24*ElasticMod*pi*(BaseRad - TopRad)^3*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height))/(Height^3*ElmLength^6)) + (9*ElasticMod*pi*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height)^4)/ElmLength^3 + (36*ElasticMod*ElmLength*pi*(BaseRad - TopRad)^4)/(7*Height^4);
K34 = ElmLength^4*((3*((24*ElasticMod*pi*(BaseRad - TopRad)*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height)^3)/(Height*ElmLength^2) + (12*ElasticMod*pi*(BaseRad - TopRad)^2*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height)^2)/(Height^2*ElmLength)))/(4*ElmLength^3) + (3*((8*ElasticMod*pi*(BaseRad - TopRad)^3*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height))/(Height^3*ElmLength) + (36*ElasticMod*pi*(BaseRad - TopRad)^2*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height)^2)/(Height^2*ElmLength^2)))/(8*ElmLength^2)) - ElmLength^3*(((24*ElasticMod*pi*(BaseRad - TopRad)*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height)^3)/(Height*ElmLength^2) + (12*ElasticMod*pi*(BaseRad - TopRad)^2*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height)^2)/(Height^2*ElmLength))/(2*ElmLength^2) + ((6*ElasticMod*pi*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height)^4)/ElmLength^2 + (8*ElasticMod*pi*(BaseRad - TopRad)*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height)^3)/(Height*ElmLength))/ElmLength^3) - ElmLength^5*((3*((8*ElasticMod*pi*(BaseRad - TopRad)^3*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height))/(Height^3*ElmLength) + (36*ElasticMod*pi*(BaseRad - TopRad)^2*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height)^2)/(Height^2*ElmLength^2)))/(5*ElmLength^3) + (3*((2*ElasticMod*pi*(BaseRad - TopRad)^4)/(Height^4*ElmLength) + (24*ElasticMod*pi*(BaseRad - TopRad)^3*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height))/(Height^3*ElmLength^2)))/(10*ElmLength^2)) + ElmLength^6*(((2*ElasticMod*pi*(BaseRad - TopRad)^4)/(Height^4*ElmLength) + (24*ElasticMod*pi*(BaseRad - TopRad)^3*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height))/(Height^3*ElmLength^2))/(2*ElmLength^3) + (3*ElasticMod*pi*(BaseRad - TopRad)^4)/(2*Height^4*ElmLength^4)) + ElmLength^2*((3*((6*ElasticMod*pi*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height)^4)/ElmLength^2 + (8*ElasticMod*pi*(BaseRad - TopRad)*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height)^3)/(Height*ElmLength)))/(4*ElmLength^2) + (3*ElasticMod*pi*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height)^4)/ElmLength^4) - (3*ElasticMod*pi*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height)^4)/ElmLength^2 - (18*ElasticMod*ElmLength^2*pi*(BaseRad - TopRad)^4)/(7*Height^4);
K41 = ElmLength^3*(((24*ElasticMod*pi*(BaseRad - TopRad)*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height)^3)/(Height*ElmLength^2) + (12*ElasticMod*pi*(BaseRad - TopRad)^2*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height)^2)/(Height^2*ElmLength))/(2*ElmLength^2) + ((6*ElasticMod*pi*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height)^4)/ElmLength^2 + (8*ElasticMod*pi*(BaseRad - TopRad)*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height)^3)/(Height*ElmLength))/ElmLength^3) - ElmLength^4*((3*((24*ElasticMod*pi*(BaseRad - TopRad)*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height)^3)/(Height*ElmLength^2) + (12*ElasticMod*pi*(BaseRad - TopRad)^2*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height)^2)/(Height^2*ElmLength)))/(4*ElmLength^3) + (3*((8*ElasticMod*pi*(BaseRad - TopRad)^3*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height))/(Height^3*ElmLength) + (36*ElasticMod*pi*(BaseRad - TopRad)^2*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height)^2)/(Height^2*ElmLength^2)))/(8*ElmLength^2)) + ElmLength^5*((3*((8*ElasticMod*pi*(BaseRad - TopRad)^3*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height))/(Height^3*ElmLength) + (36*ElasticMod*pi*(BaseRad - TopRad)^2*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height)^2)/(Height^2*ElmLength^2)))/(5*ElmLength^3) + (3*((2*ElasticMod*pi*(BaseRad - TopRad)^4)/(Height^4*ElmLength) + (24*ElasticMod*pi*(BaseRad - TopRad)^3*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height))/(Height^3*ElmLength^2)))/(10*ElmLength^2)) - ElmLength^6*(((2*ElasticMod*pi*(BaseRad - TopRad)^4)/(Height^4*ElmLength) + (24*ElasticMod*pi*(BaseRad - TopRad)^3*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height))/(Height^3*ElmLength^2))/(2*ElmLength^3) + (3*ElasticMod*pi*(BaseRad - TopRad)^4)/(2*Height^4*ElmLength^4)) - ElmLength^2*((3*((6*ElasticMod*pi*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height)^4)/ElmLength^2 + (8*ElasticMod*pi*(BaseRad - TopRad)*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height)^3)/(Height*ElmLength)))/(4*ElmLength^2) + (3*ElasticMod*pi*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height)^4)/ElmLength^4) + (3*ElasticMod*pi*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height)^4)/ElmLength^2 + (18*ElasticMod*ElmLength^2*pi*(BaseRad - TopRad)^4)/(7*Height^4);
K42 = ElmLength^3*(((24*ElasticMod*pi*(BaseRad - TopRad)*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height)^3)/(Height*ElmLength^2) + (12*ElasticMod*pi*(BaseRad - TopRad)^2*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height)^2)/(Height^2*ElmLength))/(3*ElmLength) + ((6*ElasticMod*pi*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height)^4)/ElmLength^2 + (8*ElasticMod*pi*(BaseRad - TopRad)*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height)^3)/(Height*ElmLength))/(2*ElmLength^2)) - ElmLength^4*((3*((24*ElasticMod*pi*(BaseRad - TopRad)*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height)^3)/(Height*ElmLength^2) + (12*ElasticMod*pi*(BaseRad - TopRad)^2*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height)^2)/(Height^2*ElmLength)))/(8*ElmLength^2) + ((8*ElasticMod*pi*(BaseRad - TopRad)^3*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height))/(Height^3*ElmLength) + (36*ElasticMod*pi*(BaseRad - TopRad)^2*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height)^2)/(Height^2*ElmLength^2))/(4*ElmLength)) + ElmLength^5*((3*((8*ElasticMod*pi*(BaseRad - TopRad)^3*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height))/(Height^3*ElmLength) + (36*ElasticMod*pi*(BaseRad - TopRad)^2*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height)^2)/(Height^2*ElmLength^2)))/(10*ElmLength^2) + ((2*ElasticMod*pi*(BaseRad - TopRad)^4)/(Height^4*ElmLength) + (24*ElasticMod*pi*(BaseRad - TopRad)^3*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height))/(Height^3*ElmLength^2))/(5*ElmLength)) - ElmLength^6*(((2*ElasticMod*pi*(BaseRad - TopRad)^4)/(Height^4*ElmLength) + (24*ElasticMod*pi*(BaseRad - TopRad)^3*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height))/(Height^3*ElmLength^2))/(4*ElmLength^2) + (ElasticMod*pi*(BaseRad - TopRad)^4)/(Height^4*ElmLength^3)) - ElmLength^2*(((6*ElasticMod*pi*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height)^4)/ElmLength^2 + (8*ElasticMod*pi*(BaseRad - TopRad)*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height)^3)/(Height*ElmLength))/(2*ElmLength) + (3*ElasticMod*pi*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height)^4)/(2*ElmLength^3)) + (2*ElasticMod*pi*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height)^4)/ElmLength + (9*ElasticMod*ElmLength^3*pi*(BaseRad - TopRad)^4)/(7*Height^4);
K43 = ElmLength^4*((3*((24*ElasticMod*pi*(BaseRad - TopRad)*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height)^3)/(Height*ElmLength^2) + (12*ElasticMod*pi*(BaseRad - TopRad)^2*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height)^2)/(Height^2*ElmLength)))/(4*ElmLength^3) + (3*((8*ElasticMod*pi*(BaseRad - TopRad)^3*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height))/(Height^3*ElmLength) + (36*ElasticMod*pi*(BaseRad - TopRad)^2*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height)^2)/(Height^2*ElmLength^2)))/(8*ElmLength^2)) - ElmLength^3*(((24*ElasticMod*pi*(BaseRad - TopRad)*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height)^3)/(Height*ElmLength^2) + (12*ElasticMod*pi*(BaseRad - TopRad)^2*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height)^2)/(Height^2*ElmLength))/(2*ElmLength^2) + ((6*ElasticMod*pi*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height)^4)/ElmLength^2 + (8*ElasticMod*pi*(BaseRad - TopRad)*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height)^3)/(Height*ElmLength))/ElmLength^3) - ElmLength^5*((3*((8*ElasticMod*pi*(BaseRad - TopRad)^3*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height))/(Height^3*ElmLength) + (36*ElasticMod*pi*(BaseRad - TopRad)^2*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height)^2)/(Height^2*ElmLength^2)))/(5*ElmLength^3) + (3*((2*ElasticMod*pi*(BaseRad - TopRad)^4)/(Height^4*ElmLength) + (24*ElasticMod*pi*(BaseRad - TopRad)^3*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height))/(Height^3*ElmLength^2)))/(10*ElmLength^2)) + ElmLength^6*(((2*ElasticMod*pi*(BaseRad - TopRad)^4)/(Height^4*ElmLength) + (24*ElasticMod*pi*(BaseRad - TopRad)^3*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height))/(Height^3*ElmLength^2))/(2*ElmLength^3) + (3*ElasticMod*pi*(BaseRad - TopRad)^4)/(2*Height^4*ElmLength^4)) + ElmLength^2*((3*((6*ElasticMod*pi*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height)^4)/ElmLength^2 + (8*ElasticMod*pi*(BaseRad - TopRad)*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height)^3)/(Height*ElmLength)))/(4*ElmLength^2) + (3*ElasticMod*pi*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height)^4)/ElmLength^4) - (3*ElasticMod*pi*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height)^4)/ElmLength^2 - (18*ElasticMod*ElmLength^2*pi*(BaseRad - TopRad)^4)/(7*Height^4);
K44 = ElmLength^3*((3*ElasticMod*pi*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height)^4)/ElmLength^4 + (8*ElasticMod*pi*(BaseRad - TopRad)*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height)^3)/(Height*ElmLength^3) + (2*ElasticMod*pi*(BaseRad - TopRad)^2*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height)^2)/(Height^2*ElmLength^2)) - ElmLength^4*((9*ElasticMod*pi*(BaseRad - TopRad)*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height)^3)/(Height*ElmLength^4) + (ElasticMod*pi*(BaseRad - TopRad)^3*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height))/(Height^3*ElmLength^2) + (9*ElasticMod*pi*(BaseRad - TopRad)^2*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height)^2)/(Height^2*ElmLength^3)) + ElmLength^5*((ElasticMod*pi*(BaseRad - TopRad)^4)/(5*Height^4*ElmLength^2) + (24*ElasticMod*pi*(BaseRad - TopRad)^3*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height))/(5*Height^3*ElmLength^3) + (54*ElasticMod*pi*(BaseRad - TopRad)^2*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height)^2)/(5*Height^2*ElmLength^4)) - ElmLength^2*((3*ElasticMod*pi*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height)^4)/ElmLength^3 + (2*ElasticMod*pi*(BaseRad - TopRad)*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height)^3)/(Height*ElmLength^2)) - ElmLength^6*((ElasticMod*pi*(BaseRad - TopRad)^4)/(Height^4*ElmLength^3) + (6*ElasticMod*pi*(BaseRad - TopRad)^3*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height))/(Height^3*ElmLength^4)) + (ElasticMod*pi*(BaseRad - (ElmPointA_Height*(BaseRad - TopRad))/Height)^4)/ElmLength + (9*ElasticMod*ElmLength^3*pi*(BaseRad - TopRad)^4)/(7*Height^4);
ElmStiffMat = [
 K11 K12 K13 K14;
 K21 K22 K23 K24;
 K31 K32 K33 K34;
 K41 K42 K43 K44];