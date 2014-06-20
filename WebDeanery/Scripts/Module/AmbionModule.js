function AmbionModel() {
    var self = this;
    //$.get("AmbionAttendance.aspx", function (data) {
       
    //});
    self.items = ko.observableArray();
    self.itemText = ko.observable();
    
    $.ajax({
        type: "POST",
        url: 'AmbionAttendance.aspx/GetStudent',
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (data) {
            $.each(data.d, function(key, value) {
                ko.toJSON(self.items.push(value));
            });
            $($("input:radio")[0]).attr("checked", "true");
        },
        error: function (err) {
            alert(err.status + " - " + err.statusText);
        }
    });

    //self.OpenItem = function (data) {
    //    self.itemText("Opened" + data.FacultetAnun);
    //};

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