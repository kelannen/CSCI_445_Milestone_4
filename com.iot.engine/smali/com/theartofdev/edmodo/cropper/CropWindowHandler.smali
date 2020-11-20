.class final Lcom/theartofdev/edmodo/cropper/CropWindowHandler;
.super Ljava/lang/Object;
.source "CropWindowHandler.java"


# instance fields
.field private final mEdges:Landroid/graphics/RectF;

.field private final mGetEdges:Landroid/graphics/RectF;

.field private mMaxCropResultHeight:F

.field private mMaxCropResultWidth:F

.field private mMaxCropWindowHeight:F

.field private mMaxCropWindowWidth:F

.field private mMinCropResultHeight:F

.field private mMinCropResultWidth:F

.field private mMinCropWindowHeight:F

.field private mMinCropWindowWidth:F

.field private mScaleFactorHeight:F

.field private mScaleFactorWidth:F


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->mEdges:Landroid/graphics/RectF;

    .line 32
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->mGetEdges:Landroid/graphics/RectF;

    .line 81
    iput v1, p0, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->mScaleFactorWidth:F

    .line 86
    iput v1, p0, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->mScaleFactorHeight:F

    return-void
.end method

.method private focusCenter()Z
    .locals 1

    .prologue
    .line 392
    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->showGuidelines()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getOvalPressedMoveType(FF)Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler$Type;
    .locals 11
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/high16 v10, 0x40c00000    # 6.0f

    const/high16 v9, 0x40a00000    # 5.0f

    .line 276
    iget-object v7, p0, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->mEdges:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v7

    div-float v2, v7, v10

    .line 277
    .local v2, "cellLength":F
    iget-object v7, p0, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->mEdges:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->left:F

    add-float v3, v7, v2

    .line 278
    .local v3, "leftCenter":F
    iget-object v7, p0, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->mEdges:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->left:F

    mul-float v8, v9, v2

    add-float v5, v7, v8

    .line 280
    .local v5, "rightCenter":F
    iget-object v7, p0, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->mEdges:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v7

    div-float v1, v7, v10

    .line 281
    .local v1, "cellHeight":F
    iget-object v7, p0, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->mEdges:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    add-float v6, v7, v1

    .line 282
    .local v6, "topCenter":F
    iget-object v7, p0, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->mEdges:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    mul-float v8, v9, v1

    add-float v0, v7, v8

    .line 285
    .local v0, "bottomCenter":F
    cmpg-float v7, p1, v3

    if-gez v7, :cond_2

    .line 286
    cmpg-float v7, p2, v6

    if-gez v7, :cond_0

    .line 287
    sget-object v4, Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler$Type;->TOP_LEFT:Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler$Type;

    .line 311
    .local v4, "moveType":Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler$Type;
    :goto_0
    return-object v4

    .line 288
    .end local v4    # "moveType":Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler$Type;
    :cond_0
    cmpg-float v7, p2, v0

    if-gez v7, :cond_1

    .line 289
    sget-object v4, Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler$Type;->LEFT:Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler$Type;

    .restart local v4    # "moveType":Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler$Type;
    goto :goto_0

    .line 291
    .end local v4    # "moveType":Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler$Type;
    :cond_1
    sget-object v4, Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler$Type;->BOTTOM_LEFT:Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler$Type;

    .restart local v4    # "moveType":Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler$Type;
    goto :goto_0

    .line 293
    .end local v4    # "moveType":Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler$Type;
    :cond_2
    cmpg-float v7, p1, v5

    if-gez v7, :cond_5

    .line 294
    cmpg-float v7, p2, v6

    if-gez v7, :cond_3

    .line 295
    sget-object v4, Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler$Type;->TOP:Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler$Type;

    .restart local v4    # "moveType":Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler$Type;
    goto :goto_0

    .line 296
    .end local v4    # "moveType":Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler$Type;
    :cond_3
    cmpg-float v7, p2, v0

    if-gez v7, :cond_4

    .line 297
    sget-object v4, Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler$Type;->CENTER:Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler$Type;

    .restart local v4    # "moveType":Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler$Type;
    goto :goto_0

    .line 299
    .end local v4    # "moveType":Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler$Type;
    :cond_4
    sget-object v4, Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler$Type;->BOTTOM:Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler$Type;

    .restart local v4    # "moveType":Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler$Type;
    goto :goto_0

    .line 302
    .end local v4    # "moveType":Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler$Type;
    :cond_5
    cmpg-float v7, p2, v6

    if-gez v7, :cond_6

    .line 303
    sget-object v4, Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler$Type;->TOP_RIGHT:Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler$Type;

    .restart local v4    # "moveType":Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler$Type;
    goto :goto_0

    .line 304
    .end local v4    # "moveType":Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler$Type;
    :cond_6
    cmpg-float v7, p2, v0

    if-gez v7, :cond_7

    .line 305
    sget-object v4, Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler$Type;->RIGHT:Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler$Type;

    .restart local v4    # "moveType":Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler$Type;
    goto :goto_0

    .line 307
    .end local v4    # "moveType":Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler$Type;
    :cond_7
    sget-object v4, Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler$Type;->BOTTOM_RIGHT:Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler$Type;

    .restart local v4    # "moveType":Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler$Type;
    goto :goto_0
