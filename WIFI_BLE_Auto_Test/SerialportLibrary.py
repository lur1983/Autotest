import serial

class SerialportLibrary(object):
    def __init__(self):
        self.result = ""
        self.t = {}

    def Open_serial_port(self):
        self.t=serial.Serial("com3",4800)
        print self.t.portstr
        return

    def Send_Command(self, cmd):
        strInput=cmd+"\r\n"
        self.t.write(strInput)
        str = self.t.readline()
        print str
        self.result = str
        return

    def Result_should_be(self, expected):
        print expected
        if self.result != expected:
            raise AssertionError('%s != %s' % (self.result, expected))
        return

    def Initialize_for_each_test_case(self):
        print "abc"
        return

    def Teardown_each_test_case(self):
        self.t.close()
        return
