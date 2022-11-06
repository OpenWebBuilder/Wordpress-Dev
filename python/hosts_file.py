windowsPath = "C:\Windows\System32\drivers\etc\hosts"

this = "127.0.0.1       localhost	example.com		www.example.com"

def writeHosts():
    with open(windowsPath, 'a') as f:
        f.write(this)

if __name__ == '__main__':
    writeHosts()
