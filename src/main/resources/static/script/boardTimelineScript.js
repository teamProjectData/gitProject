$(function () {
    let loading = false;
    let endContent = $(".listlowMain").length; // 초기 게시물 수

    function debounce(func, delay) {
        let timer;
        return function () {
            clearTimeout(timer);
            timer = setTimeout(func, delay);
        };
    }

    function loadMoreContent() {
        if ($(window).scrollTop() + $(window).innerHeight() >= $('body').prop('scrollHeight')) {
            if (!loading) {
                loading = true;
                $.ajax({
                    type: "post",
                    url: "/doglist",
                    data: {
                        "param1": endContent,
                        "param2": "5"
                    },
                    dataType: "html",
                    async: true,
                    success: function (data) {
                        endContent = endContent + 5;
                        $("#testarea").append(data);
                        loading = false;
                    },
                    error: function () {
                        console.log("비동기 통신 실패");
                        loading = false;
                    }
                });
            }
        }
    }

    const debouncedLoadMore = debounce(loadMoreContent, 250); // 250ms 딜레이로 디바운스 적용

    $(window).on('scroll', debouncedLoadMore);
});
