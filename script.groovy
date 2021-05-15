def runTest() {
  println 'this is the runTest function'
}
def finalRun() {
  println 'this is the finalRun function' 
  def runParam() {
    echo "let check if this works ${params.My_String} "
  }
}
return this 
