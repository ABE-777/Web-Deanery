function AmbionModel() {
    var self = this;
    self.Facultets = ko.observableArray();
    self.Masnagitutyun = ko.observableArray();
    self.Kurs = ko.observableArray();
    self.FakultetText = ko.observable();
    self.MasnagitutyunText = ko.observable();
    self.year = ko.observable("");
    self.kursActive = ko.observable(false);

    $.ajax({
        type: "POST",
        url: 'AmbionAttendance.aspx/GetFacultet',
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (data) {
            $.each(data.d.Facultet, function (key, value) {
                ko.toJSON(self.Facultets.push(value));
            });
            $($("input:radio")[0]).attr("checked", "true");
        },
        error: function (err) {
            alert(err.status + " - " + err.statusText);
        }
    });

    self.OpenFakultet = function (data, event) {
        self.Masnagitutyun.removeAll();
        $.ajax({
            type: "GET",
            url: 'AmbionAttendance.aspx/GetMasnagitutyun?FakultetID=' + data.FacultetId,
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (datas) {
                $.each(datas.d, function (key, value) {
                    ko.toJSON(self.Masnagitutyun.push(value));
                });
                $($("input:radio")[0]).attr("checked", "true");
            },
            error: function (err) {
                alert(err.status + " - " + err.statusText);
            }
        });
        self.FakultetText("Opened" + data.FacultetName);
        $(".facultetName>img").remove();
        $(event.target).append('<img src="/Resources/AmbionRes/ptichka.png"/>');
        setTimeout(function () {
            $($(".masnagitutyunName")[0]).click();
        }, 200);
    };

    self.OpenMasnagitutyun = function (data, event) {
        self.Kurs.removeAll();
        $('.kursDiv>img').addClass("kursPassive");
        $('.kursDiv>img').removeClass("kursActive");
        $('.kursDiv>img').css("display", "none");
        var dataId = (data != null && !isNaN(data)) ? 1 : data.MasnagitutyunId;
        $.ajax({
            type: "GET",
            url: 'AmbionAttendance.aspx/GetKurs?AmbionID=' + 1 + '&MasnagitutyunID=' + dataId,
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (datas) {
                $.each(datas.d, function (key, value) {
                    ko.toJSON(self.Kurs.push(value));
                    $($('.kursDiv>img')[value.Kurs - 1]).removeClass("kursPassive");
                    $($('.kursDiv>img')[value.Kurs - 1]).addClass("kursActive");

                });
                $('.kursDiv>img').css("display", "inline");
            },
            error: function (err) {
                alert(err.status + " - " + err.statusText);
            }
        });
        self.MasnagitutyunText("Opened" + data.Masnagitutyun);
        $(".masnagitutyunName>img").remove();
        $(event.target).append('<img src="/Resources/AmbionRes/ptichka.png"/>');
    };

    //self.CheckItem = function (data) {
    //    return true;
    //};

    //$("#chooseDiv").load(function() {

    //});

    self.SelectedAttributeValueIds = ko.observableArray();
    self.SelectedAttributeValueId = ko.computed({
        read: function () {
            var values = self.SelectedAttributeValueIds();
            //return values.length ? values[0] : [];
        },
        write: function (newValue) {
            if (newValue == "Bachelor") {
                alert("OK");
            }
            //self.SelectedAttributeValueIds([newValue]);
        },
        owner: self
    });

    self.selectRadio = function () {
        if ($(event.target).attr("value") == "College") {
            alert($(event.target).attr("value"));
        }
        return true;
        //$(event.target).attr("checked", "checked");
    };
}