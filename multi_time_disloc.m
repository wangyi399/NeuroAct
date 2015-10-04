% ����Ϊ�˽�һ��ʱ������ת���ɶ�����е�ʱ�����У�������ʱ�������δ�λ��
% Ŀ������Ising model�еĶ���ʷʱ�������롣 ֱ������nc_mtising.
% Y=multi_time_disloc(X,locAmt)
% if locAmt=0, Y=X.
function Y=multi_time_disloc(X,locAmt)
[pts,cha]=size(X);

newpts=pts-locAmt;
locAmt=locAmt+1;
Y=zeros(newpts,cha*locAmt);
for loci=1:locAmt
    Y(:,(0:cha-1)*locAmt+loci)=X(loci:pts-locAmt+loci,:); % move backward in time
end