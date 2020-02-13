fid=fopen('test.txt','r');
data = textscan(fid,'%d','delimiter','\n');
fclose(fid);
% hold on plot(data{1,1},data{1,1},'bd');
x = 36;
y = 40;

a=[data{1,1}];
for i=1:10
    r=(y-x)*rand(1,1) + x
    
 fid=fopen('test.txt','a+');
% fprintf(fid,'exponential function\n\n');
fprintf(fid,'\n %f %f\n',r);

pause(2.0);

fclose(fid)
a=[a;r]
hold on
%plot(a,a,'bd');
subplot(2,2,1);
plot(a);
xlabel('samples')
ylabel('temperature')
m1=mean(a);
n1=median(a);
end 

fid=fopen('test_h.txt','r');
data = textscan(fid,'%d','delimiter','\n');
fclose(fid);
% hold on plot(data{1,1},data{1,1},'bd');
c = 35;
d = 70;

h=[data{1,1}];
for i=1:10
    r2=(d-c)*rand(1,1) + c
    
 fid=fopen('test_h.txt','a+');
% fprintf(fid,'exponential function\n\n');
fprintf(fid,'\n %f %f\n',r2);

pause(2.0);

fclose(fid)
h=[h;r2]
hold on
%plot(a,a,'bd');
subplot(2,2,2);
plot(h)
xlabel('samples')
ylabel('humidity')
end 



fid=fopen('test_b.txt','r');
data = textscan(fid,'%d','delimiter','\n');
fclose(fid);
% hold on plot(data{1,1},data{1,1},'bd');
t = 5.33;
u = 3001;

s=[data{1,1}];
for i=1:10
    r3=(u-t)*rand(1,1) + t
    
 fid=fopen('test_b.txt','a+');
% fprintf(fid,'exponential function\n\n');
fprintf(fid,'\n %f %f\n',s);

pause(2.0);

fclose(fid)
s=[s;r3]
hold on
%plot(a,a,'bd');
subplot(2,2,3);
plot(s);
xlabel('samples')
ylabel('turbidity')
end 




fid=fopen('test_t.txt','r');
data = textscan(fid,'%d','delimiter','\n');
fclose(fid);
% hold on plot(data{1,1},data{1,1},'bd');
l = 5;
o = 10;

f=[data{1,1}];
for i=1:10
    r4=(o-l)*rand(1,1) + l
    
 fid=fopen('test_t.txt','a+');
% fprintf(fid,'exponential function\n\n');
fprintf(fid,'\n %f %f\n',r4);

pause(2.0);

fclose(fid)
f=[f;r4]
hold on
%plot(a,a,'bd');
subplot(2,2,4);
plot(f);
xlabel('samples')
ylabel('pH')
end 