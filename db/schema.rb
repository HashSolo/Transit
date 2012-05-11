# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120510135635) do

  create_table "allergies", :force => true do |t|
    t.integer  "history_female_id"
    t.integer  "history_male_id"
    t.string   "name"
    t.string   "comment"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "appointments", :force => true do |t|
    t.integer  "case_id"
    t.integer  "clinician_id"
    t.datetime "date_and_time"
    t.string   "appointment_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "appointments_clinicians", :id => false, :force => true do |t|
    t.integer "appointment_id"
    t.integer "clinician_id"
  end

  create_table "appointments_patients", :id => false, :force => true do |t|
    t.integer "appointment_id"
    t.integer "patient_id"
  end

  create_table "cases", :force => true do |t|
    t.integer  "user_id"
    t.integer  "clinician_id"
    t.integer  "referrer_id"
    t.boolean  "status",       :default => true
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cases_patients", :id => false, :force => true do |t|
    t.integer "case_id"
    t.integer "patient_id"
  end

  create_table "clinicians", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.integer  "user_id"
    t.string   "role"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "history_females", :force => true do |t|
    t.integer  "patient_id"
    t.integer  "pregnancy_count"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.string   "occupation"
    t.integer  "height_ft"
    t.integer  "height_in"
    t.integer  "weight"
    t.date     "birth_date"
    t.string   "race"
    t.integer  "term_births"
    t.integer  "age"
    t.string   "marriage_status"
    t.integer  "preterm_births"
    t.integer  "miscarriages_or_abortions"
    t.integer  "ectopic"
    t.integer  "months_trying"
    t.integer  "months_trying_with_partner"
    t.boolean  "past_pregnancy"
    t.integer  "past_pregnancy_count"
    t.integer  "age_when_periods_start"
    t.date     "last_menstrual_period"
    t.integer  "average_days_of_period"
    t.integer  "average_days_between_periods"
    t.boolean  "are_periods_typical"
    t.boolean  "always_irregular_periods"
    t.boolean  "bleeding_between_periods"
    t.boolean  "period_medication"
    t.boolean  "premarin"
    t.boolean  "estrace"
    t.boolean  "birth_control"
    t.boolean  "progesterone"
    t.boolean  "provera"
    t.boolean  "cycrin"
    t.boolean  "aygestin"
    t.boolean  "crinone"
    t.boolean  "prometrium"
    t.boolean  "other_period_medication_boolean"
    t.string   "other_period_medication_string"
    t.boolean  "pelvic_pain_with_periods"
    t.string   "pelvic_pain_degree"
    t.boolean  "pelvic_pain_between_periods"
    t.boolean  "pelvic_pain_medication"
    t.string   "pelvic_pain_medication_string"
    t.boolean  "pelvic_pain_medication_works"
    t.boolean  "ovulation_predictor_kit"
    t.boolean  "positive_test"
    t.boolean  "color_change"
    t.string   "other_ovulation_evidence"
    t.string   "positive_day_range"
    t.boolean  "past_contraceptive_use"
    t.boolean  "past_birth_control"
    t.boolean  "past_injectable_hormones"
    t.boolean  "past_hormone_patch"
    t.boolean  "past_iud"
    t.boolean  "past_tubal_ligation"
    t.string   "past_other_contraceptive"
    t.boolean  "current_contraceptive_user"
    t.boolean  "current_birth_control"
    t.boolean  "current_injectable_hormones"
    t.boolean  "current_hormone_patch"
    t.boolean  "current_iud"
    t.boolean  "current_tubal_ligation"
    t.string   "current_other_contraceptive"
    t.boolean  "pap_smear_current"
    t.date     "last_pap_smear"
    t.boolean  "pap_smear_abnormal"
    t.string   "pap_smear_abnormality"
    t.boolean  "mammogram_current"
    t.date     "last_mammogram"
    t.boolean  "breast_discharge"
    t.boolean  "current_acne"
    t.boolean  "unwanted_hair"
    t.string   "sexual_orientation"
    t.integer  "sexual_partners"
    t.boolean  "sexual_abuse"
    t.boolean  "abuse_counseling"
    t.boolean  "abuse_counseling_referral"
    t.boolean  "intercourse_pain"
    t.integer  "weekly_intercourse_frequency"
    t.boolean  "colposcopy"
    t.date     "colposcopy_date"
    t.string   "colposcopy_findings"
    t.boolean  "cone_biopsy"
    t.date     "cone_biopsy_date"
    t.string   "cone_biopsy_findings"
    t.boolean  "leep"
    t.date     "leep_date"
    t.string   "leep_findings"
    t.boolean  "cryosurgery"
    t.date     "cryosurgery_date"
    t.boolean  "laser_treatment"
    t.date     "laser_treatment_date"
    t.boolean  "std_or_infection"
    t.boolean  "gonorrhea"
    t.boolean  "chlamydia"
    t.boolean  "herpes"
    t.boolean  "syphillis"
    t.boolean  "hiv_or_aids"
    t.boolean  "hpv"
    t.string   "blood_type"
    t.boolean  "medical_conditions"
    t.boolean  "thyroid_medication"
    t.boolean  "synthroid"
    t.boolean  "levoxyl"
    t.boolean  "other_thyroid"
    t.boolean  "vaccinations"
    t.boolean  "measles"
    t.date     "measles_when"
    t.boolean  "german_measles"
    t.date     "german_measles_when"
    t.boolean  "hepatitis_a"
    t.date     "hepatitis_a_when"
    t.boolean  "hepatitis_b"
    t.date     "hepatitis_b_when"
    t.boolean  "chickenpox"
    t.date     "chickenpox_when"
    t.boolean  "tuberculosis"
    t.date     "tuberculosis_when"
    t.boolean  "polio"
    t.date     "polio_when"
    t.boolean  "tetanus"
    t.date     "tetanus_when"
    t.boolean  "influenza"
    t.date     "influenza_when"
    t.boolean  "allergies"
    t.boolean  "surgeries"
    t.boolean  "smoke"
    t.integer  "cigarettes_per_day"
    t.boolean  "past_smoke"
    t.integer  "past_cigarettes_per_day"
    t.date     "smoke_quit"
    t.boolean  "alcohol"
    t.boolean  "alcohol_social"
    t.integer  "alcohol_social_per_week"
    t.boolean  "alcohol_daily"
    t.string   "alcohol_daily_per_day"
    t.boolean  "alcoholic"
    t.integer  "alcoholic_amount_drinks"
    t.string   "alcoholic_amount_often"
    t.boolean  "alcohol_dependence"
    t.boolean  "caffeine"
    t.string   "caffeine_amount"
    t.boolean  "recreational_drugs"
    t.string   "recreational_drugs_what"
    t.boolean  "herbal_medications"
    t.string   "herbal_medications_amount"
    t.boolean  "strenuous_activity"
    t.integer  "strenuous_activity_often"
    t.boolean  "family_medical_conditions"
    t.boolean  "early_menopause_sf",               :default => false
    t.boolean  "early_menopause_m",                :default => false
    t.boolean  "early_menopause_f",                :default => false
    t.boolean  "early_menopause_b",                :default => false
    t.boolean  "early_menopause_sr",               :default => false
    t.boolean  "early_menopause_c",                :default => false
    t.boolean  "early_menopause_gm",               :default => false
    t.boolean  "early_menopause_gf",               :default => false
    t.boolean  "endometriosis_sf",                 :default => false
    t.boolean  "endometriosis_m",                  :default => false
    t.boolean  "endometriosis_f",                  :default => false
    t.boolean  "endometriosis_b",                  :default => false
    t.boolean  "endometriosis_sr",                 :default => false
    t.boolean  "endometriosis_c",                  :default => false
    t.boolean  "endometriosis_gm",                 :default => false
    t.boolean  "endometriosis_gf",                 :default => false
    t.boolean  "infertility_sf",                   :default => false
    t.boolean  "infertility_m",                    :default => false
    t.boolean  "infertility_f",                    :default => false
    t.boolean  "infertility_b",                    :default => false
    t.boolean  "infertility_sr",                   :default => false
    t.boolean  "infertility_c",                    :default => false
    t.boolean  "infertility_gm",                   :default => false
    t.boolean  "infertility_gf",                   :default => false
    t.boolean  "miscarriage_sf",                   :default => false
    t.boolean  "miscarriage_m",                    :default => false
    t.boolean  "miscarriage_f",                    :default => false
    t.boolean  "miscarriage_b",                    :default => false
    t.boolean  "miscarriage_sr",                   :default => false
    t.boolean  "miscarriage_c",                    :default => false
    t.boolean  "miscarriage_gm",                   :default => false
    t.boolean  "miscarriage_gf",                   :default => false
    t.boolean  "diabetes_sf",                      :default => false
    t.boolean  "diabetes_m",                       :default => false
    t.boolean  "diabetes_f",                       :default => false
    t.boolean  "diabetes_b",                       :default => false
    t.boolean  "diabetes_sr",                      :default => false
    t.boolean  "diabetes_c",                       :default => false
    t.boolean  "diabetes_gm",                      :default => false
    t.boolean  "diabetes_gf",                      :default => false
    t.boolean  "retardation_chromosonal_sf",       :default => false
    t.boolean  "retardation_chromosonal_m",        :default => false
    t.boolean  "retardation_chromosonal_f",        :default => false
    t.boolean  "retardation_chromosonal_b",        :default => false
    t.boolean  "retardation_chromosonal_sr",       :default => false
    t.boolean  "retardation_chromosonal_c",        :default => false
    t.boolean  "retardation_chromosonal_gm",       :default => false
    t.boolean  "retardation_chromosonal_gf",       :default => false
    t.boolean  "retardation_x_mutation_sf",        :default => false
    t.boolean  "retardation_x_mutation_m",         :default => false
    t.boolean  "retardation_x_mutation_f",         :default => false
    t.boolean  "retardation_x_mutation_b",         :default => false
    t.boolean  "retardation_x_mutation_sr",        :default => false
    t.boolean  "retardation_x_mutation_c",         :default => false
    t.boolean  "retardation_x_mutation_gm",        :default => false
    t.boolean  "retardation_x_mutation_gf",        :default => false
    t.boolean  "birth_defects_sf",                 :default => false
    t.boolean  "birth_defects_m",                  :default => false
    t.boolean  "birth_defects_f",                  :default => false
    t.boolean  "birth_defects_b",                  :default => false
    t.boolean  "birth_defects_sr",                 :default => false
    t.boolean  "birth_defects_c",                  :default => false
    t.boolean  "birth_defects_gm",                 :default => false
    t.boolean  "birth_defects_gf",                 :default => false
    t.boolean  "pituitary_tumor_sf",               :default => false
    t.boolean  "pituitary_tumor_m",                :default => false
    t.boolean  "pituitary_tumor_f",                :default => false
    t.boolean  "pituitary_tumor_b",                :default => false
    t.boolean  "pituitary_tumor_sr",               :default => false
    t.boolean  "pituitary_tumor_c",                :default => false
    t.boolean  "pituitary_tumor_gm",               :default => false
    t.boolean  "pituitary_tumor_gf",               :default => false
    t.boolean  "breast_cancer_sf",                 :default => false
    t.boolean  "breast_cancer_m",                  :default => false
    t.boolean  "breast_cancer_f",                  :default => false
    t.boolean  "breast_cancer_b",                  :default => false
    t.boolean  "breast_cancer_sr",                 :default => false
    t.boolean  "breast_cancer_c",                  :default => false
    t.boolean  "breast_cancer_gm",                 :default => false
    t.boolean  "breast_cancer_gf",                 :default => false
    t.boolean  "ovarian_cancer_sf",                :default => false
    t.boolean  "ovarian_cancer_m",                 :default => false
    t.boolean  "ovarian_cancer_f",                 :default => false
    t.boolean  "ovarian_cancer_b",                 :default => false
    t.boolean  "ovarian_cancer_sr",                :default => false
    t.boolean  "ovarian_cancer_c",                 :default => false
    t.boolean  "ovarian_cancer_gm",                :default => false
    t.boolean  "ovarian_cancer_gf",                :default => false
    t.boolean  "cervical_cancer_sf",               :default => false
    t.boolean  "cervical_cancer_m",                :default => false
    t.boolean  "cervical_cancer_f",                :default => false
    t.boolean  "cervical_cancer_b",                :default => false
    t.boolean  "cervical_cancer_sr",               :default => false
    t.boolean  "cervical_cancer_c",                :default => false
    t.boolean  "cervical_cancer_gm",               :default => false
    t.boolean  "cervical_cancer_gf",               :default => false
    t.boolean  "uterine_cancer_sf",                :default => false
    t.boolean  "uterine_cancer_m",                 :default => false
    t.boolean  "uterine_cancer_f",                 :default => false
    t.boolean  "uterine_cancer_b",                 :default => false
    t.boolean  "uterine_cancer_sr",                :default => false
    t.boolean  "uterine_cancer_c",                 :default => false
    t.boolean  "uterine_cancer_gm",                :default => false
    t.boolean  "uterine_cancer_gf",                :default => false
    t.boolean  "bowel_cancer_sf",                  :default => false
    t.boolean  "bowel_cancer_m",                   :default => false
    t.boolean  "bowel_cancer_f",                   :default => false
    t.boolean  "bowel_cancer_b",                   :default => false
    t.boolean  "bowel_cancer_sr",                  :default => false
    t.boolean  "bowel_cancer_c",                   :default => false
    t.boolean  "bowel_cancer_gm",                  :default => false
    t.boolean  "bowel_cancer_gf",                  :default => false
    t.boolean  "colon_cancer_sf",                  :default => false
    t.boolean  "colon_cancer_m",                   :default => false
    t.boolean  "colon_cancer_f",                   :default => false
    t.boolean  "colon_cancer_b",                   :default => false
    t.boolean  "colon_cancer_sr",                  :default => false
    t.boolean  "colon_cancer_c",                   :default => false
    t.boolean  "colon_cancer_gm",                  :default => false
    t.boolean  "colon_cancer_gf",                  :default => false
    t.boolean  "anemia_sf",                        :default => false
    t.boolean  "anemia_m",                         :default => false
    t.boolean  "anemia_f",                         :default => false
    t.boolean  "anemia_b",                         :default => false
    t.boolean  "anemia_sr",                        :default => false
    t.boolean  "anemia_c",                         :default => false
    t.boolean  "anemia_gm",                        :default => false
    t.boolean  "anemia_gf",                        :default => false
    t.boolean  "bleeding_sf",                      :default => false
    t.boolean  "bleeding_m",                       :default => false
    t.boolean  "bleeding_f",                       :default => false
    t.boolean  "bleeding_b",                       :default => false
    t.boolean  "bleeding_sr",                      :default => false
    t.boolean  "bleeding_c",                       :default => false
    t.boolean  "bleeding_gm",                      :default => false
    t.boolean  "bleeding_gf",                      :default => false
    t.boolean  "autism_sf",                        :default => false
    t.boolean  "autism_m",                         :default => false
    t.boolean  "autism_f",                         :default => false
    t.boolean  "autism_b",                         :default => false
    t.boolean  "autism_sr",                        :default => false
    t.boolean  "autism_c",                         :default => false
    t.boolean  "autism_gm",                        :default => false
    t.boolean  "autism_gf",                        :default => false
    t.boolean  "chromosone_disorder_sf",           :default => false
    t.boolean  "chromosone_disorder_m",            :default => false
    t.boolean  "chromosone_disorder_f",            :default => false
    t.boolean  "chromosone_disorder_b",            :default => false
    t.boolean  "chromosone_disorder_sr",           :default => false
    t.boolean  "chromosone_disorder_c",            :default => false
    t.boolean  "chromosone_disorder_gm",           :default => false
    t.boolean  "chromosone_disorder_gf",           :default => false
    t.boolean  "muscular_sf",                      :default => false
    t.boolean  "muscular_m",                       :default => false
    t.boolean  "muscular_f",                       :default => false
    t.boolean  "muscular_b",                       :default => false
    t.boolean  "muscular_sr",                      :default => false
    t.boolean  "muscular_c",                       :default => false
    t.boolean  "muscular_gm",                      :default => false
    t.boolean  "muscular_gf",                      :default => false
    t.boolean  "hemophilia_sf",                    :default => false
    t.boolean  "hemophilia_m",                     :default => false
    t.boolean  "hemophilia_f",                     :default => false
    t.boolean  "hemophilia_b",                     :default => false
    t.boolean  "hemophilia_sr",                    :default => false
    t.boolean  "hemophilia_c",                     :default => false
    t.boolean  "hemophilia_gm",                    :default => false
    t.boolean  "hemophilia_gf",                    :default => false
    t.boolean  "huntington_sf",                    :default => false
    t.boolean  "huntington_m",                     :default => false
    t.boolean  "huntington_f",                     :default => false
    t.boolean  "huntington_b",                     :default => false
    t.boolean  "huntington_sr",                    :default => false
    t.boolean  "huntington_c",                     :default => false
    t.boolean  "huntington_gm",                    :default => false
    t.boolean  "huntington_gf",                    :default => false
    t.boolean  "polycystic_sf",                    :default => false
    t.boolean  "polycystic_m",                     :default => false
    t.boolean  "polycystic_f",                     :default => false
    t.boolean  "polycystic_b",                     :default => false
    t.boolean  "polycystic_sr",                    :default => false
    t.boolean  "polycystic_c",                     :default => false
    t.boolean  "polycystic_gm",                    :default => false
    t.boolean  "polycystic_gf",                    :default => false
    t.boolean  "neurofibromatosis_sf",             :default => false
    t.boolean  "neurofibromatosis_m",              :default => false
    t.boolean  "neurofibromatosis_f",              :default => false
    t.boolean  "neurofibromatosis_b",              :default => false
    t.boolean  "neurofibromatosis_sr",             :default => false
    t.boolean  "neurofibromatosis_c",              :default => false
    t.boolean  "neurofibromatosis_gm",             :default => false
    t.boolean  "neurofibromatosis_gf",             :default => false
    t.boolean  "marfan_sf",                        :default => false
    t.boolean  "marfan_m",                         :default => false
    t.boolean  "marfan_f",                         :default => false
    t.boolean  "marfan_b",                         :default => false
    t.boolean  "marfan_sr",                        :default => false
    t.boolean  "marfan_c",                         :default => false
    t.boolean  "marfan_gm",                        :default => false
    t.boolean  "marfan_gf",                        :default => false
    t.boolean  "other_birth_defect"
    t.string   "other_birth_defect_string"
    t.string   "mother_ancestry"
    t.string   "father_ancestry"
    t.boolean  "stillborn_child"
    t.boolean  "tay_sachs"
    t.date     "tay_sachs_when"
    t.string   "tay_sachs_finding"
    t.boolean  "canavan"
    t.date     "canavan_when"
    t.string   "canavan_finding"
    t.boolean  "bloom"
    t.date     "bloom_when"
    t.string   "bloom_finding"
    t.boolean  "gaucher"
    t.date     "gaucher_when"
    t.string   "gaucher_finding"
    t.boolean  "faconi_anemia"
    t.date     "faconi_anemia_when"
    t.string   "faconi_anemia_finding"
    t.boolean  "neimman"
    t.date     "neimman_when"
    t.string   "neimman_finding"
    t.boolean  "sickle_cell"
    t.date     "sickle_cell_when"
    t.string   "sickle_cell_finding"
    t.boolean  "cystic_fibrosis"
    t.date     "cystic_fibrosis_when"
    t.string   "cystic_fibrosis_finding"
    t.boolean  "thalassemia"
    t.date     "thalassemia_when"
    t.string   "thalassemia_finding"
    t.boolean  "ultrasound"
    t.date     "ultrasound_when"
    t.string   "ultrasound_finding"
    t.boolean  "hsg"
    t.string   "hsg_finding"
    t.boolean  "hysterosonogram"
    t.string   "hysterosonogram_finding"
    t.boolean  "day3_fsh"
    t.date     "day3_fsh_when"
    t.string   "day3_fsh_findings"
    t.boolean  "cct_day3_fsh"
    t.date     "cct_day3_fsh_when"
    t.string   "cct_day3_fsh_findings"
    t.boolean  "semen_analysis"
    t.date     "semen_analysis_when"
    t.string   "semen_analysis_findings"
    t.boolean  "blood_test"
    t.date     "blood_test_when"
    t.string   "blood_test_findings"
    t.boolean  "basal_body"
    t.date     "basal_body_when"
    t.string   "basal_body_findings"
    t.boolean  "endometrial"
    t.date     "endometrial_when"
    t.string   "endometrial_findings"
    t.boolean  "inhibin"
    t.date     "inhibin_when"
    t.string   "inhibin_findings"
    t.boolean  "post_coital"
    t.date     "post_coital_when"
    t.string   "post_coital_findings"
    t.boolean  "anti_sperm"
    t.date     "anti_sperm_when"
    t.string   "anti_sperm_findings"
    t.boolean  "chromosone_female"
    t.date     "chromosone_female_when"
    t.string   "chromosone_female_findings"
    t.boolean  "chromosone_male"
    t.date     "chromosone_male_when"
    t.string   "chromosone_male_findings"
    t.boolean  "anti_phospholipid"
    t.date     "anti_phospholipid_when"
    t.string   "anti_phospholipid_findings"
    t.boolean  "lupus"
    t.date     "lupus_when"
    t.string   "lupus_findings"
    t.boolean  "tsh"
    t.date     "tsh_when"
    t.string   "tsh_findings"
    t.boolean  "prolactin"
    t.date     "prolactin_when"
    t.string   "prolactin_findings"
    t.boolean  "lh"
    t.date     "lh_when"
    t.string   "lh_findings"
    t.boolean  "progestrone"
    t.date     "progestrone_when"
    t.string   "progestrone_findings"
    t.boolean  "other_test"
    t.date     "other_test_when"
    t.string   "other_test_findings"
    t.boolean  "clomiphene_citrate"
    t.boolean  "gonadotropins"
    t.boolean  "ivf_cycle"
    t.boolean  "frozen_embryo"
    t.boolean  "gestational_surrogacy"
    t.string   "gestational_surrogacy_indication"
    t.boolean  "egg_donor"
  end

  create_table "history_males", :force => true do |t|
    t.integer  "patient_id"
    t.boolean  "prior_infertility"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.string   "occupation"
    t.integer  "height_ft"
    t.integer  "height_in"
    t.boolean  "change_weight"
    t.integer  "weight"
    t.date     "birth_date"
    t.string   "race"
    t.integer  "age"
    t.boolean  "past_pregnancy"
    t.integer  "past_pregnancy_count"
    t.boolean  "medical_conditions_tf"
    t.boolean  "medications_tf"
    t.boolean  "herbal_medications"
    t.integer  "herbal_amount"
    t.boolean  "surgeries_tf"
    t.boolean  "stds_tf"
    t.boolean  "allergies_tf"
    t.boolean  "mumps"
    t.integer  "mumps_age"
    t.boolean  "erections_difficulty"
    t.boolean  "impregnation_difficulty"
    t.boolean  "sperm_donor"
    t.boolean  "hormone_treatments"
    t.boolean  "vasectomy"
    t.boolean  "testicles_surgery"
    t.boolean  "testicles_undescended"
    t.boolean  "testicles_trauma"
    t.boolean  "testicles_swelling"
    t.boolean  "testicles_twist"
    t.boolean  "white_cells"
    t.boolean  "prostate_infection"
  end

  create_table "medical_conditions", :force => true do |t|
    t.integer  "history_female_id"
    t.integer  "history_male_id"
    t.string   "condition"
    t.string   "finding"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "medications", :force => true do |t|
    t.integer  "history_female_id"
    t.integer  "history_male_id"
    t.string   "name"
    t.string   "finding"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "patients", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "case_id"
    t.date     "date_of_birth"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "sex"
    t.string   "ethnicity"
    t.string   "marital_status"
    t.string   "occupation"
  end

  create_table "posts", :force => true do |t|
    t.string   "content"
    t.integer  "clinician_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pregnancies", :force => true do |t|
    t.integer  "history_female_id"
    t.integer  "history_male_id"
    t.date     "date"
    t.string   "gender"
    t.boolean  "current_partner"
    t.integer  "months_to_conception"
    t.boolean  "difficulty_conceiving"
    t.boolean  "fertility_treatment"
    t.string   "type"
    t.string   "outcome"
    t.string   "delivery_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "referrers", :force => true do |t|
    t.integer  "case_id"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "practice_name"
    t.string   "address_1"
    t.string   "address_2"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.string   "phone"
    t.string   "email"
    t.string   "website"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "stds", :force => true do |t|
    t.integer  "history_female_id"
    t.integer  "history_male_id"
    t.string   "infection"
    t.string   "comment"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "surgeries", :force => true do |t|
    t.integer  "history_female_id"
    t.integer  "history_male_id"
    t.date     "surgery_date"
    t.string   "indication"
    t.string   "surgery_name"
    t.string   "finding"
    t.boolean  "complications"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "email"
    t.string   "encrypted_password"
    t.string   "salt"
    t.boolean  "admin_account",      :default => false
    t.boolean  "patient_account",    :default => false
    t.boolean  "clinician_account",  :default => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
