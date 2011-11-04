module Devise
  def self.yield_and_restore
    @@warden_configured = nil
    c, b, m = @@warden_config, @@warden_config_block, @@mailers_hash.dup
    yield
  ensure
    @@warden_config, @@warden_config_block, @@mailers_hash = c, b, m
  end
end