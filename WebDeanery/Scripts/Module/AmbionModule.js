/// <reference path="../../AmbionPages/WebForm1.aspx" />
/// <reference path="../../AmbionPages/WebForm1.aspx" />
function AmbionModel() {
    var self = this;
    self.Facultets = ko.observableArray();
    self.Masnagitutyun = ko.observableArray();
    self.Kurs = ko.observableArray();
    self.FakultetText = ko.observable();
    self.MasnagitutyunText = ko.observable();
    self.year = ko.observable("");
    self.kursActive = ko.observable(false);
    self.ShowLoader = ko.observable(false);

    $.ajax({
        type: "POST",
        url: 'AmbionAttendance.aspx/GetFacultet',
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (data) {
            $.each(data.d.Facultet, function (key, value) {
                ko.toJSON(self.Facultets.push(value));
            });
            // $($("input:radio")[0]).attr("checked", "true");
            $('#tabs').smartTab({ autoProgress: false, stopOnFocus: true, transitionEffect: 'vSlide' });
            $($(".facultetName")[0]).click();
        },
        error: function (err) {
            alert(err.status + " - " + err.statusText);
        }
    });

    self.OpenFakultet = function (data, event) {
        self.Masnagitutyun.removeAll();
        var id = data.FacultetId - 1;
        //   self.ShowLoader(true);
        $.ajax({
            type: "GET",
            url: 'AmbionAttendance.aspx/GetMasnagitutyun?AmbionID=' + 1 + '&FakultetID=' + data.FacultetId,
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (datas) {
                $.each(datas.d.Masnagitutyun, function (key, value) {
                    ko.toJSON(self.Masnagitutyun.push(value));
                });
                self.ShowLoader(false);
                $.each(self.Masnagitutyun(), function (key, value) {
                    for (var i = 0; i < self.Masnagitutyun()[key].Kurs.length; i++) {
                        $(".stContainer>div.tabContent:eq(" + id + ")").find("ul.list>li:eq(" + key + ")").find('img:eq(' + (value.Kurs[i].Kurs - 1) + ')').removeClass("kursPassive");
                        $(".stContainer>div.tabContent:eq(" + id + ")").find("ul.list>li:eq(" + key + ")").find('img:eq(' + (value.Kurs[i].Kurs - 1) + ')').addClass("kursActive");
                    }
                });
            },

            error: function (err) {
                alert(err.status + " - " + err.statusText);
            }
        });


        self.FakultetText("Opened" + data.FacultetName);
        setTimeout(function () {
            $($(".masnagitutyunName")[0]).click();
        }, 200);

    };
    
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

    self.selectRadio = function (data, event) {
        if ($(event.target).attr("value") == "College") {

            console.log($(event.target).attr("value"));
        }
        return true;
        //$(event.target).attr("checked", "checked");
    };

    self.GoToAnotherPage = function(data,event) {
        var kursId = parseInt($(event.target).attr('alt'));
        var masnagitutyunId = data.MasnagitutyunId;
        var facultetId = data.FacultetId;
        var url = '?fac=' + facultetId + '&msg=' + masnagitutyunId + '&kurs=' + kursId;
        window.location.href = window.location.origin + '/AmbionPages/AmbionAttendanceCheck.aspx/' + url;

    };
}