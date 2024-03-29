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
                album_name: "",
                artist: "",
                release_date: "",
                favourite_song: "",
                id: "",
                count: "",
                song_sample: "",
            }
        },

        methods: {
            previousAlbum() {
                let playlist = document.querySelector("#soundtrack-list")
                this.count--

                if (this.count < 0) {
                    this.count = this.albumsInfo.length-1
                }

                playlist.innerHTML = ""
            },

            nextAlbum() {
                let playlist = document.querySelector("#soundtrack-list")
                this.count++
                console.log(this.albumsInfo.length)

                if (this.count >= this.albumsInfo.length) {
                    this.count = 0
                }

                playlist.innerHTML = ""
            },

            setCount() {
                let arrayLength = this.albumsInfo.length
                this.count = 0
            },

            displayInfo() {
                const imageDiv = document.querySelector("#image-div")
                const albumInformation = document.querySelector("#album-information")

                if (albumInformation.style.display === "block") {
                    imageDiv.style.maxWidth = "70%"
                    albumInformation.style.display = "none"
                } else {
                    imageDiv.style.maxWidth = "50%"
                    albumInformation.style.display = "block"
                }
            },

            playAudio() {
                const songSample = document.querySelector("#song-sample")

                songSample.play()
            },

            getPlaylist(count) {
                fetch(`http://localhost/Westrop_S_Singer_D_HW3/Back-End/lumen/public/tracks/${count+1}`)
                .then(response => {
                    if (!response.ok) {
                        throw new Error('Network response error')
                    }
                    return response.json();
                })
                .then(tracks => {
                    const playlist = document.querySelector("#soundtrack-list")
                    console.log(tracks)
                    let i = 1

                    tracks.forEach(track => {
                        let p = document.createElement("p")

                        p.textContent = `${i}. ${track.song_name}`

                        playlist.appendChild(p)

                        i++
                    })
                })
            }
        },

        beforeMount() {
            this.setCount()
        }
    })

albums.mount("#app")
}