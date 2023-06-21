const std = @import("std");

const cpu = @import("cpu.zig");

pub fn main() !void {
    var tmp = cpu.CPU{
        .pc = 0,
        .sp = 0,
        .acc = 0,
        .x = 0,
        .y = 0,
        .status = undefined,
    };

    std.debug.print("CPU init: {}\n", .{tmp});
}
