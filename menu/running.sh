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
BZh91AY&SY�$�D ����� ����������@�g�� 0  @ `ݥ�[������)f��Ҫ���:}k�/v��A@X�����5�@x��'�O*��Ș�)�����O&��6���h��S�z��@ �4&�1'��4��F�z� =@ i� MC@ �2��)���(��Oi5=G��2A�=<��b ��&�4 44i�I�M��z�Ѣ��4i��'�������4 QB&�F��&LC�������M  4�  d(��`@d2��������y#M<H44���  �@4�2��i@D�N�ͭMWK�]%��G��'&"=C���lQ�=&���1i���7����]�'��HD��Kt�����W������NkR���	�b��#�Lp�Y�v{O����L1zUAj�lj��s5�8`���0��&e��h�c�}�A�Q8�z�YX�%ט���u�+4S�>O�\��,h1��j����z�1� �b@A{���P ���ka@lۯcg����0��@��߆kv���P�~�`��V  <�4<�@�JpH"LL9]-@hlU, In���o	 O��k����k>�:h�=]�&�� }�C��8[A~��5a3�`UD�4��ܒ"���{O_ר}�oA� ���~iE)�PX���4�.�a�J
��>
!�n0��b��`�a�"$��qq-��n�Ƹ"���BP�1K�*���ga�I����s����_��ROs�v�����;��O������n\���IUd.<�׎��^��"0f�tAx�&�kRd�^ve���6& ����U�S����I�&��h�]����5�1�A#~E�)�V(�Âx�e��$�]��*�e���	H�7+M�Ҩ������0(�F�m�ޕ~�^�����ª9bY?G^��5 ���>A`�"��������ۿ��d�7� \k�w�P4(�A�sW���x��t4�K%!N:�s��6M~A�v�-�q�������9+[h�>w�Ñ�sE�U��YRmL!�9PI���w0���U+����(�����.ؿŰ}x� I
A�ؠg�%��Yj�Ho����P�Q���]9@#&�
Q�*@�% �Fk
%k+V��!����b��``OQi�d�RR�4Q"���,��J�N��:>��`g��?���9�5�Z��NW�;}l����_hv�U���<N���!��!���*���n�Z��{�訯���c�z@���c��H?�0��6���rr���2�cl��I!g��:��W �Ao����37��\U*� 3'&&�0gdS!�S#!���6����"���]�S8L ���1�<> `�f��>�*'I �C��,��#��y=PN�$E�W�]Qd
`1R�۲Q�T�Q��b�������m�/��`�>d���O6}��]�*����w<+e��M���s'2�wJ��_Us"-B� i�����r���� �r�Ia�k���2���#�T@*4�\%#����g��Q.���A0Gw0"�`
�"����q��Q���w��%g�3e�U�H���9�FURcT\" �yw#˄�mn�ݨe�Uj��+��C����:��Bv����1kصN�Uњm5�8ξ#AVe��K^���!s�y�JZ�;�q�z��M���`���V�����h���2�/�TL[��p���P��_��Dx(T��f����z�@�.��T@2��u�V_-s�OQqo�J����f�C9�1�Ô�J A���+/��s�(G��]���<SKCȁ�m�K~�ni��A�<�7���5���X)�}{jm�YL���{8tl��f᧺P8�*ٹ�;6mvǞWR��p5��Ê���ח4�;)2�5]D
��ZY��oF���Kw<JX�1�*ӕ�׸��4az���&������'$���|�У�J�a;Xf�6C�c�"4�� �tfc,���A���m�49�4pv�5%?�u�ȗJn�����;-z��Ra��)yn�/�
F�J7N�	ZqE��ÕyCM��L��l41yz�.�4�T���i�[�d9�w�n��}).�i���� ����e�����&dLFpR�9u�b�RQ����(���NL6�T�vZMB8���~n-�Hڥ�
ZCF�#�}��R,a��g9�A�u�@1e�`��h������?ԫ�\�t+� TM����)��K���	WI�8raH�MJ�f�����JXnKe�ШeD�AfF�x�
���޶ɔ�p��n#-LӞDFi�w���� ��6��Ƣ�W�q5�f�E�6���܆^���m m�sX��W�ڥ�����_	%՞vTӫa[��i���{��}N�hX�.��g4rL���j����t�u��|��+c�	��ԇ�t�>Muų+>�D�k�y�i��Hn/�W������]���ϟW�@�@Á���Ȣn(���
�Jn����ļ��t[%��uYd���/!�3�͐�O���^���+�w���%�R(�Z(�'c�=e��	ZB����KۃS�%/D�"F/4�}��E��b?QB���K�;�op�`��� FD�j���SI3it	m�/��b,)g�m�Y�S-H���|������]2��d�cb�����?���!�,O��m286��AI��Z��R,�G?޸;ޏ,�1��m9.ZM���x<�k������s�}�J�����L�2Sg�ũ�"\|KG&��9� �L���1`�7a����:����r�:K��8PQ4�:��<�4'ڔ�@k�m�o.e�v��N\s�QC�x�x�fK�j;��.�@�)]��;=ì��)��;(j��^���__Iyҳ�r�͇K&��j�M�m��4���K��AKjC\J/6�h�� c��`�n�!�(W#26�%�-=&�wZ=c�ћ�4�I��"$�4���i�j�TQa�#�%�aߏV�>�ɛfv��Ds{�Ծ��V��lr{AÃR�be�.��5 
�M��k�E�5�r'�Z�/Ո�Y1k���Zf�.�ٝ�C�tX5���¶Sb��~�-+2HB��s�2��D	
fKQ*�R���=��ѡ�Xw���Mz	�pҢ$dKS��g0A,�}�D����c�b��o�E־T��XVj����k���	2���@i���ie�hB�==<
�ROI�������"A�nSc��u�+�⻯|)�:�g8��ց��D>�E�4�'!�TC��aɉz�%{�m����]b�fu
.V�%��1�k�5�N�e9!`S���I͒ep�
��J�E��
1;��2oY���n`�w�٬��bk���y�0ؿp:AN:�����i�Z�?�H}&K��OL3Vu�Б��D���-����������T��Y ����0��`=�Ɗc���|n��e�Z�Z6��� �0��`��׼�����}�p���9�����m�)�Q�f!Hj ˿��I$�/JY�]q�_g����hJ�)v�7�wRsf��3m�-����)r����(������-T(HHW��B��e���6��j�[~-a��WЀte���� J&oAq.�P��/$�|�	H��a��R�/�@}$mQ��ji�۝��4�K5�3�E3����J&�[�H�����;���EJ[���,��v��ٛV���,79����~�;��:5�U���&.A��~����&^�����@�/`�}>!ql Ma9���&an�24uA[[3�f�d��ce�M���>3IP5�{�O�A�π)p鴻f�,Jh�q�$���g�p�&�G:Ҕ/��}~�H �$P%FD��7|b�p�����HR
�v���4e�35߉�h�Q��͑Z�Ӑ)�)Q5E]XQދ"����5X$��u�XY!d�E�FaAح!D�(L�R.o�]��BB���