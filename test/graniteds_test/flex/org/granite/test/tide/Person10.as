/**
 * Generated by Gas3 v1.1.0 (Granite Data Services) on Sat Jul 26 17:58:20 CEST 2008.
 *
 * WARNING: DO NOT CHANGE THIS FILE. IT MAY BE OVERRIDDEN EACH TIME YOU USE
 * THE GENERATOR. CHANGE INSTEAD THE INHERITED CLASS (Person.as).
 */

package org.granite.test.tide {

    import flash.utils.IDataInput;
    import flash.utils.IDataOutput;
    import mx.collections.ListCollectionView;
    import org.granite.meta;
    import org.granite.ns.tide;
    import org.granite.tide.IPropertyHolder;
    import org.granite.tide.IEntityManager;

    use namespace meta;
    use namespace tide;

    [Managed]
    [RemoteClass(alias="org.granite.test.tide.Person10")]
    public class Person10 extends AbstractEntity {

        private var _contacts:ListCollectionView;
        private var _firstName:String;
        private var _lastName:String;
		private var _age:Number;
        
        
        public function set contacts(value:ListCollectionView):void {
            _contacts = value;
        }
        [Lazy]
        public function get contacts():ListCollectionView {
            return _contacts;
        }

        public function set firstName(value:String):void {
            _firstName = value;
        }
        public function get firstName():String {
            return _firstName;
        }

        public function set lastName(value:String):void {
            _lastName = value;
        }
        public function get lastName():String {
            return _lastName;
        }
		
		public function set age(value:Number):void {
			_age = value;
		}
		public function get age():Number {
			return _age;
		}

        override meta function merge(em:IEntityManager, obj:*):void {
            var src:Person10 = Person10(obj);
            super.meta::merge(em, obj);
            if (meta::isInitialized()) {
				em.meta_mergeExternal(src._age, _age, null, this, 'age', function setter(o:*):void{_age = o as Number}) as Number;
                em.meta_mergeExternal(src._contacts, _contacts, null, this, 'contacts', function setter(o:*):void{_contacts = o as ListCollectionView}) as ListCollectionView;
                em.meta_mergeExternal(src._firstName, _firstName, null, this, 'firstName', function setter(o:*):void{_firstName = o as String}) as String;
                em.meta_mergeExternal(src._lastName, _lastName, null, this, 'lastName', function setter(o:*):void{_lastName = o as String}) as String;
            }
        }

        override public function readExternal(input:IDataInput):void {
            super.readExternal(input);
            if (meta::isInitialized()) {
                _age = function(o:*):Number { return (o is Number ? o as Number : Number.NaN) } (input.readObject());
                _contacts = input.readObject() as ListCollectionView;
                _firstName = input.readObject() as String;
                _lastName = input.readObject() as String;
            }
        }

        override public function writeExternal(output:IDataOutput):void {
            super.writeExternal(output);
            if (meta::isInitialized()) {
                output.writeObject((_age is IPropertyHolder) ? IPropertyHolder(_age).object : _age);
                output.writeObject((_contacts is IPropertyHolder) ? IPropertyHolder(_contacts).object : _contacts);
                output.writeObject((_firstName is IPropertyHolder) ? IPropertyHolder(_firstName).object : _firstName);
                output.writeObject((_lastName is IPropertyHolder) ? IPropertyHolder(_lastName).object : _lastName);
            }
        }
    }
}