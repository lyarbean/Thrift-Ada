package thrift.transport is
   type TransportType is interface;
   function read
      (transport : in out TransportType;
       expect    :        SizeType) return String is abstract;
   function read_all
      (transport : in out TransportType;
       expect    :        SizeType) return String is abstract;
   procedure write
      (transport : in out TransportType;
       data      :        String) is abstract;
   function borrow
      (transport : in out TransportType;
       size      :        SizeType) return String is abstract;
   procedure consume
      (transport : in out TransportType;
       size      :        SizeType) is abstract;

end thrift.transport;
