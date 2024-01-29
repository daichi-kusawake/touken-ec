class AppraisalDocument < ApplicationRecord
    has_one :product,dependent: :destroy

    #enum appraisal_document_name: {preserved_sword: 0,specially_preserved_sword:1,important_sword:2,specially_important_sword:3}
end
