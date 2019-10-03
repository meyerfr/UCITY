const proposal_cards = document.querySelectorAll('.proposal-card-container');

const makeGreen = (event) => {
  if (event.currentTarget.querySelector('.proposal-picture-slider').querySelector('.fa-check-circle').hidden) {
    event.currentTarget.querySelector('.proposal-picture-slider').querySelector('.fa-check-circle').hidden = false;
    event.currentTarget.querySelector('.proposal-picture-slider').querySelector('.fa-circle').hidden = true;
  } else{
    event.currentTarget.querySelector('.proposal-picture-slider').querySelector('.fa-check-circle').hidden = true;
    event.currentTarget.querySelector('.proposal-picture-slider').querySelector('.fa-circle').hidden = false;
  };
}

function checkButton() {
  if (proposal_cards) {
    proposal_cards.forEach((card) => {
      card.addEventListener("click", makeGreen);
    })
  };
}

export { checkButton };
