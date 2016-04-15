package snow.api.buffers;

#if js

    typedef ArrayBuffer = js.html.ArrayBuffer;

#else

    import haxe.io.Bytes;

    @:forward
    abstract ArrayBuffer(Bytes) from Bytes to Bytes {
        public inline function new( byteLength:Int ) {
            this = Bytes.alloc( byteLength );
        }

        public var byteLength (get, never) : Int;

        inline function get_byteLength() {
            return this.length;
        }
    }

#end //!js
