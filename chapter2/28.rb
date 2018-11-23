module SuperForwardable

  # モジュールフック
  def self.extended(klass)
    require('forwardable')
    klass.extend(Forwardable)
  end

  def def_delegators_with_super (target, *methods)
    mothods.each do |method|
      target_method = "#{method}_without_super".to_sym
      def_delegator(target, method, target_method)

      define_method(method) do |*args, &block|
        send(target_method, *args, &block)
        super(*args, &block)
      end
    end
  end
end