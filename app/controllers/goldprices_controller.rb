class GoldpricesController < ApplicationController

  def home
  end

  def convert
    @currencies = ['AED', 'AFN', 'ALL', 'AMD', 'ANG', 'AOA', 'ARS', 'AUD', 'AWG',
      'AZN', 'BAM', 'BBD', 'BDT', 'BGN', 'BHD', 'BIF', 'BMD', 'BND', 'BOB', 'BRL',
      'BSD', 'BTN', 'BWP', 'BYR', 'BZD', 'CAD','CDF','CHF', 'CKD', 'CLP', 'CNY', 'COP',
      'CRC', 'CUP', 'CVE', 'CZK', 'DJF', 'DKK', 'DOP','DZD', 'EGP', 'ERN', 'ETB', 'FJD',
      'FKP', 'FOK', 'GBP', 'GEL', 'GGP', 'GHS', 'GIP', 'GMD', 'GNF', 'GTQ', 'GYD', 'HKD',
      'HNL', 'HTG', 'HUF', 'IDR', 'ILS', 'IMP', 'INR', 'IQD', 'IRR', 'ISK', 'JEP', 'JMD',
      'JOD', 'JPY', 'KES', 'KGS', 'KHR', 'KID', 'KMF', 'KPW', 'KRW', 'KWD', 'KYD', 'KZT',
      'LAK', 'LBP', 'LKR', 'LRD', 'LSL', 'LYD', 'MAD', 'MDL', 'MGA', 'MKD', 'MMK', 'MNT',
      'MOP', 'MRO', 'MUR', 'MVR', 'MWK', 'MXN', 'MYR', 'MZN', 'NAD', 'NGN', 'NIO', 'NOK',
      'NPR', 'NZD', 'OMR', 'PAB', 'PEN', 'PGK', 'PHP', 'PKR', 'PLN', 'PYG', 'QAR', 'RON',
      'RSD', 'RUB', 'RWF', 'SAR', 'SBD', 'SCR', 'SDG', 'SEK', 'SGD', 'SHP', 'SLL', 'SOS',
      'SRD', 'SSP', 'STD', 'SYP', 'SZL', 'THB', 'TJS','TMT', 'TND', 'TOP', 'TRY', 'TTD',
      'TVD', 'TWD', 'TZS','UAH', 'UGX', 'USD', 'UYU', 'UZS', 'VND', 'VUV', 'WST', 'XAF',
      'XCD', 'XOF', 'XPF', 'YER', 'ZAR', 'ZMW', 'ZWL']

      @units = ['once', 'gram', 'kilogram']

      if params[:currency] && params[:units]
        @currencies = @currencies.select { |currency| currency.start_with?(params[:currency]) }
        @units = @units.select { |unit| unit.start_with?(params[:unit]) }
      end
  end
end
