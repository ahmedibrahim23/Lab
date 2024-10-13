//Assignment 3

let number=27;

do{
    if(number%2==0){
        console.log(number)
    }
    number--;
}while(number >=2);

// Assignment 4

let num_1=70;
let num_2=42
const min=(a,b)=>{
    if(a<b)
        return a
}
let min_num=min(num_1,num_2)

let i=1;

while(i<=44){
    if(num_1%i==0 && num_2 %i==0){
        console.log(i)
    }
    i++;
}
//Assignment 5
let Number_1=70
let number_2=40
let hcf=1

const min=(a,b)=>{
    if(a<b){
        min_num=a
    } 
    else{
        min_num=b
    }
    return min_num
}
min_number=min(Number_1,number_2)
console.log(min_number)
for(i=1; i<=min_number;i++){
    if(Number_1%i==0 & number_2 % i==0){
        hcf=i
    }
}
console.log(hcf)


//Assignment 6

let num=90

while(num >=12){
    for(var j=1; j<=num; j++){
        if(num % j==0)
            console.log(num)
            break;
    }
    num--
}

