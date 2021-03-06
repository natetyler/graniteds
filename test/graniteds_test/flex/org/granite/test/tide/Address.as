/**
 * Generated by Gas3 v1.1.0 (Granite Data Services) on Sat Jul 26 17:58:20 CEST 2008.
 *
 * WARNING: DO NOT CHANGE THIS FILE. IT MAY BE OVERRIDDEN EACH TIME YOU USE
 * THE GENERATOR. CHANGE INSTEAD THE INHERITED CLASS (Contact.as).
 */

package org.granite.test.tide {

    import flash.utils.IDataInput;
    import flash.utils.IDataOutput;
    import org.granite.meta;
    import org.granite.tide.IPropertyHolder;
    import org.granite.tide.IEntityManager;

	use namespace meta;

	[Managed]
    [RemoteClass(alias="org.granite.test.tide.Address")]
    public class Address extends AbstractEntity {

        private var _homeAddress:String;

        public function set homeAddress(value:String):void {
            _homeAddress = value;
        }
        public function get homeAddress():String {
            return _homeAddress;
        }

       	override meta function merge(em:IEntityManager, obj:*):void {
            var src:Address = Address(obj);
            super.meta::merge(em, obj);
            if (meta::isInitialized()) {
               	em.meta_mergeExternal(src._homeAddress, _homeAddress, null, this, 'homeAddress', function setter(o:*):void{_homeAddress = o as String}) as String;
            }
        }

        override public function readExternal(input:IDataInput):void {
            super.readExternal(input);
            if (meta::isInitialized()) {
                _homeAddress = input.readObject() as String;
            }
        }

        override public function writeExternal(output:IDataOutput):void {
            super.writeExternal(output);
            if (meta::isInitialized()) {
                output.writeObject((_homeAddress is IPropertyHolder) ? IPropertyHolder(_homeAddress).object : _homeAddress);
            }
        }
    }
}
