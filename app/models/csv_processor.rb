class CsvProcessor < ActiveRecord::Base

	def begin()
		self.parse_csv
		self.send_customer_emails
		self.send_summary_email
	end

	def parse_csv

	end			

	def send_customer_emails
	end

	def send_summary_email
	end
end
