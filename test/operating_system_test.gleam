import gleeunit
import operating_system

pub fn main() -> Nil {
  gleeunit.main()
}

pub fn name_test_windows() -> Nil {
  assert operating_system.name() == "windows_nt"
}
