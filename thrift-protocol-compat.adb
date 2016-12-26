with Interfaces; use Interfaces;
package body thrift.protocol.compat is
   -- Write --
-- Message
   function write_message_begin
      (protocol : in out CompatType;
       name     :        String;
       kind     :        MessageKind;
       seqid    :        Integer)
       return SizeType
   is
   begin
      return SizeType'Last;
   end write_message_begin;
   function write_message_end (protocol : in out CompatType) return SizeType is
   begin
      return SizeType'Last;
   end write_message_end;

   -- Struct
   function write_struct_begin
      (protocol : in out CompatType;
       name     :        String) return SizeType
   is
   begin
      return SizeType'Last;
   end write_struct_begin;
   function write_struct_end (protocol : in out CompatType) return SizeType is
   begin
      return SizeType'Last;
   end write_struct_end;
   -- Field
   function write_field_begin
      (protocol  : in out CompatType;
       name      :        String;
       data_type :        MessageDataType;
       field_id  :        Integer)
       return SizeType
   is
   begin
      return SizeType'Last;
   end write_field_begin;
   function write_field_end (protocol : in out CompatType) return SizeType is
   begin
      return SizeType'Last;
   end write_field_end;
   -- Map
   function write_map_begin
      (protocol        : in out CompatType;
       key_data_type   :        MessageDataType;
       value_data_type :        MessageDataType;
       size            :        SizeType)
       return SizeType
   is
   begin
      return SizeType'Last;
   end write_map_begin;
   function write_map_end (protocol : in out CompatType) return SizeType is
   begin
      return SizeType'Last;
   end write_map_end;
   -- List
   function write_list_begin
      (protocol  : in out CompatType;
       data_type :        MessageDataType;
       size      :        SizeType)
       return SizeType
   is
   begin
      return SizeType'Last;
   end write_list_begin;
   function write_list_end (protocol : in out CompatType) return SizeType is
   begin
      return SizeType'Last;
   end write_list_end;
   -- Set
   function write_set_begin
      (protocol  : in out CompatType;
       data_type :        MessageDataType;
       size      :        SizeType)
       return SizeType
   is
   begin
      return SizeType'Last;
   end write_set_begin;
   function write_set_end (protocol : in out CompatType) return SizeType is
   begin
      return SizeType'Last;
   end write_set_end;

   -- Bool
   function write_bool
      (protocol : in out CompatType;
       value    :        Boolean) return SizeType
   is
   begin
      return SizeType'Last;
   end write_bool;

   -- Byte
   function write_byte
      (protocol : in out CompatType;
       value    :        I08) return SizeType
   is
   begin
      return SizeType'Last;
   end write_byte;

   -- I16
   function write_i16
      (protocol : in out CompatType;
       value    :        I16) return SizeType
   is
   begin
      return SizeType'Last;
   end write_i16;

   -- I32
   function write_i32
      (protocol : in out CompatType;
       value    :        I32) return SizeType
   is
   begin
      return SizeType'Last;
   end write_i32;

   -- I64
   function write_i64
      (protocol : in out CompatType;
       value    :        I64) return SizeType
   is
   begin
      return SizeType'Last;
   end write_i64;

   -- Double
   function write_double
      (protocol : in out CompatType;
       value    :        Long_Float) return SizeType
   is
   begin
      return SizeType'Last;
   end write_double;

   -- String
   function write_string
      (protocol : in out CompatType;
       value    :        String) return SizeType
   is
   begin
      return SizeType'Last;
   end write_string;

   -- Binary
   function write_binary
      (protocol : in out CompatType;
       value    :        String) return SizeType
   is
   begin
      return SizeType'Last;
   end write_binary;

   -- Read --
   -- Message
   function read_message_begin
      (protocol : in out CompatType;
       name     : in out String;
       kind     : in out MessageKind;
       seqid    : in out Integer)
       return SizeType
   is
      size_read    : SizeType := 0;
      protocol_id  : I08      := 0;
      version_type : I08      := 0;
      version      : I08      := 0;
   begin
      size_read := size_read + protocol.read_byte (protocol_id);
      if protocol_id /= protocol_id
      then
         raise badversion with "Bad protocol idetifier";
      end if;
      size_read := size_read + protocol.read_byte (version_type);
      version   := version_type and version_mask;
      if version /= version_n
      then
         raise badversion with "Bad protocol version";
      end if;
      kind :=
         MessageKind'Val
            (Shift_Right
                (Unsigned_8 (version_type),
                 Natural (type_shift_amount)) and
             Unsigned_8 (type_bits));
      return SizeType'Last;
   end read_message_begin;

   function read_message_end (protocol : in out CompatType) return SizeType is
   begin
      return SizeType'First;
   end read_message_end;

   -- Struct
   function read_struct_begin
      (protocol : in out CompatType;
       name     : in out String) return SizeType
   is
   begin
      return SizeType'Last;
   end read_struct_begin;
   function read_struct_end (protocol : in out CompatType) return SizeType is
   begin
      return SizeType'Last;
   end read_struct_end;

   -- Field
   function read_field_begin
      (protocol  : in out CompatType;
       name      : in out String;
       data_type : in out MessageDataType;
       field_id  : in out Integer)
       return SizeType
   is
   begin
      return SizeType'Last;
   end read_field_begin;
   function read_field_end (protocol : in out CompatType) return SizeType is
   begin
      return SizeType'Last;
   end read_field_end;

   -- Map
   function read_map_begin
      (protocol        : in out CompatType;
       key_data_type   : in out MessageDataType;
       value_data_type : in out MessageDataType;
       size            : in out SizeType)
       return SizeType
   is
   begin
      return SizeType'Last;
   end read_map_begin;
   function read_map_end (protocol : in out CompatType) return SizeType is
   begin
      return SizeType'Last;
   end read_map_end;

   -- List
   function read_list_begin
      (protocol  : in out CompatType;
       data_type : in out MessageDataType;
       size      : in out SizeType)
       return SizeType
   is
   begin
      return SizeType'Last;
   end read_list_begin;
   function read_list_end (protocol : in out CompatType) return SizeType is
   begin
      return SizeType'Last;
   end read_list_end;

   -- Set
   function read_set_begin
      (protocol  : in out CompatType;
       data_type : in out MessageDataType;
       size      : in out SizeType)
       return SizeType
   is
   begin
      return SizeType'Last;
   end read_set_begin;
   function read_set_end (protocol : in out CompatType) return SizeType is
   begin
      return SizeType'Last;
   end read_set_end;

   -- Bool
   function read_bool
      (protocol : in out CompatType;
       value    : in out Boolean) return SizeType
   is
   begin
      return SizeType'Last;
   end read_bool;

   -- Byte
   function read_byte
      (protocol : in out CompatType;
       value    : in out I08) return SizeType
   is
	   s : string(1..1);
   begin
	   s := protocol.transport.read_all(1);
	  value := character'pos(s(1));
      return 1;
   end read_byte;

   -- I16
   function read_i16
      (protocol : in out CompatType;
       value    : in out I16) return SizeType
   is
   begin
      return SizeType'Last;
   end read_i16;

   -- I32
   function read_i32
      (protocol : in out CompatType;
       value    : in out I32) return SizeType
   is
   begin
      return SizeType'Last;
   end read_i32;

   -- I64
   function read_i64
      (protocol : in out CompatType;
       value    : in out I64) return SizeType
   is
   begin
      return SizeType'Last;
   end read_i64;

   -- Double
   function read_double
      (protocol : in out CompatType;
       value    : in out Long_Float) return SizeType
   is
   begin
      return SizeType'Last;
   end read_double;

   -- String
   function read_string
      (protocol : in out CompatType;
       value    : in out String) return SizeType
   is
   begin
      return SizeType'Last;
   end read_string;

   -- Binary
   function read_binary
      (protocol : in out CompatType;
       value    : in out String) return SizeType
   is
   begin
      return SizeType'Last;
   end read_binary;

   function skip
      (protocol  : in out CompatType;
       data_type :        MessageDataType) return SizeType
   is
   begin
      return SizeType'Last;
   end skip;

end thrift.protocol.compat;
