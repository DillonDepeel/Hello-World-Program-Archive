  define fileset name="Hello",entries=10000,filesize=16k,prealloc,path="/tmp"
 define process name="readerP",instances=2 {
  thread name="readerT",instances=3 {
     flowop openfile name="Hello Word!",filesetname="Hello"
     flowop readwholefile name="Hello world!",filesetname="Hello"
     flowop closefile name="Bye Now"
    }
  }

 run 60
