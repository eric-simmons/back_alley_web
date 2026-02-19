class Cab
  ALL = YAML.load_file(Rails.root.join("db/seeds/cabs.yml"))
            .map { |h| h.transform_keys(&:to_sym) }
            .freeze

  def self.find_by_id(id)
    ALL.find { |c| c[:id] == id }
  end
end
