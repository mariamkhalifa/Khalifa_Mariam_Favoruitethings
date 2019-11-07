// this is a partially revealing module pattern - just a variation on what we've already done

const myVM = (() => {
   let lightBox = document.querySelector('.lightbox'),
       mysteryItems = document.querySelectorAll('.mystery-link'),
       close = document.querySelector('.off');

   //functions

   function parseItemData(item) {
      console.log('workin');
      lightBox.style.display = 'flex';
      document.querySelector('.item-img').src = `images/s-${item.Image}`;
      document.querySelector('.item-title').innerHTML = `${item.Title}`;
      document.querySelector('.item-desc').innerHTML = `${item.Description}`;
      document.querySelector('.item-reason').innerHTML = `${item.Reason}`;
      document.querySelector('.item-frequency').innerHTML = `${item.Frequency}`;
   }

   function revealItem(e) {
      e.preventDefault();
     
      let url = `/favourites/${this.getAttribute('href')}`;
      fetch(url)
         .then(res => res.json())
         .then(data => {
            console.log(data);
            parseItemData(data);
         })
         .catch((err) => console.log(err));
   }

   function closeLightBox() {
      console.log('off');
      lightBox.style.display = 'none';
   }

   //events
   mysteryItems.forEach (btn => {
      btn.addEventListener('click', revealItem);
   })
   close.addEventListener('click', closeLightBox);

})();