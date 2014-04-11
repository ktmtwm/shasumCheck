#parameters
ROOT=/home/work/repos/fis2.0_shasumCheck/repo_source
cd ${ROOT}
rm -rf *

FIS=https://github.com/fex-team/fis/blob/master/shasum.json
FIS_DIR=${ROOT}/fis

FIS_KERNEL=https://github.com/fex-team/fis-kernel/blob/master/shasum.json
FIS_KERNNEL_DIR=${ROOT}/fis-kernel

FIS_PLUS=https://github.com/fex-team/fis-plus/blob/master/shasum.json
FIS_PLUS_DIR=${ROOT}/fis-plus

FIS_COMMAND_SERVER=https://github.com/fex-team/fis-command-server/blob/master/shasum.json
FIS_COMMAND_SERVER_DIR=${ROOT}/fis-command-server

FIS_COMMAND_RELEASE=https://github.com/fex-team/fis-command-release/blob/master/shasum.json
FIS_COMMAND_RELEASE_DIR=${ROOT}/fis-command-release

FIS_COMMAND_INSTALL=https://github.com/fex-team/fis-command-install/blob/master/shasum.json
FIS_COMMAND_INSTALL_DIR=${ROOT}/fis-command-install

FIS_SPRITER_CSSSPRITES=https://github.com/fex-team/fis-spriter-csssprites/blob/master/shasum.json
FIS_SPRITER_CSSSPRITES_DIR=${ROOT}/fis-spriter-csssprites

FIS_OPTIMIZER_CLEAN_CSS=https://github.com/fex-team/fis-optimizer-clean-css/blob/master/shasum.json
FIS_OPTIMIZER_CLEAN_CSS_DIR=${ROOT}/fis-optimizer-clean-css

FIS_OPTIMIZER_UGLIFY_JS=https://github.com/fex-team/fis-optimizer-uglify-js/blob/master/shasum.json
FIS_OPTIMIZER_UGLIFY_JS_DIR=${ROOT}/fis-optimizer-uglify-js

FIS_POSTPROCESSOR_JSWRAPPER=https://github.com/fex-team/fis-postprocessor-jswrapper/blob/master/shasum.json
FIS_POSTPROCESSOR_JSWRAPPER_DIR=${ROOT}/fis-postprocessor-jswrapper

FIS_PACKAGER_MAP=https://github.com/fex-team/fis-packager-map/blob/master/shasum.json
FIS_PACKAGER_MAP_DIR=${ROOT}/fis-packager-map

FIS_OPTIMIZER_PNG_COMPRESSOR=https://github.com/fex-team/fis-oprimizer-png-compressor/blob/master/shasum.json
FIS_OPTIMIZER_PNG_COMPRESSOR_DIR=${ROOT}/fis-oprimizer-png-compressor

CI_TEST=https://github.com/xiangshouding/ci-test/blob/master/shasum.json
CI_TEST_DIR=${ROOT}/ci-test

mkdir ${FIS_DIR}
cd ${FIS_DIR}
wget ${FIS} --no-check-certificate

mkdir ${FIS_KERNEL_DIR}
cd ${FIS_KERNEL_DIR}
wget ${FIS_KERNEL} --no-check-certificate

mkdir ${FIS_PLUS_DIR}
cd ${FIS_PLUS_DIR}
wget ${FIS_PLUS} --no-check-certificate

mkdir ${FIS_COMMAND_SERVER_DIR}
cd ${FIS_COMMAND_SERVER_DIR}
wget ${FIS_COMMAND_SERVER} --no-check-certificate

mkdir ${FIS_COMMAND_RELEASE_DIR}
cd ${FIS_COMMAND_RELEASE_DIR}
wget ${FIS_COMMAND_RELEASE} --no-check-certificate

mkdir ${FIS_COMMAND_INSTALL_DIR}
cd ${FIS_COMMAND_INSTALL_DIR}
wget ${FIS_COMMAND_INSTALL} --no-check-certificate

mkdir ${FIS_SPRITER_CSSSPRITES_DIR}
cd ${FIS_SPRITER_CSSSPRITES_DIR}
wget ${FIS_SPRITER_CSSSPRITES} --no-check-certificate

mkdir ${FIS_OPTIMIZER_CLEAN_CSS_DIR}
cd ${FIS_OPTIMIZER_CLEAN_CSS_DIR}
wget ${FIS_OPTIMIZER_CLEAN_CSS} --no-check-certificate

mkdir ${FIS_OPTIMIZER_UGLIFY_JS_DIR}
cd ${FIS_OPTIMIZER_UGLIFY_JS_DIR}
wget ${FIS_OPTIMIZER_UGLIFY_JS} --no-check-certificate

mkdir ${FIS_POSTPROCESSOR_JSWRAPPER_DIR}
cd ${FIS_POSTPROCESSOR_JSWRAPPER_DIR}
wget ${FIS_POSTPROCESSOR_JSWRAPPER} --no-check-certificate

mkdir ${FIS_PACKAGER_MAP_DIR}
cd ${FIS_PACKAGER_MAP_DIR}
wget ${FIS_PACKAGER_MAP} --no-check-certificate

mkdir ${FIS_OPTIMIZER_PNG_COMPRESSOR_DIR}
cd ${FIS_OPTIMIZER_PNG_COMPRESSOR_DIR}
wget ${FIS_OPTIMIZER_PNG_COMPRESSOR} --no-check-certificate

mkdir ${CI_TEST_DIR}
cd ${CI_TEST_DIR}
wget ${CI_TEST} --no-check-certificate