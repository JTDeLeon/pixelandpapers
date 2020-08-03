// This is the test JS for the build
console.log('js is properly set');

// Desktop Hover Boxes in Nav Header
document.querySelectorAll('.hover-box').forEach((item)=>{
    item.addEventListener('mouseover',(e, target)=>{
        if(document.querySelectorAll('.hoverBox').style){
            document.querySelectorAll('.hoverBox').forEach((item)=>{
                item.style.display = 'none';
            });
        }
        var boxClass = figureOutWhichBox(e.fromElement.classList);
        console.log('box class is ', boxClass);
        addHoverBox(boxClass);
        
    })
});
document.querySelectorAll('.hoverBox').forEach((item)=>{
    item.addEventListener('mouseleave',(e)=>{
        console.log('mousing out now');
        e.fromElement.style.display = 'none';
    })
});

function addHoverBox(boxClass) {
    if(boxClass){
        console.log('it was moused over ', boxClass);
        var x = document.querySelector('.'+boxClass);
        console.log(x);
        if (x.style.display === "none") {
            x.style.display = "block";
        } else {
            x.style.display = "none";
        }
    }
}

function figureOutWhichBox(classList) {
    var y = '';
    classList.forEach((item,indx)=>{
        if(item === 'servicesNav'){
            console.log('Services Bar should show')
            y = 'serviceBox';
        } else if(item === 'clientsNav'){
            console.log('Clients Bar should show')
            y = 'clientsBox';
        }
    });
    return y;
}
