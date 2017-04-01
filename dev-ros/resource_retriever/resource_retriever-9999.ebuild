# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
ROS_REPO_URI="https://github.com/ros/resource_retriever"
KEYWORDS="~amd64 ~arm"
PYTHON_COMPAT=( python2_7 )

inherit ros-catkin

DESCRIPTION="Retrieves data from url-format files"
LICENSE="BSD"
SLOT="0"
IUSE=""

RDEPEND="
	dev-ros/rosconsole
	dev-ros/roslib[${PYTHON_USEDEP}]
	net-misc/curl
	dev-python/rospkg[${PYTHON_USEDEP}]
"
DEPEND="${RDEPEND}
	test? ( dev-cpp/gtest )"
