with thrift.transport;
with thrift.transport;
package thrift.protocol.compat is
   --- Constants ---
   protocol_id       : I08 := 16#82#;
   version_n         : I08 := 1;
   version_mask      : I08 := 16#1F#;
   type_mask         : I08 := 16#E0#;
   type_bits         : I08 := 16#7#;
   type_shift_amount : I32 := 5;

   type CompatType is new ProtocolType with record
      transport : access thrift.transport.TransportType'Class;
   end record;

   -- Write --
   -- Message
   overriding function write_message_begin
      (protocol : in out CompatType;
       name     :        String;
       kind     :        MessageKind;
       seqid    :        Integer)
       return SizeType;
   overriding function write_message_end
      (protocol : in out CompatType) return SizeType;

   -- Struct
   overriding function write_struct_begin
      (protocol : in out CompatType;
       name     :        String) return SizeType;
   overriding function write_struct_end
      (protocol : in out CompatType) return SizeType;
   -- Field
   function write_field_begin
      (protocol  : in out CompatType;
       name      :        String;
       data_type :        MessageDataType;
       field_id  :        Integer)
       return SizeType;
   overriding function write_field_end
      (protocol : in out CompatType) return SizeType;
   -- Map
   overriding function write_map_begin
      (protocol        : in out CompatType;
       key_data_type   :        MessageDataType;
       value_data_type :        MessageDataType;
       size            :        SizeType)
       return SizeType;
   overriding function write_map_end
      (protocol : in out CompatType) return SizeType;
   -- List
   overriding function write_list_begin
      (protocol  : in out CompatType;
       data_type :        MessageDataType;
       size      :        SizeType)
       return SizeType;
   overriding function write_list_end
      (protocol : in out CompatType) return SizeType;
   -- Set
   overriding function write_set_begin
      (protocol  : in out CompatType;
       data_type :        MessageDataType;
       size      :        SizeType)
       return SizeType;
   overriding function write_set_end
      (protocol : in out CompatType) return SizeType;
   -- Bool
   overriding function write_bool
      (protocol : in out CompatType;
       value    :        Boolean) return SizeType;

   -- Byte
   overriding function write_byte
      (protocol : in out CompatType;
       value    :        I08) return SizeType;

   -- I16
   overriding function write_i16
      (protocol : in out CompatType;
       value    :        I16) return SizeType;

   -- I32
   overriding function write_i32
      (protocol : in out CompatType;
       value    :        I32) return SizeType;

   -- I64
   overriding function write_i64
      (protocol : in out CompatType;
       value    :        I64) return SizeType;

   -- Double
   overriding function write_double
      (protocol : in out CompatType;
       value    :        Long_Float) return SizeType;

   -- String
   overriding function write_string
      (protocol : in out CompatType;
       value    :        String) return SizeType;

   -- Binary
   overriding function write_binary
      (protocol : in out CompatType;
       value    :        String) return SizeType;

   -- Read --
   -- Message
   overriding function read_message_begin
      (protocol : in out CompatType;
       name     : in out String;
       kind     : in out MessageKind;
       seqid    : in out Integer)
       return SizeType;
   overriding function read_message_end
      (protocol : in out CompatType) return SizeType;

   -- Struct
   overriding function read_struct_begin
      (protocol : in out CompatType;
       name     : in out String) return SizeType;
   overriding function read_struct_end
      (protocol : in out CompatType) return SizeType;

   -- Field
   overriding function read_field_begin
      (protocol  : in out CompatType;
       name      : in out String;
       data_type : in out MessageDataType;
       field_id  : in out Integer)
       return SizeType;
   overriding function read_field_end
      (protocol : in out CompatType) return SizeType;

   -- Map
   overriding function read_map_begin
      (protocol        : in out CompatType;
       key_data_type   : in out MessageDataType;
       value_data_type : in out MessageDataType;
       size            : in out SizeType)
       return SizeType;
   overriding function read_map_end
      (protocol : in out CompatType) return SizeType;

   -- List
   overriding function read_list_begin
      (protocol  : in out CompatType;
       data_type : in out MessageDataType;
       size      : in out SizeType)
       return SizeType;
   overriding function read_list_end
      (protocol : in out CompatType) return SizeType;

   -- Set
   overriding function read_set_begin
      (protocol  : in out CompatType;
       data_type : in out MessageDataType;
       size      : in out SizeType)
       return SizeType;
   overriding function read_set_end
      (protocol : in out CompatType) return SizeType;

   -- Bool
   overriding function read_bool
      (protocol : in out CompatType;
       value    : in out Boolean) return SizeType;

   -- Byte
   overriding function read_byte
      (protocol : in out CompatType;
       value    : in out I08) return SizeType;

   -- I16
   overriding function read_i16
      (protocol : in out CompatType;
       value    : in out I16) return SizeType;

   -- I32
   overriding function read_i32
      (protocol : in out CompatType;
       value    : in out I32) return SizeType;

   -- I64
   overriding function read_i64
      (protocol : in out CompatType;
       value    : in out I64) return SizeType;

   -- Double
   overriding function read_double
      (protocol : in out CompatType;
       value    : in out Long_Float) return SizeType;

   -- String
   overriding function read_string
      (protocol : in out CompatType;
       value    : in out String) return SizeType;

   -- Binary
   overriding function read_binary
      (protocol : in out CompatType;
       value    : in out String) return SizeType;

   overriding function skip
      (protocol  : in out CompatType;
       data_type :        MessageDataType) return SizeType;

end thrift.protocol.compat;
