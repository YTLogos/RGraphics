
1. gpuR

```bash
lspci | grep -i nvidia
```
```
08:00.0 3D controller: NVIDIA Corporation GK107M [GeForce GT 750M] (rev a1)
```
```bash
uname -m && cat /etc/*release
```
```
x86_64
DISTRIB_ID=Ubuntu
DISTRIB_RELEASE=16.04
DISTRIB_CODENAME=xenial
DISTRIB_DESCRIPTION="Ubuntu 16.04.5 LTS"
NAME="Ubuntu"
VERSION="16.04.5 LTS (Xenial Xerus)"
ID=ubuntu
ID_LIKE=debian
PRETTY_NAME="Ubuntu 16.04.5 LTS"
VERSION_ID="16.04"
HOME_URL="http://www.ubuntu.com/"
SUPPORT_URL="http://help.ubuntu.com/"
BUG_REPORT_URL="http://bugs.launchpad.net/ubuntu/"
VERSION_CODENAME=xenial
UBUNTU_CODENAME=xenial
```
```
* installing *source* package ‘gpuR’ ...
** package ‘gpuR’ successfully unpacked and MD5 sums checked
OPENCL_FLAGS not set, using default -DCL_HPP_MINIMUM_OPENCL_VERSION=110 -DCL_USE_DEPRECATED_OPENCL_1_2_APIS  -DCL_HPP_TARGET_OPENCL_VERSION=120
Linux OS
found OpenCL library
Checking OpenCL C++ API
OPENCL_INC not set, using default include directory /usr/include
cl2.hpp header exists

*********** Generated Makevars file ***********
CXX_STD=CXX11
PKG_CPPFLAGS=-I../inst/include -DCL_HPP_MINIMUM_OPENCL_VERSION=110 -DCL_USE_DEPRECATED_OPENCL_1_2_APIS -DCL_HPP_TARGET_OPENCL_VERSION=120 -fPIC -I'/usr/include/' -DHAVE_CL_CL2_HPP
PKG_CXXFLAGS=
PKG_LIBS=-lOpenCL
BUILD_LIB=

$(SHLIB): $(BUILD_LIB)

../inst/include/loader/libOpenCL.a:
	cd ../inst/include/loader/ && $(MAKE) libOpenCL.a \
	CC="$(CC)" CFLAGS="$(ALL_CFLAGS)" AR="$(AR)" RM="$(RM)" \
	ICD_OS=icd_linux
***********************************************
** libs
g++ -std=gnu++11 -I/usr/share/R/include -DNDEBUG -I../inst/include -DCL_HPP_MINIMUM_OPENCL_VERSION=110 -DCL_USE_DEPRECATED_OPENCL_1_2_APIS -DCL_HPP_TARGET_OPENCL_VERSION=120 -fPIC -I'/usr/include/' -DHAVE_CL_CL2_HPP -I"/home/ubuntu/R/x86_64-pc-linux-gnu-library/3.4/Rcpp/include" -I"/home/ubuntu/R/x86_64-pc-linux-gnu-library/3.4/RcppEigen/include" -I"/home/ubuntu/R/x86_64-pc-linux-gnu-library/3.4/RViennaCL/include" -I"/home/ubuntu/R/x86_64-pc-linux-gnu-library/3.4/BH/include"    -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g -c RcppExports.cpp -o RcppExports.o
g++ -std=gnu++11 -I/usr/share/R/include -DNDEBUG -I../inst/include -DCL_HPP_MINIMUM_OPENCL_VERSION=110 -DCL_USE_DEPRECATED_OPENCL_1_2_APIS -DCL_HPP_TARGET_OPENCL_VERSION=120 -fPIC -I'/usr/include/' -DHAVE_CL_CL2_HPP -I"/home/ubuntu/R/x86_64-pc-linux-gnu-library/3.4/Rcpp/include" -I"/home/ubuntu/R/x86_64-pc-linux-gnu-library/3.4/RcppEigen/include" -I"/home/ubuntu/R/x86_64-pc-linux-gnu-library/3.4/RViennaCL/include" -I"/home/ubuntu/R/x86_64-pc-linux-gnu-library/3.4/BH/include"    -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g -c chol.cpp -o chol.o
g++ -std=gnu++11 -I/usr/share/R/include -DNDEBUG -I../inst/include -DCL_HPP_MINIMUM_OPENCL_VERSION=110 -DCL_USE_DEPRECATED_OPENCL_1_2_APIS -DCL_HPP_TARGET_OPENCL_VERSION=120 -fPIC -I'/usr/include/' -DHAVE_CL_CL2_HPP -I"/home/ubuntu/R/x86_64-pc-linux-gnu-library/3.4/Rcpp/include" -I"/home/ubuntu/R/x86_64-pc-linux-gnu-library/3.4/RcppEigen/include" -I"/home/ubuntu/R/x86_64-pc-linux-gnu-library/3.4/RViennaCL/include" -I"/home/ubuntu/R/x86_64-pc-linux-gnu-library/3.4/BH/include"    -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g -c context.cpp -o context.o
g++ -std=gnu++11 -I/usr/share/R/include -DNDEBUG -I../inst/include -DCL_HPP_MINIMUM_OPENCL_VERSION=110 -DCL_USE_DEPRECATED_OPENCL_1_2_APIS -DCL_HPP_TARGET_OPENCL_VERSION=120 -fPIC -I'/usr/include/' -DHAVE_CL_CL2_HPP -I"/home/ubuntu/R/x86_64-pc-linux-gnu-library/3.4/Rcpp/include" -I"/home/ubuntu/R/x86_64-pc-linux-gnu-library/3.4/RcppEigen/include" -I"/home/ubuntu/R/x86_64-pc-linux-gnu-library/3.4/RViennaCL/include" -I"/home/ubuntu/R/x86_64-pc-linux-gnu-library/3.4/BH/include"    -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g -c custom_math.cpp -o custom_math.o
g++ -std=gnu++11 -I/usr/share/R/include -DNDEBUG -I../inst/include -DCL_HPP_MINIMUM_OPENCL_VERSION=110 -DCL_USE_DEPRECATED_OPENCL_1_2_APIS -DCL_HPP_TARGET_OPENCL_VERSION=120 -fPIC -I'/usr/include/' -DHAVE_CL_CL2_HPP -I"/home/ubuntu/R/x86_64-pc-linux-gnu-library/3.4/Rcpp/include" -I"/home/ubuntu/R/x86_64-pc-linux-gnu-library/3.4/RcppEigen/include" -I"/home/ubuntu/R/x86_64-pc-linux-gnu-library/3.4/RViennaCL/include" -I"/home/ubuntu/R/x86_64-pc-linux-gnu-library/3.4/BH/include"    -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g -c device.cpp -o device.o
g++ -std=gnu++11 -I/usr/share/R/include -DNDEBUG -I../inst/include -DCL_HPP_MINIMUM_OPENCL_VERSION=110 -DCL_USE_DEPRECATED_OPENCL_1_2_APIS -DCL_HPP_TARGET_OPENCL_VERSION=120 -fPIC -I'/usr/include/' -DHAVE_CL_CL2_HPP -I"/home/ubuntu/R/x86_64-pc-linux-gnu-library/3.4/Rcpp/include" -I"/home/ubuntu/R/x86_64-pc-linux-gnu-library/3.4/RcppEigen/include" -I"/home/ubuntu/R/x86_64-pc-linux-gnu-library/3.4/RViennaCL/include" -I"/home/ubuntu/R/x86_64-pc-linux-gnu-library/3.4/BH/include"    -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g -c gpuEigenPtr.cpp -o gpuEigenPtr.o
g++ -std=gnu++11 -I/usr/share/R/include -DNDEBUG -I../inst/include -DCL_HPP_MINIMUM_OPENCL_VERSION=110 -DCL_USE_DEPRECATED_OPENCL_1_2_APIS -DCL_HPP_TARGET_OPENCL_VERSION=120 -fPIC -I'/usr/include/' -DHAVE_CL_CL2_HPP -I"/home/ubuntu/R/x86_64-pc-linux-gnu-library/3.4/Rcpp/include" -I"/home/ubuntu/R/x86_64-pc-linux-gnu-library/3.4/RcppEigen/include" -I"/home/ubuntu/R/x86_64-pc-linux-gnu-library/3.4/RViennaCL/include" -I"/home/ubuntu/R/x86_64-pc-linux-gnu-library/3.4/BH/include"    -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g -c gpuMatrix_igemm.cpp -o gpuMatrix_igemm.o
g++ -std=gnu++11 -I/usr/share/R/include -DNDEBUG -I../inst/include -DCL_HPP_MINIMUM_OPENCL_VERSION=110 -DCL_USE_DEPRECATED_OPENCL_1_2_APIS -DCL_HPP_TARGET_OPENCL_VERSION=120 -fPIC -I'/usr/include/' -DHAVE_CL_CL2_HPP -I"/home/ubuntu/R/x86_64-pc-linux-gnu-library/3.4/Rcpp/include" -I"/home/ubuntu/R/x86_64-pc-linux-gnu-library/3.4/RcppEigen/include" -I"/home/ubuntu/R/x86_64-pc-linux-gnu-library/3.4/RViennaCL/include" -I"/home/ubuntu/R/x86_64-pc-linux-gnu-library/3.4/BH/include"    -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g -c norm.cpp -o norm.o
g++ -std=gnu++11 -I/usr/share/R/include -DNDEBUG -I../inst/include -DCL_HPP_MINIMUM_OPENCL_VERSION=110 -DCL_USE_DEPRECATED_OPENCL_1_2_APIS -DCL_HPP_TARGET_OPENCL_VERSION=120 -fPIC -I'/usr/include/' -DHAVE_CL_CL2_HPP -I"/home/ubuntu/R/x86_64-pc-linux-gnu-library/3.4/Rcpp/include" -I"/home/ubuntu/R/x86_64-pc-linux-gnu-library/3.4/RcppEigen/include" -I"/home/ubuntu/R/x86_64-pc-linux-gnu-library/3.4/RViennaCL/include" -I"/home/ubuntu/R/x86_64-pc-linux-gnu-library/3.4/BH/include"    -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g -c platform.cpp -o platform.o
g++ -std=gnu++11 -I/usr/share/R/include -DNDEBUG -I../inst/include -DCL_HPP_MINIMUM_OPENCL_VERSION=110 -DCL_USE_DEPRECATED_OPENCL_1_2_APIS -DCL_HPP_TARGET_OPENCL_VERSION=120 -fPIC -I'/usr/include/' -DHAVE_CL_CL2_HPP -I"/home/ubuntu/R/x86_64-pc-linux-gnu-library/3.4/Rcpp/include" -I"/home/ubuntu/R/x86_64-pc-linux-gnu-library/3.4/RcppEigen/include" -I"/home/ubuntu/R/x86_64-pc-linux-gnu-library/3.4/RViennaCL/include" -I"/home/ubuntu/R/x86_64-pc-linux-gnu-library/3.4/BH/include"    -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g -c set_row_order.cpp -o set_row_order.o
g++ -std=gnu++11 -I/usr/share/R/include -DNDEBUG -I../inst/include -DCL_HPP_MINIMUM_OPENCL_VERSION=110 -DCL_USE_DEPRECATED_OPENCL_1_2_APIS -DCL_HPP_TARGET_OPENCL_VERSION=120 -fPIC -I'/usr/include/' -DHAVE_CL_CL2_HPP -I"/home/ubuntu/R/x86_64-pc-linux-gnu-library/3.4/Rcpp/include" -I"/home/ubuntu/R/x86_64-pc-linux-gnu-library/3.4/RcppEigen/include" -I"/home/ubuntu/R/x86_64-pc-linux-gnu-library/3.4/RViennaCL/include" -I"/home/ubuntu/R/x86_64-pc-linux-gnu-library/3.4/BH/include"    -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g -c solve.cpp -o solve.o
g++ -std=gnu++11 -I/usr/share/R/include -DNDEBUG -I../inst/include -DCL_HPP_MINIMUM_OPENCL_VERSION=110 -DCL_USE_DEPRECATED_OPENCL_1_2_APIS -DCL_HPP_TARGET_OPENCL_VERSION=120 -fPIC -I'/usr/include/' -DHAVE_CL_CL2_HPP -I"/home/ubuntu/R/x86_64-pc-linux-gnu-library/3.4/Rcpp/include" -I"/home/ubuntu/R/x86_64-pc-linux-gnu-library/3.4/RcppEigen/include" -I"/home/ubuntu/R/x86_64-pc-linux-gnu-library/3.4/RViennaCL/include" -I"/home/ubuntu/R/x86_64-pc-linux-gnu-library/3.4/BH/include"    -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g -c synchronize.cpp -o synchronize.o
g++ -std=gnu++11 -I/usr/share/R/include -DNDEBUG -I../inst/include -DCL_HPP_MINIMUM_OPENCL_VERSION=110 -DCL_USE_DEPRECATED_OPENCL_1_2_APIS -DCL_HPP_TARGET_OPENCL_VERSION=120 -fPIC -I'/usr/include/' -DHAVE_CL_CL2_HPP -I"/home/ubuntu/R/x86_64-pc-linux-gnu-library/3.4/Rcpp/include" -I"/home/ubuntu/R/x86_64-pc-linux-gnu-library/3.4/RcppEigen/include" -I"/home/ubuntu/R/x86_64-pc-linux-gnu-library/3.4/RViennaCL/include" -I"/home/ubuntu/R/x86_64-pc-linux-gnu-library/3.4/BH/include"    -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g -c trunc_gpuMat.cpp -o trunc_gpuMat.o
g++ -std=gnu++11 -I/usr/share/R/include -DNDEBUG -I../inst/include -DCL_HPP_MINIMUM_OPENCL_VERSION=110 -DCL_USE_DEPRECATED_OPENCL_1_2_APIS -DCL_HPP_TARGET_OPENCL_VERSION=120 -fPIC -I'/usr/include/' -DHAVE_CL_CL2_HPP -I"/home/ubuntu/R/x86_64-pc-linux-gnu-library/3.4/Rcpp/include" -I"/home/ubuntu/R/x86_64-pc-linux-gnu-library/3.4/RcppEigen/include" -I"/home/ubuntu/R/x86_64-pc-linux-gnu-library/3.4/RViennaCL/include" -I"/home/ubuntu/R/x86_64-pc-linux-gnu-library/3.4/BH/include"    -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g -c utils-vcl.cpp -o utils-vcl.o
g++ -std=gnu++11 -I/usr/share/R/include -DNDEBUG -I../inst/include -DCL_HPP_MINIMUM_OPENCL_VERSION=110 -DCL_USE_DEPRECATED_OPENCL_1_2_APIS -DCL_HPP_TARGET_OPENCL_VERSION=120 -fPIC -I'/usr/include/' -DHAVE_CL_CL2_HPP -I"/home/ubuntu/R/x86_64-pc-linux-gnu-library/3.4/Rcpp/include" -I"/home/ubuntu/R/x86_64-pc-linux-gnu-library/3.4/RcppEigen/include" -I"/home/ubuntu/R/x86_64-pc-linux-gnu-library/3.4/RViennaCL/include" -I"/home/ubuntu/R/x86_64-pc-linux-gnu-library/3.4/BH/include"    -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g -c utils.cpp -o utils.o
g++ -std=gnu++11 -I/usr/share/R/include -DNDEBUG -I../inst/include -DCL_HPP_MINIMUM_OPENCL_VERSION=110 -DCL_USE_DEPRECATED_OPENCL_1_2_APIS -DCL_HPP_TARGET_OPENCL_VERSION=120 -fPIC -I'/usr/include/' -DHAVE_CL_CL2_HPP -I"/home/ubuntu/R/x86_64-pc-linux-gnu-library/3.4/Rcpp/include" -I"/home/ubuntu/R/x86_64-pc-linux-gnu-library/3.4/RcppEigen/include" -I"/home/ubuntu/R/x86_64-pc-linux-gnu-library/3.4/RViennaCL/include" -I"/home/ubuntu/R/x86_64-pc-linux-gnu-library/3.4/BH/include"    -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g -c vclPtr.cpp -o vclPtr.o
g++ -std=gnu++11 -I/usr/share/R/include -DNDEBUG -I../inst/include -DCL_HPP_MINIMUM_OPENCL_VERSION=110 -DCL_USE_DEPRECATED_OPENCL_1_2_APIS -DCL_HPP_TARGET_OPENCL_VERSION=120 -fPIC -I'/usr/include/' -DHAVE_CL_CL2_HPP -I"/home/ubuntu/R/x86_64-pc-linux-gnu-library/3.4/Rcpp/include" -I"/home/ubuntu/R/x86_64-pc-linux-gnu-library/3.4/RcppEigen/include" -I"/home/ubuntu/R/x86_64-pc-linux-gnu-library/3.4/RViennaCL/include" -I"/home/ubuntu/R/x86_64-pc-linux-gnu-library/3.4/BH/include"    -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g -c vienna_blas1.cpp -o vienna_blas1.o
g++ -std=gnu++11 -I/usr/share/R/include -DNDEBUG -I../inst/include -DCL_HPP_MINIMUM_OPENCL_VERSION=110 -DCL_USE_DEPRECATED_OPENCL_1_2_APIS -DCL_HPP_TARGET_OPENCL_VERSION=120 -fPIC -I'/usr/include/' -DHAVE_CL_CL2_HPP -I"/home/ubuntu/R/x86_64-pc-linux-gnu-library/3.4/Rcpp/include" -I"/home/ubuntu/R/x86_64-pc-linux-gnu-library/3.4/RcppEigen/include" -I"/home/ubuntu/R/x86_64-pc-linux-gnu-library/3.4/RViennaCL/include" -I"/home/ubuntu/R/x86_64-pc-linux-gnu-library/3.4/BH/include"    -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g -c vienna_blas2.cpp -o vienna_blas2.o
g++ -std=gnu++11 -I/usr/share/R/include -DNDEBUG -I../inst/include -DCL_HPP_MINIMUM_OPENCL_VERSION=110 -DCL_USE_DEPRECATED_OPENCL_1_2_APIS -DCL_HPP_TARGET_OPENCL_VERSION=120 -fPIC -I'/usr/include/' -DHAVE_CL_CL2_HPP -I"/home/ubuntu/R/x86_64-pc-linux-gnu-library/3.4/Rcpp/include" -I"/home/ubuntu/R/x86_64-pc-linux-gnu-library/3.4/RcppEigen/include" -I"/home/ubuntu/R/x86_64-pc-linux-gnu-library/3.4/RViennaCL/include" -I"/home/ubuntu/R/x86_64-pc-linux-gnu-library/3.4/BH/include"    -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g -c vienna_blas3.cpp -o vienna_blas3.o
g++ -std=gnu++11 -I/usr/share/R/include -DNDEBUG -I../inst/include -DCL_HPP_MINIMUM_OPENCL_VERSION=110 -DCL_USE_DEPRECATED_OPENCL_1_2_APIS -DCL_HPP_TARGET_OPENCL_VERSION=120 -fPIC -I'/usr/include/' -DHAVE_CL_CL2_HPP -I"/home/ubuntu/R/x86_64-pc-linux-gnu-library/3.4/Rcpp/include" -I"/home/ubuntu/R/x86_64-pc-linux-gnu-library/3.4/RcppEigen/include" -I"/home/ubuntu/R/x86_64-pc-linux-gnu-library/3.4/RViennaCL/include" -I"/home/ubuntu/R/x86_64-pc-linux-gnu-library/3.4/BH/include"    -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g -c vienna_eigen.cpp -o vienna_eigen.o
g++ -std=gnu++11 -I/usr/share/R/include -DNDEBUG -I../inst/include -DCL_HPP_MINIMUM_OPENCL_VERSION=110 -DCL_USE_DEPRECATED_OPENCL_1_2_APIS -DCL_HPP_TARGET_OPENCL_VERSION=120 -fPIC -I'/usr/include/' -DHAVE_CL_CL2_HPP -I"/home/ubuntu/R/x86_64-pc-linux-gnu-library/3.4/Rcpp/include" -I"/home/ubuntu/R/x86_64-pc-linux-gnu-library/3.4/RcppEigen/include" -I"/home/ubuntu/R/x86_64-pc-linux-gnu-library/3.4/RViennaCL/include" -I"/home/ubuntu/R/x86_64-pc-linux-gnu-library/3.4/BH/include"    -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g -c vienna_qr.cpp -o vienna_qr.o
g++ -std=gnu++11 -I/usr/share/R/include -DNDEBUG -I../inst/include -DCL_HPP_MINIMUM_OPENCL_VERSION=110 -DCL_USE_DEPRECATED_OPENCL_1_2_APIS -DCL_HPP_TARGET_OPENCL_VERSION=120 -fPIC -I'/usr/include/' -DHAVE_CL_CL2_HPP -I"/home/ubuntu/R/x86_64-pc-linux-gnu-library/3.4/Rcpp/include" -I"/home/ubuntu/R/x86_64-pc-linux-gnu-library/3.4/RcppEigen/include" -I"/home/ubuntu/R/x86_64-pc-linux-gnu-library/3.4/RViennaCL/include" -I"/home/ubuntu/R/x86_64-pc-linux-gnu-library/3.4/BH/include"    -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g -c vienna_stats.cpp -o vienna_stats.o
g++ -std=gnu++11 -I/usr/share/R/include -DNDEBUG -I../inst/include -DCL_HPP_MINIMUM_OPENCL_VERSION=110 -DCL_USE_DEPRECATED_OPENCL_1_2_APIS -DCL_HPP_TARGET_OPENCL_VERSION=120 -fPIC -I'/usr/include/' -DHAVE_CL_CL2_HPP -I"/home/ubuntu/R/x86_64-pc-linux-gnu-library/3.4/Rcpp/include" -I"/home/ubuntu/R/x86_64-pc-linux-gnu-library/3.4/RcppEigen/include" -I"/home/ubuntu/R/x86_64-pc-linux-gnu-library/3.4/RViennaCL/include" -I"/home/ubuntu/R/x86_64-pc-linux-gnu-library/3.4/BH/include"    -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g -c vienna_svd.cpp -o vienna_svd.o
g++ -std=gnu++11 -shared -L/usr/lib/R/lib -Wl,-Bsymbolic-functions -Wl,-z,relro -o gpuR.so RcppExports.o chol.o context.o custom_math.o device.o gpuEigenPtr.o gpuMatrix_igemm.o norm.o platform.o set_row_order.o solve.o synchronize.o trunc_gpuMat.o utils-vcl.o utils.o vclPtr.o vienna_blas1.o vienna_blas2.o vienna_blas3.o vienna_eigen.o vienna_qr.o vienna_stats.o vienna_svd.o -lOpenCL -L/usr/lib/R/lib -lR
installing to /home/ubuntu/R/x86_64-pc-linux-gnu-library/3.4/gpuR/libs
** R
** inst
** preparing package for lazy loading
Creating a generic function for ‘eigen’ from package ‘base’ in package ‘gpuR’
Creating a generic function for ‘%o%’ from package ‘base’ in package ‘gpuR’
Creating a generic function for ‘nrow’ from package ‘base’ in package ‘gpuR’
Creating a generic function for ‘ncol’ from package ‘base’ in package ‘gpuR’
Creating a generic function for ‘crossprod’ from package ‘base’ in package ‘gpuR’
Creating a generic function for ‘tcrossprod’ from package ‘base’ in package ‘gpuR’
Creating a generic function for ‘cov’ from package ‘stats’ in package ‘gpuR’
Creating a generic function for ‘colSums’ from package ‘base’ in package ‘gpuR’
Creating a generic function for ‘rowSums’ from package ‘base’ in package ‘gpuR’
Creating a generic function for ‘colMeans’ from package ‘base’ in package ‘gpuR’
Creating a generic function for ‘rowMeans’ from package ‘base’ in package ‘gpuR’
Creating a generic function for ‘dist’ from package ‘stats’ in package ‘gpuR’
Creating a generic function for ‘diag’ from package ‘base’ in package ‘gpuR’
Creating a generic function for ‘diag<-’ from package ‘base’ in package ‘gpuR’
Creating a generic function for ‘det’ from package ‘base’ in package ‘gpuR’
Creating a generic function for ‘norm’ from package ‘base’ in package ‘gpuR’
Creating a generic function for ‘qr.R’ from package ‘base’ in package ‘gpuR’
Creating a generic function for ‘qr.Q’ from package ‘base’ in package ‘gpuR’
Creating a generic function for ‘typeof’ from package ‘base’ in package ‘gpuR’
Creating a generic function for ‘colnames<-’ from package ‘base’ in package ‘gpuR’
** help
*** installing help indices
** building package indices
** installing vignettes
** testing if installed package can be loaded
Number of platforms: 1
- platform: NVIDIA Corporation: OpenCL 1.2 CUDA 9.0.368
  - context device index: 0
    - GeForce GT 750M
checked all devices
completed initialization
* DONE (gpuR)
```
