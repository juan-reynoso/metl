function liveStreamingExample (){
    var media = document.getElementById("video-hls");
    if(Hls.isSupported()) {
	var hls = new Hls();
	hls.loadSource("/video/hls-video/index.m3u8");
	hls.attachMedia(media);
	hls.on(Hls.Events.MANIFEST_PARSED,function() {
	    media.play();
	});
    }
}
