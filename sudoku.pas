uses crt, graph;
type matrix=array[1..10,1..10] of integer;
var d,m:integer;
    k,l:integer;
    i,j:integer;
    x,y:matrix;
    c:char;   w,t:boolean;
procedure screen;
var k:integer;
    t:boolean;
begin
k:=0;
repeat
setbkcolor(15);
setfillstyle(1,15);
setcolor(4);
rectangle(140,60,449,369);
rectangle(229,149,249,168);
setlinestyle(0,1,2);
rectangle(228,148,448,368);
rectangle(228,148,448,368);
floodfill(250,150,4);
rectangle(140,60,228,148);
setfillstyle(1,4);
floodfill(142,63,4);
setfillstyle(9,12);
floodfill(338,58,4);
setcolor(4);
setfillstyle(1,8);
setlinestyle(0,1,1);
line(140+22*k,60,140+22*k,368);
line(140,60+22*k,448,60+22*k);
floodfill(230+22*(k-4),145,4);
floodfill(230+22*(k-4),123,4);
floodfill(223,123+22*(k-2),4);
floodfill(200,123+22*(k-2),4);
delay(150);
setfillstyle(1,8);
setlinestyle(0,1,3);
rectangle(500,60,550,100);
floodfill(503,65,4);
setfillstyle(1,white);
rectangle(500,120,550,160);
floodfill(503,125,4);
setfillstyle(1,8);
setcolor(4);
k:=k+1
until k=14;
floodfill(252,101,4);
floodfill(274,101,4);
floodfill(296,101,4);
floodfill(362,101,4);
floodfill(384,101,4);
floodfill(406,101,4);
floodfill(274,79,4);
floodfill(362,79,4);
floodfill(384,79,4);
floodfill(166,331,4);
floodfill(166,245,4);
floodfill(144,245,4);
setfillstyle(1,7);
floodfill(188,353,4);
floodfill(188,309,4);
floodfill(341,123,4);
floodfill(341,101,4);
floodfill(319,101,4);
floodfill(341,78,4);
floodfill(319,78,4);
floodfill(298,78,4);
floodfill(254,78,4);
floodfill(232,78,4);
floodfill(232,101,4);
floodfill(432,101,4);
floodfill(432,78,4);
floodfill(420,78,4);
floodfill(166,150,4);
floodfill(166,172,4);
floodfill(166,194,4);
floodfill(166,218,4);
floodfill(144,150,4);
floodfill(144,172,4);
floodfill(144,194,4);
floodfill(144,218,4);
floodfill(144,328,4);
floodfill(144,350,4);
floodfill(144,262,4);
floodfill(144,284,4);
floodfill(144,306,4);
floodfill(166,262,4);
floodfill(166,284,4);
floodfill(166,306,4);
floodfill(166,350,4);
setcolor(4);
settextstyle(6,horizdir,2);
outtextxy(517,126,'A');
outtextxy(517,66,'S');
setcolor(15);
outtextxy(234,126,'3 1 1 1 1 3 1 1 1 3');
outtextxy(234,104,'3 4 2 3 1   1 2 4 3');
outtextxy(236,82,'  2 1 1     3 1 2  ');
outtextxy(238,60,'    1       1 1    ');
outtextxy(149,148,'    4 4');
outtextxy(149,169,'    2 2');
outtextxy(149,191,'    1 1');
outtextxy(149,215,'    3 3');
outtextxy(147,237,'2 1 1 2');
outtextxy(149,259,'    4 4');
outtextxy(149,281,'    3 3');
outtextxy(149,303,'      3');
outtextxy(149,325,'  1 1 1');
outtextxy(149,347,'      6');
end;
procedure win(y:matrix;var w:boolean);
var i,j,t:integer; x:matrix;
  begin
    t:=1; 
	x[1,1]:=1; x[1,2]:=1; x[1,3]:=1; x[1,4]:=1; x[1,5]:=0; x[1,6]:=0; x[1,7]:=1; x[1,8]:=1; x[1,9]:=1; x[1,10]:=1;
	x[2,1]:=1; x[2,2]:=1; x[2,3]:=0; x[2,4]:=0; x[2,5]:=0; x[2,6]:=0; x[2,7]:=0; x[2,8]:=0; x[2,9]:=1; x[2,10]:=1;
	x[3,1]:=1; x[3,2]:=0; x[3,3]:=0; x[3,4]:=0; x[3,5]:=0; x[3,6]:=0; x[3,7]:=0; x[3,8]:=0; x[3,9]:=0; x[3,10]:=1;
	x[4,1]:=0; x[4,2]:=1; x[4,3]:=1; x[4,4]:=1; x[4,5]:=0; x[4,6]:=0; x[4,7]:=1; x[4,8]:=1; x[4,9]:=1; x[4,10]:=0;
	x[5,1]:=1; x[5,2]:=1; x[5,3]:=0; x[5,4]:=1; x[5,5]:=0; x[5,6]:=0; x[5,7]:=1; x[5,8]:=0; x[5,9]:=1; x[5,10]:=1;
	x[6,1]:=1; x[6,2]:=1; x[6,3]:=1; x[6,4]:=1; x[6,5]:=0; x[6,6]:=0; x[6,7]:=1; x[6,8]:=1; x[6,9]:=1; x[6,10]:=1;
	x[7,1]:=1; x[7,2]:=1; x[7,3]:=1; x[7,4]:=0; x[7,5]:=0; x[7,6]:=0; x[7,7]:=0; x[7,8]:=1; x[7,9]:=1; x[7,10]:=1;
	x[8,1]:=0; x[8,2]:=0; x[8,3]:=0; x[8,4]:=0; x[8,5]:=1; x[8,6]:=1; x[8,7]:=1; x[8,8]:=0; x[8,9]:=0; x[8,10]:=0;
	x[9,1]:=0; x[9,2]:=1; x[9,3]:=0; x[9,4]:=0; x[9,5]:=0; x[9,6]:=0; x[9,7]:=0; x[9,8]:=1; x[9,9]:=1; x[9,10]:=0;
	x[10,1]:=0; x[10,2]:=0; x[10,3]:=1; x[10,4]:=1; x[10,5]:=1; x[10,6]:=1; x[10,7]:=1; x[10,8]:=1; x[10,9]:=0; x[10,10]:=0;
  for i:=1 to 10 do for j:=1 to 10 do begin
	if x[i,j]<>y[i,j] then t:=t-1 else t:=t+1 ;
	if t<100 then w:=false else w:=true
	end;
  end;



