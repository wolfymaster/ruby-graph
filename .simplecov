# frozen_string_literal: true

coverage_dir = File.join '.', ['tmp', 'reports', 'coverage']
coverage_dir = File.join '/', ['tmp', 'reports', 'coverage'] if ENV[COVOUT_DISABLE] == 'true'

FileUtils.mkdir_p(coverage_dir) unless File.directory?(coverage_dir)

SimpleCov.coverage_dir(coverage_dir)
SimpleCov.minimum_coverage 98.00
SimpleCov.minimum_coverage_by_file 90
SimpleCov.formatter = SimpleCov::Formatter::Console
SimpleCov.refuse_coverage_drop
