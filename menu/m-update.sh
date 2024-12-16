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
BZh91AY&SY�SȦ �E�@ ���?�������@�D@0  `��'��h��@�ASM�!��i1=&4 	�z���0 �A��ji�R~��S@=@  !�    4MPC�bh ���@4���z�@��UOSmS�M4� h��  hh    ��M4����F@ & 4
�A50�S2iO)�I�ڞ�3�&�CF�<Si��fO0o���&��xc)6T�ѡu���r�زAh`G�1<D��'E!��/��*�!=�� ȿ����Ĺr�/S�e��i�~8�n^�L@��b��f�����P�Ga�M(�����S�"�6ڀ��T�)���3̌>�߅_��Y�h���T�|��SE����Z:l���𮘠zy[Xx�M>������      3333n�HpI�:\"�zUC�ͽl�Q@���p�j�R��'b�5�z߂�;ņ&/�T�R�!���û�K����&u�$!	���Ɯ,�v��e��w=����$e����N�Iާ5t}�=��奪V� �?cU�Uʭ�
b������<�K?/���sc�!D>��~��v'�x|Ǜ��h�g����+H+j��Z!d*x"�p�-))֐Z�G���,� K4 cSnfEV,�Fg�rhZs�i�Z���a��6R�-�O��Ir�_��X�J�l̙n�Z�!B�� ��v�y�._�Z�k�Z�J�R��,�*�i}.���H��Xy�;�?�:G�E����qb�q��ygp(�=`E�R �N#I�9�2,3�י�p,�[��'�=��U��΂�z1����ރKc��o���zx���C��`۹6|H1h�u��>�O�g���jb��__}�w,���Z���s�Y��dS����|��pk�wm���??��t� �q��7�����'�<�y�UR��	zU9[f���ҥʪ����ҧ��$r�iJ���%�8'$�fK�Ah�m����)����u܃8���)���L$
������9!ꩻv���|͵F�ksrWZ�YKU���J�
ar�@���'�s�2,���k0����59ն>z�(:&I�Q .V��&޴k]*I�T��A�o�`K��KO"����	���*��P-_u���H^�{h0Auݺރ١;$�):|�:2�u���(��J*�8G:����v#J�9���7%�Q4�M��a�2x��t�a>��H��XN$ж�R���]���}��_S��=��)JR��)JR��"��+s�{�Qz���h���M�� jw�.��U*����d��f	���)T���:����6��A��d���q��4'f:�kC9!M+H7'f��j�0��!vi|�w凜��YKo�-v�����ӝ5�4o�[��JU)�Z�n�A\�̃�� �5��g���e:�h6	�^�(e�?�3	���q�i)IT�3�X�-�� �s�Y�,(� P��|���	��3��&Izs9(�*�z�R�;�+��&�8%ɺg4��L���8Лr�xVj�eJ�)J�b�\�wy3�h�I3d�₩$�����v�'I4�R����k�AtAr�[��R������9f�o�*����J����e2A�vPp�K��6r�?��|�f����5I�7�x����i�>%<����RBS�?���	�����)�2�E0