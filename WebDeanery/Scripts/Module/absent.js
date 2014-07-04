$(function () {
    $(".asd").keyup(function (event) {
        absent(event);
    });

    $(".asd").focusout(function (event) {
        absent(event);
    });
    function absent(event) {
        var sumValue = 0;
        if (!isNaN($(event.target).val())) {
            if ($(event.target).val() == "" || (parseInt($(event.target).val()) == 2 || parseInt($(event.target).val()) == 4)) {
                $(event.target).parents("tr").find(".all").val(0);
                $.each($(event.target).parents("tr").find('.asd'), function (key, value) {
                    if (isNaN($(value).val()) || $(value).val() == "") {
                        $(event.target).parents("tr").find(".all").val(parseInt($(event.target).parents("tr").find(".all").val()) + sumValue);
                    } else if (parseInt($(value).val()) == 2 || parseInt($(value).val()) == 4) {
                        $(event.target).parents("tr").find(".all").val(parseInt($(event.target).parents("tr").find(".all").val()) + parseInt($(value).val()));
                    }
                });
            } else {
                $(event.target).val("");
                absent(event);
            }
        } else {
            $(event.target).val("");
            absent(event);
        }
    };
});