#parameters
ROOT=home/work/repos/fis2.0_shasumCheck/repo_source/
TOTALrepos=(fis fis-kernel fis-command-install)
repos_url=([fis]=https://github.com/fis-dev/fis	[fis-kernel]=https://github.com/fis-dev/fis-kernel	[fis-command-install]=https://github.com/fis-dev/fis-command-install)

#遍历repos
for repo in TOTALrepos
do
	if [-d "${ROOT}/${repo}"] #目录存在
		cd ${ROOT}/${repo}
		git pull repos_url[${repo}]
	else
		git clone repos_url[${repo}]
done