.end method

.method private getRectanglePressedMoveType(FFF)Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler$Type;
    .locals 7
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "targetRadius"    # F

    .prologue
    .line 226
    const/4 v6, 0x0

    .line 229
    .local v6, "moveType":Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler$Type;
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->mEdges:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->mEdges:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    invoke-static {p1, p2, v0, v1, p3}, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->isInCornerTargetZone(FFFFF)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 230
    sget-object v6, Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler$Type;->TOP_LEFT:Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler$Type;

    .line 251
    :cond_0
    :goto_0
    return-object v6

    .line 231
    :cond_1
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->mEdges:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->mEdges:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    invoke-static {p1, p2, v0, v1, p3}, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->isInCornerTargetZone(FFFFF)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 232
    sget-object v6, Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler$Type;->TOP_RIGHT:Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler$Type;

    goto :goto_0

    .line 233
    :cond_2
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->mEdges:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->mEdges:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    invoke-static {p1, p2, v0, v1, p3}, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->isInCornerTargetZone(FFFFF)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 234
    sget-object v6, Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler$Type;->BOTTOM_LEFT:Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler$Type;

    goto :goto_0

    .line 235
    :cond_3
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->mEdges:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->mEdges:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    invoke-static {p1, p2, v0, v1, p3}, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->isInCornerTargetZone(FFFFF)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 236
    sget-object v6, Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler$Type;->BOTTOM_RIGHT:Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler$Type;

    goto :goto_0

    .line 237
    :cond_4
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->mEdges:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->mEdges:Landroid/graphics/RectF;

    iget v3, v0, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->mEdges:Landroid/graphics/RectF;

    iget v4, v0, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->mEdges:Landroid/graphics/RectF;

    iget v5, v0, Landroid/graphics/RectF;->bottom:F

    move v0, p1

    move v1, p2

    invoke-static/range {v0 .. v5}, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->isInCenterTargetZone(FFFFFF)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->focusCenter()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 238
    sget-object v6, Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler$Type;->CENTER:Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler$Type;

    goto :goto_0

    .line 239
    :cond_5
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->mEdges:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->mEdges:Landroid/graphics/RectF;

    iget v3, v0, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->mEdges:Landroid/graphics/RectF;

    iget v4, v0, Landroid/graphics/RectF;->top:F

    move v0, p1

    move v1, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->isInHorizontalTargetZone(FFFFFF)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 240
    sget-object v6, Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler$Type;->TOP:Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler$Type;

    goto :goto_0

    .line 241
    :cond_6
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->mEdges:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->mEdges:Landroid/graphics/RectF;

    iget v3, v0, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->mEdges:Landroid/graphics/RectF;

    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    move v0, p1

    move v1, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->isInHorizontalTargetZone(FFFFFF)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 242
    sget-object v6, Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler$Type;->BOTTOM:Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler$Type;

    goto/16 :goto_0

    .line 243
    :cond_7
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->mEdges:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->mEdges:Landroid/graphics/RectF;

    iget v3, v0, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->mEdges:Landroid/graphics/RectF;

    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    move v0, p1

    move v1, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->isInVerticalTargetZone(FFFFFF)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 244
    sget-object v6, Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler$Type;->LEFT:Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler$Type;

    goto/16 :goto_0

    .line 245
    :cond_8
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->mEdges:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->mEdges:Landroid/graphics/RectF;

    iget v3, v0, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->mEdges:Landroid/graphics/RectF;

    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    move v0, p1

    move v1, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->isInVerticalTargetZone(FFFFFF)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 246
    sget-object v6, Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler$Type;->RIGHT:Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler$Type;

    goto/16 :goto_0

    .line 247
    :cond_9
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->mEdges:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->mEdges:Landroid/graphics/RectF;

    iget v3, v0, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->mEdges:Landroid/graphics/RectF;

    iget v4, v0, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->mEdges:Landroid/graphics/RectF;

    iget v5, v0, Landroid/graphics/RectF;->bottom:F

    move v0, p1

    move v1, p2

    invoke-static/range {v0 .. v5}, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->isInCenterTargetZone(FFFFFF)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->focusCenter()Z

    move-result v0

    if-nez v0, :cond_0

    .line 248
    sget-object v6, Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler$Type;->CENTER:Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler$Type;

    goto/16 :goto_0
