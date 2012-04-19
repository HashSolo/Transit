class AddFieldsToHistoryMales < ActiveRecord::Migration
  def change
    
  #(1)basic
    add_column :history_males, :name, :string
    add_column :history_males, :occupation, :string
    add_column :history_males, :height_ft, :integer
    add_column :history_males, :height_in, :integer
    add_column :history_males, :change_weight, :boolean
    add_column :history_males, :weight, :integer
    add_column :history_males, :birth_date, :date
    add_column :history_males, :race, :string
    add_column :history_males, :age, :integer

  #(2)pregnancies section
    add_column :history_males, :past_pregnancy, :boolean
    add_column :history_males, :past_pregnancy_count, :integer
    #pregnancy table

  #(3)medical history section
    add_column :history_males, :medical_conditions_tf, :boolean
      #medical condition table
    add_column :history_males, :medications_tf, :boolean
      #medication table
    add_column :history_males, :herbal_medications, :boolean
    add_column :history_males, :herbal_amount, :integer
    add_column :history_males, :surgeries_tf, :boolean
      #surgery table
    add_column :history_males, :stds_tf, :boolean
      #STD table
    add_column :history_males, :allergies_tf, :boolean
      #allergy table
    add_column :history_males, :mumps, :boolean
    add_column :history_males, :mumps_age, :integer
    add_column :history_males, :erections_difficulty, :boolean
    add_column :history_males, :impregnation_difficulty, :boolean
    add_column :history_males, :sperm_donor, :boolean
    add_column :history_males, :hormone_treatments, :boolean
    add_column :history_males, :vasectomy, :boolean
    add_column :history_males, :testicles_surgery, :boolean
    add_column :history_males, :testicles_undescended, :boolean
    add_column :history_males, :testicles_trauma, :boolean
    add_column :history_males, :testicles_swelling, :boolean
    add_column :history_males, :testicles_twist, :boolean
    add_column :history_males, :white_cells, :boolean
    add_column :history_males, :prostate_infection, :boolean
      
  #(4)Environmental Factors
  
  #(5)Genetic/Family History
  
  #(6)Male Infertility Tests  

  
    
    
    
  end
end
