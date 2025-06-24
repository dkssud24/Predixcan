a="mashr_Adipose_Subcutaneous	mashr_Adipose_Visceral_Omentum	mashr_Adrenal_Gland	mashr_Artery_Aorta	mashr_Artery_Coronary	mashr_Artery_Tibial	mashr_Brain_Amygdala	mashr_Brain_Anterior_cingulate_cortex_BA24	mashr_Brain_Caudate_basal_ganglia	mashr_Brain_Cerebellar_Hemisphere	mashr_Brain_Cerebellum	mashr_Brain_Cortex	mashr_Brain_Frontal_Cortex_BA9	mashr_Brain_Hippocampus	mashr_Brain_Hypothalamus	mashr_Brain_Nucleus_accumbens_basal_ganglia	mashr_Brain_Putamen_basal_ganglia	mashr_Brain_Spinal_cord_cervical_c-1	mashr_Brain_Substantia_nigra	mashr_Breast_Mammary_Tissue	mashr_Cells_Cultured_fibroblasts	mashr_Cells_EBV-transformed_lymphocytes	mashr_Colon_Sigmoid	mashr_Colon_Transverse	mashr_Esophagus_Gastroesophageal_Junction	mashr_Esophagus_Mucosa	mashr_Esophagus_Muscularis	mashr_Heart_Atrial_Appendage	mashr_Heart_Left_Ventricle	mashr_Kidney_Cortex	mashr_Liver	mashr_Lung	mashr_Minor_Salivary_Gland	mashr_Muscle_Skeletal	mashr_Nerve_Tibial	mashr_Ovary	mashr_Pancreas	mashr_Pituitary	mashr_Prostate	mashr_Skin_Not_Sun_Exposed_Suprapubic	mashr_Skin_Sun_Exposed_Lower_leg	mashr_Small_Intestine_Terminal_Ileum	mashr_Spleen	mashr_Stomach	mashr_Testis	mashr_Thyroid	mashr_Uterus	mashr_Vagina	mashr_Whole_Blood"

mkdir Result_cardio

for i in $a;do
    python /BiO/hae/000033_PsychENCODE/MetaXcan/software/SPrediXcan.py \
    --gwas_file cardio.step1 \
    --snp_column panel_variant_id \
    --effect_allele_column effect_allele \
    --non_effect_allele_column non_effect_allele\
    --beta_column effect_size \
    --se_column standard_error \
    --pvalue_column pvalue \
    --model_db_path /BiO/hae/000035_GTEX_Predixcan/eqtl/mashr/$i.db \
    --covariance /BiO/hae/000035_GTEX_Predixcan/eqtl/mashr/$i.txt.gz \
    --keep_non_rsid \
    --additional_output\
    --model_db_snp_key varID  \
    --throw \
    --output_file Result_cardio/cardio.step2.$i;\
done
