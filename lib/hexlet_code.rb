require "hexlet_code/version"

module HexletCode
  class Error < StandardError; end
  class Tag
    UNPAIRED_TAG=['br', 'input', 'img']
    PAIRED_TAG=['label', 'div']

    def self.build(params, *args, &block)
      tag = "<#{params}"
      unless args.empty?
        args[0].each { |n, k| tag += " #{n}='#{k}'"}
      end
      tag += '>'
      tag += "#{yield}" if block_given?
      if PAIRED_TAG.include? params.to_s.downcase
        tag += "</#{params}>"
      end
      tag
    end
  end
end
