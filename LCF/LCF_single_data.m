function LCF_single_data(dataset, kernel_type, nRepeat)

dir1 = pwd;
addpath(fullfile(pwd, '..', 'lib'));
addpath(fullfile(pwd, '..', 'data'));

cd(fullfile(dir1, '..', 'data'));
BuildKernels(dataset, kernel_type);

cd(dir1);
LCF_all_kernel(dataset, kernel_type, nRepeat);
LCF_equal_weight_multi_kernel(dataset, kernel_type, nRepeat);