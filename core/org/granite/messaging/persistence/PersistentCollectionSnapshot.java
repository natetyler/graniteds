/*
  GRANITE DATA SERVICES
  Copyright (C) 2013 GRANITE DATA SERVICES S.A.S.

  This file is part of Granite Data Services.

  Granite Data Services is free software; you can redistribute it and/or modify
  it under the terms of the GNU Library General Public License as published by
  the Free Software Foundation; either version 2 of the License, or (at your
  option) any later version.

  Granite Data Services is distributed in the hope that it will be useful, but
  WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
  FITNESS FOR A PARTICULAR PURPOSE. See the GNU Library General Public License
  for more details.

  You should have received a copy of the GNU Library General Public License
  along with this library; if not, see <http://www.gnu.org/licenses/>.
*/

package org.granite.messaging.persistence;

import java.io.Externalizable;
import java.io.IOException;
import java.io.ObjectInput;
import java.lang.reflect.InvocationTargetException;
import java.util.Collection;
import java.util.Comparator;
import java.util.Map;

/**
 * @author Franck WOLFF
 */
public interface PersistentCollectionSnapshot extends Externalizable {

	boolean isInitialized();

	boolean isDirty();

	boolean isSorted();

	String getComparatorClassName();

	<T> Comparator<T> newComparator(ObjectInput in)
		throws ClassNotFoundException, InstantiationException, IllegalAccessException,
		InvocationTargetException, SecurityException, NoSuchMethodException;

	<T> Collection<T> getElementsAsCollection();

	<K, V> Map<K, V> getElementsAsMap();

	void readInitializationData(ObjectInput in) throws IOException;

	void readCoreData(ObjectInput in) throws IOException, ClassNotFoundException;
}