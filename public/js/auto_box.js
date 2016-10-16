function myFunction() {
    var x = document.getElementById("myInput").value;
    for (i = 0; i < x; i++)
    //var y = is equivelent to y = 
    document.getElementById("demo").innerHTML = "Enter their names in the boxes below:<br> If you don't enter the information in the correct boxes, dementors will hunt you down and suck out your soul! ";

    for (var i = 1; i <= x; i++){
    var input = document.createElement("input");
    // var c = document.body.children;
    input.type = "text";
    input.name = "text" + i; //names the element
    input.id = "marv";
    input.required = true;
    document.getElementById("demo").appendChild(input).value;

// i wants to make the contents of boxes to an array of strings called by variable

}
 
}