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
BZh91AY&SY���� ��  ����������p�F��  `!�QN���&�����s kfmwiݝ)!�4T�T   �Z ѱ��P ��d�T �
�J�* �=F���4z���<��P� �  4   MM)�z��4d0�CCL�1�4d��444��               	
$j d4�  �@@@h    �B`FS�Oi��ʞ���1�z�I���=OS1M<Q���z�RDh �#B`&����dLe=L2OP�mA�� ������� 1��R�a�(FEHH� ���8���F2���O�kJy�ȵ \�ZT0���}�F�W(l��<������sf���Ӓp�j���Y�k$E��K�����Xb7��@a�A@����rY�}D���F�I���$�L��#����O֡��3E�:����扛iu��&�cgw��~��}���SN�w���IL0MEK��r�P ��3b�%'��b]Kwq�M�����˄���ޘ;�Z9�履�®ܪv��}My����i&��R�@�X.6K�DXU�"�`6$�/X��@�-�O%m$���%����*�X�jp��z�ܚt��|��2]���Zn���=[�+�n��fXٹ1WL��QfYs�:��ᶶn�.�����N���g��V���;tR�@ӪO-W��EHl�RǱ��NՆ�Hb�ňI0?������^��'�R'ڧ�\ܔ���`г'���<�cR)�y	#�kM���L�0�Z#�% ��:��އE��X�yҧ�yeک�^�������[�SleP�����5�V�#�>��_Cu\����HE�)US��D����L1��j�&iu�"Y(�Ov6	tlR#6��5(���O�&)�&�H��D�7�ǾGwÊ��JR)Ut��^�4����%(U+�:.�O�m�Z~�y*����H�&��0���p�wi�a����wX����P�0&��O[N��RU$�*�4��$�*R�Yf�����؟:z�?���f<��<i��G��O9t�kO��=��>���9��3�W�E PP(8���kC(�L{ �~��������7,��?B�hQ �^I�9AG4u�N����_B}n�ݲvNR�ȃ*�,K
R��!F�L�,.Bn\N;�[bO��Y�=�4b��-k�jN�9֋�>%��(��2��_�So�\�|��L3��z��ߙc�'.�Z�����<�(�����<�v
l��9M9�]��5�w�m+Ӊe��h��ث���	BD8�u��5�4�(6�:� �$*9(��E�c�I��:��jS�b�<���4�b��_[�ɹژ~�ր:( ��!VmA��O��I���K[�nC�l��A�!Wo�.d�}��«���^�|�{�>��M��3p���F�����F�e��/��Etk��%0��~�'�c���l�G$f�b�.����M.	,(�1�T]��+�R��4���s.b�_y/�����%$���R����{��n]�9��<�ut�Le�nz��&.�x�r�5��w-M۪�I����6�����p�>�^��]�4���ͭ�؟�0N�9l�����ָhu�ɹ2t����r{|]:�c�kU'�0toCr�q��{{�Y!�"�k���{�C�~�ԛ������ɂp�S+)~����g3�EX��ܣ��E�g�Cm3S��N�Ҙ_+iDN�w͵�J�O���LWQ6��=�K��>g�E�*9�gg{6n�囓��t��O��ү[r�����>S�ݸp�i��-
��F2IAXg�Vݒ'��|�,0ˣ A�����0�h�c4��0�/)`�C�2������!C4*���>?�v�[|9���$:��L`�����U-o����/�O+�.}�i��0Y�c���"�n���� �ìv���B�G��q`�p��^����MJ(�G%)�=�Q.�R��1Qw���)aI-D�	�JlII<ROʓ.�5IB���y�]	�Bc�G�}�P��)��?0��#2Yf,��d���-��z
t��hD��-$���bf�RT�I�m�D�@~���A@�V�<�B���*h`	Z&n�_��J��Һ2�`T�Pa۔(rGƯ'Pj(dRXr�ZuX�����H���?�����S��Y�������%}������[]J��qGb�Җؾ ���E��@���G1�E���T�� �$�w����h�Òr��Z�F�h �
Y�pA��)0? �mg���#$�I"�𝋢YK,����d�,$�XX-eB��h=kj�	�����!���)>��O�"����.�`,IC����o��DT@�1��.9������ʻ�ZH,��m�ee��� ���YI�)^X�T����myװ�'��k8(��������?��FrG��.(T� ���=�b>Vz�n�v��D��8,�8�)P������Z(ȿBĐh�⊒|����O�`��%��֘�{���$V��͋�WƱ`�ۊ�D5��}��a�i�2�[W�}"��F#�Л��XUUTU(��Կo�Zޤ��cﱅؿy&+-&/{O��_���S�2	�iWL�C�d5n��ȋ���K�~�s�:#"%۔Z��!�"Eb���E�S�/7�lꑉ�A�e�D&F�b�Φ�Φ��kl&�����c%;�]6��t���R�"���j� p8�I��WU}��ѓ�ab�Jc��&p���읔��"�m�I����v��R���}Hq���r�8��J������v���!zc��|�NlS�e�%$�T�?�z�l�xߓ~2a�lpk�-�N�VևғR�k�즑�/�y��&�gΓ&�����\��laLà{F^�YxYoh�=%��e�������{��j��?��k9�^�x�D��AȈe�M���]�E��b/��_S����?�s(�M���t�``�<������d�"�(���gky�&��V#8�k�	����=r����%.�N���R~'�v���l�x0`����=MƲ�# |<Na�E��eJ�`� 	*�ӾPS0�T�=�=�m��x�!B��������ş
��tu�?:֖�e���2�����ι�nЩw.c���Q���c���P��$�T�?r���K�Q�I��T����F*QIH��;�������X=���<^Q�Uh����奋r��:U�6�椒}<0=;�����$=����8�E�����=f0bB�Z"��D��"In������돒��ǋ���	Ȝ��4Y���]��׍x񿦎o5�],�<�{[�n�|���f�y6���,�LSz�5y�8O$��9<�[*��')�Y!�9���3NZRF�F!�����:�&.~_ƚ$����Zo�۴T����кy�ʪK\Ú4���T:%6��12SL�ާ���s�R��J�$i%粽�[�j{O5���M	k-ɽ�bF:Ć�ὂ��BC����S��JR������qM�
����dߓ�붱����Ex�T�&��I&��:�v˰+�00���(�L�0&��Hfd�rr[��a��N������� ���m{��C�\�&I�R�S����*yik���#�gI���L��$�l[���I6(RH�m,�v�շJ�~��6��~�(�����"��>�=$�X�Y\˭⺜2�%�9���d���w��	©
�`ZM	�{K�]XR��FqǮԕ)6g؝��Ν���ȳ$�qtȤ<wG>)|Ud�&�ܳ1--�e�X��X"H٬��,����Y��2R��)he[Ȓ}u�CED�M�O�[Į�^O���OؽŨy�i��PD�� �6�+��qi����P�>�Hp�%l��]�i'�'T�
B|�X��b$�|GT�iܺy�JL�,�<�؎4x�lM�`����(�8���(�Cm�0a�D~H���?^���|9��C��_��=h���R�D@�@~A�I��$�\F����Z=(w�D��� ��!?K.��;�t>���#�	��w)L��tP�M��﹤��>��G7�o��G��S��ȏD��&ð�"��9�H4JH��6�i6)E1����)��Y�-)�z���cG4�آA�ک阆? ��"�\)����n e/���9�a�UB�3a[���l�.$H)q^
]EMb ����$,$�c��"�j�%���55ƃ�tĞ��?�ސ�j$�F5+ZS�g�CA�c{S	NRn߾���"�9��.5]6���J�����|�w��h�NH�����I��I���zD�JsYg�:F�C5!ܝ���}0c��:�281h�
4 (,=�v3ŢAi/'ҙ����*X�=~TRc歷�L�Xf�MUbYM^��I��(nD��L�#G8I0hwm�|q�Q �A��m���~hyT��#҃b�rE���I%R���@�PD"'A���uJ8B$B��0���BT�y�'v]�AI��ӥ�]3l�����l�N73�t�6')d�8/$;��0͔�8t�6Qq1��ԒU%T)QT<���R�j���ZLȫ69'PǦ�TE	�񥪕ʹ��*�T¤%*H��'6'ZOT�y��`8"f�r���9 �m��#�HR��7�.����@eV���N�����{����;��6���#�j�B]n�/$�D�l�c���.�7I��)���*U%Mi]Jz
9�9��(��G�y5��0���뤏@��8I$�4��/��GP0?!B�>5X��]��ӟv7��1��pyboH�I���l��&�\r�ҩ]�3���$�:��?��,P��򽼢dJ>�*'
{-�,���Rw�MZ�j���s|T�}$pp���jV�bc%:�d]m�'�|D��L{?Y*d�����\qb{�Q'$�c9����
,�����k�b��J�h0d���5D�Ժ^H���5I�J��#�L�]&	<raq�Ǌ�T��<�)��c4�d�HM�R&3��rY�u�+��ݵh��U�h�c���pv$�ɨ�AAL�a��]T(�������=}�9GP��)]�t��Ym����^:��X�z���OBb��������۱�D�KG2���P^n�Z�hb�� �`��Q�Gi��,��ZT����b2��AL*�iEaye���RRKUհl�c"����(�I&o�&�D��M'�dƘ�?�edhE:�M������RMb��U0RK�:�1��E�!��U
�4�'F�)����s8wE��@�
������JQ��ē����F��E����LÙ�����RI���e��3TC�2.��<@����3AN�xX:�@p��?P�STF�"��j�#��2�K�Y^IJ���W�.h���;�r��C�O�4I�y'2G�tO>����:�$dxRf17�Ͳb�ޜɲx*�ƈg� ���f�-�,
�F.*�.�p��j��UR�*(Z"m��:��u��t��@�?	@�+GGH9A�ǶQ��gD�
�������	ܝc>f�в9㞪�'lЖ�O��NrL�i�,TQ)*
o��
�$���r9��$�ey���薻ڼ�a��6�cdXrI�KI�C��ׄ�,���hX��P�]�s%6Rb�ӂ��#�a|gZ{N�CIjs���;��N��eϙ)
(RRIT6�*�H�`	��F�d,�|	�d��G($,��%<�%��H�K�ZM��ߏ�����N��5�h�Y˪�6�Y���_�Y�_�0���Y**gh1И$в��FU��5I|Rɒ���H���Ȑ��)ED�d�|����q�hIqo1P��G%��!#0��uF�Ĝ	�CT�ن�oD�Ռ�@�`Pl:�@��ͼ�s�D���W:u�7��O��&��lMC����l'�ǖ�E�Q6NdO{��F���\5��2loޠ�"%�"����A5F��S�>��1S`�4D����h؜�$�P�2N�0�fVŇ��h���	)�l}OB^!1%�S�6s��ZH�l��8*C�Iw���3�ͣq�%I`�2,�b�vA����#����J.�k_�:���C㤁�B?;��7�	d��P�'��^�H]P���&g�K���3��LR��TC꘮M�j�d\�%�,�MILaE���]0In�vD�ȤT��y��olnh�&IK%>
�rT�)R`�T��ި�T>�R�0���
��B����S�B�)D�~ԂD�!0���
�Q��{�����p��=�{Ж��T�ZJ$�/ �60 u����)��4��