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
BZh91AY&SYo6��  ���=s �����������@ f�  P�{�S��d ��h���~�Sd#�4�yF���i���ځ��4m �ژ���@   �     D)���H4 �� �  @ ������� i� !� 4DM5O*y�l)�m4�(�~�4�COQ�  Hz��R ]�1�Y�����7�gT�BcAҪZ��ae[�1MN�~U��ەS��VGˇ)��0d&�Ԝ�{�l[��0j�2����7J�
:j�]l���J���B��a������)L�#u�`��f*�:S�[R A� ȍ������ Yĳ{$�#��`y
8�P��b�vM-1���i�t0����_��c �.T��{�μ*!�3�jRX� ���7�B%��3��❚!�g��������p�K��^�?�
VpG�5����a�N�y��̐�����nG��tH%S!M^&��{6�l� ���Ǣ��,?:Aw��qS �^�L�Kht����5S�F�����U���0�*4I�M����KX̮��]5�N�4���ٷ���R{�u~�͔7��3���V��!��3�g1k��s���m��ީk�L�+��E���TTD��D�Ck"(���0�%��-3� ����6�~V�Y辏+�͊��^u<��S����j�[y��.��3�ǉ5����TUUK�!�y�{M��p�L�JM�J!�P�PV����s�Tt�L�����t���m�����(�����x~�n���gZ�c1EQ���D�G��f��g0�Z�Xk���D���#CEf����BP@˥�dc30-����LF!�0i��+C�n�Up���f��߿��y ːdx񚧩P��nTI�7��$����*1�cHV�)mu�|���:s��Q<w�Y�c��mwk���xk��W�z#�J�e�XkfJP#:ㆹbi�-�I��TV �EI�D4�v���	A�!�1�H/��V^� 㻽WBHȧ6��,�M�!�����QX�e	��YA EB��X��j1�	(s� �yz7=<-\��?H	���F�|���4�!`�ȍ��3���>�R	u~��1UmC���N����p��2�J&��NbW��@]���>Mz��&
pu�ok� dT����,c�2�H5ؑ6}�SS�Zф�RDc ���$�JڷH�3b��zȤڅ���-]L��"���H1dǕM,
�p�2��j���8����T��#��	��7�7����<�L$!0�ŝs�� h&c�rE8P�o6��