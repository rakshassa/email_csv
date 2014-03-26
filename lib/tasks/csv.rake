namespace :csv do
	desc 'Handle CSV files'
	task :process => :environment do
		filename = APP_CONFIG['input_file_full_path']

		CsvProcessor.delete_all
	
		n = SmarterCSV.process(filename, {:chunk_size => 100, 
				:key_mapping => {:created_at => nil, :id => nil, :updated_at => nil, :name => :first_name}}) do |chunk|
      		# each chunk contains an array of hashes. 
      		# the hashes are key/value pairs for the columns sutiable for create methods
      		chunk.each do |row|
      			CsvProcessor.create(row)
      		end
      	end

      	puts CsvProcessor.count

	end
end