export function fetchAlbums() {
    fetch('http://localhost/Westrop_S_Singer_D_HW3/Back-End/lumen/public/albums')
    .then(response => {
        if (!response.ok) {
            throw new Error('Network response error')
        }
        return response.json();
    })
    .then(info => {
        console.log(info)
    })
    .catch(error => {
        console.log(error)
    })
}