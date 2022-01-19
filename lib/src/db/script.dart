

const createTable = '''
  CREATE TABLE  check(
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  totalPrice DOUBLE(10),
  isDriking BOOLEAN,
  numPeople INTEGER(),
  waiterPercentage DOUBLE(10),
  pricePerPerson DOUBLE(10),
  )
''';

const insert1='''
  INSERT INTO check(totalPrice,isDriking,numPeople,waiterPercentage,pricePerPerson)
  VALUES("100","true","2","10","
  ,")
''';

const insert2='''
  INSERT INTO check(totalPrice,isDriking,numPeople,waiterPercentage,pricePerPerson)
  VALUES("","","","","")
''';

const insert3='''
  INSERT INTO check(totalPrice,isDriking,numPeople,waiterPercentage,pricePerPerson)
  VALUES("","","","","")
''';