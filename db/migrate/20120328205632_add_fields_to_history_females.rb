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
  add_column :history_females, :pregnancies, :integer
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
  add_column :history_females, :premarin: :boolean
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
  add_column :history_females, :abuse_counseling_referral, :default => nil
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
  add_column :history_females, :cryosurgery, :date, :default => nil
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
  #medical condition table
  #.........
  
  #environmental factors
  
  
  #genetic/family
  
  #infertility tests
  
  #past fertility treatments
  
  end
end
