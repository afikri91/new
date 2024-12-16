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
BZh91AY&SY�fx�  ���1s�����������@ f�  P�Wd�Y��ӛ��vٶ�Q�OP5M��&S�S��bG�=OD��i4��6� dѵ1 H���O%�)�M44z�����h� 	#H�)�&��db4����    @� �L�F� 2`��  �H��jy!�)��fDz��@4 �Ph!�Cϗׯb��ɡ��x@kL*5��t�^y�ڴ�P�|�O��F��%���nuD믔��#�1�SӔ���֔,$ٛ�U�`z:��:`�n�I��'B��ԓE�Z ��ǀq<�P�@�$��q���SCjǋ�Y)��D�O#�W��$f��F����¦lR��Io�{E�B�-����+�Mf蘩���L�o#���t�2�
p��ث����N��ݓ �k[ŉE8��㨰��6�|��#!���d�ԙܼ@)�`�����E|�Ӈ	�����˒/�Os[�K�7hbǻ-n��c]T����V�^X0��D�8DLvj`����ۙ������LQ�F��[���Ë�;:x�E�\����5\&bsZ�����B0e�*��JBj�5�Ev#6A�����<V$*EW�S.���~��f������7W�� U��7�Q�~k.�����M�*ir70��}��w߸��M�I�(��,-��Η�����56x�W"��7 ؁�Rs��6/%�e8�S��;X0L]+�&��m�ދ���ʋR,#>����H!���d�3��L�@W_6콚�p�,���j�F�G��N���w]�ʆ�;��{���Ʃ��Fo"Ç�*Bn�"�9���tL�d�II\��3
1�j:L��]U�y���I�(Ԅc[�2�1 ���p�.b���n��*4��W�~�����q̩�#=��]:�ݩ���)��1�۷}�c��!mla�u�5j'fL��{�pv�]
�gvɄ���Va�hZJз�\��k)�Gw����5�8rQ�&lF�ză"BϨ��a���1�i<�C@�q�6�dA�R���w"��(d�#�}��@�ˎ)q�Hw\���ʎ/)N�R�� �F
�d���.Wz�[�����PKSZ����b�3W�MFfU`���
z�;I5���6%���e��)>�¢�; ��ݐyӴ6�4�-RG�R���:r���)C���N"I��T�	����\C���^HZ�,���ј..�� 1 t"ı�r�E;aǣX�HO��F�,Wr�Bݥ��$،zRO�X �s�>U@Iq�-}ϝ���0��x��&d��0s93i����R5��Jh"]��AB"��Ydc�!U>`J��gm0����Y)������A�{�UԄ�@4�����һ�)��U� B�ˉ$Ei i�Z���UհF �~8���X�x�$�!��UL�r	�sB�]�T9�5�i�4����K!j�2&�E �Äs�r��A�Ïw�΀�#�	��&����q@ �	����"�(H@�<t