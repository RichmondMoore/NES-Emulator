const StatusFlags = packed struct {
    carry: bool,
    zero: bool,
    interruptDisable: bool,
    decimalMode: bool,
    breakCommand: bool,
    overflow: bool,
    negative: bool,

    pub fn init() StatusFlags {
        return StatusFlags{ .carry = false, .zero = false, .interruptDisable = false, .decimalMode = false, .breakCommand = false, .overflow = false, .negative = false };
    }
};

pub const CPU = struct {
    pc: u16,
    sp: u8,
    acc: i8,
    x: i8,
    y: i8,
    status: StatusFlags,

    pub fn init() CPU {
        return CPU{
            .pc = 0,
            .sp = 0,
            .acc = 0,
            .x = 0,
            .y = 0,
            .status = StatusFlags.init(),
        };
    }
};
