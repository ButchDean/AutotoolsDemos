AC_PREREQ([2.69])
AC_INIT([detectplartform], [1.0])

LT_PREREQ([2.4.6])
LT_INIT([dlopen])
AC_CONFIG_SRCDIR([src/detectplatform.c])
AC_CONFIG_HEADERS([config.h])

AC_CONFIG_MACRO_DIRS([m4])

AC_PROG_CC
AC_PROG_INSTALL

AC_CHECK_HEADERS([stdlib.h])

AC_CONFIG_FILES([
                src/Makefile
                Makefile
                ])

AC_INCLUDES_DEFAULT

AM_INIT_AUTOMAKE([foreign -Wall -Werror subdir-objects])

AC_CANONICAL_HOST

AC_MSG_CHECKING([for kernel type ($host_os)])
case $host_os in
  *aix*)
    AC_DEFINE([KERNEL_AIX], [1], [True if program is to be compiled for a AIX kernel])
    ac_system="AIX"
    AC_MSG_NOTICE([
      -----------------------------
      AIX kernel.
      -----------------------------
    ])
    ;;
  *darwin*)
    AC_DEFINE([KERNEL_DARWIN], [1], [True if program is to be compiled for a Darwin kernel])
    ac_system="Darwin"
    AC_MSG_NOTICE([
      -----------------------------
      Darwin kernel.
      -----------------------------
    ])    
    ;;
  *freebsd*)
    AC_DEFINE([KERNEL_FREEBSD], [1], [True if program is to be compiled for a FreeBSD kernel])
    ac_system="FreeBSD"
    AC_MSG_NOTICE([
      -----------------------------
      FreeBSD kernel.
      -----------------------------
    ])        
    ;;
  *linux*)
    AC_DEFINE([KERNEL_LINUX], [1], [True if program is to be compiled for a Linux kernel])
    ac_system="Linux"
    AC_MSG_NOTICE([
      -----------------------------
      Linux kernel.
      -----------------------------
    ])    
    ;;
  *netbsd*)
    AC_DEFINE([KERNEL_NETBSD], [1], [True if program is to be compiled for a NetBSD kernel])
    ac_system="NetBSD"
    AC_MSG_NOTICE([
      -----------------------------
      NetBSD kernel.
      -----------------------------
    ])        
    ;;
  *openbsd*)
    AC_DEFINE([KERNEL_OPENBSD], [1], [True if program is to be compiled for an OpenBSD kernel])
    ac_system="OpenBSD"
    AC_MSG_NOTICE([
      -----------------------------
      OpenBSD kernel.
      -----------------------------
    ])        
    ;;
  *solaris*)
    AC_DEFINE([KERNEL_SOLARIS], [1], [True if program is to be compiled for a Solaris kernel])
    ac_system="Solaris"
    AC_MSG_NOTICE([
      -----------------------------
      Solaris kernel.
      -----------------------------
    ])        
    ;;
  *mingw32*)
    AC_DEFINE([KERNEL_WIN32], [1], [True if program is to be compiled for a Windows kernel])
    ac_system="Windows"
    ;;
  *)
    ac_system="unknown"
    AC_MSG_WARN([
      -----------------------------
      Kernel not recognized.
      -----------------------------
    ])        
    ;;
esac
AC_MSG_RESULT([$ac_system])

AC_OUTPUT