//// This package exposes a function - `name`, which returns the name of the
//// current operating system, as reported by `uname`.

@external(erlang, "operating_system_ffi", "name")
@external(javascript, "./operating_system_ffi.mjs", "name")
pub fn name() -> String
