
* installing *source* package ‘stringi’ ...
** package ‘stringi’ successfully unpacked and MD5 sums checked
checking for R_HOME... /usr/lib/R
checking for R... /usr/lib/R/bin/R
checking for endianness... little
checking for R >= 3.1.0 for C++11 use... yes
checking for R < 3.4.0 for CXX1X flag use... no
checking for cat... /bin/cat
checking for local ICUDT_DIR... icu61/data
checking for gcc... gcc -std=gnu99
checking whether the C compiler works... yes
checking for C compiler default output file name... a.out
checking for suffix of executables...
checking whether we are cross compiling... no
checking for suffix of object files... o
checking whether we are using the GNU C compiler... yes
checking whether gcc -std=gnu99 accepts -g... yes
checking for gcc -std=gnu99 option to accept ISO C89... none needed
checking how to run the C preprocessor... g++ -E
checking for grep that handles long lines and -e... /bin/grep
checking for egrep... /bin/grep -E
checking for ANSI C header files... yes
checking for sys/types.h... yes
checking for sys/stat.h... yes
checking for stdlib.h... yes
checking for string.h... yes
checking for memory.h... yes
checking for strings.h... yes
checking for inttypes.h... yes
checking for stdint.h... yes
checking for unistd.h... yes
checking elf.h usability... yes
checking elf.h presence... yes
checking for elf.h... yes
checking whether we are using the GNU C++ compiler... yes
checking whether g++ -std=gnu++11 accepts -g... yes
checking whether the C++ compiler supports the long long type... yes
checking whether the compiler implements namespaces... yes
checking whether the compiler supports Standard Template Library... yes
checking whether std::map is available... yes
checking for pkg-config... /usr/bin/pkg-config
checking with pkg-config for the system ICU4C... 60.2
checking for ICU4C >= 52... yes
checking for additional required CPPFLAGS, LDFLAGS, and LIBS... done
checking whether we may build an ICU4C-based project... yes
checking programmatically for sufficient U_ICU_VERSION_MAJOR_NUM... yes
checking programmatically if U_CHARSET_IS_UTF8 is defined and set... no
checking for available ICU data library (ucnv, uloc, utrans)... yes
checking for available ICU data library (ucol)... yes
configure: creating ./config.status
config.status: creating src/Makevars
config.status: creating src/uconfig_local.h
config.status: creating src/install.libs.R

*** stringi configure summary:
    ICU_FOUND=1
    STRINGI_CXXSTD=CXX_STD=CXX11
    STRINGI_CFLAGS=   -fpic
    STRINGI_CPPFLAGS=-I.    -UDEBUG -DNDEBUG -DU_HAVE_ELF_H
    STRINGI_CXXFLAGS=   -fpic
    STRINGI_LDFLAGS=-L/usr/lib/x86_64-linux-gnu
    STRINGI_LIBS=-licui18n -licuuc -licudata

*** compiler settings used:
    CC=gcc -std=gnu99
    CPP=g++ -E
    LD=g++
    CFLAGS=-g -O2 -fdebug-prefix-map=/build/r-base-3U0YWo/r-base-3.5.3=. -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g -fpic
    CPPFLAGS=   -UDEBUG -DNDEBUG
    CXX=g++ -std=gnu++11
    CXXFLAGS=-g -O2 -fdebug-prefix-map=/build/r-base-3U0YWo/r-base-3.5.3=. -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g -fpic
    LDFLAGS=
    LIBS=

