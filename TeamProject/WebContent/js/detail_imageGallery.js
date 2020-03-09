const current = document.querySelector('#current');
const imgs = document.querySelectorAll('.imgs img');
const opacity = 0.4; // 디폴트값

// Set first image opacity 
// 페이지에 접속하면, 디폴트로, 하단 첫 이미지에 opacity 먹여져 있도록 해주자
imgs[0].style.opacity = opacity;

// imgs.forEach(img => 
//     img.addEventListener('click', e =>  (current.src = e.target.src))
// );

imgs.forEach(img => img.addEventListener('click', imgClick));

function imgClick(e){
    // Reset the opaicty (of all imgs)
    imgs.forEach(img => (img.style.opacity = 1));


    // 상단 current 이미지 변경 
    current.src = e.target.src;

    // Add fade in class 
    // 이것만 하면 하단 이미지를 처음 클릭했을 때만 상단 이미지가 fade-in 되고, 두번째 클릭부터는 상단 이미지 fade-in 안 됨. 
    // fade-in은 상단 이미지 영역에 머물러 있기 때문.. ==> setTimeout 해주자.
    current.classList.add('fade-in');

    // Remove fade-in class
    setTimeout(() => current.classList.remove('fade-in'), 
    500);

    // Change the opacity
    e.target.style.opacity = opacity;
}