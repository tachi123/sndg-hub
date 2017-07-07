package mincyt

import org.hibernate.cfg.ImprovedNamingStrategy

/**
 * Created by miguel on 07/07/17.
 */
class UppercaseNamingStrategy extends ImprovedNamingStrategy {

    private static final long serialVersionUID = 1

    String classToTableName(String className) {
        super.classToTableName(className).toUpperCase()
    }

    String collectionTableName(String ownerEntity, String ownerEntityTable, String associatedEntity, String associatedEntityTable, String propertyName) {
        super.collectionTableName(ownerEntity, ownerEntityTable, associatedEntity, associatedEntityTable, propertyName).toUpperCase()
    }

    String logicalCollectionTableName(String tableName, String ownerEntityTable, String associatedEntityTable, String propertyName) {
        super.logicalCollectionTableName(tableName, ownerEntityTable, associatedEntityTable, propertyName).toUpperCase()
    }

    String tableName(String tableName) {
        super.tableName(tableName).toUpperCase()
    }
}