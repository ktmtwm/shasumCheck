#parameters
ROOT=/home/work/repos/fis2.0_shasumCheck/repo_source
cd ROOT
rm -rf *

FIS=https://github.com/fex-team/fis

FIS_KERNEL=https://github.com/fex-team/fis-kernelu

CI_TEST=https://github.com/xiangshouding/ci-test

git clone ${FIS}
git clone ${FIS_KERNEL}
git clone ${CI_TEST}