procedure game_1(y:matrix;w:boolean);
var l,i,j:integer; c:char;
begin

	screen;	
	

	for i:=1 to 10 do for j:=1 to 10 do
	begin
		y[i,j]:=0;
	    l:=0;
		repeat
			c:=readkey;
			if c=#77 then begin
								if y[i,j]=1 then setfillstyle(1,8) else
								setfillstyle(1,15);
								bar(207+22*j,127+22*i,227+22*j,147+22*i);
								j:=j+1;
								if j=11 then j:=1;
								setcolor(4);
								rectangle(207+22*j,127+22*i,227+22*j,147+22*i)
							end;

			if c=#75 then begin
								if y[i,j]=1 then setfillstyle(1,8) else
								setfillstyle(1,15);
								bar(207+22*j,127+22*i,227+22*j,147+22*i);
								j:=j-1;
								if j=0 then j:=10;
								setcolor(4);
								rectangle(207+22*j,127+22*i,227+22*j,147+22*i)
							end;

			if c=#72 then begin
								if y[i,j]=1 then setfillstyle(1,8) else
								setfillstyle(1,15);
								bar(207+22*j,127+22*i,227+22*j,147+22*i);
								i:=i-1;
								if i=0 then i:=10;
								setcolor(4);
								rectangle(207+22*j,127+22*i,227+22*j,147+22*i)
							end;
			if c=#80 then begin
								if y[i,j]=1 then setfillstyle(1,8) else
								setfillstyle(1,15);
								bar(207+22*j,127+22*i,227+22*j,147+22*i);
								i:=i+1;
								if i=11 then i:=1;
								setcolor(4);
								rectangle(207+22*j,127+22*i,227+22*j,147+22*i)
							end;
		    if  c=#13 then 	begin
							y[i,j]:=y[i,j]+1;
							if y[i,j]=2 then begin
												y[i,j]:=0;
												l:=l+1;
												setfillstyle(1,15);
												floodfill(209+22*j,129+22*i,4);
											 end;
							if y[i,j]=1 then begin
												l:=l+1;
												setfillstyle(1,8);
												floodfill(209+22*j,129+22*i,4);
											  end;
							win(x,w);				  
						    if w=true then begin
						    					setfillstyle(1,7);
            									setlinestyle(0,1,3);
            									setcolor(12);
				            					rectangle(220,140,420,240);
				            					bar(222,142,420,240);
				            					outtextxy(230,117,'you win')
				            					end

						    end
             
            					
			until c=#27
			
							          	
							end end;

			




begin
detectgraph(d,m);
initgraph(d,m,'');
game_1(x,w);
closegraph
end.