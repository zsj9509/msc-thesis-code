% [O, X] = facade_sp(1, 0.3);

f_psnr = figure;
[ha, pos] = tight_subplot(6, 3, [0.025 0.0], [0.0 0.025], [0.0 0.0]);
axes(ha(1)); ddisp(best.brtf.psnr.L); title('BRTF'); xlim([150, 350]); ylim([300, 493]);
axes(ha(2)); ddisp(best.ten_rpca.psnr.L); title('RPCA'); xlim([150, 350]); ylim([300, 493]);
axes(ha(3)); ddisp(best.ten_brpca.psnr.L); title('BRPCA'); xlim([150, 350]); ylim([300, 493]);
axes(ha(4)); ddisp(best.ten_orpca.psnr.L); title('RHOSVD'); xlim([150, 350]); ylim([300, 493]);
axes(ha(5)); ddisp(best.ten_rcpd.psnr.L); title('RCPD'); xlim([150, 350]); ylim([300, 493]);
axes(ha(6)); ddisp(best.horpca_s.psnr.L); title('HORPCA-S'); xlim([150, 350]); ylim([300, 493]);
axes(ha(7)); ddisp(best.horpca_s_tc.psnr.L); title('HORPCA-S TC'); xlim([150, 350]); ylim([300, 493]);
axes(ha(8)); ddisp(best.rpca2d_l1.psnr.L); title('RPCA2D L1'); xlim([150, 350]); ylim([300, 493]);
axes(ha(9)); ddisp(best.rpca2d_l2.psnr.L); title('RPCA2D L2'); xlim([150, 350]); ylim([300, 493]);
axes(ha(10)); ddisp(best_2d.rpca2d_gl_l1.psnr.L); title('RPCA2D GL L1'); xlim([150, 350]); ylim([300, 493]);
axes(ha(11)); ddisp(best_2d.rpca2d_gl_l2.psnr.L); title('RPCA2D GL L2'); xlim([150, 350]); ylim([300, 493]);
axes(ha(12)); ddisp(best.cvpr2014_tsvd.psnr.L); title('CVPR2014'); xlim([150, 350]); ylim([300, 493]);
axes(ha(13)); ddisp(best.cvpr2016_tnn.psnr.L); title('CVPR2016'); xlim([150, 350]); ylim([300, 493]);
axes(ha(14)); ddisp(best_2d.cauchy_st.psnr.L); title('Cauchy ST'); xlim([150, 350]); ylim([300, 493]);
axes(ha(15)); ddisp(best_2d.welsh_st.psnr.L); title('Welsh ST'); xlim([150, 350]); ylim([300, 493]);
axes(ha(16)); ddisp(best_2d.nctrpca.psnr.L); title('NC TRPCA'); xlim([150, 350]); ylim([300, 493]);
axes(ha(17)); ddisp(O); title('Original'); xlim([150, 350]); ylim([300, 493]);
axes(ha(18)); ddisp(X); title('Noisy'); xlim([150, 350]); ylim([300, 493]);

f_psnr.Units = 'centimeters';
f_psnr.Position = [0 0 15 23];
f_psnr.PaperPositionMode = 'manual';
f_psnr.PaperUnits = 'centimeters';
f_psnr.PaperPosition = [0 0 15 23];
saveas(f_psnr, my_sprintf('grid_%s_psnr_zoom_%0.2f.png', dataset, noise_level), 'png');

f_fsimc = figure;
[ha, pos] = tight_subplot(6, 3, [0.025 0.0], [0.0 0.025], [0.0 0.0]);
axes(ha(1)); ddisp(best.brtf.fsimc.L); title('BRTF'); xlim([150, 350]); ylim([300, 493]);
axes(ha(2)); ddisp(best.ten_rpca.fsimc.L); title('RPCA'); xlim([150, 350]); ylim([300, 493]);
axes(ha(3)); ddisp(best.ten_brpca.fsimc.L); title('BRPCA'); xlim([150, 350]); ylim([300, 493]);
axes(ha(4)); ddisp(best.ten_orpca.fsimc.L); title('RHOSVD'); xlim([150, 350]); ylim([300, 493]);
axes(ha(5)); ddisp(best.ten_rcpd.fsimc.L); title('RCPD'); xlim([150, 350]); ylim([300, 493]);
axes(ha(6)); ddisp(best.horpca_s.fsimc.L); title('HORPCA-S'); xlim([150, 350]); ylim([300, 493]);
axes(ha(7)); ddisp(best.horpca_s_tc.fsimc.L); title('HORPCA-S TC'); xlim([150, 350]); ylim([300, 493]);
axes(ha(8)); ddisp(best.rpca2d_l1.fsimc.L); title('RPCA2D L1'); xlim([150, 350]); ylim([300, 493]);
axes(ha(9)); ddisp(best.rpca2d_l2.fsimc.L); title('RPCA2D L2'); xlim([150, 350]); ylim([300, 493]);
axes(ha(10)); ddisp(best_2d.rpca2d_gl_l1.fsimc.L); title('RPCA2D GL L1'); xlim([150, 350]); ylim([300, 493]);
axes(ha(11)); ddisp(best_2d.rpca2d_gl_l2.fsimc.L); title('RPCA2D GL L2'); xlim([150, 350]); ylim([300, 493]);
axes(ha(12)); ddisp(best.cvpr2014_tsvd.fsimc.L); title('CVPR2014'); xlim([150, 350]); ylim([300, 493]);
axes(ha(13)); ddisp(best.cvpr2016_tnn.fsimc.L); title('CVPR2016'); xlim([150, 350]); ylim([300, 493]);
axes(ha(14)); ddisp(best_2d.cauchy_st.fsimc.L); title('Cauchy ST'); xlim([150, 350]); ylim([300, 493]);
axes(ha(15)); ddisp(best_2d.welsh_st.fsimc.L); title('Welsh ST'); xlim([150, 350]); ylim([300, 493]);
axes(ha(16)); ddisp(best_2d.nctrpca.fsimc.L); title('NC TRPCA'); xlim([150, 350]); ylim([300, 493]);
axes(ha(17)); ddisp(O); title('Original'); xlim([150, 350]); ylim([300, 493]);
axes(ha(18)); ddisp(X); title('Noisy'); xlim([150, 350]); ylim([300, 493]);

