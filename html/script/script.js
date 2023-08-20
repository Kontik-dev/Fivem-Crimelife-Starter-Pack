$(function () {
    function display(bool) {
        if (bool) {
            $("body").fadeIn();
        } else {
            $("body").fadeOut();
        }
    }

    display(false)

    window.addEventListener('message', function(event) {
        var item = event.data;
        if (item.type === "ui") {
            if (item.status == true) {
                display(true)
            } else {
                display(false)
            }
        }
    })
    document.onkeyup = function (data) {
        if (data.which == 27) {
            $.post('https://Kontik_StarterPack/exit', JSON.stringify({}));
            return
        }
    };
    $(".accept").click(function () {
        $.post('http://Kontik_StarterPack/join', JSON.stringify({}));
        return
    })
})
