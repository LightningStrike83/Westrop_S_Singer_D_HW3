export function fetchAlbums() {
    const albums = Vue.createApp ({
        created() {
            fetch('http://localhost/Westrop_S_Singer_D_HW3/Back-End/lumen/public/albums')
            .then(response => {
                if (!response.ok) {
                    throw new Error('Network response error')
                }
                return response.json();
            })
            .then (info => {
                console.log(info)
                this.albumsInfo = info
            })
            .catch(error => {
                console.log(error)
            })
        },

        data() {
            return {
                albumsInfo: [],
                album_cover: "",
                artist: "",
            }
        },

        
    })

albums.mount("#app")
}