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
BZh91AY&SYM;   ���!����?�������@ f�    P9�'�8�f�kpȣM$��=��A�f�驦�=@i�zG�m@��OQ�  &C%O�
4d�4@ �   �@ $H�	�ɓA��6�� �z�F��C����h � ��h  � ��Q&����F�   � ��d��,�����dy��<�C�J���6�&Ŵ՘�"��5�A�$��?�
$�z�`o4��ڻ~ǜ�0���a��ڃi&~$��R��</p�T3"���4*�F2�H��˗��b�b���H>h}�@)T"$���J7���䰙6�V�*s��:��+!ʹ���c����4G�&It�5�,)����L�U
1�I��,jq�k��3���¬��)�0r�<z�t_D�<��Ddb�_�[�D�&����c�0���@ ���8,\-���M	Ý7��Ҿ�BRHRN�v]��2�πe1���0�.l�F��!�c�䴄G �e��4�щH�lg�Jm�,��AQ��f,��aD�Ua(�㋪��������b�we�]����Ȝ�����f��*��7W~�7�*	����l� "�$2�2��g�j�t�`L,BG��u����j;kQ$Q&=��R�	�`�֏��A%d��c*I�$��͒��_/%(�T�;F�r���^��Iv �ZE�u�X������R�����ʹ�cJ+-h�X7���7�����^��m=��E�J��CD$�Gf��,]�ї\�)l
w$e$Ȩ*�ɏt;W��a�,�	 �cD��U7_rD����WH!�.<���,f���(�* ����NW,l=�\D)#I�`$R:��u�o-b1�2PM��y�� ����P
���VݡQ���%wS�W��&��H��E.���g_]E��Lџ;�qK�ZZz�7��6�:�C�֔L���I7�}U:��K�V����%*D�a�3<�D�p��i&h�Ļ����%�yn$¨t��7�G�j	��H^�ԲZ3��P ^]_�4���ހz�q~8�Id˃aP��R����X1�C���@hB�c~AJ���4L*�1��CE��Rӱ�4p2c��$	#*�1f}�(Z��L�Kx@!1$!0_ķϺԚ�R"!
0P BjE��#�����)�h�� 