f_fsimc.Units = 'centimeters';
f_fsimc.Position = [0 0 15 23];
f_fsimc.PaperPositionMode = 'manual';
f_fsimc.PaperUnits = 'centimeters';
f_fsimc.PaperPosition = [0 0 15 23];
saveas(f_fsimc, my_sprintf('grid_%s_fsim_zoom_%0.2f.png', dataset, noise_level), 'png');

f_msam = figure;
[ha, pos] = tight_subplot(6, 3, [0.025 0.0], [0.0 0.025], [0.0 0.0]);
axes(ha(1)); ddisp(best.brtf.msam.L); title('BRTF'); xlim([150, 350]); ylim([300, 493]);
axes(ha(2)); ddisp(best.ten_rpca.msam.L); title('RPCA'); xlim([150, 350]); ylim([300, 493]);
axes(ha(3)); ddisp(best.ten_brpca.msam.L); title('BRPCA'); xlim([150, 350]); ylim([300, 493]);
axes(ha(4)); ddisp(best.ten_orpca.msam.L); title('RHOSVD'); xlim([150, 350]); ylim([300, 493]);
axes(ha(5)); ddisp(best.ten_rcpd.msam.L); title('RCPD'); xlim([150, 350]); ylim([300, 493]);
axes(ha(6)); ddisp(best.horpca_s.msam.L); title('HORPCA-S'); xlim([150, 350]); ylim([300, 493]);
axes(ha(7)); ddisp(best.horpca_s_tc.msam.L); title('HORPCA-S TC'); xlim([150, 350]); ylim([300, 493]);
axes(ha(8)); ddisp(best.rpca2d_l1.msam.L); title('RPCA2D L1'); xlim([150, 350]); ylim([300, 493]);
axes(ha(9)); ddisp(best.rpca2d_l2.msam.L); title('RPCA2D L2'); xlim([150, 350]); ylim([300, 493]);
axes(ha(10)); ddisp(best_2d.rpca2d_gl_l1.msam.L); title('RPCA2D GL L1'); xlim([150, 350]); ylim([300, 493]);
axes(ha(11)); ddisp(best_2d.rpca2d_gl_l2.msam.L); title('RPCA2D GL L2'); xlim([150, 350]); ylim([300, 493]);
axes(ha(12)); ddisp(best.cvpr2014_tsvd.msam.L); title('CVPR2014'); xlim([150, 350]); ylim([300, 493]);
axes(ha(13)); ddisp(best.cvpr2016_tnn.msam.L); title('CVPR2016'); xlim([150, 350]); ylim([300, 493]);
axes(ha(14)); ddisp(best_2d.cauchy_st.msam.L); title('Cauchy ST'); xlim([150, 350]); ylim([300, 493]);
axes(ha(15)); ddisp(best_2d.welsh_st.msam.L); title('Welsh ST'); xlim([150, 350]); ylim([300, 493]);
axes(ha(16)); ddisp(best_2d.nctrpca.msam.L); title('NC TRPCA'); xlim([150, 350]); ylim([300, 493]);
axes(ha(17)); ddisp(O); title('Original'); xlim([150, 350]); ylim([300, 493]);
axes(ha(18)); ddisp(X); title('Noisy'); xlim([150, 350]); ylim([300, 493]);

f_msam.Units = 'centimeters';
f_msam.Position = [0 0 15 23];
f_msam.PaperPositionMode = 'manual';
f_msam.PaperUnits = 'centimeters';
f_msam.PaperPosition = [0 0 15 23];
saveas(f_msam, my_sprintf('grid_%s_msam_zoom_%0.2f.png', dataset, noise_level), 'png');