.end method

.method private static isInCenterTargetZone(FFFFFF)Z
    .locals 1
    .param p0, "x"    # F
    .param p1, "y"    # F
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "right"    # F
    .param p5, "bottom"    # F

    .prologue
    .line 378
    cmpl-float v0, p0, p2

    if-lez v0, :cond_0

    cmpg-float v0, p0, p4

    if-gez v0, :cond_0

    cmpl-float v0, p1, p3

    if-lez v0, :cond_0

    cmpg-float v0, p1, p5

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isInCornerTargetZone(FFFFF)Z
    .locals 1
    .param p0, "x"    # F
    .param p1, "y"    # F
    .param p2, "handleX"    # F
    .param p3, "handleY"    # F
    .param p4, "targetRadius"    # F

    .prologue
    .line 327
    sub-float v0, p0, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, p4

    if-gtz v0, :cond_0

    sub-float v0, p1, p3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, p4

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isInHorizontalTargetZone(FFFFFF)Z
    .locals 1
    .param p0, "x"    # F
    .param p1, "y"    # F
    .param p2, "handleXStart"    # F
    .param p3, "handleXEnd"    # F
    .param p4, "handleY"    # F
    .param p5, "targetRadius"    # F

    .prologue
    .line 344
    cmpl-float v0, p0, p2

    if-lez v0, :cond_0

    cmpg-float v0, p0, p3

    if-gez v0, :cond_0

    sub-float v0, p1, p4

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, p5

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isInVerticalTargetZone(FFFFFF)Z
    .locals 1
    .param p0, "x"    # F
    .param p1, "y"    # F
    .param p2, "handleX"    # F
    .param p3, "handleYStart"    # F
    .param p4, "handleYEnd"    # F
    .param p5, "targetRadius"    # F

    .prologue
    .line 361
    sub-float v0, p0, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, p5

    if-gtz v0, :cond_0

    cmpl-float v0, p1, p3

    if-lez v0, :cond_0

    cmpg-float v0, p1, p4

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getMaxCropHeight()F
    .locals 3

    .prologue
    .line 122
    iget v0, p0, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->mMaxCropWindowHeight:F

    iget v1, p0, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->mMaxCropResultHeight:F

    iget v2, p0, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->mScaleFactorHeight:F

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method public getMaxCropWidth()F
    .locals 3

    .prologue
    .line 115
    iget v0, p0, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->mMaxCropWindowWidth:F

    iget v1, p0, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->mMaxCropResultWidth:F

    iget v2, p0, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->mScaleFactorWidth:F

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method public getMinCropHeight()F
    .locals 3

    .prologue
    .line 108
    iget v0, p0, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->mMinCropWindowHeight:F

    iget v1, p0, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->mMinCropResultHeight:F

    iget v2, p0, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->mScaleFactorHeight:F

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method public getMinCropWidth()F
    .locals 3

    .prologue
    .line 101
    iget v0, p0, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->mMinCropWindowWidth:F

    iget v1, p0, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->mMinCropResultWidth:F

    iget v2, p0, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->mScaleFactorWidth:F

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method public getMoveHandler(FFFLcom/theartofdev/edmodo/cropper/CropImageView$CropShape;)Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler;
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "targetRadius"    # F
    .param p4, "cropShape"    # Lcom/theartofdev/edmodo/cropper/CropImageView$CropShape;

    .prologue
    .line 208
    sget-object v1, Lcom/theartofdev/edmodo/cropper/CropImageView$CropShape;->OVAL:Lcom/theartofdev/edmodo/cropper/CropImageView$CropShape;

    if-ne p4, v1, :cond_0

    .line 209
    invoke-direct {p0, p1, p2}, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->getOvalPressedMoveType(FF)Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler$Type;

    move-result-object v0

    .line 211
    .local v0, "type":Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler$Type;
    :goto_0
    if-eqz v0, :cond_1

    new-instance v1, Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler;

    invoke-direct {v1, v0, p0, p1, p2}, Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler;-><init>(Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler$Type;Lcom/theartofdev/edmodo/cropper/CropWindowHandler;FF)V

    :goto_1
    return-object v1

    .line 210
    .end local v0    # "type":Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler$Type;
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->getRectanglePressedMoveType(FFF)Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler$Type;

    move-result-object v0

    goto :goto_0

    .line 211
    .restart local v0    # "type":Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler$Type;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getRect()Landroid/graphics/RectF;
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->mGetEdges:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->mEdges:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 94
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->mGetEdges:Landroid/graphics/RectF;

    return-object v0
