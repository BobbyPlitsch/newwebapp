if Rails.env.production?
  Rails.configuration.stripe = {
    :publishable_key => ENV['STRIPE_PUBLISHABLE_KEY'],
    :secret_key => ENV['STRIPE_SECRET_KEY']
  }
else
  Rails.configuration.stripe = {
    :publishable_key => 'pk_test_r4Lw4JHAyOSyiT9eIXIWIKUl',
    :secret_key => 'sk_test_1EE1kLy0CZfu2RJhI4hl5fJu'
  }
end

Stripe.api_key = Rails.configuration.stripe[:secret_key]
