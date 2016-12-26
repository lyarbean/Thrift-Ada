package thrift is
   type I08 is mod 2**8;
   type I16 is mod 2**16;
   type I32 is mod 2**32;
   type I64 is mod 2**64;
   type SizeType is mod 2**32;
   type MessageDataType is
      (T_Stop,
       T_Void,
       T_Bool,
       T_Byte,
       T_I08,
       T_I16,
       T_I32,
       T_U64,
       T_I64,
       T_Double,
       T_String,
       T_Utf7,
       T_Struct,
       T_Map,
       T_Set,
       T_List,
       T_Utf8,
       T_Utf16);
   type MessageKind is (T_None, T_Call, T_Retry, T_Exception, T_Oneway);
end thrift;
