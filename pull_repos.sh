#parameters
ROOT=/home/work/repos/fis2.0_shasumCheck/repo_source/
TOTALrepos=(fis fis-kernel fis-command-install ci-test)
repos_url=([fis]=https://github.com/fex-team/fis	[fis-kernel]=https://github.com/fex-team/fis-kernel	[fis-command-install]=https://github.com/fis-dev/fis-command-install [ci-test]=https://github.com/xiangshouding/ci-test)

#遍历repos
for repo in TOTALrepos
do
	if [ -d "${ROOT}/${repo}" ] #目录存在
	then
	echo repo
		cd ${ROOT}
		rm -rf ${ROOT}/${repo}
		git clone repos_url[${repo}]
	elif [ -d "${ROOT}" ]
	then
		cd ${ROOT}
		git clone repos_url[${repo}]
	else
		mkdir ${ROOT}
		cd ${ROOT}
		git clone repos_url[${repo}]
	fi
done