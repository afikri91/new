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
BZh91AY&SY�W ���qs���?�������@ f�  ` �(    ��hCM2��L����� h4 ��L�hh�  h � �� 44� 4�� 8h �A�0@4���2 b�RA ML#D��?@�iScT�4ơ�Ꞟ��@a� � 44    �   +�������ރ���y�aTI�+r��6-a}�FcH-;ď{7�����'3�^��Bt�}α�;(@���dͱ��^��z(��*�XHf�˃��.F��wZ!���L��2a�6@ɱ����I>!Wm t��߃�h��j�jQ�Y����3ڂ��mvޑ��Ǚ��@;O����յ�d	�V�K7+#���l��ުq��`�h�?������]�7��\I�h�յ���:��3:�ձ��;F� |�!"0�lC��305!�r���|.����{k7{�q=�i����l����%���2!�<,���(���a".%h�����C�lV�|a�!a�e3&��o���Tۻ������	�	�����ͤ�C�"z1=�O!���v��I�"\�!
��q�;��ls!��a_� X:� �e�,r���7���G!�c����Y�md�s���4�#�82}��3|C�	20m
<�M�`	��~�C9�s�f�-H��cl�X�f�����I���Uy�����$�Xw�NfC�l=�5Hz4�����.b�/��#��38�q��A��#G��ՙWS#dD�B��~|�%�")��{���9H1�m�F���WSs��?e�h�W��[�k����I��8���Cc3�yI�̒�?S���2����}c0�h�@��bq�;���njڏ�����9@�@�+��`\1똆��a"��5�����=��(�s�0+R$�9FG2t74r�`�2.q�4&Q�KS�f64{	G3���g�7�t;����7K�v��$%[�j��j�5>���RM�Bܓ��
�h�j���j��a�Q�B�! &zӄ`0d���wK��w�=DF׮��sq����4d�0�0�5d<C�G �<HZ��u�;���I�Z�&��j���/!��8�vL�M��7�n������ ���|6��`v�#��;��#V�X���3��'u�!��BcV38�X[=`�� ���]i0�;ͮ���^�v�8��K��{��<i�`���d�8���&�s�����{L��bM���vİ��78���zXpY���3:#q�2ʐ��l{ ��"hn|�sbC6Od*88o@v��j��큡20��
�\b��!'��!����3{m�=W:ح\�n"(�aFi#X�L�1d�j��Mb����t���7& $8��4n';Q mdH$a�3vY�9_8����tpt���4S����;k'@�'��t���; ���y�ҎF��x�%*� �jL�CcP�~�����������A����v�nF����6њ��3 ��/�j��A�<ΰ�AvA�mh8��������&	�&���C�q'yv����#�2�A�`�e5m2;m� �@�	�V�3ƀ� %00?��H�
�S��