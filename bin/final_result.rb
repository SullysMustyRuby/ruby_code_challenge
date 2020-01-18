
#!/usr/bin/env ruby

require 'csv'

class FinalResult
  def results(f)
    d = File.open(f, "r")
    h = CSV.parse_line(d)
    rcs = []
    CSV.foreach(f) do |r|
      if r.length == 16
        amt = r[8].nil? || r[8] == "0" ? 0 : r[8].to_f
        ban = r[6].nil? ? "Bank account number missing" : r[6].to_i
        bac = r[2].nil? ? "Bank branch code missing" : r[2]
        e2e = r[10].nil? && r[11].nil? ? "End to end id missing" : r[10] + r[11]
        rcd = {
          amount: {
            currency: h[0],
            subunits: (amt * 100).to_i,
          },
          bank_account_name: r[7].downcase.gsub(" ", "_"),
          bank_account_number: ban,
          bank_branch_code: bac,
          bank_code: r[0],
          end_to_end_id: e2e,
        }
        rcs << rcd
      end
    end
    rcs.compact
    {
      filename: File.basename(f),
      document: d,
      failure_code: h[1],
      failure_message: h[2],
      records: rcs
    }
  end
end