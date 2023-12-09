#!/bin/sh

# Example launching script to benchmark a 10x10 stochastic model.
# You should replace the args with the args of the model you want to evaluate.
# The args `n_j` and `n_m` are useless here.

python3 -m jssp.eval\
    --max_n_j 100\
    --max_n_m 20\
    --fe_type dgl\
    --residual_gnn\
    --graph_has_relu\
    --graph_pooling max\
    --hidden_dim_features_extractor 64\
    --n_layers_features_extractor 10\
    --mlp_act gelu\
    --layer_pooling last\
    --n_mlp_layers_features_extractor 1\
    --n_mlp_layers_actor 1\
    --n_mlp_layers_critic 1\
    --hidden_dim_actor 32\
    --hidden_dim_critic 32\
    --duration_type stochastic\
    --ortools_strategy averagistic realistic\
    --seed 0\
    --device cuda:2\
    --n_workers 1\
    --max_time_ortools 180
    # --path "/data1/pierrep/wheatley/saved_networks/10j10m_Dstochastic_Tsimple_RSparse_GNNdgl_CONVgatv2_POOLmax_L10_HD64_H4_Cclique_stochastic-100x30/"\
    # --custom_heuristic_names SPT MWKR MOPNR FDD/MWKR\
    # --path "/data1/pierrep/wheatley/saved_networks/10j10m_Ddeterministic_Tsimple_RSparse_GNNdgl_CONVgatv2_POOLmax_L10_HD64_H4_Cclique_deterministic-100x30/"\
    # --fixed_validation\
    # --max_n_j 100\
    # --max_n_m 30\
