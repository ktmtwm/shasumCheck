#parameters
ROOT=/home/work/repos/fis2.0_shasumCheck

cd ROOT
sh pull_repos.sh

rm -rf result/*.html

php -f checkDiff.class.php