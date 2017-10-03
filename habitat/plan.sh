pkg_name=mongodb
pkg_origin=sysgainmsoss
pkg_version=3.2.6
pkg_maintainer="kbhimanavarjula"
pkg_license=('GNU AGPL v3.0')
pkg_source=https://fastdl.mongodb.org/linux/${pkg_name}-linux-x86_64-${pkg_version}.tgz
pkg_filename=${pkg_name}-linux-x86_64-${pkg_version}.tgz
pkg_dirname=${pkg_name}-linux-x86_64-${pkg_version}
pkg_shasum=2b977dbb222fbeddc31aecba931f726bdc488b2f8ff4314768d2fda5b27e85e3
pkg_deps=(core/glibc core/gcc-libs)
pkg_svc_user="root"

pkg_expose=(27017 27018 27019 28017)
# This plan uses hooks.


do_build() {
  return 0
}

do_install() {
  mkdir -p $pkg_prefix/bin
  cp bin/* $pkg_prefix/bin/
}
