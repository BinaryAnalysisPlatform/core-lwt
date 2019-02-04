open Core_kernel
type 'a t = 'a Lwt.t
include Monad with type 'a t := 'a Lwt.t
