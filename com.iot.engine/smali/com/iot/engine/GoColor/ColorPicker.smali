.class public Lcom/iot/engine/GoColor/ColorPicker;
.super Landroid/view/View;
.source "ColorPicker.java"


# instance fields
.field private arrowPointerPath:Landroid/graphics/Path;

.field private arrowPointerSize:I

.field private colorHSV:[F

.field private colorPointerCoords:Landroid/graphics/RectF;

.field private colorPointerPaint:Landroid/graphics/Paint;

.field private colorViewPaint:Landroid/graphics/Paint;

.field private colorViewPath:Landroid/graphics/Path;

.field private colorWheelBitmap:Landroid/graphics/Bitmap;

.field private colorWheelPaint:Landroid/graphics/Paint;

.field private colorWheelRadius:I

.field private gradientRotationMatrix:Landroid/graphics/Matrix;

.field private innerPadding:I

.field private innerWheelRadius:I

.field private innerWheelRect:Landroid/graphics/RectF;

.field private outerPadding:I

.field private outerWheelRadius:I

.field private outerWheelRect:Landroid/graphics/RectF;

.field private final paramArrowPointerSize:I

.field private final paramInnerPadding:I

.field private final paramOuterPadding:I

.field private final paramValueSliderWidth:I

.field private valuePointerArrowPaint:Landroid/graphics/Paint;

.field private valuePointerPaint:Landroid/graphics/Paint;

.field private valueSliderPaint:Landroid/graphics/Paint;

.field private valueSliderPath:Landroid/graphics/Path;

.field private valueSliderWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 97
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 47
    const/4 v0, 0x2

    iput v0, p0, Lcom/iot/engine/GoColor/ColorPicker;->paramOuterPadding:I

    .line 48
    const/4 v0, 0x5

    iput v0, p0, Lcom/iot/engine/GoColor/ColorPicker;->paramInnerPadding:I

    .line 49
    const/16 v0, 0xa

    iput v0, p0, Lcom/iot/engine/GoColor/ColorPicker;->paramValueSliderWidth:I

    .line 50
    const/4 v0, 0x4

    iput v0, p0, Lcom/iot/engine/GoColor/ColorPicker;->paramArrowPointerSize:I

    .line 84
    const/4 v0, 0x3

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/iot/engine/GoColor/ColorPicker;->colorHSV:[F

    .line 98
    invoke-direct {p0}, Lcom/iot/engine/GoColor/ColorPicker;->init()V

    .line 99
    return-void

    .line 84
    :array_0
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 92
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    const/4 v0, 0x2

    iput v0, p0, Lcom/iot/engine/GoColor/ColorPicker;->paramOuterPadding:I

    .line 48
    const/4 v0, 0x5

    iput v0, p0, Lcom/iot/engine/GoColor/ColorPicker;->paramInnerPadding:I

    .line 49
    const/16 v0, 0xa

    iput v0, p0, Lcom/iot/engine/GoColor/ColorPicker;->paramValueSliderWidth:I

    .line 50
    const/4 v0, 0x4

    iput v0, p0, Lcom/iot/engine/GoColor/ColorPicker;->paramArrowPointerSize:I

    .line 84
    const/4 v0, 0x3

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/iot/engine/GoColor/ColorPicker;->colorHSV:[F

    .line 93
    invoke-direct {p0}, Lcom/iot/engine/GoColor/ColorPicker;->init()V

    .line 94
    return-void

    .line 84
    :array_0
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 87
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    const/4 v0, 0x2

    iput v0, p0, Lcom/iot/engine/GoColor/ColorPicker;->paramOuterPadding:I

    .line 48
    const/4 v0, 0x5

    iput v0, p0, Lcom/iot/engine/GoColor/ColorPicker;->paramInnerPadding:I

    .line 49
    const/16 v0, 0xa

    iput v0, p0, Lcom/iot/engine/GoColor/ColorPicker;->paramValueSliderWidth:I

    .line 50
    const/4 v0, 0x4

    iput v0, p0, Lcom/iot/engine/GoColor/ColorPicker;->paramArrowPointerSize:I

    .line 84
    const/4 v0, 0x3

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/iot/engine/GoColor/ColorPicker;->colorHSV:[F

    .line 88
    invoke-direct {p0}, Lcom/iot/engine/GoColor/ColorPicker;->init()V

    .line 89
    return-void

    .line 84
    :array_0
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private createColorWheelBitmap(II)Landroid/graphics/Bitmap;
    .locals 18
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 268
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v0, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 270
    .local v9, "bitmap":Landroid/graphics/Bitmap;
    const/16 v12, 0xc

    .line 271
    .local v12, "colorCount":I
    const/16 v11, 0x1e

    .line 272
    .local v11, "colorAngleStep":I
    const/16 v3, 0xd

    new-array v13, v3, [I

    .line 273
    .local v13, "colors":[I
    const/4 v3, 0x3

    new-array v15, v3, [F

    fill-array-data v15, :array_0

    .line 274
    .local v15, "hsv":[F
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_0
    array-length v3, v13

    move/from16 v0, v16

    if-ge v0, v3, :cond_0

    .line 275
    const/4 v3, 0x0

    mul-int v4, v16, v11

    add-int/lit16 v4, v4, 0xb4

    rem-int/lit16 v4, v4, 0x168

    int-to-float v4, v4

    aput v4, v15, v3

    .line 276
    invoke-static {v15}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v3

    aput v3, v13, v16

    .line 274
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 278
    :cond_0
    const/4 v3, 0x0

    aget v3, v13, v3

    aput v3, v13, v12

    .line 280
    new-instance v17, Landroid/graphics/SweepGradient;

    div-int/lit8 v3, p1, 0x2

    int-to-float v3, v3

    div-int/lit8 v4, p2, 0x2

    int-to-float v4, v4

    const/4 v5, 0x0

    move-object/from16 v0, v17

    invoke-direct {v0, v3, v4, v13, v5}, Landroid/graphics/SweepGradient;-><init>(FF[I[F)V

    .line 281
    .local v17, "sweepGradient":Landroid/graphics/SweepGradient;
    new-instance v2, Landroid/graphics/RadialGradient;

    div-int/lit8 v3, p1, 0x2

    int-to-float v3, v3

    div-int/lit8 v4, p2, 0x2

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/iot/engine/GoColor/ColorPicker;->colorWheelRadius:I

    int-to-float v5, v5

    const/4 v6, -0x1

    const v7, 0xffffff

    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v2 .. v8}, Landroid/graphics/RadialGradient;-><init>(FFFIILandroid/graphics/Shader$TileMode;)V

    .line 282
    .local v2, "radialGradient":Landroid/graphics/RadialGradient;
    new-instance v14, Landroid/graphics/ComposeShader;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    move-object/from16 v0, v17

    invoke-direct {v14, v0, v2, v3}, Landroid/graphics/ComposeShader;-><init>(Landroid/graphics/Shader;Landroid/graphics/Shader;Landroid/graphics/PorterDuff$Mode;)V

    .line 284
    .local v14, "composeShader":Landroid/graphics/ComposeShader;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iot/engine/GoColor/ColorPicker;->colorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v14}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 286
    new-instance v10, Landroid/graphics/Canvas;

    invoke-direct {v10, v9}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 287
    .local v10, "canvas":Landroid/graphics/Canvas;
    div-int/lit8 v3, p1, 0x2

    int-to-float v3, v3

    div-int/lit8 v4, p2, 0x2

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/iot/engine/GoColor/ColorPicker;->colorWheelRadius:I

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/iot/engine/GoColor/ColorPicker;->colorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v10, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 289
    return-object v9

    .line 273
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private drawPointerArrow(Landroid/graphics/Canvas;)V
    .locals 28
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 204
    invoke-virtual/range {p0 .. p0}, Lcom/iot/engine/GoColor/ColorPicker;->getWidth()I

    move-result v24

    div-int/lit8 v4, v24, 0x2

    .line 205
    .local v4, "centerX":I
    invoke-virtual/range {p0 .. p0}, Lcom/iot/engine/GoColor/ColorPicker;->getHeight()I

    move-result v24

    div-int/lit8 v5, v24, 0x2

    .line 207
    .local v5, "centerY":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iot/engine/GoColor/ColorPicker;->colorHSV:[F

    move-object/from16 v24, v0

    const/16 v25, 0x2

    aget v24, v24, v25

    const/high16 v25, 0x3f000000    # 0.5f

    sub-float v24, v24, v25

    move/from16 v0, v24

    float-to-double v0, v0

    move-wide/from16 v24, v0

    const-wide v26, 0x400921fb54442d18L    # Math.PI

    mul-double v18, v24, v26

    .line 208
    .local v18, "tipAngle":D
    const-wide v24, 0x3fa0c152382d7365L    # 0.032724923474893676

    add-double v6, v18, v24

    .line 209
    .local v6, "leftAngle":D
    const-wide v24, 0x3fa0c152382d7365L    # 0.032724923474893676

    sub-double v12, v18, v24

    .line 211
    .local v12, "rightAngle":D
    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->cos(D)D

    move-result-wide v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/iot/engine/GoColor/ColorPicker;->outerWheelRadius:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-double v0, v0

    move-wide/from16 v26, v0

    mul-double v20, v24, v26

    .line 212
    .local v20, "tipAngleX":D
    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sin(D)D

    move-result-wide v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/iot/engine/GoColor/ColorPicker;->outerWheelRadius:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-double v0, v0

    move-wide/from16 v26, v0

    mul-double v22, v24, v26

    .line 213
    .local v22, "tipAngleY":D
    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/iot/engine/GoColor/ColorPicker;->outerWheelRadius:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/iot/engine/GoColor/ColorPicker;->arrowPointerSize:I

    move/from16 v27, v0

    add-int v26, v26, v27

    move/from16 v0, v26

    int-to-double v0, v0

    move-wide/from16 v26, v0

    mul-double v8, v24, v26

    .line 214
    .local v8, "leftAngleX":D
    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/iot/engine/GoColor/ColorPicker;->outerWheelRadius:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/iot/engine/GoColor/ColorPicker;->arrowPointerSize:I

    move/from16 v27, v0

    add-int v26, v26, v27

    move/from16 v0, v26

    int-to-double v0, v0

    move-wide/from16 v26, v0

    mul-double v10, v24, v26

    .line 215
    .local v10, "leftAngleY":D
    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/iot/engine/GoColor/ColorPicker;->outerWheelRadius:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/iot/engine/GoColor/ColorPicker;->arrowPointerSize:I

    move/from16 v27, v0

    add-int v26, v26, v27

    move/from16 v0, v26

    int-to-double v0, v0

    move-wide/from16 v26, v0

    mul-double v14, v24, v26

    .line 216
    .local v14, "rightAngleX":D
    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/iot/engine/GoColor/ColorPicker;->outerWheelRadius:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/iot/engine/GoColor/ColorPicker;->arrowPointerSize:I

    move/from16 v27, v0

    add-int v26, v26, v27

    move/from16 v0, v26

    int-to-double v0, v0

    move-wide/from16 v26, v0

    mul-double v16, v24, v26

    .line 218
    .local v16, "rightAngleY":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iot/engine/GoColor/ColorPicker;->arrowPointerPath:Landroid/graphics/Path;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/graphics/Path;->reset()V

    .line 219
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iot/engine/GoColor/ColorPicker;->arrowPointerPath:Landroid/graphics/Path;

    move-object/from16 v24, v0

    move-wide/from16 v0, v20

    double-to-float v0, v0

    move/from16 v25, v0

    int-to-float v0, v4

    move/from16 v26, v0

    add-float v25, v25, v26

    move-wide/from16 v0, v22

    double-to-float v0, v0

    move/from16 v26, v0

    int-to-float v0, v5

    move/from16 v27, v0

    add-float v26, v26, v27

    invoke-virtual/range {v24 .. v26}, Landroid/graphics/Path;->moveTo(FF)V

    .line 220
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iot/engine/GoColor/ColorPicker;->arrowPointerPath:Landroid/graphics/Path;

    move-object/from16 v24, v0

    double-to-float v0, v8

    move/from16 v25, v0

    int-to-float v0, v4

    move/from16 v26, v0

    add-float v25, v25, v26

    double-to-float v0, v10

    move/from16 v26, v0

    int-to-float v0, v5

    move/from16 v27, v0

    add-float v26, v26, v27

    invoke-virtual/range {v24 .. v26}, Landroid/graphics/Path;->lineTo(FF)V

    .line 221
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iot/engine/GoColor/ColorPicker;->arrowPointerPath:Landroid/graphics/Path;

    move-object/from16 v24, v0

    double-to-float v0, v14

    move/from16 v25, v0

    int-to-float v0, v4

    move/from16 v26, v0

    add-float v25, v25, v26

    move-wide/from16 v0, v16

    double-to-float v0, v0

    move/from16 v26, v0

    int-to-float v0, v5

    move/from16 v27, v0

    add-float v26, v26, v27

    invoke-virtual/range {v24 .. v26}, Landroid/graphics/Path;->lineTo(FF)V

    .line 222
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iot/engine/GoColor/ColorPicker;->arrowPointerPath:Landroid/graphics/Path;

    move-object/from16 v24, v0

    move-wide/from16 v0, v20

    double-to-float v0, v0

    move/from16 v25, v0

    int-to-float v0, v4

    move/from16 v26, v0

    add-float v25, v25, v26

    move-wide/from16 v0, v22

    double-to-float v0, v0

    move/from16 v26, v0

    int-to-float v0, v5

    move/from16 v27, v0

    add-float v26, v26, v27

    invoke-virtual/range {v24 .. v26}, Landroid/graphics/Path;->lineTo(FF)V

    .line 224
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iot/engine/GoColor/ColorPicker;->valuePointerArrowPaint:Landroid/graphics/Paint;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iot/engine/GoColor/ColorPicker;->colorHSV:[F

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Landroid/graphics/Paint;->setColor(I)V

    .line 225
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iot/engine/GoColor/ColorPicker;->valuePointerArrowPaint:Landroid/graphics/Paint;

    move-object/from16 v24, v0

    sget-object v25, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual/range {v24 .. v25}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 226
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iot/engine/GoColor/ColorPicker;->arrowPointerPath:Landroid/graphics/Path;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iot/engine/GoColor/ColorPicker;->valuePointerArrowPaint:Landroid/graphics/Paint;

    move-object/from16 v25, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 228
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iot/engine/GoColor/ColorPicker;->valuePointerArrowPaint:Landroid/graphics/Paint;

    move-object/from16 v24, v0

    sget-object v25, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual/range {v24 .. v25}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 229
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iot/engine/GoColor/ColorPicker;->valuePointerArrowPaint:Landroid/graphics/Paint;

    move-object/from16 v24, v0

    sget-object v25, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual/range {v24 .. v25}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 230
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iot/engine/GoColor/ColorPicker;->valuePointerArrowPaint:Landroid/graphics/Paint;

    move-object/from16 v24, v0

    const/high16 v25, -0x1000000

    invoke-virtual/range {v24 .. v25}, Landroid/graphics/Paint;->setColor(I)V

    .line 231
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iot/engine/GoColor/ColorPicker;->arrowPointerPath:Landroid/graphics/Path;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iot/engine/GoColor/ColorPicker;->valuePointerArrowPaint:Landroid/graphics/Paint;

    move-object/from16 v25, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 233
    return-void
.end method

.method private init()V
    .locals 5

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 103
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/iot/engine/GoColor/ColorPicker;->colorPointerPaint:Landroid/graphics/Paint;

    .line 104
    iget-object v0, p0, Lcom/iot/engine/GoColor/ColorPicker;->colorPointerPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 105
    iget-object v0, p0, Lcom/iot/engine/GoColor/ColorPicker;->colorPointerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 106
    iget-object v0, p0, Lcom/iot/engine/GoColor/ColorPicker;->colorPointerPaint:Landroid/graphics/Paint;

    const/16 v1, 0x80

    invoke-virtual {v0, v1, v3, v3, v3}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 108
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/iot/engine/GoColor/ColorPicker;->valuePointerPaint:Landroid/graphics/Paint;

    .line 109
    iget-object v0, p0, Lcom/iot/engine/GoColor/ColorPicker;->valuePointerPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 110
    iget-object v0, p0, Lcom/iot/engine/GoColor/ColorPicker;->valuePointerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 112
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/iot/engine/GoColor/ColorPicker;->valuePointerArrowPaint:Landroid/graphics/Paint;

    .line 114
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/iot/engine/GoColor/ColorPicker;->colorWheelPaint:Landroid/graphics/Paint;

    .line 115
    iget-object v0, p0, Lcom/iot/engine/GoColor/ColorPicker;->colorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 116
    iget-object v0, p0, Lcom/iot/engine/GoColor/ColorPicker;->colorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 118
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/iot/engine/GoColor/ColorPicker;->valueSliderPaint:Landroid/graphics/Paint;

    .line 119
    iget-object v0, p0, Lcom/iot/engine/GoColor/ColorPicker;->valueSliderPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 120
    iget-object v0, p0, Lcom/iot/engine/GoColor/ColorPicker;->valueSliderPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 122
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/iot/engine/GoColor/ColorPicker;->colorViewPaint:Landroid/graphics/Paint;

    .line 123
    iget-object v0, p0, Lcom/iot/engine/GoColor/ColorPicker;->colorViewPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 125
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/iot/engine/GoColor/ColorPicker;->colorViewPath:Landroid/graphics/Path;

    .line 126
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/iot/engine/GoColor/ColorPicker;->valueSliderPath:Landroid/graphics/Path;

    .line 127
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/iot/engine/GoColor/ColorPicker;->arrowPointerPath:Landroid/graphics/Path;

    .line 129
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/iot/engine/GoColor/ColorPicker;->outerWheelRect:Landroid/graphics/RectF;

    .line 130
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/iot/engine/GoColor/ColorPicker;->innerWheelRect:Landroid/graphics/RectF;

    .line 132
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/iot/engine/GoColor/ColorPicker;->colorPointerCoords:Landroid/graphics/RectF;

    .line 134
    return-void
.end method


# virtual methods
.method public getColor()I
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lcom/iot/engine/GoColor/ColorPicker;->colorHSV:[F

    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 22
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DrawAllocation"
        }
    .end annotation

    .prologue
    .line 148
    invoke-virtual/range {p0 .. p0}, Lcom/iot/engine/GoColor/ColorPicker;->getWidth()I

    move-result v2

    div-int/lit8 v8, v2, 0x2

    .line 149
    .local v8, "centerX":I
    invoke-virtual/range {p0 .. p0}, Lcom/iot/engine/GoColor/ColorPicker;->getHeight()I

    move-result v2

    div-int/lit8 v9, v2, 0x2

    .line 153
    .local v9, "centerY":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iot/engine/GoColor/ColorPicker;->colorWheelBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/iot/engine/GoColor/ColorPicker;->colorWheelRadius:I

    sub-int v3, v8, v3

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/iot/engine/GoColor/ColorPicker;->colorWheelRadius:I

    sub-int v4, v9, v4

    int-to-float v4, v4

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 157
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iot/engine/GoColor/ColorPicker;->colorViewPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iot/engine/GoColor/ColorPicker;->colorHSV:[F

    invoke-static {v3}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 158
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iot/engine/GoColor/ColorPicker;->colorViewPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iot/engine/GoColor/ColorPicker;->colorViewPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 162
    const/4 v2, 0x3

    new-array v12, v2, [F

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iot/engine/GoColor/ColorPicker;->colorHSV:[F

    const/4 v4, 0x0

    aget v3, v3, v4

    aput v3, v12, v2

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iot/engine/GoColor/ColorPicker;->colorHSV:[F

    const/4 v4, 0x1

    aget v3, v3, v4

    aput v3, v12, v2

    const/4 v2, 0x2

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v12, v2

    .line 164
    .local v12, "hsv":[F
    new-instance v17, Landroid/graphics/SweepGradient;

    int-to-float v2, v8

    int-to-float v3, v9

    const/4 v4, 0x3

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/high16 v6, -0x1000000

    aput v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v12}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v6

    aput v6, v4, v5

    const/4 v5, 0x2

    const/4 v6, -0x1

    aput v6, v4, v5

    const/4 v5, 0x0

    move-object/from16 v0, v17

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/graphics/SweepGradient;-><init>(FF[I[F)V

    .line 165
    .local v17, "sweepGradient":Landroid/graphics/SweepGradient;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iot/engine/GoColor/ColorPicker;->gradientRotationMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/graphics/SweepGradient;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 166
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iot/engine/GoColor/ColorPicker;->valueSliderPaint:Landroid/graphics/Paint;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 168
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iot/engine/GoColor/ColorPicker;->valueSliderPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iot/engine/GoColor/ColorPicker;->valueSliderPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 172
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iot/engine/GoColor/ColorPicker;->colorHSV:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    double-to-float v13, v2

    .line 173
    .local v13, "hueAngle":F
    float-to-double v2, v13

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    neg-double v2, v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/iot/engine/GoColor/ColorPicker;->colorHSV:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    float-to-double v4, v4

    mul-double/2addr v2, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/iot/engine/GoColor/ColorPicker;->colorWheelRadius:I

    int-to-double v4, v4

    mul-double/2addr v2, v4

    double-to-int v2, v2

    add-int v10, v2, v8

    .line 174
    .local v10, "colorPointX":I
    float-to-double v2, v13

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    neg-double v2, v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/iot/engine/GoColor/ColorPicker;->colorHSV:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    float-to-double v4, v4

    mul-double/2addr v2, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/iot/engine/GoColor/ColorPicker;->colorWheelRadius:I

    int-to-double v4, v4

    mul-double/2addr v2, v4

    double-to-int v2, v2

    add-int v11, v2, v9

    .line 176
    .local v11, "colorPointY":I
    const v2, 0x3d99999a    # 0.075f

    move-object/from16 v0, p0

    iget v3, v0, Lcom/iot/engine/GoColor/ColorPicker;->colorWheelRadius:I

    int-to-float v3, v3

    mul-float v14, v2, v3

    .line 177
    .local v14, "pointerRadius":F
    int-to-float v2, v10

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v14, v3

    sub-float/2addr v2, v3

    float-to-int v15, v2

    .line 178
    .local v15, "pointerX":I
    int-to-float v2, v11

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v14, v3

    sub-float/2addr v2, v3

    float-to-int v0, v2

    move/from16 v16, v0

    .line 180
    .local v16, "pointerY":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iot/engine/GoColor/ColorPicker;->colorPointerCoords:Landroid/graphics/RectF;

    int-to-float v3, v15

    move/from16 v0, v16

    int-to-float v4, v0

    int-to-float v5, v15

    add-float/2addr v5, v14

    move/from16 v0, v16

    int-to-float v6, v0

    add-float/2addr v6, v14

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 181
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iot/engine/GoColor/ColorPicker;->colorPointerCoords:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/iot/engine/GoColor/ColorPicker;->colorPointerPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 185
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iot/engine/GoColor/ColorPicker;->valuePointerPaint:Landroid/graphics/Paint;

    const/4 v3, 0x3

    new-array v3, v3, [F

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput v5, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x0

    aput v5, v3, v4

    const/4 v4, 0x2

    const/high16 v5, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/iot/engine/GoColor/ColorPicker;->colorHSV:[F

    const/4 v7, 0x2

    aget v6, v6, v7

    sub-float/2addr v5, v6

    aput v5, v3, v4

    invoke-static {v3}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 187
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/iot/engine/GoColor/ColorPicker;->colorHSV:[F

    const/4 v3, 0x2

    aget v2, v2, v3

    const/high16 v3, 0x3f000000    # 0.5f

    sub-float/2addr v2, v3

    float-to-double v2, v2

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    mul-double v18, v2, v4

    .line 188
    .local v18, "valueAngle":D
    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v0, v2

    move/from16 v20, v0

    .line 189
    .local v20, "valueAngleX":F
    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v0, v2

    move/from16 v21, v0

    .line 191
    .local v21, "valueAngleY":F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/iot/engine/GoColor/ColorPicker;->innerWheelRadius:I

    int-to-float v2, v2

    mul-float v2, v2, v20

    int-to-float v3, v8

    add-float/2addr v3, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/iot/engine/GoColor/ColorPicker;->innerWheelRadius:I

    int-to-float v2, v2

    mul-float v2, v2, v21

    int-to-float v4, v9

    add-float/2addr v4, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/iot/engine/GoColor/ColorPicker;->outerWheelRadius:I

    int-to-float v2, v2

    mul-float v2, v2, v20

    int-to-float v5, v8

    add-float/2addr v5, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/iot/engine/GoColor/ColorPicker;->outerWheelRadius:I

    int-to-float v2, v2

    mul-float v2, v2, v21

    int-to-float v6, v9

    add-float/2addr v6, v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/iot/engine/GoColor/ColorPicker;->valuePointerPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 196
    move-object/from16 v0, p0

    iget v2, v0, Lcom/iot/engine/GoColor/ColorPicker;->arrowPointerSize:I

    if-lez v2, :cond_0

    .line 197
    invoke-direct/range {p0 .. p1}, Lcom/iot/engine/GoColor/ColorPicker;->drawPointerArrow(Landroid/graphics/Canvas;)V

    .line 200
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 138
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 139
    .local v2, "widthSize":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 140
    .local v0, "heightSize":I
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 141
    .local v1, "size":I
    invoke-virtual {p0, v1, v1}, Lcom/iot/engine/GoColor/ColorPicker;->setMeasuredDimension(II)V

    .line 142
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 344
    instance-of v1, p1, Landroid/os/Bundle;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 345
    check-cast v0, Landroid/os/Bundle;

    .line 346
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "color"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloatArray(Ljava/lang/String;)[F

    move-result-object v1

    iput-object v1, p0, Lcom/iot/engine/GoColor/ColorPicker;->colorHSV:[F

    .line 347
    const-string v1, "super"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 351
    .end local v0    # "bundle":Landroid/os/Bundle;
    :goto_0
    return-void

    .line 349
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 336
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 337
    .local v0, "state":Landroid/os/Bundle;
    const-string v1, "color"

    iget-object v2, p0, Lcom/iot/engine/GoColor/ColorPicker;->colorHSV:[F

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloatArray(Ljava/lang/String;[F)V

    .line 338
    const-string v1, "super"

    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 339
    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 11
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    const/high16 v10, 0x43340000    # 180.0f

    const/high16 v9, 0x42b40000    # 90.0f

    const/high16 v8, -0x3ccc0000    # -180.0f

    const/high16 v7, 0x43870000    # 270.0f

    .line 238
    div-int/lit8 v0, p1, 0x2

    .line 239
    .local v0, "centerX":I
    div-int/lit8 v1, p2, 0x2

    .line 241
    .local v1, "centerY":I
    mul-int/lit8 v2, p1, 0x5

    div-int/lit8 v2, v2, 0x64

    iput v2, p0, Lcom/iot/engine/GoColor/ColorPicker;->innerPadding:I

    .line 242
    mul-int/lit8 v2, p1, 0x2

    div-int/lit8 v2, v2, 0x64

    iput v2, p0, Lcom/iot/engine/GoColor/ColorPicker;->outerPadding:I

    .line 243
    mul-int/lit8 v2, p1, 0x4

    div-int/lit8 v2, v2, 0x64

    iput v2, p0, Lcom/iot/engine/GoColor/ColorPicker;->arrowPointerSize:I

    .line 244
    mul-int/lit8 v2, p1, 0xa

    div-int/lit8 v2, v2, 0x64

    iput v2, p0, Lcom/iot/engine/GoColor/ColorPicker;->valueSliderWidth:I

    .line 246
    div-int/lit8 v2, p1, 0x2

    iget v3, p0, Lcom/iot/engine/GoColor/ColorPicker;->outerPadding:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/iot/engine/GoColor/ColorPicker;->arrowPointerSize:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/iot/engine/GoColor/ColorPicker;->outerWheelRadius:I

    .line 247
    iget v2, p0, Lcom/iot/engine/GoColor/ColorPicker;->outerWheelRadius:I

    iget v3, p0, Lcom/iot/engine/GoColor/ColorPicker;->valueSliderWidth:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/iot/engine/GoColor/ColorPicker;->innerWheelRadius:I

    .line 248
    iget v2, p0, Lcom/iot/engine/GoColor/ColorPicker;->innerWheelRadius:I

    iget v3, p0, Lcom/iot/engine/GoColor/ColorPicker;->innerPadding:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/iot/engine/GoColor/ColorPicker;->colorWheelRadius:I

    .line 250
    iget-object v2, p0, Lcom/iot/engine/GoColor/ColorPicker;->outerWheelRect:Landroid/graphics/RectF;

    iget v3, p0, Lcom/iot/engine/GoColor/ColorPicker;->outerWheelRadius:I

    sub-int v3, v0, v3

    int-to-float v3, v3

    iget v4, p0, Lcom/iot/engine/GoColor/ColorPicker;->outerWheelRadius:I

    sub-int v4, v1, v4

    int-to-float v4, v4

    iget v5, p0, Lcom/iot/engine/GoColor/ColorPicker;->outerWheelRadius:I

    add-int/2addr v5, v0

    int-to-float v5, v5

    iget v6, p0, Lcom/iot/engine/GoColor/ColorPicker;->outerWheelRadius:I

    add-int/2addr v6, v1

    int-to-float v6, v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 251
    iget-object v2, p0, Lcom/iot/engine/GoColor/ColorPicker;->innerWheelRect:Landroid/graphics/RectF;

    iget v3, p0, Lcom/iot/engine/GoColor/ColorPicker;->innerWheelRadius:I

    sub-int v3, v0, v3

    int-to-float v3, v3

    iget v4, p0, Lcom/iot/engine/GoColor/ColorPicker;->innerWheelRadius:I

    sub-int v4, v1, v4

    int-to-float v4, v4

    iget v5, p0, Lcom/iot/engine/GoColor/ColorPicker;->innerWheelRadius:I

    add-int/2addr v5, v0

    int-to-float v5, v5

    iget v6, p0, Lcom/iot/engine/GoColor/ColorPicker;->innerWheelRadius:I

    add-int/2addr v6, v1

    int-to-float v6, v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 253
    iget v2, p0, Lcom/iot/engine/GoColor/ColorPicker;->colorWheelRadius:I

    mul-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/iot/engine/GoColor/ColorPicker;->colorWheelRadius:I

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {p0, v2, v3}, Lcom/iot/engine/GoColor/ColorPicker;->createColorWheelBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/iot/engine/GoColor/ColorPicker;->colorWheelBitmap:Landroid/graphics/Bitmap;

    .line 255
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, p0, Lcom/iot/engine/GoColor/ColorPicker;->gradientRotationMatrix:Landroid/graphics/Matrix;

    .line 256
    iget-object v2, p0, Lcom/iot/engine/GoColor/ColorPicker;->gradientRotationMatrix:Landroid/graphics/Matrix;

    div-int/lit8 v3, p1, 0x2

    int-to-float v3, v3

    div-int/lit8 v4, p2, 0x2

    int-to-float v4, v4

    invoke-virtual {v2, v7, v3, v4}, Landroid/graphics/Matrix;->preRotate(FFF)Z

    .line 258
    iget-object v2, p0, Lcom/iot/engine/GoColor/ColorPicker;->colorViewPath:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/iot/engine/GoColor/ColorPicker;->outerWheelRect:Landroid/graphics/RectF;

    invoke-virtual {v2, v3, v7, v8}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 259
    iget-object v2, p0, Lcom/iot/engine/GoColor/ColorPicker;->colorViewPath:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/iot/engine/GoColor/ColorPicker;->innerWheelRect:Landroid/graphics/RectF;

    invoke-virtual {v2, v3, v9, v10}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 261
    iget-object v2, p0, Lcom/iot/engine/GoColor/ColorPicker;->valueSliderPath:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/iot/engine/GoColor/ColorPicker;->outerWheelRect:Landroid/graphics/RectF;

    invoke-virtual {v2, v3, v7, v10}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 262
    iget-object v2, p0, Lcom/iot/engine/GoColor/ColorPicker;->valueSliderPath:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/iot/engine/GoColor/ColorPicker;->innerWheelRect:Landroid/graphics/RectF;

    invoke-virtual {v2, v3, v9, v8}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 264
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 20
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 295
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 296
    .local v2, "action":I
    packed-switch v2, :pswitch_data_0

    .line 322
    :pswitch_0
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v9

    :goto_0
    return v9

    .line 300
    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    float-to-int v5, v9

    .line 301
    .local v5, "x":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    float-to-int v8, v9

    .line 302
    .local v8, "y":I
    invoke-virtual/range {p0 .. p0}, Lcom/iot/engine/GoColor/ColorPicker;->getWidth()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    sub-int v3, v5, v9

    .line 303
    .local v3, "cx":I
    invoke-virtual/range {p0 .. p0}, Lcom/iot/engine/GoColor/ColorPicker;->getHeight()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    sub-int v4, v8, v9

    .line 304
    .local v4, "cy":I
    mul-int v9, v3, v3

    mul-int v10, v4, v4

    add-int/2addr v9, v10

    int-to-double v10, v9

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    .line 306
    .local v6, "d":D
    move-object/from16 v0, p0

    iget v9, v0, Lcom/iot/engine/GoColor/ColorPicker;->colorWheelRadius:I

    int-to-double v10, v9

    cmpg-double v9, v6, v10

    if-gtz v9, :cond_1

    .line 308
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/iot/engine/GoColor/ColorPicker;->colorHSV:[F

    const/4 v10, 0x0

    int-to-double v12, v4

    int-to-double v14, v3

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v12

    const-wide v14, 0x4066800000000000L    # 180.0

    add-double/2addr v12, v14

    double-to-float v11, v12

    aput v11, v9, v10

    .line 309
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/iot/engine/GoColor/ColorPicker;->colorHSV:[F

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v13, v0, Lcom/iot/engine/GoColor/ColorPicker;->colorWheelRadius:I

    int-to-double v14, v13

    div-double v14, v6, v14

    double-to-float v13, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->min(FF)F

    move-result v12

    invoke-static {v11, v12}, Ljava/lang/Math;->max(FF)F

    move-result v11

    aput v11, v9, v10

    .line 311
    invoke-virtual/range {p0 .. p0}, Lcom/iot/engine/GoColor/ColorPicker;->invalidate()V

    .line 320
    :cond_0
    :goto_1
    const/4 v9, 0x1

    goto :goto_0

    .line 313
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/iot/engine/GoColor/ColorPicker;->getWidth()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    if-lt v5, v9, :cond_0

    move-object/from16 v0, p0

    iget v9, v0, Lcom/iot/engine/GoColor/ColorPicker;->innerWheelRadius:I

    int-to-double v10, v9

    cmpl-double v9, v6, v10

    if-ltz v9, :cond_0

    .line 315
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/iot/engine/GoColor/ColorPicker;->colorHSV:[F

    const/4 v10, 0x2

    const-wide/16 v12, 0x0

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    int-to-double v0, v4

    move-wide/from16 v16, v0

    int-to-double v0, v3

    move-wide/from16 v18, v0

    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v16

    const-wide v18, 0x400921fb54442d18L    # Math.PI

    div-double v16, v16, v18

    const-wide/high16 v18, 0x3fe0000000000000L    # 0.5

    add-double v16, v16, v18

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->min(DD)D

    move-result-wide v14

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->max(DD)D

    move-result-wide v12

    double-to-float v11, v12

    aput v11, v9, v10

    .line 317
    invoke-virtual/range {p0 .. p0}, Lcom/iot/engine/GoColor/ColorPicker;->invalidate()V

    goto :goto_1

    .line 296
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 326
    iget-object v0, p0, Lcom/iot/engine/GoColor/ColorPicker;->colorHSV:[F

    invoke-static {p1, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 327
    invoke-virtual {p0}, Lcom/iot/engine/GoColor/ColorPicker;->invalidate()V

    .line 328
    return-void
.end method
