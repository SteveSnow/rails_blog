function stringy(size) {
	var arr=[]
  for (var i = 0; i < size; i++) {
  	if (i%2==0) {
  		arr.push(1)  	}
      else{arr.push(0)}
  }
debugger;
  return arr.join()
}