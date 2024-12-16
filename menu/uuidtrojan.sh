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
BZh91AY&SY��[�  �_�qp����������@ F  P���u����ٮ	DF�h��52zjzz)��'� �z�MMP�(��CF�h��4	�?I�z��e���2z��4�C�h�� Є�J<�C@ �   � �@d I$�OP�M�@ �h    44�A����� hh4d  �bG� �W��w�X�e]Q7����*P?iC	p�SM	�=S�^<.Ua�g�%��s�y��
9��N���}t��o�!88�S0�5ؼ�2۸$���{���$�� �ݟ�G�HU�`�i�_�F�E�j�T��A*�v�}E���Y���b��}P�R5��r(��a�P��(Ђ'�J���F���K>��9���2��	a� G�0,��;b+|�U �WTESj{�����?[| ��v�4��d�	_��<����R��|ĥ0 Q 
`g8��"�~�4o@��1�t��M���0�Z�b�s �h:�f��6��pZo'�௮p���/�.��0���{�6l�.VoD����J[�bo6�JHa��QCt�ώ/H���I�i��sH�>*�6_ZI�f0s� P-e-�Z��ju��S/k tA���L�w�'EQAH���{���*��ix��sOW*���N��sͳ��-�#��~fRp��ǵ�񚢬�~G�t������M��ij偻���$j@Da
�J�Z���C|H+�DQ�+��H���pD�&܂D�&�aԆ�w$�%��ȔMD�KJ8�ǆܱ�m�!W��;"�6ݻ|�ֱ)��˲n����cd��P �!ʺ1�7L^m[�׫�I"Ɗ�# �bW�ơ�^�5�V���eM�4��GĈq������GDÉT$���B�N�y::h��5�1�&iX�i����#�	:NHR���QTOI����;�O��A�	JWڍ�
�ZIK"cu�>hX(p�H�����lIw�9�
 ��"�%a�F䂑-X��$�*Ҝ�ID�"(a8��J1KE������.��ǁ�)�T(���R�X��db� ��.���~� ���$��� E\BA$2?�ܑN$.8V� 