** libs
g++ -std=gnu++11 -I"/usr/share/R/include" -DNDEBUG -I.    -UDEBUG -DNDEBUG -DU_HAVE_ELF_H    -fpic -fpic  -g -O2 -fdebug-prefix-map=/build/r-base-3U0YWo/r-base-3.5.3=. -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g -c stri_brkiter.cpp -o stri_brkiter.o
g++ -std=gnu++11 -I"/usr/share/R/include" -DNDEBUG -I.    -UDEBUG -DNDEBUG -DU_HAVE_ELF_H    -fpic -fpic  -g -O2 -fdebug-prefix-map=/build/r-base-3U0YWo/r-base-3.5.3=. -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g -c stri_collator.cpp -o stri_collator.o
g++ -std=gnu++11 -I"/usr/share/R/include" -DNDEBUG -I.    -UDEBUG -DNDEBUG -DU_HAVE_ELF_H    -fpic -fpic  -g -O2 -fdebug-prefix-map=/build/r-base-3U0YWo/r-base-3.5.3=. -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g -c stri_common.cpp -o stri_common.o
g++ -std=gnu++11 -I"/usr/share/R/include" -DNDEBUG -I.    -UDEBUG -DNDEBUG -DU_HAVE_ELF_H    -fpic -fpic  -g -O2 -fdebug-prefix-map=/build/r-base-3U0YWo/r-base-3.5.3=. -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g -c stri_compare.cpp -o stri_compare.o
g++ -std=gnu++11 -I"/usr/share/R/include" -DNDEBUG -I.    -UDEBUG -DNDEBUG -DU_HAVE_ELF_H    -fpic -fpic  -g -O2 -fdebug-prefix-map=/build/r-base-3U0YWo/r-base-3.5.3=. -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g -c stri_container_base.cpp -o stri_container_base.o
g++ -std=gnu++11 -I"/usr/share/R/include" -DNDEBUG -I.    -UDEBUG -DNDEBUG -DU_HAVE_ELF_H    -fpic -fpic  -g -O2 -fdebug-prefix-map=/build/r-base-3U0YWo/r-base-3.5.3=. -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g -c stri_container_bytesearch.cpp -o stri_container_bytesearch.o
g++ -std=gnu++11 -I"/usr/share/R/include" -DNDEBUG -I.    -UDEBUG -DNDEBUG -DU_HAVE_ELF_H    -fpic -fpic  -g -O2 -fdebug-prefix-map=/build/r-base-3U0YWo/r-base-3.5.3=. -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g -c stri_container_listint.cpp -o stri_container_listint.o
g++ -std=gnu++11 -I"/usr/share/R/include" -DNDEBUG -I.    -UDEBUG -DNDEBUG -DU_HAVE_ELF_H    -fpic -fpic  -g -O2 -fdebug-prefix-map=/build/r-base-3U0YWo/r-base-3.5.3=. -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g -c stri_container_listraw.cpp -o stri_container_listraw.o
g++ -std=gnu++11 -I"/usr/share/R/include" -DNDEBUG -I.    -UDEBUG -DNDEBUG -DU_HAVE_ELF_H    -fpic -fpic  -g -O2 -fdebug-prefix-map=/build/r-base-3U0YWo/r-base-3.5.3=. -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g -c stri_container_listutf8.cpp -o stri_container_listutf8.o
g++ -std=gnu++11 -I"/usr/share/R/include" -DNDEBUG -I.    -UDEBUG -DNDEBUG -DU_HAVE_ELF_H    -fpic -fpic  -g -O2 -fdebug-prefix-map=/build/r-base-3U0YWo/r-base-3.5.3=. -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g -c stri_container_regex.cpp -o stri_container_regex.o
g++ -std=gnu++11 -I"/usr/share/R/include" -DNDEBUG -I.    -UDEBUG -DNDEBUG -DU_HAVE_ELF_H    -fpic -fpic  -g -O2 -fdebug-prefix-map=/build/r-base-3U0YWo/r-base-3.5.3=. -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g -c stri_container_usearch.cpp -o stri_container_usearch.o
g++ -std=gnu++11 -I"/usr/share/R/include" -DNDEBUG -I.    -UDEBUG -DNDEBUG -DU_HAVE_ELF_H    -fpic -fpic  -g -O2 -fdebug-prefix-map=/build/r-base-3U0YWo/r-base-3.5.3=. -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g -c stri_container_utf16.cpp -o stri_container_utf16.o
g++ -std=gnu++11 -I"/usr/share/R/include" -DNDEBUG -I.    -UDEBUG -DNDEBUG -DU_HAVE_ELF_H    -fpic -fpic  -g -O2 -fdebug-prefix-map=/build/r-base-3U0YWo/r-base-3.5.3=. -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g -c stri_container_utf8.cpp -o stri_container_utf8.o
g++ -std=gnu++11 -I"/usr/share/R/include" -DNDEBUG -I.    -UDEBUG -DNDEBUG -DU_HAVE_ELF_H    -fpic -fpic  -g -O2 -fdebug-prefix-map=/build/r-base-3U0YWo/r-base-3.5.3=. -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g -c stri_container_utf8_indexable.cpp -o stri_container_utf8_indexable.o
g++ -std=gnu++11 -I"/usr/share/R/include" -DNDEBUG -I.    -UDEBUG -DNDEBUG -DU_HAVE_ELF_H    -fpic -fpic  -g -O2 -fdebug-prefix-map=/build/r-base-3U0YWo/r-base-3.5.3=. -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g -c stri_encoding_conversion.cpp -o stri_encoding_conversion.o
g++ -std=gnu++11 -I"/usr/share/R/include" -DNDEBUG -I.    -UDEBUG -DNDEBUG -DU_HAVE_ELF_H    -fpic -fpic  -g -O2 -fdebug-prefix-map=/build/r-base-3U0YWo/r-base-3.5.3=. -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g -c stri_encoding_detection.cpp -o stri_encoding_detection.o
g++ -std=gnu++11 -I"/usr/share/R/include" -DNDEBUG -I.    -UDEBUG -DNDEBUG -DU_HAVE_ELF_H    -fpic -fpic  -g -O2 -fdebug-prefix-map=/build/r-base-3U0YWo/r-base-3.5.3=. -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g -c stri_encoding_management.cpp -o stri_encoding_management.o
g++ -std=gnu++11 -I"/usr/share/R/include" -DNDEBUG -I.    -UDEBUG -DNDEBUG -DU_HAVE_ELF_H    -fpic -fpic  -g -O2 -fdebug-prefix-map=/build/r-base-3U0YWo/r-base-3.5.3=. -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g -c stri_escape.cpp -o stri_escape.o
g++ -std=gnu++11 -I"/usr/share/R/include" -DNDEBUG -I.    -UDEBUG -DNDEBUG -DU_HAVE_ELF_H    -fpic -fpic  -g -O2 -fdebug-prefix-map=/build/r-base-3U0YWo/r-base-3.5.3=. -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g -c stri_exception.cpp -o stri_exception.o
g++ -std=gnu++11 -I"/usr/share/R/include" -DNDEBUG -I.    -UDEBUG -DNDEBUG -DU_HAVE_ELF_H    -fpic -fpic  -g -O2 -fdebug-prefix-map=/build/r-base-3U0YWo/r-base-3.5.3=. -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g -c stri_ICU_settings.cpp -o stri_ICU_settings.o
g++ -std=gnu++11 -I"/usr/share/R/include" -DNDEBUG -I.    -UDEBUG -DNDEBUG -DU_HAVE_ELF_H    -fpic -fpic  -g -O2 -fdebug-prefix-map=/build/r-base-3U0YWo/r-base-3.5.3=. -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g -c stri_join.cpp -o stri_join.o
g++ -std=gnu++11 -I"/usr/share/R/include" -DNDEBUG -I.    -UDEBUG -DNDEBUG -DU_HAVE_ELF_H    -fpic -fpic  -g -O2 -fdebug-prefix-map=/build/r-base-3U0YWo/r-base-3.5.3=. -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g -c stri_length.cpp -o stri_length.o
g++ -std=gnu++11 -I"/usr/share/R/include" -DNDEBUG -I.    -UDEBUG -DNDEBUG -DU_HAVE_ELF_H    -fpic -fpic  -g -O2 -fdebug-prefix-map=/build/r-base-3U0YWo/r-base-3.5.3=. -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g -c stri_pad.cpp -o stri_pad.o
g++ -std=gnu++11 -I"/usr/share/R/include" -DNDEBUG -I.    -UDEBUG -DNDEBUG -DU_HAVE_ELF_H    -fpic -fpic  -g -O2 -fdebug-prefix-map=/build/r-base-3U0YWo/r-base-3.5.3=. -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g -c stri_prepare_arg.cpp -o stri_prepare_arg.o
g++ -std=gnu++11 -I"/usr/share/R/include" -DNDEBUG -I.    -UDEBUG -DNDEBUG -DU_HAVE_ELF_H    -fpic -fpic  -g -O2 -fdebug-prefix-map=/build/r-base-3U0YWo/r-base-3.5.3=. -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g -c stri_random.cpp -o stri_random.o
g++ -std=gnu++11 -I"/usr/share/R/include" -DNDEBUG -I.    -UDEBUG -DNDEBUG -DU_HAVE_ELF_H    -fpic -fpic  -g -O2 -fdebug-prefix-map=/build/r-base-3U0YWo/r-base-3.5.3=. -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g -c stri_reverse.cpp -o stri_reverse.o
g++ -std=gnu++11 -I"/usr/share/R/include" -DNDEBUG -I.    -UDEBUG -DNDEBUG -DU_HAVE_ELF_H    -fpic -fpic  -g -O2 -fdebug-prefix-map=/build/r-base-3U0YWo/r-base-3.5.3=. -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g -c stri_search_class_count.cpp -o stri_search_class_count.o
g++ -std=gnu++11 -I"/usr/share/R/include" -DNDEBUG -I.    -UDEBUG -DNDEBUG -DU_HAVE_ELF_H    -fpic -fpic  -g -O2 -fdebug-prefix-map=/build/r-base-3U0YWo/r-base-3.5.3=. -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g -c stri_search_class_detect.cpp -o stri_search_class_detect.o
g++ -std=gnu++11 -I"/usr/share/R/include" -DNDEBUG -I.    -UDEBUG -DNDEBUG -DU_HAVE_ELF_H    -fpic -fpic  -g -O2 -fdebug-prefix-map=/build/r-base-3U0YWo/r-base-3.5.3=. -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g -c stri_search_class_extract.cpp -o stri_search_class_extract.o
g++ -std=gnu++11 -I"/usr/share/R/include" -DNDEBUG -I.    -UDEBUG -DNDEBUG -DU_HAVE_ELF_H    -fpic -fpic  -g -O2 -fdebug-prefix-map=/build/r-base-3U0YWo/r-base-3.5.3=. -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g -c stri_search_class_locate.cpp -o stri_search_class_locate.o
g++ -std=gnu++11 -I"/usr/share/R/include" -DNDEBUG -I.    -UDEBUG -DNDEBUG -DU_HAVE_ELF_H    -fpic -fpic  -g -O2 -fdebug-prefix-map=/build/r-base-3U0YWo/r-base-3.5.3=. -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g -c stri_search_class_replace.cpp -o stri_search_class_replace.o
g++ -std=gnu++11 -I"/usr/share/R/include" -DNDEBUG -I.    -UDEBUG -DNDEBUG -DU_HAVE_ELF_H    -fpic -fpic  -g -O2 -fdebug-prefix-map=/build/r-base-3U0YWo/r-base-3.5.3=. -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g -c stri_search_class_split.cpp -o stri_search_class_split.o
g++ -std=gnu++11 -I"/usr/share/R/include" -DNDEBUG -I.    -UDEBUG -DNDEBUG -DU_HAVE_ELF_H    -fpic -fpic  -g -O2 -fdebug-prefix-map=/build/r-base-3U0YWo/r-base-3.5.3=. -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g -c stri_search_class_startsendswith.cpp -o stri_search_class_startsendswith.o
g++ -std=gnu++11 -I"/usr/share/R/include" -DNDEBUG -I.    -UDEBUG -DNDEBUG -DU_HAVE_ELF_H    -fpic -fpic  -g -O2 -fdebug-prefix-map=/build/r-base-3U0YWo/r-base-3.5.3=. -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g -c stri_search_class_subset.cpp -o stri_search_class_subset.o
g++ -std=gnu++11 -I"/usr/share/R/include" -DNDEBUG -I.    -UDEBUG -DNDEBUG -DU_HAVE_ELF_H    -fpic -fpic  -g -O2 -fdebug-prefix-map=/build/r-base-3U0YWo/r-base-3.5.3=. -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g -c stri_search_class_trim.cpp -o stri_search_class_trim.o
g++ -std=gnu++11 -I"/usr/share/R/include" -DNDEBUG -I.    -UDEBUG -DNDEBUG -DU_HAVE_ELF_H    -fpic -fpic  -g -O2 -fdebug-prefix-map=/build/r-base-3U0YWo/r-base-3.5.3=. -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g -c stri_search_common.cpp -o stri_search_common.o
g++ -std=gnu++11 -I"/usr/share/R/include" -DNDEBUG -I.    -UDEBUG -DNDEBUG -DU_HAVE_ELF_H    -fpic -fpic  -g -O2 -fdebug-prefix-map=/build/r-base-3U0YWo/r-base-3.5.3=. -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g -c stri_search_coll_count.cpp -o stri_search_coll_count.o
g++ -std=gnu++11 -I"/usr/share/R/include" -DNDEBUG -I.    -UDEBUG -DNDEBUG -DU_HAVE_ELF_H    -fpic -fpic  -g -O2 -fdebug-prefix-map=/build/r-base-3U0YWo/r-base-3.5.3=. -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g -c stri_search_coll_detect.cpp -o stri_search_coll_detect.o
g++ -std=gnu++11 -I"/usr/share/R/include" -DNDEBUG -I.    -UDEBUG -DNDEBUG -DU_HAVE_ELF_H    -fpic -fpic  -g -O2 -fdebug-prefix-map=/build/r-base-3U0YWo/r-base-3.5.3=. -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g -c stri_search_coll_extract.cpp -o stri_search_coll_extract.o
g++ -std=gnu++11 -I"/usr/share/R/include" -DNDEBUG -I.    -UDEBUG -DNDEBUG -DU_HAVE_ELF_H    -fpic -fpic  -g -O2 -fdebug-prefix-map=/build/r-base-3U0YWo/r-base-3.5.3=. -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g -c stri_search_coll_locate.cpp -o stri_search_coll_locate.o
g++ -std=gnu++11 -I"/usr/share/R/include" -DNDEBUG -I.    -UDEBUG -DNDEBUG -DU_HAVE_ELF_H    -fpic -fpic  -g -O2 -fdebug-prefix-map=/build/r-base-3U0YWo/r-base-3.5.3=. -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g -c stri_search_coll_replace.cpp -o stri_search_coll_replace.o
g++ -std=gnu++11 -I"/usr/share/R/include" -DNDEBUG -I.    -UDEBUG -DNDEBUG -DU_HAVE_ELF_H    -fpic -fpic  -g -O2 -fdebug-prefix-map=/build/r-base-3U0YWo/r-base-3.5.3=. -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g -c stri_search_coll_split.cpp -o stri_search_coll_split.o
g++ -std=gnu++11 -I"/usr/share/R/include" -DNDEBUG -I.    -UDEBUG -DNDEBUG -DU_HAVE_ELF_H    -fpic -fpic  -g -O2 -fdebug-prefix-map=/build/r-base-3U0YWo/r-base-3.5.3=. -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g -c stri_search_coll_startsendswith.cpp -o stri_search_coll_startsendswith.o
g++ -std=gnu++11 -I"/usr/share/R/include" -DNDEBUG -I.    -UDEBUG -DNDEBUG -DU_HAVE_ELF_H    -fpic -fpic  -g -O2 -fdebug-prefix-map=/build/r-base-3U0YWo/r-base-3.5.3=. -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g -c stri_search_coll_subset.cpp -o stri_search_coll_subset.o
g++ -std=gnu++11 -I"/usr/share/R/include" -DNDEBUG -I.    -UDEBUG -DNDEBUG -DU_HAVE_ELF_H    -fpic -fpic  -g -O2 -fdebug-prefix-map=/build/r-base-3U0YWo/r-base-3.5.3=. -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g -c stri_search_boundaries_count.cpp -o stri_search_boundaries_count.o
g++ -std=gnu++11 -I"/usr/share/R/include" -DNDEBUG -I.    -UDEBUG -DNDEBUG -DU_HAVE_ELF_H    -fpic -fpic  -g -O2 -fdebug-prefix-map=/build/r-base-3U0YWo/r-base-3.5.3=. -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g -c stri_search_boundaries_extract.cpp -o stri_search_boundaries_extract.o
g++ -std=gnu++11 -I"/usr/share/R/include" -DNDEBUG -I.    -UDEBUG -DNDEBUG -DU_HAVE_ELF_H    -fpic -fpic  -g -O2 -fdebug-prefix-map=/build/r-base-3U0YWo/r-base-3.5.3=. -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g -c stri_search_boundaries_locate.cpp -o stri_search_boundaries_locate.o
g++ -std=gnu++11 -I"/usr/share/R/include" -DNDEBUG -I.    -UDEBUG -DNDEBUG -DU_HAVE_ELF_H    -fpic -fpic  -g -O2 -fdebug-prefix-map=/build/r-base-3U0YWo/r-base-3.5.3=. -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g -c stri_search_boundaries_split.cpp -o stri_search_boundaries_split.o
g++ -std=gnu++11 -I"/usr/share/R/include" -DNDEBUG -I.    -UDEBUG -DNDEBUG -DU_HAVE_ELF_H    -fpic -fpic  -g -O2 -fdebug-prefix-map=/build/r-base-3U0YWo/r-base-3.5.3=. -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g -c stri_search_fixed_count.cpp -o stri_search_fixed_count.o
g++ -std=gnu++11 -I"/usr/share/R/include" -DNDEBUG -I.    -UDEBUG -DNDEBUG -DU_HAVE_ELF_H    -fpic -fpic  -g -O2 -fdebug-prefix-map=/build/r-base-3U0YWo/r-base-3.5.3=. -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g -c stri_search_fixed_detect.cpp -o stri_search_fixed_detect.o
g++ -std=gnu++11 -I"/usr/share/R/include" -DNDEBUG -I.    -UDEBUG -DNDEBUG -DU_HAVE_ELF_H    -fpic -fpic  -g -O2 -fdebug-prefix-map=/build/r-base-3U0YWo/r-base-3.5.3=. -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g -c stri_search_fixed_extract.cpp -o stri_search_fixed_extract.o
g++ -std=gnu++11 -I"/usr/share/R/include" -DNDEBUG -I.    -UDEBUG -DNDEBUG -DU_HAVE_ELF_H    -fpic -fpic  -g -O2 -fdebug-prefix-map=/build/r-base-3U0YWo/r-base-3.5.3=. -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g -c stri_search_fixed_locate.cpp -o stri_search_fixed_locate.o
g++ -std=gnu++11 -I"/usr/share/R/include" -DNDEBUG -I.    -UDEBUG -DNDEBUG -DU_HAVE_ELF_H    -fpic -fpic  -g -O2 -fdebug-prefix-map=/build/r-base-3U0YWo/r-base-3.5.3=. -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g -c stri_search_fixed_replace.cpp -o stri_search_fixed_replace.o
g++ -std=gnu++11 -I"/usr/share/R/include" -DNDEBUG -I.    -UDEBUG -DNDEBUG -DU_HAVE_ELF_H    -fpic -fpic  -g -O2 -fdebug-prefix-map=/build/r-base-3U0YWo/r-base-3.5.3=. -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g -c stri_search_fixed_split.cpp -o stri_search_fixed_split.o
g++ -std=gnu++11 -I"/usr/share/R/include" -DNDEBUG -I.    -UDEBUG -DNDEBUG -DU_HAVE_ELF_H    -fpic -fpic  -g -O2 -fdebug-prefix-map=/build/r-base-3U0YWo/r-base-3.5.3=. -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g -c stri_search_fixed_subset.cpp -o stri_search_fixed_subset.o
g++ -std=gnu++11 -I"/usr/share/R/include" -DNDEBUG -I.    -UDEBUG -DNDEBUG -DU_HAVE_ELF_H    -fpic -fpic  -g -O2 -fdebug-prefix-map=/build/r-base-3U0YWo/r-base-3.5.3=. -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g -c stri_search_fixed_startsendswith.cpp -o stri_search_fixed_startsendswith.o
g++ -std=gnu++11 -I"/usr/share/R/include" -DNDEBUG -I.    -UDEBUG -DNDEBUG -DU_HAVE_ELF_H    -fpic -fpic  -g -O2 -fdebug-prefix-map=/build/r-base-3U0YWo/r-base-3.5.3=. -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g -c stri_search_in.cpp -o stri_search_in.o
g++ -std=gnu++11 -I"/usr/share/R/include" -DNDEBUG -I.    -UDEBUG -DNDEBUG -DU_HAVE_ELF_H    -fpic -fpic  -g -O2 -fdebug-prefix-map=/build/r-base-3U0YWo/r-base-3.5.3=. -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g -c stri_search_other_split.cpp -o stri_search_other_split.o
g++ -std=gnu++11 -I"/usr/share/R/include" -DNDEBUG -I.    -UDEBUG -DNDEBUG -DU_HAVE_ELF_H    -fpic -fpic  -g -O2 -fdebug-prefix-map=/build/r-base-3U0YWo/r-base-3.5.3=. -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g -c stri_search_regex_count.cpp -o stri_search_regex_count.o
g++ -std=gnu++11 -I"/usr/share/R/include" -DNDEBUG -I.    -UDEBUG -DNDEBUG -DU_HAVE_ELF_H    -fpic -fpic  -g -O2 -fdebug-prefix-map=/build/r-base-3U0YWo/r-base-3.5.3=. -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g -c stri_search_regex_detect.cpp -o stri_search_regex_detect.o
g++ -std=gnu++11 -I"/usr/share/R/include" -DNDEBUG -I.    -UDEBUG -DNDEBUG -DU_HAVE_ELF_H    -fpic -fpic  -g -O2 -fdebug-prefix-map=/build/r-base-3U0YWo/r-base-3.5.3=. -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g -c stri_search_regex_extract.cpp -o stri_search_regex_extract.o
g++ -std=gnu++11 -I"/usr/share/R/include" -DNDEBUG -I.    -UDEBUG -DNDEBUG -DU_HAVE_ELF_H    -fpic -fpic  -g -O2 -fdebug-prefix-map=/build/r-base-3U0YWo/r-base-3.5.3=. -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g -c stri_search_regex_locate.cpp -o stri_search_regex_locate.o
g++ -std=gnu++11 -I"/usr/share/R/include" -DNDEBUG -I.    -UDEBUG -DNDEBUG -DU_HAVE_ELF_H    -fpic -fpic  -g -O2 -fdebug-prefix-map=/build/r-base-3U0YWo/r-base-3.5.3=. -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g -c stri_search_regex_match.cpp -o stri_search_regex_match.o
g++ -std=gnu++11 -I"/usr/share/R/include" -DNDEBUG -I.    -UDEBUG -DNDEBUG -DU_HAVE_ELF_H    -fpic -fpic  -g -O2 -fdebug-prefix-map=/build/r-base-3U0YWo/r-base-3.5.3=. -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g -c stri_search_regex_replace.cpp -o stri_search_regex_replace.o
g++ -std=gnu++11 -I"/usr/share/R/include" -DNDEBUG -I.    -UDEBUG -DNDEBUG -DU_HAVE_ELF_H    -fpic -fpic  -g -O2 -fdebug-prefix-map=/build/r-base-3U0YWo/r-base-3.5.3=. -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g -c stri_search_regex_split.cpp -o stri_search_regex_split.o
g++ -std=gnu++11 -I"/usr/share/R/include" -DNDEBUG -I.    -UDEBUG -DNDEBUG -DU_HAVE_ELF_H    -fpic -fpic  -g -O2 -fdebug-prefix-map=/build/r-base-3U0YWo/r-base-3.5.3=. -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g -c stri_search_regex_subset.cpp -o stri_search_regex_subset.o
g++ -std=gnu++11 -I"/usr/share/R/include" -DNDEBUG -I.    -UDEBUG -DNDEBUG -DU_HAVE_ELF_H    -fpic -fpic  -g -O2 -fdebug-prefix-map=/build/r-base-3U0YWo/r-base-3.5.3=. -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g -c stri_sort.cpp -o stri_sort.o
g++ -std=gnu++11 -I"/usr/share/R/include" -DNDEBUG -I.    -UDEBUG -DNDEBUG -DU_HAVE_ELF_H    -fpic -fpic  -g -O2 -fdebug-prefix-map=/build/r-base-3U0YWo/r-base-3.5.3=. -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g -c stri_stats.cpp -o stri_stats.o
g++ -std=gnu++11 -I"/usr/share/R/include" -DNDEBUG -I.    -UDEBUG -DNDEBUG -DU_HAVE_ELF_H    -fpic -fpic  -g -O2 -fdebug-prefix-map=/build/r-base-3U0YWo/r-base-3.5.3=. -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g -c stri_stringi.cpp -o stri_stringi.o
g++ -std=gnu++11 -I"/usr/share/R/include" -DNDEBUG -I.    -UDEBUG -DNDEBUG -DU_HAVE_ELF_H    -fpic -fpic  -g -O2 -fdebug-prefix-map=/build/r-base-3U0YWo/r-base-3.5.3=. -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g -c stri_sub.cpp -o stri_sub.o
g++ -std=gnu++11 -I"/usr/share/R/include" -DNDEBUG -I.    -UDEBUG -DNDEBUG -DU_HAVE_ELF_H    -fpic -fpic  -g -O2 -fdebug-prefix-map=/build/r-base-3U0YWo/r-base-3.5.3=. -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g -c stri_test.cpp -o stri_test.o
g++ -std=gnu++11 -I"/usr/share/R/include" -DNDEBUG -I.    -UDEBUG -DNDEBUG -DU_HAVE_ELF_H    -fpic -fpic  -g -O2 -fdebug-prefix-map=/build/r-base-3U0YWo/r-base-3.5.3=. -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g -c stri_time_zone.cpp -o stri_time_zone.o
g++ -std=gnu++11 -I"/usr/share/R/include" -DNDEBUG -I.    -UDEBUG -DNDEBUG -DU_HAVE_ELF_H    -fpic -fpic  -g -O2 -fdebug-prefix-map=/build/r-base-3U0YWo/r-base-3.5.3=. -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g -c stri_time_calendar.cpp -o stri_time_calendar.o
g++ -std=gnu++11 -I"/usr/share/R/include" -DNDEBUG -I.    -UDEBUG -DNDEBUG -DU_HAVE_ELF_H    -fpic -fpic  -g -O2 -fdebug-prefix-map=/build/r-base-3U0YWo/r-base-3.5.3=. -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g -c stri_time_symbols.cpp -o stri_time_symbols.o
g++ -std=gnu++11 -I"/usr/share/R/include" -DNDEBUG -I.    -UDEBUG -DNDEBUG -DU_HAVE_ELF_H    -fpic -fpic  -g -O2 -fdebug-prefix-map=/build/r-base-3U0YWo/r-base-3.5.3=. -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g -c stri_time_format.cpp -o stri_time_format.o
g++ -std=gnu++11 -I"/usr/share/R/include" -DNDEBUG -I.    -UDEBUG -DNDEBUG -DU_HAVE_ELF_H    -fpic -fpic  -g -O2 -fdebug-prefix-map=/build/r-base-3U0YWo/r-base-3.5.3=. -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g -c stri_trans_casemap.cpp -o stri_trans_casemap.o
g++ -std=gnu++11 -I"/usr/share/R/include" -DNDEBUG -I.    -UDEBUG -DNDEBUG -DU_HAVE_ELF_H    -fpic -fpic  -g -O2 -fdebug-prefix-map=/build/r-base-3U0YWo/r-base-3.5.3=. -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g -c stri_trans_other.cpp -o stri_trans_other.o
g++ -std=gnu++11 -I"/usr/share/R/include" -DNDEBUG -I.    -UDEBUG -DNDEBUG -DU_HAVE_ELF_H    -fpic -fpic  -g -O2 -fdebug-prefix-map=/build/r-base-3U0YWo/r-base-3.5.3=. -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g -c stri_trans_normalization.cpp -o stri_trans_normalization.o
g++ -std=gnu++11 -I"/usr/share/R/include" -DNDEBUG -I.    -UDEBUG -DNDEBUG -DU_HAVE_ELF_H    -fpic -fpic  -g -O2 -fdebug-prefix-map=/build/r-base-3U0YWo/r-base-3.5.3=. -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g -c stri_trans_transliterate.cpp -o stri_trans_transliterate.o
g++ -std=gnu++11 -I"/usr/share/R/include" -DNDEBUG -I.    -UDEBUG -DNDEBUG -DU_HAVE_ELF_H    -fpic -fpic  -g -O2 -fdebug-prefix-map=/build/r-base-3U0YWo/r-base-3.5.3=. -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g -c stri_ucnv.cpp -o stri_ucnv.o
g++ -std=gnu++11 -I"/usr/share/R/include" -DNDEBUG -I.    -UDEBUG -DNDEBUG -DU_HAVE_ELF_H    -fpic -fpic  -g -O2 -fdebug-prefix-map=/build/r-base-3U0YWo/r-base-3.5.3=. -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g -c stri_uloc.cpp -o stri_uloc.o
g++ -std=gnu++11 -I"/usr/share/R/include" -DNDEBUG -I.    -UDEBUG -DNDEBUG -DU_HAVE_ELF_H    -fpic -fpic  -g -O2 -fdebug-prefix-map=/build/r-base-3U0YWo/r-base-3.5.3=. -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g -c stri_utils.cpp -o stri_utils.o
g++ -std=gnu++11 -I"/usr/share/R/include" -DNDEBUG -I.    -UDEBUG -DNDEBUG -DU_HAVE_ELF_H    -fpic -fpic  -g -O2 -fdebug-prefix-map=/build/r-base-3U0YWo/r-base-3.5.3=. -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g -c stri_wrap.cpp -o stri_wrap.o
g++ -std=gnu++11 -shared -L/usr/lib/R/lib -Wl,-Bsymbolic-functions -Wl,-z,relro -o stringi.so stri_brkiter.o stri_collator.o stri_common.o stri_compare.o stri_container_base.o stri_container_bytesearch.o stri_container_listint.o stri_container_listraw.o stri_container_listutf8.o stri_container_regex.o stri_container_usearch.o stri_container_utf16.o stri_container_utf8.o stri_container_utf8_indexable.o stri_encoding_conversion.o stri_encoding_detection.o stri_encoding_management.o stri_escape.o stri_exception.o stri_ICU_settings.o stri_join.o stri_length.o stri_pad.o stri_prepare_arg.o stri_random.o stri_reverse.o stri_search_class_count.o stri_search_class_detect.o stri_search_class_extract.o stri_search_class_locate.o stri_search_class_replace.o stri_search_class_split.o stri_search_class_startsendswith.o stri_search_class_subset.o stri_search_class_trim.o stri_search_common.o stri_search_coll_count.o stri_search_coll_detect.o stri_search_coll_extract.o stri_search_coll_locate.o stri_search_coll_replace.o stri_search_coll_split.o stri_search_coll_startsendswith.o stri_search_coll_subset.o stri_search_boundaries_count.o stri_search_boundaries_extract.o stri_search_boundaries_locate.o stri_search_boundaries_split.o stri_search_fixed_count.o stri_search_fixed_detect.o stri_search_fixed_extract.o stri_search_fixed_locate.o stri_search_fixed_replace.o stri_search_fixed_split.o stri_search_fixed_subset.o stri_search_fixed_startsendswith.o stri_search_in.o stri_search_other_split.o stri_search_regex_count.o stri_search_regex_detect.o stri_search_regex_extract.o stri_search_regex_locate.o stri_search_regex_match.o stri_search_regex_replace.o stri_search_regex_split.o stri_search_regex_subset.o stri_sort.o stri_stats.o stri_stringi.o stri_sub.o stri_test.o stri_time_zone.o stri_time_calendar.o stri_time_symbols.o stri_time_format.o stri_trans_casemap.o stri_trans_other.o stri_trans_normalization.o stri_trans_transliterate.o stri_ucnv.o stri_uloc.o stri_utils.o stri_wrap.o -L/usr/lib/x86_64-linux-gnu -licui18n -licuuc -licudata -L/usr/lib/R/lib -lR
installing via 'install.libs.R' to /usr/local/lib/R/site-library/stringi
** R
** inst
** byte-compile and prepare package for lazy loading
** help
*** installing help indices
** building package indices
** testing if installed package can be loaded
* DONE (stringi)

