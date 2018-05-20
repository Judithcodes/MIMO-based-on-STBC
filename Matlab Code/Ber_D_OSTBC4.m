%% �趨������
EbNo=1:9;
%% ������
fig=figure;
grid on;
ax = fig.CurrentAxes;
hold(ax,'on');
ax.YScale = 'log';
xlim(ax,[EbNo(1), EbNo(end)]);
ylim(ax,[1e-4 1]);
xlabel(ax,'Eb/No (dB)');
ylabel(ax,'BER');
fig.NumberTitle = 'off';
fig.Renderer = 'zbuffer';
fig.Name = 'Ber OSTBC DSTBC';
title(ax,'�����ߣ���֣���ʱ���������ܱȽ�');
set(fig, 'DefaultLegendAutoUpdate', 'on');
fig.Position = figposition([15 50 25 30]);
% Plot results
    semilogy(ax,EbNo, ber_dstbc_22, 'r*', ...
             EbNo, ber_ostbc_22, 'go', ...
             EbNo, ber_dstbc_42, 'bs', ...
             EbNo, ber_ostbc_42, 'mx');
    legend(ax,'DSTBC 2��2 BPSK', 'OSTBC 2��2 BPSK',...
           'DSTBC 4��2 BPSK', ...
           'OSTBC 4��2 BPSK');
    drawnow;