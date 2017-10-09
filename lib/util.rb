require 'csv'

module Util

  def self.read_csv_file(path)
    begin
      CSV.read(file)
    rescue
      return nil
    end
  end

  def self.read_first_line(file)
    begin
      csv_filepath = File.expand_path("../" + file, __FILE__)
      arr_of_arrs = CSV.read(csv_filepath)
    rescue
      return nil
    end
    return arr_of_arrs[1].join(",")
  end

  def self_file_corrupt(file)
    begin
      csv_filepath = File.expand_path("../" + file, __FILE__)
      arr_of_arrs = CSV.read(csv_filepath)
    rescue
      return nil
    end
    return arr_of_arrs[1].join(",")

  end

end
