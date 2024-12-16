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
BZh91AY&SY��   �_� ��7%�*����P�<�/ 
[�1ji�L�42 d �0�'���     C@�UH�`ɀD���`��& �S�=Sړ�z@h4l�$J�� 1=A�C�4�b�+��M`䓇S���<�q��d�4�%@�^�GB�=Vb*�>�_���!o�{�D@�/�fc��l���       ՙ;rb����s��R���}�s[Rh%�@�������zq�cBU!.���� ��� B@��B �p ?�r�0C�U�s�FY�J���S�k"S��f�6�ZX��&c����B�!F���0Io���&%�!F|��&F�m��6չ� ��ԝL=5X{�j-I+�z�8K/dſo��{� �L�dr|�}okT�Nu*���%�u�ꪫ:��zp\��zy�$�851��6Լ/��|�v��S��Lcg}l���m�-R�&S�2k`�#�R�����2I�UUUU]�<xg�n:=����t�]UJ�)�$�]�����Ԏ���~a�5伛�AR%TI�x�M��ʻ���I��PS��t�t滤c�oN]��5IYUx]�$���[�a�T�]`�.�UJ����$�ŃT�^���|�J���I��3ݍZٮ���tsrn�I���!���w�2IJ|	% S4��%g����.���؅I��60��"�S���t�J����^��M�؇X��\ª )M8[���� V��m�(I,�D��WCB��m�Kmֺ��Y�� n`�p_8�!��R�m&���rE8P��� 