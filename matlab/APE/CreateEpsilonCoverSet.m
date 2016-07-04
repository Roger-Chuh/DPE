function [poses, numPoses] = CreateEpsilonCoverSet(in_mat, bounds, steps, dim)


% call mex function
configs_mex = CreateSet_mex(bounds.tz(1), bounds.tz(2),...
							              bounds.rx(1), bounds.rx(2),...
                            bounds.rz(1), bounds.rz(2),...
                            steps.tx,  steps.ty,...
                            steps.tz,  steps.rx,...
                            steps.rz0, steps.rz1,...
                            in_mat(1,1), in_mat(1,3),...
                            in_mat(2,2),in_mat(2,3),...
                            max(dim.marker_w,dim.marker_h),min(dim.marker_w,dim.marker_h));


poses = configs_mex';
numPoses = size(poses, 1);
end