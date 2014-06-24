function AmbionModel() {
    var self = this;
    self.Facultets = ko.observableArray();
    self.Masnagitutyun = ko.observableArray();
    self.itemText = ko.observable();
    self.year = ko.observable("");

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



    self.OpenItem = function (data, event) {
        self.Masnagitutyun.removeAll();
        $.ajax({
            type: "GET",
            url: 'AmbionAttendance.aspx/GetMasnagitutyun?ID=' + data.FacultetId,
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                $.each(data.d, function (key, value) {
                    ko.toJSON(self.Masnagitutyun.push(value));
                });
                $($("input:radio")[0]).attr("checked", "true");
            },
            error: function (err) {
                alert(err.status + " - " + err.statusText);
            }
        });
        self.itemText("Opened" + data.FacultetName);
        $(".facultetName>img").remove();
        $(event.target).append('<img src="/Resources/Table/ptichka.png"/>');
    };

    //self.CheckItem = function (data) {
    //    return true;
    //};



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
}