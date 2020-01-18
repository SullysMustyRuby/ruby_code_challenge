require 'spec_helper'
require_relative '../bin/final_result'

describe FinalResult do
	describe "results" do
		it "returns the correct hash" do
			res = FinalResult.new.results("spec/support/data_sample.csv")
			res.delete(:document)
			expect(res).to eq expected_return
		end
	end

	def expected_return
		{
			:filename=>"data_sample.csv",
	 		:failure_code=>"100",
	 		:failure_message=>"All systems go",
	 		:records=>[
				{:amount=>{:currency=>"SGD", :subunits=>0}, :bank_account_name=>"sing_bank", :bank_account_number=>12345678987, :bank_branch_code=>"221", :bank_code=>"1034", :end_to_end_id=>"Abcdef1226"},
				{:amount=>{:currency=>"SGD", :subunits=>0}, :bank_account_name=>"hsbc", :bank_account_number=>12345678986, :bank_branch_code=>"Bank branch code missing", :bank_code=>"1035", :end_to_end_id=>"Abcdef1498"},
				{:amount=>{:currency=>"SGD", :subunits=>5025694}, :bank_account_name=>"shinsei_ginko", :bank_account_number=>12345678985, :bank_branch_code=>"223", :bank_code=>"1036", :end_to_end_id=>"Abcdef1947"},
				{:amount=>{:currency=>"SGD", :subunits=>1615467}, :bank_account_name=>"sumitomo", :bank_account_number=>12345678984, :bank_branch_code=>"224", :bank_code=>"1037", :end_to_end_id=>"Abcdef1517"},
				{:amount=>{:currency=>"SGD", :subunits=>8733122}, :bank_account_name=>"sing_bank", :bank_account_number=>"Bank account number missing", :bank_branch_code=>"225", :bank_code=>"1038", :end_to_end_id=>"Abcdef1155"},
				{:amount=>{:currency=>"SGD", :subunits=>3731912}, :bank_account_name=>"hsbc", :bank_account_number=>12345678982, :bank_branch_code=>"226", :bank_code=>"1039", :end_to_end_id=>"Abcdef1431"},
				{:amount=>{:currency=>"SGD", :subunits=>4951600}, :bank_account_name=>"shinsei_ginko", :bank_account_number=>12345678981, :bank_branch_code=>"303", :bank_code=>"1040", :end_to_end_id=>"Abcdef1999"},
				{:amount=>{:currency=>"SGD", :subunits=>2579194}, :bank_account_name=>"sumitomo", :bank_account_number=>12345678980, :bank_branch_code=>"304", :bank_code=>"1041", :end_to_end_id=>"Abcdef1536"},
				{:amount=>{:currency=>"SGD", :subunits=>8450664}, :bank_account_name=>"sing_bank", :bank_account_number=>12345678979, :bank_branch_code=>"305", :bank_code=>"1042", :end_to_end_id=>"End to end id missing"},
				{:amount=>{:currency=>"SGD", :subunits=>9619224}, :bank_account_name=>"hsbc", :bank_account_number=>12345678978, :bank_branch_code=>"306", :bank_code=>"1043", :end_to_end_id=>"Abcdef1028"},
				{:amount=>{:currency=>"SGD", :subunits=>7006119}, :bank_account_name=>"shinsei", :bank_account_number=>12345678977, :bank_branch_code=>"307", :bank_code=>"1044", :end_to_end_id=>"Abcdef1790"},
				{:amount=>{:currency=>"SGD", :subunits=>3163545}, :bank_account_name=>"sumitomo", :bank_account_number=>12345678976, :bank_branch_code=>"123", :bank_code=>"1045", :end_to_end_id=>"Abcdef1188"},
				{:amount=>{:currency=>"SGD", :subunits=>7635283}, :bank_account_name=>"sing_bank", :bank_account_number=>12345678975, :bank_branch_code=>"124", :bank_code=>"1046", :end_to_end_id=>"Abcdef1583"},
				{:amount=>{:currency=>"SGD", :subunits=>7571264}, :bank_account_name=>"hsbc", :bank_account_number=>12345678974, :bank_branch_code=>"125", :bank_code=>"1047", :end_to_end_id=>"Abcdef1463"},
				{:amount=>{:currency=>"SGD", :subunits=>5275271}, :bank_account_name=>"shinsei_ginko", :bank_account_number=>12345678973, :bank_branch_code=>"721", :bank_code=>"1048", :end_to_end_id=>"Abcdef1995"},
				{:amount=>{:currency=>"SGD", :subunits=>6648242}, :bank_account_name=>"sumitomo", :bank_account_number=>12345678972, :bank_branch_code=>"722", :bank_code=>"1049", :end_to_end_id=>"Abcdef1633"},
				{:amount=>{:currency=>"SGD", :subunits=>6765289}, :bank_account_name=>"bot", :bank_account_number=>12345678971, :bank_branch_code=>"723", :bank_code=>"1050", :end_to_end_id=>"Abcdef1115"}
			]
 		}
	end
end

