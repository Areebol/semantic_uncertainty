# Activate conda env
source /root/miniconda3/bin/activate semantic_uncertainty

# Set env variables
source ~/etc/profile.d/clash.sh
proxy_off
unset http_proxy
unset https_proxy
export HF_ENDPOINT=https://hf-mirror.com

# Generate answer
python semantic_uncertainty/generate_answers.py \
    --snapt_shot True \
    --model_name=Llama-2-7b \
    --dataset=trivia_qa
