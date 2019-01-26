require 'pry'
def nyc_pigeon_organizer(data)
  # initialize a holder hash that creates a two-level nested hash when encountering new keys
  new_hash = Hash.new { |hash, key| hash[key] = {} }

  data.each do |attr_grp, attrs|
    attrs.each do |attr, vals|
      vals.each do |val|
        if new_hash[val][attr_grp]
          new_hash[val][attr_grp] << attr.to_s
        else
          new_hash[val][attr_grp] = [attr.to_s]
        end
      end
    end
  end

  new_hash
end
