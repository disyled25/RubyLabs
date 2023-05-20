class Student
  def initialize(id, last_name, first_name, surname, phone, telegram, mail, github)
    @id = id
    @last_name = last_name
    @first_name = first_name
    @surname = surname
    @phone = phone
    @telegram = telegram
    @mail = mail
    @github = github
  end
  
  # геттеры
  def id
    @id
  end
  
  def last_name
    @last_name
  end
  
  def first_name
    @first_name
  end
  
  def surname
    @surname
  end
  
  def phone
    @phone
  end
  
  def telegram
    @telegram
  end
  
  def mail
    @mail
  end
  
  def github
    @github
  end
  
  # сеттеры
  def id=(new_id)
    @id = new_id
  end
  
  def last_name=(new_last_name)
    @last_name = new_last_name
  end
  
  def first_name=(new_first_name)
    @first_name = new_first_name
  end
  
  def surname=(new_surname)
    @surname = new_surname
  end
  
  def phone=(new_phone)
    @phone = new_phone
  end
  
  def telegram=(new_telegram)
    @telegram = new_telegram
  end
  
  def mail=(new_mail)
    @mail = new_mail
  end
  
  def github=(new_github)
    @github = new_github
  end
end