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
BZh91AY&SYЁ�N  ���g�� ����������@F�  P;ջnٹ��P�M&P��F�ɓChF�h=M����� � ��mS��?P����     � J�hi���F� =F���  4���� �2 4d�� "�4)��!�SЦ� �44hd 4�i=!���5QC}���o���R�9�T\(<�1�̶�W��B2e~:�)i�oG����6��UWA*�c��J�WZY\��Rh`Fw�9���1��`����g%%�		5������jߞv� 1�A��t[�C�h�:�|2>C��o�Q��/��bKe'd1����Ę]Z�����l!��c��U0k�A��B��4t]��^hu�pJ$!�`l���B�@�
R��,OK�}?i?k;�!���Cg��Q10����hm)F@6tV]�ñ��Q�a�!PK!��:Ŗv����p�8�%:y��u)�
�!s�p4���a\�r]d��f�H����TD`EWi�0�N6�b&90S�*RU��Ok�Np�&mQ��Ln�|�^P�yH�QW`p�rU�G��y��kb4P�l\A�$N�)�$���=b
f KHZ�þ	a(�!eLP���HU��f�r8�8T:���E4����tʎx�-���f�(�����6�=B�r�#Z;�F �[Ed���Q�)vO$o�Һ�����RC.�!�[]A`f<DN�(X�<�*R�eug�V ��K�Db�qM�p�4��p}L�H�r `=����
�!��:9&/B�ɕF�����C�=�兦	dm��ϣ\����%�r�_x��Ј�8��_6�8�Ѫˎ�,߻a�Crg-��
��ο&}h�%Xd�$|G8�ʇ�X@�V_�뫪5Ƙ�=٫WbuC+�ĩ��CA9�1L�)�(!���8���^��i)�����À7�y�~drZs��p?Viu���oz��4��E�����]*:z�
��tȊ2�M���1���v�Vd�F2�����m���Z�A�����B)Fj	�Y+��q!΁E�阕ժ�Ie�h0�.�`P�D�=��6���7���yMU�Yt�����B9� � � L���f����2�� x�3�rE8P�Ё�N