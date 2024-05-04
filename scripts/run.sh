# kanerf vs nerfacto (compariable params)
###
 # @Author: yejun688 1548622388@qq.com
 # @Date: 2024-05-04 23:27:04
 # @LastEditors: yejun688 1548622388@qq.com
 # @LastEditTime: 2024-05-04 23:27:22
 # @FilePath: /KAN_nerf/scripts/run.sh
 # @Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
### 
ns-train kanerf --data DATA/nerf_synthetic/lego \
    --pipeline.model.background-color white \
    --pipeline.model.proposal-initial-sampler uniform \
    --pipeline.model.near-plane 2. --pipeline.model.far-plane 6. \
    --pipeline.model.hidden_dim 8 \
    --pipeline.model.hidden_dim_color 8 \
    --pipeline.model.num_layers 1 \
    --pipeline.model.num_layers_color 1 \
    --pipeline.model.geo_feat_dim 7 \
    --pipeline.model.appearance_embed_dim 8 \
    --pipeline.datamanager.camera-optimizer.mode off \
    --pipeline.model.use-average-appearance-embedding False \
    --pipeline.datamanager.train-num-rays-per-batch 4096 \
    --pipeline.datamanager.eval-num-rays-per-batch 4096 \
    --pipeline.model.distortion-loss-mult 0 --pipeline.model.disable-scene-contraction True \
    --vis viewer+tensorboard \
    blender-data


# kanerf vs nerfacto (compariable params)
ns-train nerfacto --data DATA/nerf_synthetic/lego \
    --pipeline.model.background-color white \
    --pipeline.model.proposal-initial-sampler uniform \
    --pipeline.model.near-plane 2. --pipeline.model.far-plane 6. \
    --pipeline.model.hidden_dim 64 \
    --pipeline.model.hidden_dim_color 64 \
    --pipeline.model.num_layers 2 \
    --pipeline.model.num_layers_color 2 \
    --pipeline.model.geo_feat_dim 15 \
    --pipeline.model.appearance_embed_dim 32 \
    --pipeline.datamanager.camera-optimizer.mode off \
    --pipeline.model.use-average-appearance-embedding False \
    --pipeline.datamanager.train-num-rays-per-batch 4096 \
    --pipeline.datamanager.eval-num-rays-per-batch 4096 \
    --pipeline.model.distortion-loss-mult 0 --pipeline.model.disable-scene-contraction True \
    --vis viewer+tensorboard \
    blender-data


# kanerf vs nerfacto (same layer number and hidden dim)
ns-train nerfacto --data DATA/nerf_synthetic/lego \
    --pipeline.model.background-color white \
    --pipeline.model.proposal-initial-sampler uniform \
    --pipeline.model.near-plane 2. --pipeline.model.far-plane 6. \
    --pipeline.model.hidden_dim 8 \
    --pipeline.model.hidden_dim_color 8 \
    --pipeline.model.num_layers 1 \
    --pipeline.model.num_layers_color 1 \
    --pipeline.model.geo_feat_dim 7 \
    --pipeline.model.appearance_embed_dim 8 \
    --pipeline.datamanager.camera-optimizer.mode off \
    --pipeline.model.use-average-appearance-embedding False \
    --pipeline.datamanager.train-num-rays-per-batch 4096 \
    --pipeline.datamanager.eval-num-rays-per-batch 4096 \
    --pipeline.model.distortion-loss-mult 0 --pipeline.model.disable-scene-contraction True \
    --vis viewer+tensorboard  \
    blender-data
