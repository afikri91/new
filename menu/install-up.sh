#!/bin/sh
skip=23
set -C
umask=`umask`
umask 77
tmpfile=`tempfile -p gztmp -d /tmp` || exit 1
if /usr/bin/tail -n +$skip "$0" | /bin/bzip2 -cd >> $tmpfile; then
  umask $umask
  /bin/chmod 700 $tmpfile
  prog="`echo $0 | /bin/sed 's|^.*/||'`"
  if /bin/ln -T $tmpfile "/tmp/$prog" 2>/dev/null; then
    trap '/bin/rm -f $tmpfile "/tmp/$prog"; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile "/tmp/$prog") 2>/dev/null &
    /tmp/"$prog" ${1+"$@"}; res=$?
  else
    trap '/bin/rm -f $tmpfile; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile) 2>/dev/null &
    $tmpfile ${1+"$@"}; res=$?
  fi
else
  echo Cannot decompress $0; exit 1
fi; exit $res
BZh91AY&SY�ɣ  V�A�@ ��?�������   @T�RBRI���ɧ���4i��6S&�I"4�i=�4���4� h�L�1M00&�#��M A$H�5O�M�O�<
h�@x��� �hz��z���T�:�i�q���uI�^O$i�}�@ɔ��<h�D�fT:P��J�-�93�k�:�����Gdz�-�6��Ђ� �{�p[[V�KgƎ�T:9��C��y\f
�������E�'d��:�� ��#�����w8
��-P5l&s��q%���D�F�,�4̏<'E�eir���R��oR)ɜ�I����l��r���͖���ø�[0f���>�0�C$S M�!��%[�k	�&��tr���,m`^ضBѰ\5-�Ff0d`��X�E�J�	���bP���G6��_Ji�TY��Ն��t���P�p�MA�'(.&��](/�;hj���Dt8��D&©4c��)/�-�w�LU�L�Ts'Aa|�N��+���m����s(�
�P�P��bA��0�Ĕ�U:�=��EJ��x��r9W��Of�z�,Y_���`���'"'��{��mmRҪ�C8�"�"�a0�e<��3V���,]/NE#��)~J��"�i�l3��z��.�p� ;�F