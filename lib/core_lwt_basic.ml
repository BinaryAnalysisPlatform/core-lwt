open Core_kernel

type 'a t = 'a Lwt.t
include Monad.Make(struct
    type 'a t = 'a Lwt.t
    let return = Lwt.return
    let bind m ~f = Lwt.bind m f
    let map m ~f = Lwt.map f m
    let map = `Custom map
  end)
