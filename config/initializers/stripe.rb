if Rails.env.production?
  Rails.configuration.stripe = {
    :publishable_key => ENV['STRIPE_PUBLISHABLE_KEY'],
    :secret_key => ENV['STRIPE_SECRET_KEY']
  }
else
  Rails.configuration.stripe = {
    :publishable_key => 'pk_test_Rg4OUr30Haj8wUiQzxrwIj5y',
    :secret_key => 'sk_test_i5LADeJwJ54t53CC4ZCl3rd6'
  }
end

Stripe.api_key = Rails.configuration.stripe[:secret_key]
