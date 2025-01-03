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
BZh91AY&SY��� ���m}����������PF@�  `���U
�"R  �P P�Bh$��=&�*~�Q�=OD�'�O�O�Q�ڌP<��OA�'���  h  ���    F@   @ F�@    22  �8    242    �� A�  � ���    �� 2���1@��54�I��A������zC��6PJI|�?�q��v�J�!9cOA-�EÎL	=�t�[�����d�����
�FDU�n=�A�( -3�E���n��$Yk��FP}��}�.U
µ 0���k�땢���H�f�C/�
tTP5a��~�e5R�8-���i@�7�BE�>�G�y)��#o��I��� M��	#(�|ȁ�8@��"S�BJ�dhG�E�g�J8�z"�M,T'�l�]N*��M�W�W�x����<�h|��!%*Z2�I.��$�0�y� �����o����`�ka"���tn++�(�*{7�IBL�SVͻ��/s$����-7��h�#7��f��"nq�x��/�>>jC,P�e��w]����,�w�K ��u
E�-����+<�Y�@TS�W(��e�b���<��w{�;����arì��Ӏw1��K+M"�t�]&&~Bߋ�g��W��v|�����WR��̯�A��i��Y��VB(;��\/DМq�>����Ï�<��n��-��p(T�b&��$h����I^��T�y;�����V���v�	�1������K�u��>�u�P%�`�z!$���a1� bG	"n@�l2C&F k�ۚ�|�>p�ݨ�����0��������r9sk�㥸�	���A]�����{R[����%^��ؾd׉��k߉�s�t]]���a(Ƙ�Zy~�/����K'�)�c����ہ�)���f�1ZOG�L��a}��9����Ͳ�Iuh�6H$����ZhD��y!v+-EJ?�#�E:��2p|���9��q(n'�3Z���xMV�m�tP&�m����z���h���ogd��ZY�S�?;�4d�:T�m��zs�1	yY�V��ʃ���ޅB�ڒ��� j�1|P�A'(����������`�(:�)7V(K�1� 4���Pm�w��U���˚,*�ZW0ڜ�J
�����`EwH�"�D�?")�I�U���H���x+Ay�>B�X���yBWw#��a�� iG��(�*p��	��z�w�W�����^�=H��}���B_��UJJRI��`:�3,,�0������B����lN�('"��x�/8�|"�#d-�X$���UI'�.Lf6��,���K�-W* �'��v2?�y���Xx��Tn3��y���T�%B��B�
l�A!yX�C4���	�����H`��C�$2��N��t�Wd*�S��@�@�C�I�bg� �j���e�]�r�� ���L��P9�7��h�É�(�e!�-f0�����g��q����-s�Yղ��Z7-n�(a���5eH XB�����N�QA��p�\&��wI�����zF#\��I���}�e:N�o�:����SL�e�:G ��X!^һ�.lCD~��U�0�H����G�R����(��([Nc6=bs|�Ł����_@C�؀�d��r���*�Eg4pU��.��J*�H)ls<bDA�%_�ȝ��h������f�i<G�9�X[	v�B8��=
�B*!�����(�%r��_��H���#&�E�f�p&�M)����Q^��`Je8�&m�v���!Rz��陭���Je�Զ�W!-�Q�B�
6�BKc�T
�l%I�Z��:b�RE*��)��-*(�`��.���A���iLhC���T�������0ZQH�z�#������l
g2�-��Z*��F14l)�L�iH��
CM&A�^��"/m��m�)V^��pH�H+^�yo0r��m��IXH9yQr9j�*� �i�S;��X�;�\�I�"Vs��
�Qɤa�)ٱ"@${�(}"�9�ڃZIs�Mי#�g���5�iW�3�jG!&h�K��;@m�����\4!C!&����>�ۙ�� ��,���-�N�'w���<�|f&�˯h4k�Ζ�Ӭ�q' �D���U����A�ķDc@�4�d������i�qK5*H)�s�B3�(i3���b�JVn9�B�	�b��kYq��a(��L��%�Ö�B�Rn��c�Α$+�`R]� Z;9�����~��O"Z�D��W�9+BW,��r�H�`���fL�LB���HLm��1��DJ`H�6hL�%A��I��`2������v�9���_dT)� �e�!P���*�/������}��A���J��B<b���J�Z/W$2��r*��U�8_%��Wy��Ǹ��l ����s�G��L����ba5����}ϟk�t��E�tw���\ ��p�X5�\�%��xk*B��i��NILB@�J:P�Fɢ��Pn4��X�a�^*0ʈ&`Z�BfY%B�V	.�e�r
5����,L!p��R���Q�5��TO��CJ11ƕ�IdAt	s^pE�iKV0�y��BA�J�ֳ5�SM�H����*)��%2�	��%D���$Vk/�$5#��	0m��hD�P*&�\��3���e��

(��������ڋ�
�A�1�Li�$�0�`^��JF���HcE���ֈ!T`�uSH���r
�A�*�i��z�Iu,C���I08�JU��hq��FF��U6���չ	Rob]c��'����r/<����x+{x� �+�Ǐ]��XZ�.���A-�Њϰ��(:�f��}"#i�BL�r+��ZOJ,0�P�\hT�����!p��)�/�~�y�$4 lm�� �~��uo��`G�@��$���&؉Q��PP�I�c�A�A� 0����H�
?1