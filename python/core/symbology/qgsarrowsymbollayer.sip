/************************************************************************
 * This file has been generated automatically from                      *
 *                                                                      *
 * src/core/symbology/qgsarrowsymbollayer.h                             *
 *                                                                      *
 * Do not edit manually ! Edit header and run scripts/sipify.pl again   *
 ************************************************************************/





class QgsArrowSymbolLayer : QgsLineSymbolLayer
{
%Docstring
 Line symbol layer used for representing lines as arrows.
.. versionadded:: 2.16
%End

%TypeHeaderCode
#include "qgsarrowsymbollayer.h"
%End
  public:
    QgsArrowSymbolLayer();
%Docstring
Simple constructor
%End

    static QgsSymbolLayer *create( const QgsStringMap &properties = QgsStringMap() ) /Factory/;
%Docstring
 Create a new QgsArrowSymbolLayer

 \param properties A property map to deserialize saved information from properties()

 :return: A new QgsArrowSymbolLayer
 :rtype: QgsSymbolLayer
%End

    virtual QgsArrowSymbolLayer *clone() const /Factory/;
    virtual QgsSymbol *subSymbol();
    virtual bool setSubSymbol( QgsSymbol *symbol /Transfer/ );
    virtual QSet<QString> usedAttributes( const QgsRenderContext &context ) const;

    double arrowWidth() const;
%Docstring
Get current arrow width
 :rtype: float
%End
    void setArrowWidth( double width );
%Docstring
Set the arrow width
%End
    QgsUnitTypes::RenderUnit arrowWidthUnit() const;
%Docstring
Get the unit for the arrow width
 :rtype: QgsUnitTypes.RenderUnit
%End
    void setArrowWidthUnit( QgsUnitTypes::RenderUnit unit );
%Docstring
Set the unit for the arrow width
%End
    QgsMapUnitScale arrowWidthUnitScale() const;
%Docstring
Get the scale for the arrow width
 :rtype: QgsMapUnitScale
%End
    void setArrowWidthUnitScale( const QgsMapUnitScale &scale );
%Docstring
Set the scale for the arrow width
%End

    double arrowStartWidth() const;
%Docstring
Get current arrow start width. Only meaningful for single headed arrows
 :rtype: float
%End
    void setArrowStartWidth( double width );
%Docstring
Set the arrow start width
%End
    QgsUnitTypes::RenderUnit arrowStartWidthUnit() const;
%Docstring
Get the unit for the arrow start width
 :rtype: QgsUnitTypes.RenderUnit
%End
    void setArrowStartWidthUnit( QgsUnitTypes::RenderUnit unit );
%Docstring
Set the unit for the arrow start width
%End
    QgsMapUnitScale arrowStartWidthUnitScale() const;
%Docstring
Get the scale for the arrow start width
 :rtype: QgsMapUnitScale
%End
    void setArrowStartWidthUnitScale( const QgsMapUnitScale &scale );
%Docstring
Set the scale for the arrow start width
%End

    double headLength() const;
%Docstring
Get the current arrow head length
 :rtype: float
%End
    void setHeadLength( double length );
%Docstring
Set the arrow head length
%End
    QgsUnitTypes::RenderUnit headLengthUnit() const;
%Docstring
Get the unit for the head length
 :rtype: QgsUnitTypes.RenderUnit
%End
    void setHeadLengthUnit( QgsUnitTypes::RenderUnit unit );
%Docstring
Set the unit for the head length
%End
    QgsMapUnitScale headLengthUnitScale() const;
%Docstring
Get the scale for the head length
 :rtype: QgsMapUnitScale
%End
    void setHeadLengthUnitScale( const QgsMapUnitScale &scale );
%Docstring
Set the scale for the head length
%End

    double headThickness() const;
%Docstring
Get the current arrow head height
 :rtype: float
%End
    void setHeadThickness( double thickness );
%Docstring
Set the arrow head height
%End
    QgsUnitTypes::RenderUnit headThicknessUnit() const;
%Docstring
Get the unit for the head height
 :rtype: QgsUnitTypes.RenderUnit
%End
    void setHeadThicknessUnit( QgsUnitTypes::RenderUnit unit );
%Docstring
Set the unit for the head height
%End
    QgsMapUnitScale headThicknessUnitScale() const;
%Docstring
Get the scale for the head height
 :rtype: QgsMapUnitScale
%End
    void setHeadThicknessUnitScale( const QgsMapUnitScale &scale );
%Docstring
Set the scale for the head height
%End

    bool isCurved() const;
%Docstring
Return whether it is a curved arrow or a straight one
 :rtype: bool
%End
    void setIsCurved( bool isCurved );
%Docstring
Set whether it is a curved arrow or a straight one
%End

    bool isRepeated() const;
%Docstring
Return whether the arrow is repeated along the line or not
 :rtype: bool
%End
    void setIsRepeated( bool isRepeated );
%Docstring
Set whether the arrow is repeated along the line
%End

    enum HeadType
    {
      HeadSingle,
      HeadReversed,
      HeadDouble
    };

    HeadType headType() const;
%Docstring
Get the current head type
 :rtype: HeadType
%End
    void setHeadType( HeadType type );
%Docstring
Set the head type
%End

    enum ArrowType
    {
      ArrowPlain,
      ArrowLeftHalf,
      ArrowRightHalf
    };

    ArrowType arrowType() const;
%Docstring
Get the current arrow type
 :rtype: ArrowType
%End
    void setArrowType( ArrowType type );
%Docstring
Set the arrow type
%End

    virtual QgsStringMap properties() const;

    virtual QString layerType() const;

    virtual void startRender( QgsSymbolRenderContext &context );

    virtual void stopRender( QgsSymbolRenderContext &context );

    virtual void renderPolyline( const QPolygonF &points, QgsSymbolRenderContext &context );

    virtual void setColor( const QColor &c );

    virtual QColor color() const;

  private:
    QgsArrowSymbolLayer( const QgsArrowSymbolLayer & );
};



/************************************************************************
 * This file has been generated automatically from                      *
 *                                                                      *
 * src/core/symbology/qgsarrowsymbollayer.h                             *
 *                                                                      *
 * Do not edit manually ! Edit header and run scripts/sipify.pl again   *
 ************************************************************************/
