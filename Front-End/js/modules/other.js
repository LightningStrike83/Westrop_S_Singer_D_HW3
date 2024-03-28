export function fetchAlbumsOther() {
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
                const albumDisplay = document.querySelector("#album-display")
                const leftArrow = document.querySelector("#left-arrow")
                const rightArrow = document.querySelector("#right-arrow")
                let count = 0

                function applyAlbums() {
                    let l = 0
                    while (l < 3) {
                        const albumDiv = document.createElement("div")
                        const albumIMG = document.createElement("img")
                        const albumArtist = document.createElement("p")
                        albumIMG.src = `../Front-End/images/${info[count].album_cover}`
                        albumArtist.textContent = info[count].artist
            
                        albumDiv.setAttribute("id", `album-${count}`)
                        albumDiv.setAttribute("class", "album-con")
                        albumIMG.setAttribute("class", "album-image")
                        albumArtist.setAttribute("class", "album-artist")
            
                        albumDiv.appendChild(albumIMG)
                        albumDiv.appendChild(albumArtist)
                        albumDisplay.appendChild(albumDiv)
            
                        l++
                        count++

                        if (count > info.length) {
                            count = 0
                        }

                        console.log(count)
                    }
                }

                applyAlbums()

                function subtractCount() {
                    count = count-6

                    if (count < 0) {
                        count = info.length-3
                    }

                    albumDisplay.innerHTML = ""
                    applyAlbums()
                }

                function addCount() {
                    albumDisplay.innerHTML = ""
                    console.log(count)
                    applyAlbums()
                }

                leftArrow.addEventListener("click", subtractCount)
                rightArrow.addEventListener("click", addCount)
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