#!/bin/bash

set -ex

curdir=$(pwd)
echo "curdir:$curdir"
cd "$curdir" || exit

cd ../


#-----------------------------------------------------------------
# 先手动删除项目models目录，然后把save_base_models_dir
# 链接过去
#-----------------------------------------------------------------

save_base_models_dir="/mnt/cephfs/hjh/train_record/nlp/text-generation-webui/models"




#--------------
#download
#--------------
#python download-model.py decapoda-research/llama-7b-hf
#python download-model.py decapoda-research/llama-13b-hf



python server.py --share --model llama-7b-hf



#--listen_port 7860 server_ip '202.168.100.178'