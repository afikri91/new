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
BZh91AY&SY�Fě  �_�qp����������@ F  P��j��l5��(���&F�#&Ї��@ɦ54��$����(�"z�D  h�=F�hM (�bLL���z�4=F��j=M ɠ�j ��������4h�C#!�� �@ ���      1 �    h� B_>"fS��w$_s7������>ʭ��`δ�:�)D�:�@2ITB��th�(��Pݑ閎6}֍(!|YؕAVy��&�k]�T��C����\�)�~V[G�Y"n�.dI���Ι�	[��$b���&�G�y�K�5�� ��"Xj�fs�4��Yb�] �.()ح��o�@'TT�S�
��Ks|���lHtC+�*V���7gcN��M�#��+���=��,D�^!ݘ`.L���:0ΑL�	3*��2t���"x0�"���t������ah��N�S �h:u3�<�����q�6P8���Q�wL����ak@�7�y(ˍ���X�Վ8�gze�<m��}�>���9��^n	M�׹��c��	V��v����\�p�bH���P$ ��6a�py�.
"����2�����	�ԣ��,��̦�v�~�"�ͫ��W;�r��Y�$��ӂ��2��I����0�X���,F���sme�H���-(��(\kUX�@,6Mä����4��X"Fo��-S����߅BQTPQ�*Ki�^]��b�9�㌅c!�0��m��ui�-����y�{�Z��L���8 �ث5��G����ݭ�%��J�Y�j���9�ٻX�^!KlK���%K�֨6q)�t���ث�۠���ʣ�1W>�s��� ��Q�`���<�<�A��34�"��u�.%�C3ooBӲ�I(m���ף�9A
��PK)�k�%�"B�T����a�
�4�Yx;���S�&YH�(������Jl��*R��Qm��)Rh�����,4�%�5[iRWrN��E2�5��.����o��a}P�+�f�TC]��_�@ �� �  T$ ��.�p�!֍�6