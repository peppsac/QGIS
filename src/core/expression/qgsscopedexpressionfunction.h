#ifndef QGSSCOPEDEXPRESSIONFUNCTION_H
#define QGSSCOPEDEXPRESSIONFUNCTION_H

#include "qgsexpressionfunction.h"

/**
 * \ingroup core
 * \class QgsScopedExpressionFunction
 * \brief Expression function for use within a QgsExpressionContextScope. This differs from a
 * standard QgsExpression::Function in that it requires an implemented
 * clone() method.
 * \since QGIS 2.12
 */

class CORE_EXPORT QgsScopedExpressionFunction : public QgsExpressionFunction
{
  public:

    /**
     * Create a new QgsScopedExpressionFunction
     *
     * \since QGIS 2.12
     */
    QgsScopedExpressionFunction( const QString &fnname,
                                 int params,
                                 const QString &group,
                                 const QString &helpText = QString(),
                                 bool usesGeometry = false,
                                 const QSet<QString> &referencedColumns = QSet<QString>(),
                                 bool lazyEval = false,
                                 bool handlesNull = false,
                                 bool isContextual = true )
      : QgsExpressionFunction( fnname, params, group, helpText, lazyEval, handlesNull, isContextual )
      , mUsesGeometry( usesGeometry )
      , mReferencedColumns( referencedColumns )
    {}

    /**
     * Create a new QgsScopedExpressionFunction using named parameters.
     *
     * \since QGIS 3.0
     */
    QgsScopedExpressionFunction( const QString &fnname,
                                 const QgsExpressionFunction::ParameterList &params,
                                 const QString &group,
                                 const QString &helpText = QString(),
                                 bool usesGeometry = false,
                                 const QSet<QString> &referencedColumns = QSet<QString>(),
                                 bool lazyEval = false,
                                 bool handlesNull = false,
                                 bool isContextual = true )
      : QgsExpressionFunction( fnname, params, group, helpText, lazyEval, handlesNull, isContextual )
      , mUsesGeometry( usesGeometry )
      , mReferencedColumns( referencedColumns )
    {}

    QVariant func( const QVariantList &values, const QgsExpressionContext *context, QgsExpression *parent, const QgsExpressionNodeFunction *node ) override = 0;

    /**
     * Returns a clone of the function.
     */
    virtual QgsScopedExpressionFunction *clone() const = 0 SIP_FACTORY;

    bool usesGeometry( const QgsExpressionNodeFunction *node ) const override;

    QSet<QString> referencedColumns( const QgsExpressionNodeFunction *node ) const override;

    bool isStatic( const QgsExpressionNodeFunction *node, QgsExpression *parent, const QgsExpressionContext *context ) const override;

  private:
    bool mUsesGeometry;
    QSet<QString> mReferencedColumns;
};

#ifndef SIP_RUN
class GetLayerVisibility : public QgsScopedExpressionFunction
{
  public:
    GetLayerVisibility( const QList<QgsMapLayer *> &layers );
    QVariant func( const QVariantList &values, const QgsExpressionContext *, QgsExpression *, const QgsExpressionNodeFunction * ) override;
    QgsScopedExpressionFunction *clone() const override;

  private:

    const QList< QPointer< QgsMapLayer > > mLayers;

};
#endif

#endif // QGSSCOPEDEXPRESSIONFUNCTION_H
