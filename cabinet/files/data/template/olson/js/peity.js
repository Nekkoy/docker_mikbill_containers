// Peity jQuery plugin version 1.2.0
// (c) 2013 Ben Pickles
//
// http://benpickles.github.com/peity
//
// Released under MIT license.
(function (h, j, k, m) {
    var r = j.createElement("canvas").getContext, i = h.fn.peity = function (a, b) {
        r && this.each(function () {
            var d = h(this), c = d.data("peity");
            if (c)a && (c.type = a), h.extend(c.opts, b), c.draw(); else {
                var f = i.defaults[a], e = {};
                h.each(d.data(), function (a, b) {
                    a in f && (e[a] = b)
                });
                var l = h.extend({}, f, e, b), c = new q(d, a, l);
                c.draw();
                d.change(function () {
                    c.draw()
                }).data("peity", c)
            }
        });
        return this
    }, q = function (a, b, d) {
        this.$el = a;
        this.type = b;
        this.opts = d
    }, j = q.prototype;
    j.colours = function () {
        var a = this.opts.colours, b = a;
        h.isFunction(b) ||
        (b = function (b, c) {
            return a[c % a.length]
        });
        return b
    };
    j.draw = function () {
        i.graphers[this.type].call(this, this.opts)
    };
    j.prepareCanvas = function (a, b) {
        var d = this.canvas, c;
        d ? (this.context.clearRect(0, 0, d.width, d.height), c = h(d)) : (c = h("<canvas>").css({
            height: b,
            width: a
        }).addClass("peity").data("peity", this), this.canvas = d = c[0], this.context = d.getContext("2d"), this.$el.hide().after(d));
        d.height = c.height() * m;
        d.width = c.width() * m;
        return d
    };
    j.values = function () {
        return h.map(this.$el.text().split(this.opts.delimiter),
            function (a) {
                return parseFloat(a)
            })
    };
    i.defaults = {};
    i.graphers = {};
    i.register = function (a, b, d) {
        this.defaults[a] = b;
        this.graphers[a] = d
    };
    i.register("pie", {colours: ["#ff9900", "#fff4dd", "#ffc66e"], delimiter: null, diameter: 16}, function (a) {
        if (!a.delimiter) {
            var b = this.$el.text().match(/[^0-9\.]/);
            a.delimiter = b ? b[0] : ","
        }
        b = this.values();
        if ("/" == a.delimiter)var d = b[0], b = [d, b[1] - d];
        for (var c = 0, d = b.length, f = 0; c < d; c++)f += b[c];
        var e = this.prepareCanvas(a.width || a.diameter, a.height || a.diameter), a = this.context, c = e.width,
            l = e.height, e = k.min(c, l) / 2, h = k.PI, n = this.colours();
        a.save();
        a.translate(c / 2, l / 2);
        a.rotate(-h / 2);
        for (c = 0; c < d; c++) {
            var l = b[c], g = 2 * l / f * h;
            a.beginPath();
            a.moveTo(0, 0);
            a.arc(0, 0, e, 0, g, !1);
            a.fillStyle = n.call(this, l, c, b);
            a.fill();
            a.rotate(g)
        }
        a.restore()
    });
    i.register("line", {
        colour: "#c6d9fd",
        strokeColour: "#4d89f9",
        strokeWidth: 1,
        delimiter: ",",
        height: 16,
        max: null,
        min: 0,
        width: 32
    }, function (a) {
        var b = this.values();
        1 == b.length && b.push(b[0]);
        var d = k.max.apply(k, b.concat([a.max])), c = k.min.apply(k, b.concat([a.min])),
            f = this.prepareCanvas(a.width, a.height), e = this.context, l = f.width, f = f.height, h = l / (b.length - 1), d = f / (d - c), n = [], g;
        e.beginPath();
        e.moveTo(0, f + c * d);
        for (g = 0; g < b.length; g++) {
            var i = g * h, j = f - d * (b[g] - c);
            n.push({x: i, y: j});
            e.lineTo(i, j)
        }
        e.lineTo(l, f + c * d);
        e.fillStyle = a.colour;
        e.fill();
        if (a.strokeWidth) {
            e.beginPath();
            e.moveTo(0, n[0].y);
            for (g = 0; g < n.length; g++)e.lineTo(n[g].x, n[g].y);
            e.lineWidth = a.strokeWidth * m;
            e.strokeStyle = a.strokeColour;
            e.stroke()
        }
    });
    i.register("bar", {
        colours: ["#4D89F9"], delimiter: ",", height: 16,
        max: null, min: 0, spacing: m, width: 32
    }, function (a) {
        for (var b = this.values(), d = k.max.apply(k, b.concat([a.max])), c = k.min.apply(k, b.concat([a.min])), f = this.prepareCanvas(a.width, a.height), e = this.context, h = f.height, i = h / (d - c), a = a.spacing, f = (f.width + a) / b.length, j = this.colours(), g = 0; g < b.length; g++) {
            var m = b[g], o = h - i * (m - c), p;
            if (0 == m) {
                if (0 <= c || 0 < d)o -= 1;
                p = 1
            } else p = i * b[g];
            e.fillStyle = j.call(this, m, g, b);
            e.fillRect(g * f, o, f - a, p)
        }
    })
})(jQuery, document, Math, window.devicePixelRatio || 1);