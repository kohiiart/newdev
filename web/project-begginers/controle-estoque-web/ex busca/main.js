const input = document.querySelector('input')

input.addEventListener('keyup', function (){
    const arrayItems = ['banana', 'goiaba', 'eeeooo', 'xpto']

    console.log(
        'encontrou-------------- ', arrayItems.filter(item => item.includes(input.value))
    )
})  