module ApplicationHelper

  def age(birthday)
    (Time.now.to_fs(:number).to_i - birthday.to_time.to_fs(:number).to_i) / 10e9.to_i
  end

  def international_phone_number(number)
    country = number.to_s[0..1]
    number_without_country = number.to_s[2..-1]
    if number.to_s.size == 13
      number_to_phone(number_without_country, country_code: country, pattern: /(\d{2})(\d{5})(\d{4})$/, area_code: true).gsub("-", " ")
    elsif number.to_s.size > 10
      number_to_phone(number_without_country, country_code: country)
    else
      number.to_s
    end
  end

end
