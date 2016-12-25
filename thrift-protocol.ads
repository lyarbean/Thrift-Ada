package thrift.protocol is
   type protocol_type is interface;
   -- Message
   function write_message_begin
      (protocol : in out protocol_type'class;
       name     :        string;
       kind     :        messagekind;
       seqid    :        integer) return sizetype is abstract;
   function write_message_end
      (protocol : in out protocol_type'class) return sizetype is abstract;

   -- Struct
   function write_struct_begin
      (protocol : in out protocol_type'class;
       name     :        string) return sizetype is abstract;

   function write_struct_end
      (protocol : in out protocol_type'class) return sizetype is abstract;
   -- Field
   function write_field_begin
      (protocol  : in out protocol_type'class;
       name      :        string;
       data_type :        messagedatatype;
       field_id  :        integer) return sizetype is abstract;

   function write_field_end
      (protocol : in out protocol_type'class) return sizetype is abstract;
   -- Map
   function write_map_begin
      (protocol        : in out protocol_type'class;
       key_data_type   :        messagedatatype;
       value_data_type :        messagedatatype;
       size            :        sizetype) return sizetype is abstract;

   function write_map_end
      (protocol : in out protocol_type'class) return sizetype is abstract;
   -- List
   function write_list_begin
      (protocol  : in out protocol_type'class;
       data_type :        messagedatatype;
       size      :        sizetype) return sizetype is abstract;

   function write_list_end
      (protocol : in out protocol_type'class) return sizetype is abstract;
   -- Set
   function write_set_begin
      (protocol  : in out protocol_type'class;
       data_type :        messagedatatype;
       size      :        sizetype) return sizetype is abstract;

   function write_set_end
      (protocol : in out protocol_type'class) return sizetype is abstract;
   -- Bool
   function write_bool_begin
      (protocol : in out protocol_type'class;
       value    :        boolean) return sizetype is abstract;

   function write_bool_end
      (protocol : in out protocol_type'class) return sizetype is abstract;
   -- Byte
   function write_byte_begin
      (protocol : in out protocol_type'class;
       value    :        i08) return sizetype is abstract;

   function write_byte_end
      (protocol : in out protocol_type'class) return sizetype is abstract;
   -- I16
   function write_i16_begin
      (protocol : in out protocol_type'class;
       value    :        i16) return sizetype is abstract;

   function write_i16_end
      (protocol : in out protocol_type'class) return sizetype is abstract;
   -- I32
   function write_i32_begin
      (protocol : in out protocol_type'class;
       value    :        i32) return sizetype is abstract;

   function write_i32_end
      (protocol : in out protocol_type'class) return sizetype is abstract;
   -- I64
   function write_i64_begin
      (protocol : in out protocol_type'class;
       value    :        i64) return sizetype is abstract;

   function write_i64_end
      (protocol : in out protocol_type'class) return sizetype is abstract;
   -- Double
   function write_double_begin
      (protocol : in out protocol_type'class;
       value    :        long_float) return sizetype is abstract;

   function write_double_end
      (protocol : in out protocol_type'class) return sizetype is abstract;
   -- String
   function write_string_begin
      (protocol : in out protocol_type'class;
       value    :        string) return sizetype is abstract;

   function write_string_end
      (protocol : in out protocol_type'class) return sizetype is abstract;
   -- Binary
   function write_binary_begin
      (protocol : in out protocol_type'class;
       value    :        string) return sizetype is abstract;

   function write_binary_end
      (protocol : in out protocol_type'class) return sizetype is abstract;

   function skip
      (protocol  : in out protocol_type'class;
       data_type :        messagedatatype) return sizetype is abstract;
end thrift.protocol;
