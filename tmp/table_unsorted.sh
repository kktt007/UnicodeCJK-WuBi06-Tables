# 复制一份官方的一、二、三、四选字（简体）表
cp top/topj_cjk.txt ./topj_cjk_fixed.txt

# 修正官方错误全码
sed -i 's/wgus\t俫/wgoy\t俫/g' topj_cjk_fixed.txt
sed -i 's/thpd\t延/thnp\t延/g' topj_cjk_fixed.txt
sed -i 's/nnnj\t惽/nnaj\t惽/g' topj_cjk_fixed.txt
sed -i 's/gusn\t慭/godn\t慭/g' topj_cjk_fixed.txt
sed -i 's/nnac\t敯/najc\t敯/g' topj_cjk_fixed.txt
sed -i 's/nnaj\t昬/najf\t昬/g' topj_cjk_fixed.txt
sed -i 's/sgus\t梾/sgoy\t梾/g' topj_cjk_fixed.txt
sed -i 's/txfj\t毎/txff\t毎/g' topj_cjk_fixed.txt
sed -i 's/innj\t湣/inaj\t湣/g' topj_cjk_fixed.txt
sed -i 's/gnnj\t瑉/gnaj\t瑉/g' topj_cjk_fixed.txt
sed -i 's/twfi\t稌/twgs\t稌/g' topj_cjk_fixed.txt
sed -i 's/xnnj\t緡/xnaj\t緡/g' topj_cjk_fixed.txt
sed -i 's/ghhy\t羐/hghy\t羐/g' topj_cjk_fixed.txt
sed -i 's/ugnc\t羗/ufqc\t羗/g' topj_cjk_fixed.txt
sed -i 's/jugn\t蜣/jufq\t蜣/g' topj_cjk_fixed.txt
sed -i 's/ywwy\t讖/ywwg\t讖/g' topj_cjk_fixed.txt
sed -i 's/qnnj\t鍲/qnaj\t鍲/g' topj_cjk_fixed.txt
sed -i 's/wyu\t飠/wyty\t飠/g' topj_cjk_fixed.txt
sed -i 's/knnj\t㗃/knaj\t㗃/g' topj_cjk_fixed.txt
sed -i 's/vnnj\t㛰/vnaj\t㛰/g' topj_cjk_fixed.txt
sed -i 's/mnnj\t㟭/mnaj\t㟭/g' topj_cjk_fixed.txt
sed -i 's/ryey\t㧑/ryty\t㧑/g' topj_cjk_fixed.txt
sed -i 's/rnnj\t㨉/rnaj\t㨉/g' topj_cjk_fixed.txt
sed -i 's/jnnj\t㬆/jnaj\t㬆/g' topj_cjk_fixed.txt
sed -i 's/sdmj\t㮌/sdmd\t㮌/g' topj_cjk_fixed.txt
sed -i 's/gnfg\t㺲/gnhf\t㺲/g' topj_cjk_fixed.txt
sed -i 's/hnnj\t䁕/hnaj\t䁕/g' topj_cjk_fixed.txt
sed -i 's/dnnj\t䃉/dnaj\t䃉/g' topj_cjk_fixed.txt
sed -i 's/enfg\t䏔/enhf\t䏔/g' topj_cjk_fixed.txt
sed -i 's/jnfg\t䖡/jnhf\t䖡/g' topj_cjk_fixed.txt
sed -i 's/ynfg\t䚼/ynhf\t䚼/g' topj_cjk_fixed.txt
sed -i 's/ynky\t䊨/ynkw\t䊨/g' topj_cjk_fixed.txt
sed -i 's/thpj\t蜑/thnj\t蜑/g' topj_cjk_fixed.txt
sed -i 's/thpb\t郔/thnb\t郔/g' topj_cjk_fixed.txt
sed -i 's/thpj\t䗺/thnj\t䗺/g' topj_cjk_fixed.txt
sed -i 's/qmfj\t觰/qehj\t觰/g' topj_cjk_fixed.txt
sed -i 's/qmfr\t觴/qehr\t觴/g' topj_cjk_fixed.txt
sed -i 's/gkgy\t彧/akgy\t彧/g' topj_cjk_fixed.txt
sed -i 's/tgky\t稶/taky\t稶/g' topj_cjk_fixed.txt
sed -i 's/gbwi\t㐪/ybwu\t㐪/g' topj_cjk_fixed.txt
sed -i 's/hpv\t㢟/hnpv\t㢟/g' topj_cjk_fixed.txt

# 删除官方错误简码（小写）
sed -i 's/thp\t延/thn\t延/g' topj_cjk_fixed.txt
sed -i 's/gus\t慭//g' topj_cjk_fixed.txt
#sed -i 's/txf\t毎//g' topj_cjk_fixed.txt
sed -i 's/ghh\t羐//g' topj_cjk_fixed.txt
sed -i 's/jug\t蜣//g' topj_cjk_fixed.txt
sed -i 's/wyu\t飠//g' topj_cjk_fixed.txt
sed -i 's/rye\t㧑//g' topj_cjk_fixed.txt
sed -i 's/jnn\t㬆//g' topj_cjk_fixed.txt
sed -i 's/hnn\t䁕//g' topj_cjk_fixed.txt
sed -i 's/enf\t䏔//g' topj_cjk_fixed.txt

# 删除官方错误简码（大写）
sed -i 's/ab\t工//g' topj_cjk_fixed.txt

# 和整理好的GBK字频表、超大字符集编码合并到一个文件
cat presorted.txt topj_cjk_fixed.txt gbk/gbk.txt cjk/cjkall.txt >table_unsorted.txt

# 删除无用的文件
rm topj_cjk_fixed.txt
