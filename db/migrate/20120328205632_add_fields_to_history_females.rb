class AddFieldsToHistoryFemales < ActiveRecord::Migration
  def change
  
  #basic
  add_column :history_females, :name, :string
  add_column :history_females, :occupation, :string
  add_column :history_females, :height_ft, :integer
  add_column :history_females, :height_in, :integer
  add_column :history_females, :weight, :integer
  add_column :history_females, :birth_date, :date
  add_column :history_females, :race, :string
  add_column :history_females, :term_births, :integer
  add_column :history_females, :age, :integer
  add_column :history_females, :marriage_status, :string
  add_column :history_females, :preterm_births, :integer
  add_column :history_females, :miscarriages_or_abortions, :integer
  add_column :history_females, :ectopic, :integer
  add_column :history_females, :months_trying, :integer
  add_column :history_females, :months_trying_with_partner, :integer
  
  #pregnancies
  #pregnancy table
  
  #menstrual cycle
  add_column :history_females, :age_when_periods_start, :integer
  add_column :history_females, :last_menstrual_period, :date
  add_column :history_females, :average_days_of_period, :integer
  add_column :history_females, :average_days_between_periods, :integer
  add_column :history_females, :are_periods_typical, :boolean
  add_column :history_females, :always_irregular_periods, :boolean, :default => nil
  add_column :history_females, :bleeding_between_periods, :boolean
  add_column :history_females, :period_medication, :boolean
  add_column :history_females, :premarin, :boolean
  add_column :history_females, :estrace, :boolean
  add_column :history_females, :birth_control, :boolean
  add_column :history_females, :progesterone, :boolean
  add_column :history_females, :provera, :boolean
  add_column :history_females, :cycrin, :boolean
  add_column :history_females, :aygestin, :boolean
  add_column :history_females, :crinone, :boolean
  add_column :history_females, :prometrium, :boolean
  add_column :history_females, :other_period_medication_boolean, :boolean
  add_column :history_females, :other_period_medication_string, :string
  add_column :history_females, :pelvic_pain_with_periods, :boolean
  add_column :history_females, :pelvic_pain_degree, :string, :default => nil
  add_column :history_females, :pelvic_pain_between_periods, :boolean
  add_column :history_females, :pelvic_pain_medication, :boolean
  add_column :history_females, :pelvic_pain_medication_string, :string, :default => nil
  add_column :history_females, :pelvic_pain_medication_works, :boolean, :default => nil
  add_column :history_females, :ovulation_predictor_kit, :boolean
  add_column :history_females, :positive_test, :boolean, :default => nil
  add_column :history_females, :color_change, :boolean, :default => nil
  add_column :history_females, :other_ovulation_evidence, :string, :default => nil
  add_column :history_females, :positive_day_range, :string, :default => nil
  add_column :history_females, :past_contraceptive_use, :boolean
  add_column :history_females, :past_birth_control, :boolean, :default => nil
  add_column :history_females, :past_injectable_hormones, :boolean, :default => nil
  add_column :history_females, :past_hormone_patch, :boolean, :default => nil
  add_column :history_females, :past_iud, :boolean, :default => nil
  add_column :history_females, :past_tubal_ligation, :boolean, :default => nil
  add_column :history_females, :past_other_contraceptive, :string, :default => nil
  add_column :history_females, :current_contraceptive_user, :boolean
  add_column :history_females, :current_birth_control, :boolean, :default => nil
  add_column :history_females, :current_injectable_hormones, :boolean, :default => nil
  add_column :history_females, :current_hormone_patch, :boolean, :default => nil
  add_column :history_females, :current_iud, :boolean, :default => nil
  add_column :history_females, :current_tubal_ligation, :boolean, :default => nil
  add_column :history_females, :current_other_contraceptive, :string, :default => nil
  
  #gynecologic
  add_column :history_females, :pap_smear_current, :boolean
  add_column :history_females, :last_pap_smear, :date, :default => nil
  add_column :history_females, :pap_smear_abnormal, :boolean 
  add_column :history_females, :pap_smear_abnormality, :string, :default => nil
  add_column :history_females, :mammogram_current, :boolean
  add_column :history_females, :last_mammogram, :date, :default => nil
  add_column :history_females, :breast_discharge, :boolean
  add_column :history_females, :current_acne, :boolean
  add_column :history_females, :unwanted_hair, :boolean
  add_column :history_females, :sexual_orientation, :string
  add_column :history_females, :sexual_partners, :integers
  add_column :history_females, :sexual_abuse, :boolean
  add_column :history_females, :abuse_counseling, :boolean, :default => nil
  add_column :history_females, :abuse_counseling_referral, :boolean, :default => nil
  add_column :history_females, :intercourse_pain, :boolean
  add_column :history_females, :weekly_intercourse_frequency, :integer
  add_column :history_females, :colposcopy, :boolean
  add_column :history_females, :colposcopy_date, :date, :default => nil
  add_column :history_females, :colposcopy_findings, :string, :default => nil
  add_column :history_females, :cone_biopsy, :boolean
  add_column :history_females, :cone_biopsy_date, :date, :default => nil
  add_column :history_females, :cone_biopsy_findings, :string, :default => nil
  add_column :history_females, :leep, :boolean
  add_column :history_females, :leep_date, :date, :default => nil
  add_column :history_females, :leep_findings, :string, :default => nil
  add_column :history_females, :cryosurgery, :boolean
  add_column :history_females, :cryosurgery_date, :date, :default => nil
  add_column :history_females, :laser_treatment, :boolean
  add_column :history_females, :laser_treatment_date, :date, :default => nil
  add_column :history_females, :std_or_infection, :boolean
  add_column :history_females, :gonorrhea, :boolean, :default => nil
  add_column :history_females, :chlamydia, :boolean, :default => nil
  add_column :history_females, :herpes, :boolean, :default => nil
  add_column :history_females, :syphillis, :boolean, :default => nil
  add_column :history_females, :hiv_or_aids, :boolean, :default => nil
  add_column :history_females, :hpv, :boolean, :default => nil
  
  #medical
  add_column :history_females, :blood_type, :string
  add_column :history_females, :medical_conditions, :boolean
      
      #...medical condition table
      
  add_column :history_females, :thyroid_medication, :boolean
  add_column :history_females, :synthroid, :boolean, :default => nil
  add_column :history_females, :levoxyl, :boolean, :default => nil
  add_column :history_females, :other_thyroid, :boolean, :default => nil
  
      #...medication table
      
  add_column :history_females, :vaccinations, :boolean
  
  add_column :history_females, :measles, :boolean, :default => nil
  add_column :history_females, :measles_when, :date, :default => nil
  add_column :history_females, :german_measles, :boolean, :default => nil
  add_column :history_females, :german_measles_when, :date, :default => nil
  add_column :history_females, :hepatitis_a, :boolean, :default => nil
  add_column :history_females, :hepatitis_a_when, :date, :default => nil
  add_column :history_females, :hepatitis_b, :boolean, :default => nil
  add_column :history_females, :hepatitis_b_when, :date, :default => nil
  add_column :history_females, :chickenpox, :boolean, :default => nil
  add_column :history_females, :chickenpox_when, :date, :default => nil
  add_column :history_females, :tuberculosis, :boolean, :default => nil
  add_column :history_females, :tuberculosis_when, :date, :default => nil
  add_column :history_females, :polio, :boolean, :default => nil
  add_column :history_females, :polio_when, :date, :default => nil
  add_column :history_females, :tetanus, :boolean, :default => nil
  add_column :history_females, :tetanus_when, :date, :default => nil
  add_column :history_females, :influenza, :boolean, :default => nil
  add_column :history_females, :influenza_when, :date, :default => nil
  
  add_column :history_females, :allergies, :boolean
      #...allergies table
      
  add_column :history_females, :surgeries, :boolean
      #surgeries table
  
  
  #environmental factors
  add_column :history_females, :smoke, :boolean
  add_column :history_females, :cigarettes_per_day, :integer, :default => nil
  add_column :history_females, :past_smoke, :boolean
  add_column :history_females, :past_cigarettes_per_day, :integer, :default => nil
  add_column :history_females, :smoke_quit, :date, :default => nil
  add_column :history_females, :alcohol, :boolean
  add_column :history_females, :alcohol_social, :boolean, :default => nil
  add_column :history_females, :alcohol_social_per_week, :integer, :default => nil
  add_column :history_females, :alcohol_daily, :boolean, :default => nil
  add_column :history_females, :alcohol_daily_per_day, :string, :default => nil
  add_column :history_females, :alcoholic, :boolean, :default => nil
  add_column :history_females, :alcoholic_amount_drinks, :integer, :default => nil
  add_column :history_females, :alcoholic_amount_often, :string, :default => nil
  add_column :history_females, :alcohol_dependence, :boolean
  add_column :history_females, :caffeine, :boolean
  add_column :history_females, :caffeine_amount, :string, :default => nil
  add_column :history_females, :recreational_drugs, :boolean
  add_column :history_females, :recreational_drugs_what, :string, :default => nil
  add_column :history_females, :herbal_medications, :boolean
  add_column :history_females, :herbal_medications_amount, :string, :default => nil
  add_column :history_females, :strenuous_activity, :boolean
  add_column :history_females, :strenuous_activity_often, :integer, :default => nil
  
  
  #genetic/family
  # sf=self, m=mother, f=father, b=brother, s=sister, c=child
  # gm=grandmother, gf=grandfather
  add_column :history_females, :family_medical_conditions, :boolean
      #genetic screens
  add_column :history_females, :early_menopause_sf, :boolean, :default => false
  add_column :history_females, :early_menopause_m, :boolean, :default => false
  add_column :history_females, :early_menopause_f, :boolean, :default => false
  add_column :history_females, :early_menopause_b, :boolean, :default => false
  add_column :history_females, :early_menopause_sr, :boolean, :default => false
  add_column :history_females, :early_menopause_c, :boolean, :default => false
  add_column :history_females, :early_menopause_gm, :boolean, :default => false
  add_column :history_females, :early_menopause_gf, :boolean, :default => false
  add_column :history_females, :endometriosis_sf, :boolean, :default => false
  add_column :history_females, :endometriosis_m, :boolean, :default => false
  add_column :history_females, :endometriosis_f, :boolean, :default => false
  add_column :history_females, :endometriosis_b, :boolean, :default => false
  add_column :history_females, :endometriosis_sr, :boolean, :default => false
  add_column :history_females, :endometriosis_c, :boolean, :default => false
  add_column :history_females, :endometriosis_gm, :boolean, :default => false
  add_column :history_females, :endometriosis_gf, :boolean, :default => false
  add_column :history_females, :infertility_sf, :boolean, :default => false
  add_column :history_females, :infertility_m, :boolean, :default => false
  add_column :history_females, :infertility_f, :boolean, :default => false
  add_column :history_females, :infertility_b, :boolean, :default => false
  add_column :history_females, :infertility_sr, :boolean, :default => false
  add_column :history_females, :infertility_c, :boolean, :default => false
  add_column :history_females, :infertility_gm, :boolean, :default => false
  add_column :history_females, :infertility_gf, :boolean, :default => false
  add_column :history_females, :miscarriage_sf, :boolean, :default => false
  add_column :history_females, :miscarriage_m, :boolean, :default => false
  add_column :history_females, :miscarriage_f, :boolean, :default => false
  add_column :history_females, :miscarriage_b, :boolean, :default => false
  add_column :history_females, :miscarriage_sr, :boolean, :default => false
  add_column :history_females, :miscarriage_c, :boolean, :default => false
  add_column :history_females, :miscarriage_gm, :boolean, :default => false
  add_column :history_females, :miscarriage_gf, :boolean, :default => false
  add_column :history_females, :diabetes_sf, :boolean, :default => false
  add_column :history_females, :diabetes_m, :boolean, :default => false
  add_column :history_females, :diabetes_f, :boolean, :default => false
  add_column :history_females, :diabetes_b, :boolean, :default => false
  add_column :history_females, :diabetes_sr, :boolean, :default => false
  add_column :history_females, :diabetes_c, :boolean, :default => false
  add_column :history_females, :diabetes_gm, :boolean, :default => false
  add_column :history_females, :diabetes_gf, :boolean, :default => false
  add_column :history_females, :retardation_chromosonal_sf, :boolean, :default => false
  add_column :history_females, :retardation_chromosonal_m, :boolean, :default => false
  add_column :history_females, :retardation_chromosonal_f, :boolean, :default => false
  add_column :history_females, :retardation_chromosonal_b, :boolean, :default => false
  add_column :history_females, :retardation_chromosonal_sr, :boolean, :default => false
  add_column :history_females, :retardation_chromosonal_c, :boolean, :default => false
  add_column :history_females, :retardation_chromosonal_gm, :boolean, :default => false
  add_column :history_females, :retardation_chromosonal_gf, :boolean, :default => false
  add_column :history_females, :retardation_x_mutation_sf, :boolean, :default => false
  add_column :history_females, :retardation_x_mutation_m, :boolean, :default => false
  add_column :history_females, :retardation_x_mutation_f, :boolean, :default => false
  add_column :history_females, :retardation_x_mutation_b, :boolean, :default => false
  add_column :history_females, :retardation_x_mutation_sr, :boolean, :default => false
  add_column :history_females, :retardation_x_mutation_c, :boolean, :default => false
  add_column :history_females, :retardation_x_mutation_gm, :boolean, :default => false
  add_column :history_females, :retardation_x_mutation_gf, :boolean, :default => false
  add_column :history_females, :birth_defects_sf, :boolean, :default => false
  add_column :history_females, :birth_defects_m, :boolean, :default => false
  add_column :history_females, :birth_defects_f, :boolean, :default => false
  add_column :history_females, :birth_defects_b, :boolean, :default => false
  add_column :history_females, :birth_defects_sr, :boolean, :default => false
  add_column :history_females, :birth_defects_c, :boolean, :default => false
  add_column :history_females, :birth_defects_gm, :boolean, :default => false
  add_column :history_females, :birth_defects_gf, :boolean, :default => false
  add_column :history_females, :pituitary_tumor_sf, :boolean, :default => false
  add_column :history_females, :pituitary_tumor_m, :boolean, :default => false
  add_column :history_females, :pituitary_tumor_f, :boolean, :default => false
  add_column :history_females, :pituitary_tumor_b, :boolean, :default => false
  add_column :history_females, :pituitary_tumor_sr, :boolean, :default => false
  add_column :history_females, :pituitary_tumor_c, :boolean, :default => false
  add_column :history_females, :pituitary_tumor_gm, :boolean, :default => false
  add_column :history_females, :pituitary_tumor_gf, :boolean, :default => false
  add_column :history_females, :breast_cancer_sf, :boolean, :default => false
  add_column :history_females, :breast_cancer_m, :boolean, :default => false
  add_column :history_females, :breast_cancer_f, :boolean, :default => false
  add_column :history_females, :breast_cancer_b, :boolean, :default => false
  add_column :history_females, :breast_cancer_sr, :boolean, :default => false
  add_column :history_females, :breast_cancer_c, :boolean, :default => false
  add_column :history_females, :breast_cancer_gm, :boolean, :default => false
  add_column :history_females, :breast_cancer_gf, :boolean, :default => false
  add_column :history_females, :ovarian_cancer_sf, :boolean, :default => false
  add_column :history_females, :ovarian_cancer_m, :boolean, :default => false
  add_column :history_females, :ovarian_cancer_f, :boolean, :default => false
  add_column :history_females, :ovarian_cancer_b, :boolean, :default => false
  add_column :history_females, :ovarian_cancer_sr, :boolean, :default => false
  add_column :history_females, :ovarian_cancer_c, :boolean, :default => false
  add_column :history_females, :ovarian_cancer_gm, :boolean, :default => false
  add_column :history_females, :ovarian_cancer_gf, :boolean, :default => false
  add_column :history_females, :cervical_cancer_sf, :boolean, :default => false
  add_column :history_females, :cervical_cancer_m, :boolean, :default => false
  add_column :history_females, :cervical_cancer_f, :boolean, :default => false
  add_column :history_females, :cervical_cancer_b, :boolean, :default => false
  add_column :history_females, :cervical_cancer_sr, :boolean, :default => false
  add_column :history_females, :cervical_cancer_c, :boolean, :default => false
  add_column :history_females, :cervical_cancer_gm, :boolean, :default => false
  add_column :history_females, :cervical_cancer_gf, :boolean, :default => false
  add_column :history_females, :uterine_cancer_sf, :boolean, :default => false
  add_column :history_females, :uterine_cancer_m, :boolean, :default => false
  add_column :history_females, :uterine_cancer_f, :boolean, :default => false
  add_column :history_females, :uterine_cancer_b, :boolean, :default => false
  add_column :history_females, :uterine_cancer_sr, :boolean, :default => false
  add_column :history_females, :uterine_cancer_c, :boolean, :default => false
  add_column :history_females, :uterine_cancer_gm, :boolean, :default => false
  add_column :history_females, :uterine_cancer_gf, :boolean, :default => false
  add_column :history_females, :bowel_cancer_sf, :boolean, :default => false
  add_column :history_females, :bowel_cancer_m, :boolean, :default => false
  add_column :history_females, :bowel_cancer_f, :boolean, :default => false
  add_column :history_females, :bowel_cancer_b, :boolean, :default => false
  add_column :history_females, :bowel_cancer_sr, :boolean, :default => false
  add_column :history_females, :bowel_cancer_c, :boolean, :default => false
  add_column :history_females, :bowel_cancer_gm, :boolean, :default => false
  add_column :history_females, :bowel_cancer_gf, :boolean, :default => false
  add_column :history_females, :colon_cancer_sf, :boolean, :default => false
  add_column :history_females, :colon_cancer_m, :boolean, :default => false
  add_column :history_females, :colon_cancer_f, :boolean, :default => false
  add_column :history_females, :colon_cancer_b, :boolean, :default => false
  add_column :history_females, :colon_cancer_sr, :boolean, :default => false
  add_column :history_females, :colon_cancer_c, :boolean, :default => false
  add_column :history_females, :colon_cancer_gm, :boolean, :default => false
  add_column :history_females, :colon_cancer_gf, :boolean, :default => false
  add_column :history_females, :anemia_sf, :boolean, :default => false
  add_column :history_females, :anemia_m, :boolean, :default => false
  add_column :history_females, :anemia_f, :boolean, :default => false
  add_column :history_females, :anemia_b, :boolean, :default => false
  add_column :history_females, :anemia_sr, :boolean, :default => false
  add_column :history_females, :anemia_c, :boolean, :default => false
  add_column :history_females, :anemia_gm, :boolean, :default => false
  add_column :history_females, :anemia_gf, :boolean, :default => false
  add_column :history_females, :bleeding_sf, :boolean, :default => false
  add_column :history_females, :bleeding_m, :boolean, :default => false
  add_column :history_females, :bleeding_f, :boolean, :default => false
  add_column :history_females, :bleeding_b, :boolean, :default => false
  add_column :history_females, :bleeding_sr, :boolean, :default => false
  add_column :history_females, :bleeding_c, :boolean, :default => false
  add_column :history_females, :bleeding_gm, :boolean, :default => false
  add_column :history_females, :bleeding_gf, :boolean, :default => false
  add_column :history_females, :autism_sf, :boolean, :default => false
  add_column :history_females, :autism_m, :boolean, :default => false
  add_column :history_females, :autism_f, :boolean, :default => false
  add_column :history_females, :autism_b, :boolean, :default => false
  add_column :history_females, :autism_sr, :boolean, :default => false
  add_column :history_females, :autism_c, :boolean, :default => false
  add_column :history_females, :autism_gm, :boolean, :default => false
  add_column :history_females, :autism_gf, :boolean, :default => false
  add_column :history_females, :chromosone_disorder_sf, :boolean, :default => false
  add_column :history_females, :chromosone_disorder_m, :boolean, :default => false
  add_column :history_females, :chromosone_disorder_f, :boolean, :default => false
  add_column :history_females, :chromosone_disorder_b, :boolean, :default => false
  add_column :history_females, :chromosone_disorder_sr, :boolean, :default => false
  add_column :history_females, :chromosone_disorder_c, :boolean, :default => false
  add_column :history_females, :chromosone_disorder_gm, :boolean, :default => false
  add_column :history_females, :chromosone_disorder_gf, :boolean, :default => false
  add_column :history_females, :muscular_sf, :boolean, :default => false
  add_column :history_females, :muscular_m, :boolean, :default => false
  add_column :history_females, :muscular_f, :boolean, :default => false
  add_column :history_females, :muscular_b, :boolean, :default => false
  add_column :history_females, :muscular_sr, :boolean, :default => false
  add_column :history_females, :muscular_c, :boolean, :default => false
  add_column :history_females, :muscular_gm, :boolean, :default => false
  add_column :history_females, :muscular_gf, :boolean, :default => false
  add_column :history_females, :hemophilia_sf, :boolean, :default => false
  add_column :history_females, :hemophilia_m, :boolean, :default => false
  add_column :history_females, :hemophilia_f, :boolean, :default => false
  add_column :history_females, :hemophilia_b, :boolean, :default => false
  add_column :history_females, :hemophilia_sr, :boolean, :default => false
  add_column :history_females, :hemophilia_c, :boolean, :default => false
  add_column :history_females, :hemophilia_gm, :boolean, :default => false
  add_column :history_females, :hemophilia_gf, :boolean, :default => false
  add_column :history_females, :huntington_sf, :boolean, :default => false
  add_column :history_females, :huntington_m, :boolean, :default => false
  add_column :history_females, :huntington_f, :boolean, :default => false
  add_column :history_females, :huntington_b, :boolean, :default => false
  add_column :history_females, :huntington_sr, :boolean, :default => false
  add_column :history_females, :huntington_c, :boolean, :default => false
  add_column :history_females, :huntington_gm, :boolean, :default => false
  add_column :history_females, :huntington_gf, :boolean, :default => false
  add_column :history_females, :polycystic_sf, :boolean, :default => false
  add_column :history_females, :polycystic_m, :boolean, :default => false
  add_column :history_females, :polycystic_f, :boolean, :default => false
  add_column :history_females, :polycystic_b, :boolean, :default => false
  add_column :history_females, :polycystic_sr, :boolean, :default => false
  add_column :history_females, :polycystic_c, :boolean, :default => false
  add_column :history_females, :polycystic_gm, :boolean, :default => false
  add_column :history_females, :polycystic_gf, :boolean, :default => false
  add_column :history_females, :neurofibromatosis_sf, :boolean, :default => false
  add_column :history_females, :neurofibromatosis_m, :boolean, :default => false
  add_column :history_females, :neurofibromatosis_f, :boolean, :default => false
  add_column :history_females, :neurofibromatosis_b, :boolean, :default => false
  add_column :history_females, :neurofibromatosis_sr, :boolean, :default => false
  add_column :history_females, :neurofibromatosis_c, :boolean, :default => false
  add_column :history_females, :neurofibromatosis_gm, :boolean, :default => false
  add_column :history_females, :neurofibromatosis_gf, :boolean, :default => false
  add_column :history_females, :marfan_sf, :boolean, :default => false
  add_column :history_females, :marfan_m, :boolean, :default => false
  add_column :history_females, :marfan_f, :boolean, :default => false
  add_column :history_females, :marfan_b, :boolean, :default => false
  add_column :history_females, :marfan_sr, :boolean, :default => false
  add_column :history_females, :marfan_c, :boolean, :default => false
  add_column :history_females, :marfan_gm, :boolean, :default => false
  add_column :history_females, :marfan_gf, :boolean, :default => false
  
  add_column :history_females, :other_birth_defect, :boolean
  add_column :history_females, :other_birth_defect_string, :string, :default => nil
  add_column :history_females, :mother_ancestry, :string
  add_column :history_females, :father_ancestry, :string
  add_column :history_females, :stillborn_child, :boolean
      
      #eastern european/jewish 
  add_column :history_females, :tay_sachs, :boolean
  add_column :history_females, :tay_sachs_when, :date, :default => nil
  add_column :history_females, :tay_sachs_finding, :string, :default => nil
  add_column :history_females, :canavan, :boolean
  add_column :history_females, :canavan_when, :date, :default => nil
  add_column :history_females, :canavan_finding, :string, :default => nil
  add_column :history_females, :bloom, :boolean
  add_column :history_females, :bloom_when, :date, :default => nil
  add_column :history_females, :bloom_finding, :string, :default => nil
  add_column :history_females, :gaucher, :boolean
  add_column :history_females, :gaucher_when, :date, :default => nil
  add_column :history_females, :gaucher_finding, :string, :default => nil
  add_column :history_females, :faconi_anemia, :boolean
  add_column :history_females, :faconi_anemia_when, :date, :default => nil
  add_column :history_females, :faconi_anemia_finding, :string, :default => nil
  add_column :history_females, :neimman, :boolean
  add_column :history_females, :neimman_when, :date, :default => nil
  add_column :history_females, :neimman_finding, :string, :default => nil
      #african
  add_column :history_females, :sickle_cell, :boolean
  add_column :history_females, :sickle_cell_when, :date, :default => nil
  add_column :history_females, :sickle_cell_finding, :string, :default => nil
      #european
  add_column :history_females, :cystic_fibrosis, :boolean
  add_column :history_females, :cystic_fibrosis_when, :date, :default => nil
  add_column :history_females, :cystic_fibrosis_finding, :string, :default => nil
      #italian/mediterranean
  add_column :history_females, :thalassemia, :boolean
  add_column :history_females, :thalassemia_when, :date, :default => nil
  add_column :history_females, :thalassemia_finding, :string, :default => nil
  
  
  #infertility tests
  
      #ultrasound
  add_column :history_females, :ultrasound, :boolean
  add_column :history_females, :ultrasound_when, :date, :default => nil
  add_column :history_females, :ultrasound_finding, :string, :default => nil
      #HSG
  add_column :history_females, :hsg, :boolean
  add_column :history_females, :hsg_finding, :string, :default => nil
      #hysterosonogram
  add_column :history_females, :hysterosonogram, :boolean
  add_column :history_females, :hysterosonogram_finding, :string, :default => nil
  
  
      #...laparoscopy table
  
      #...hysteroscopy table
      
      #other tests
  add_column :history_females, :day3_fsh, :boolean
  add_column :history_females, :day3_fsh_when, :date, :default => nil
  add_column :history_females, :day3_fsh_findings, :string, :default => nil
  add_column :history_females, :cct_day3_fsh, :boolean
  add_column :history_females, :cct_day3_fsh_when, :date, :default => nil
  add_column :history_females, :cct_day3_fsh_findings, :string, :default => nil
  add_column :history_females, :semen_analysis, :boolean
  add_column :history_females, :semen_analysis_when, :date, :default => nil
  add_column :history_females, :semen_analysis_findings, :string, :default => nil
  add_column :history_females, :blood_test, :boolean
  add_column :history_females, :blood_test_when, :date, :default => nil
  add_column :history_females, :blood_test_findings, :string, :default => nil
  add_column :history_females, :basal_body, :boolean
  add_column :history_females, :basal_body_when, :date, :default => nil
  add_column :history_females, :basal_body_findings, :string, :default => nil
  add_column :history_females, :endometrial, :boolean
  add_column :history_females, :endometrial_when, :date, :default => nil
  add_column :history_females, :endometrial_findings, :string, :default => nil
  add_column :history_females, :inhibin, :boolean
  add_column :history_females, :inhibin_when, :date, :default => nil
  add_column :history_females, :inhibin_findings, :string, :default => nil
  add_column :history_females, :post_coital, :boolean
  add_column :history_females, :post_coital_when, :date, :default => nil
  add_column :history_females, :post_coital_findings, :string, :default => nil
  add_column :history_females, :anti_sperm, :boolean
  add_column :history_females, :anti_sperm_when, :date, :default => nil
  add_column :history_females, :anti_sperm_findings, :string, :default => nil
  add_column :history_females, :chromosone_female, :boolean
  add_column :history_females, :chromosone_female_when, :date, :default => nil
  add_column :history_females, :chromosone_female_findings, :string, :default => nil
  add_column :history_females, :chromosone_male, :boolean
  add_column :history_females, :chromosone_male_when, :date, :default => nil
  add_column :history_females, :chromosone_male_findings, :string, :default => nil
  add_column :history_females, :anti_phospholipid, :boolean
  add_column :history_females, :anti_phospholipid_when, :date, :default => nil
  add_column :history_females, :anti_phospholipid_findings, :string, :default => nil
  add_column :history_females, :lupus, :boolean
  add_column :history_females, :lupus_when, :date, :default => nil
  add_column :history_females, :lupus_findings, :string, :default => nil
  add_column :history_females, :tsh, :boolean
  add_column :history_females, :tsh_when, :date, :default => nil
  add_column :history_females, :tsh_findings, :string, :default => nil
  add_column :history_females, :prolactin, :boolean
  add_column :history_females, :prolactin_when, :date, :default => nil
  add_column :history_females, :prolactin_findings, :string, :default => nil
  add_column :history_females, :lh, :boolean
  add_column :history_females, :lh_when, :date, :default => nil
  add_column :history_females, :lh_findings, :string, :default => nil
  add_column :history_females, :progestrone, :boolean
  add_column :history_females, :progestrone_when, :date, :default => nil
  add_column :history_females, :progestrone_findings, :string, :default => nil
  add_column :history_females, :other_test, :boolean
  add_column :history_females, :other_test_when, :date, :default => nil
  add_column :history_females, :other_test_findings, :string, :default => nil
  
  
  #past fertility treatments
  
      #clomiphene citrate cycle
  add_column :history_females, :clomiphene_citrate, :boolean
      #clomiphene citrate table
      
      #gonadotropins 
  add_column :history_females, :gonadotropins, :boolean
      #gonadotropins table
      
      #ivf cycle
  add_column :history_females, :ivf_cycle, :boolean
      #ivf cycle table
      
      #frozen embryo cycle
  add_column :history_females, :frozen_embryo, :boolean
      #frozen embryo table
  
  add_column :history_females, :gestational_surrogacy, :boolean
  add_column :history_females, :gestational_surrogacy_indication, :string, :default => nil
  add_column :history_females, :egg_donor, :boolean
  
  
  
  end
end
