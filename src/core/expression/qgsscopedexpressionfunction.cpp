#include "qgsscopedexpressionfunction.h"
#include "qgsmaplayerlistutils.h"
#include "qgsexpressionutils.h"

bool QgsScopedExpressionFunction::usesGeometry( const QgsExpressionNodeFunction *node ) const
{
  Q_UNUSED( node )
  return mUsesGeometry;
}

QSet<QString> QgsScopedExpressionFunction::referencedColumns( const QgsExpressionNodeFunction *node ) const
{
  Q_UNUSED( node )
  return mReferencedColumns;
}

bool QgsScopedExpressionFunction::isStatic( const QgsExpressionNodeFunction *node, QgsExpression *parent, const QgsExpressionContext *context ) const
{
  return allParamsStatic( node, parent, context );
}


//
// GetLayerVisibility
//

GetLayerVisibility::GetLayerVisibility( const QList<QgsMapLayer *> &layers )
  : QgsScopedExpressionFunction( QStringLiteral( "is_layer_visible" ), QgsExpressionFunction::ParameterList() << QgsExpressionFunction::Parameter( QStringLiteral( "id" ) ), QStringLiteral( "General" ) )
  , mLayers( _qgis_listRawToQPointer( layers ) )
{}

QVariant GetLayerVisibility::func( const QVariantList &values, const QgsExpressionContext *, QgsExpression *parent, const QgsExpressionNodeFunction * )
{
  if ( mLayers.isEmpty() )
  {
    return false;
  }

  QgsMapLayer *layer = QgsExpressionUtils::getMapLayer( values.at( 0 ), parent );
  if ( layer )
  {
    return mLayers.contains( layer );
  }
  else
  {
    return false;
  }
}

QgsScopedExpressionFunction *GetLayerVisibility::clone() const
{
  return new GetLayerVisibility( _qgis_listQPointerToRaw( mLayers ) );
}
