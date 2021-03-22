let date = new Date()

let current_year = new date.getFullYear();
document.getElementById('current_year').textContent = current_year;

let last_updated = document.lastModified;
document.getElementById('last_updated').textContent = last_updated;

const days = ['Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday']
let today = days[date.getDay()]
let date_num = date.getDate()
const months = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]
let month = months[date.getMonth()]
let year = date.getFullYear()

let full_date = today.concat(", ", date_num, " ", month, " ", year)