package thrift is
   type i08 is mod 2**8;
   type i16 is mod 2**16;
   type i32 is mod 2**32;
   type i64 is mod 2**64;
   type sizetype is mod 2**32;
   type messagedatatype is
      (t_stop,
       t_void,
       t_bool,
       t_byte,
       t_i08,
       t_i16,
       t_i32,
       t_u64,
       t_i64,
       t_double,
       t_string,
       t_utf7,
       t_struct,
       t_map,
       t_set,
       t_list,
       t_utf8,
       t_utf16);
   type messagekind is (t_none, t_call, t_retry, t_exception, t_oneway);
end thrift;