.end method

.method public getScaleFactorHeight()F
    .locals 1

    .prologue
    .line 136
    iget v0, p0, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->mScaleFactorHeight:F

    return v0
.end method

.method public getScaleFactorWidth()F
    .locals 1

    .prologue
    .line 129
    iget v0, p0, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->mScaleFactorWidth:F

    return v0
.end method

.method public setCropWindowLimits(FFFF)V
    .locals 0
    .param p1, "maxWidth"    # F
    .param p2, "maxHeight"    # F
    .param p3, "scaleFactorWidth"    # F
    .param p4, "scaleFactorHeight"    # F

    .prologue
    .line 162
    iput p1, p0, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->mMaxCropWindowWidth:F

    .line 163
    iput p2, p0, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->mMaxCropWindowHeight:F

    .line 164
    iput p3, p0, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->mScaleFactorWidth:F

    .line 165
    iput p4, p0, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->mScaleFactorHeight:F

    .line 166
    return-void
.end method

.method public setInitialAttributeValues(Lcom/theartofdev/edmodo/cropper/CropImageOptions;)V
    .locals 1
    .param p1, "options"    # Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    .prologue
    .line 172
    iget v0, p1, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->minCropWindowWidth:I

    int-to-float v0, v0

    iput v0, p0, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->mMinCropWindowWidth:F

    .line 173
    iget v0, p1, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->minCropWindowHeight:I

    int-to-float v0, v0

    iput v0, p0, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->mMinCropWindowHeight:F

    .line 174
    iget v0, p1, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->minCropResultWidth:I

    int-to-float v0, v0

    iput v0, p0, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->mMinCropResultWidth:F

    .line 175
    iget v0, p1, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->minCropResultHeight:I

    int-to-float v0, v0

    iput v0, p0, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->mMinCropResultHeight:F

    .line 176
    iget v0, p1, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->maxCropResultWidth:I

    int-to-float v0, v0

    iput v0, p0, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->mMaxCropResultWidth:F

    .line 177
    iget v0, p1, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->maxCropResultHeight:I

    int-to-float v0, v0

    iput v0, p0, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->mMaxCropResultHeight:F

    .line 178
    return-void
.end method

.method public setMaxCropResultSize(II)V
    .locals 1
    .param p1, "maxCropResultWidth"    # I
    .param p2, "maxCropResultHeight"    # I

    .prologue
    .line 153
    int-to-float v0, p1

    iput v0, p0, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->mMaxCropResultWidth:F

    .line 154
    int-to-float v0, p2

    iput v0, p0, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->mMaxCropResultHeight:F

    .line 155
    return-void
.end method

.method public setMinCropResultSize(II)V
    .locals 1
    .param p1, "minCropResultWidth"    # I
    .param p2, "minCropResultHeight"    # I

    .prologue
    .line 144
    int-to-float v0, p1

    iput v0, p0, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->mMinCropResultWidth:F

    .line 145
    int-to-float v0, p2

    iput v0, p0, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->mMinCropResultHeight:F

    .line 146
    return-void
.end method

.method public setRect(Landroid/graphics/RectF;)V
    .locals 1
    .param p1, "rect"    # Landroid/graphics/RectF;

    .prologue
    .line 184
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->mEdges:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 185
    return-void
.end method

.method public showGuidelines()Z
    .locals 2

    .prologue
    const/high16 v1, 0x42c80000    # 100.0f

    .line 195
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->mEdges:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->mEdges:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
