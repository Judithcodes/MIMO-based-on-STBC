%% �õ�ϵ��ʸ���� F
% ��������Ϊ4������ӳ��Ϊbpsk
%% ��ʼ���������
%ǰ���д���������֣������д��ӳ��ϵ��
f=zeros(16,8);
%% �ο�����
init_x1=1/2;
init_x2=1/2;
init_x3=1/2;
init_x4=1/2;
%% ��άʱ�ռ�������
x1=init_x1;
x2=init_x2;
x3=init_x3;
x4=init_x4;
V1=[x1,x2,x3,x4];
V2=[-x2,x1,-x4,x3];
V3=[-x3,x4,x1,-x2];
V4=[-x4,-x3,x2,x1];
Vc=[V1,conj(V1);V2,conj(V2);V3,conj(V3);V4,conj(V4)];
%% ��������
for i=0:15
%�õ���������
c=dec2bin(i,4);
%ӳ�䵽����
v1=[(-1)^bin2dec(c(1))/2 , (-1)^bin2dec(c(2))/2 , (-1)^bin2dec(c(3))/2 , (-1)^bin2dec(c(4))/2];
v1c=[v1,conj(v1)];
%�õ�ϵ��r
r=1/2*(v1c*Vc');
%�������
for j=1:4
    f(i+1,j)=bin2dec(c(j));
    f(i+1,j+4)=r(1,j);
end
end
f(:,5:8)