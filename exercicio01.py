class student:

    def __init__(self):
        
        self.id = 0
        self.name = ''
        self.email = ''
        self.password = ''

    def setId(self, id ):
        self.id = id.strip(id)

    def setName(self, name ):
        self.name = name.strip(name)

    def setEmail(self, email ):
        self.email = email.strip(email)

    def setPassword(self, password ):
        self.password = password.strip(password)
        
    def getId(self):
         return self.id

    def getName(self):
         return self.name

    def getEmail(self):
         return self.email

    def getPassword(self):
         return self.password      

