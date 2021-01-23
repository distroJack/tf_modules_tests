
function IncNumber () {
    num = parseInt(document.getElementById("number").innerText);
    console.log(num);
    document.getElementById("number").innerText = num + 1;
}