%% �õ�ӳ��ʸ��ϵF
% �������ߣ�2 ����ӳ�䣺qpsk
%% ��ʼ���������
%ǰ����Ϊ��Ӧ��Ϣ���أ�������Ϊ��Ӧϵ��
f=zeros(16,6);
%% �ο�����
init_S1=1/sqrt(2);
init_S2=1/sqrt(2);
% QPSKӳ�����
qpsk=[1/sqrt(2),1i/sqrt(2),-1/sqrt(2),-1i/sqrt(2)];
%% �����Ӧϵ��
for i=0:15
    %�õ���Ϣ����
    code=dec2bin(i,4);
    %ӳ�䵽QPSK����
    S1=qpsk( ( bin2dec(code(1))*2+bin2dec(code(2))+1 ) );
    S2=qpsk( ( bin2dec(code(3))*2+bin2dec(code(4))+1 ) );
    %����ϵ��
    R1 = S1 * init_S1' + S2 * init_S2';
    R2 = -S1 * init_S2 + S2 * init_S1 ;
    %���ӳ�����
    f(i+1,1:4)=[bin2dec(code(1)),bin2dec(code(2)),bin2dec(code(3)),bin2dec(code(4))];
    f(i+1,5)=R1;
    f(i+1,6)=R2;
end
f(:,5:6)