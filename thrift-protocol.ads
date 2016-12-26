package thrift.protocol is
   type ProtocolType is interface;
   -- Message
   function write_message_begin
      (protocol : in out ProtocolType;
       name     :        String;
       kind     :        MessageKind;
       seqid    :        Integer)
       return SizeType is abstract;
   function write_message_end
      (protocol : in out ProtocolType) return SizeType is abstract;

   -- Struct
   function write_struct_begin
      (protocol : in out ProtocolType;
       name     :        String) return SizeType is abstract;

   function write_struct_end
      (protocol : in out ProtocolType) return SizeType is abstract;
   -- Field
   function write_field_begin
      (protocol  : in out ProtocolType;
       name      :        String;
       data_type :        MessageDataType;
       field_id  :        Integer)
       return SizeType is abstract;

   function write_field_end
      (protocol : in out ProtocolType) return SizeType is abstract;
   -- Map
   function write_map_begin
      (protocol        : in out ProtocolType;
       key_data_type   :        MessageDataType;
       value_data_type :        MessageDataType;
       size            :        SizeType)
       return SizeType is abstract;

   function write_map_end
      (protocol : in out ProtocolType) return SizeType is abstract;
   -- List
   function write_list_begin
      (protocol  : in out ProtocolType;
       data_type :        MessageDataType;
       size      :        SizeType)
       return SizeType is abstract;

   function write_list_end
      (protocol : in out ProtocolType) return SizeType is abstract;
   -- Set
   function write_set_begin
      (protocol  : in out ProtocolType;
       data_type :        MessageDataType;
       size      :        SizeType)
       return SizeType is abstract;

   function write_set_end
      (protocol : in out ProtocolType) return SizeType is abstract;
   -- Bool
   function write_bool_begin
      (protocol : in out ProtocolType;
       value    :        Boolean) return SizeType is abstract;

   function write_bool_end
      (protocol : in out ProtocolType) return SizeType is abstract;
   -- Byte
   function write_byte_begin
      (protocol : in out ProtocolType;
       value    :        I08) return SizeType is abstract;

   function write_byte_end
      (protocol : in out ProtocolType) return SizeType is abstract;
   -- I16
   function write_i16_begin
      (protocol : in out ProtocolType;
       value    :        I16) return SizeType is abstract;

   function write_i16_end
      (protocol : in out ProtocolType) return SizeType is abstract;
   -- I32
   function write_i32_begin
      (protocol : in out ProtocolType;
       value    :        I32) return SizeType is abstract;

   function write_i32_end
      (protocol : in out ProtocolType) return SizeType is abstract;
   -- I64
   function write_i64_begin
      (protocol : in out ProtocolType;
       value    :        I64) return SizeType is abstract;

   function write_i64_end
      (protocol : in out ProtocolType) return SizeType is abstract;
   -- Double
   function write_double_begin
      (protocol : in out ProtocolType;
       value    :        Long_Float) return SizeType is abstract;

   function write_double_end
      (protocol : in out ProtocolType) return SizeType is abstract;
   -- String
   function write_string_begin
      (protocol : in out ProtocolType;
       value    :        String) return SizeType is abstract;

   function write_string_end
      (protocol : in out ProtocolType) return SizeType is abstract;
   -- Binary
   function write_binary_begin
      (protocol : in out ProtocolType;
       value    :        String) return SizeType is abstract;

   function write_binary_end
      (protocol : in out ProtocolType) return SizeType is abstract;

   function skip
      (protocol  : in out ProtocolType;
       data_type :        MessageDataType) return SizeType is abstract;
end thrift.protocol;
