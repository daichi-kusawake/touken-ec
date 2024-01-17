class CreateAppraisalDocuments < ActiveRecord::Migration[7.1]
  def change
    create_table :appraisal_documents do |t|
      t.string :appraisal_document_name

      t.timestamps
    end
  end
end
