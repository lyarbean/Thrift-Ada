package thrift.protocol is

   badversion : exception;
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
   function write_bool
      (protocol : in out ProtocolType;
       value    :        Boolean) return SizeType is abstract;

   -- Byte
   function write_byte
      (protocol : in out ProtocolType;
       value    :        I08) return SizeType is abstract;

   -- I16
   function write_i16
      (protocol : in out ProtocolType;
       value    :        I16) return SizeType is abstract;

   -- I32
   function write_i32
      (protocol : in out ProtocolType;
       value    :        I32) return SizeType is abstract;

   -- I64
   function write_i64
      (protocol : in out ProtocolType;
       value    :        I64) return SizeType is abstract;

   -- Double
   function write_double
      (protocol : in out ProtocolType;
       value    :        Long_Float) return SizeType is abstract;

   -- String
   function write_string
      (protocol : in out ProtocolType;
       value    :        String) return SizeType is abstract;

   -- Binary
   function write_binary
      (protocol : in out ProtocolType;
       value    :        String) return SizeType is abstract;

   -- Read --
   -- Message
   function read_message_begin
      (protocol : in out ProtocolType;
       name     : in out String;
       kind     : in out MessageKind;
       seqid    : in out Integer)
       return SizeType is abstract;
   function read_message_end
      (protocol : in out ProtocolType) return SizeType is abstract;

   -- Struct
   function read_struct_begin
      (protocol : in out ProtocolType;
       name     : in out String) return SizeType is abstract;

   function read_struct_end
      (protocol : in out ProtocolType) return SizeType is abstract;
   -- Field
   function read_field_begin
      (protocol  : in out ProtocolType;
       name      : in out String;
       data_type : in out MessageDataType;
       field_id  : in out Integer)
       return SizeType is abstract;

   function read_field_end
      (protocol : in out ProtocolType) return SizeType is abstract;
   -- Map
   function read_map_begin
      (protocol        : in out ProtocolType;
       key_data_type   : in out MessageDataType;
       value_data_type : in out MessageDataType;
       size            : in out SizeType)
       return SizeType is abstract;

   function read_map_end
      (protocol : in out ProtocolType) return SizeType is abstract;
   -- List
   function read_list_begin
      (protocol  : in out ProtocolType;
       data_type : in out MessageDataType;
       size      : in out SizeType)
       return SizeType is abstract;

   function read_list_end
      (protocol : in out ProtocolType) return SizeType is abstract;
   -- Set
   function read_set_begin
      (protocol  : in out ProtocolType;
       data_type : in out MessageDataType;
       size      : in out SizeType)
       return SizeType is abstract;

   function read_set_end
      (protocol : in out ProtocolType) return SizeType is abstract;
   -- Bool
   function read_bool
      (protocol : in out ProtocolType;
       value    : in out Boolean) return SizeType is abstract;

   -- Byte
   function read_byte
      (protocol : in out ProtocolType;
       value    : in out I08) return SizeType is abstract;

   -- I16
   function read_i16
      (protocol : in out ProtocolType;
       value    : in out I16) return SizeType is abstract;

   -- I32
   function read_i32
      (protocol : in out ProtocolType;
       value    : in out I32) return SizeType is abstract;

   -- I64
   function read_i64
      (protocol : in out ProtocolType;
       value    : in out I64) return SizeType is abstract;

   -- Double
   function read_double
      (protocol : in out ProtocolType;
       value    : in out Long_Float) return SizeType is abstract;

   -- String
   function read_string
      (protocol : in out ProtocolType;
       value    : in out String) return SizeType is abstract;

   -- Binary
   function read_binary
      (protocol : in out ProtocolType;
       value    : in out String) return SizeType is abstract;

   function skip
      (protocol  : in out ProtocolType;
       data_type :        MessageDataType) return SizeType is abstract;
end thrift.protocol;
