.class final Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler;
.super Ljava/lang/Object;
.source "CropWindowMoveHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler$Type;
    }
.end annotation


# static fields
.field private static final MATRIX:Landroid/graphics/Matrix;


# instance fields
.field private final mMaxCropHeight:F

.field private final mMaxCropWidth:F

.field private final mMinCropHeight:F

.field private final mMinCropWidth:F

.field private final mTouchOffset:Landroid/graphics/PointF;

.field private final mType:Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    sput-object v0, Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler;->MATRIX:Landroid/graphics/Matrix;

    return-void
.end method

.method public constructor <init>(Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler$Type;Lcom/theartofdev/edmodo/cropper/CropWindowHandler;FF)V
    .locals 1
    .param p1, "type"    # Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler$Type;
    .param p2, "cropWindowHandler"    # Lcom/theartofdev/edmodo/cropper/CropWindowHandler;
    .param p3, "touchX"    # F
    .param p4, "touchY"    # F

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler;->mTouchOffset:Landroid/graphics/PointF;

    .line 74
    iput-object p1, p0, Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler;->mType:Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler$Type;

    .line 75
    invoke-virtual {p2}, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->getMinCropWidth()F

    move-result v0

    iput v0, p0, Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler;->mMinCropWidth:F

    .line 76
    invoke-virtual {p2}, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->getMinCropHeight()F

    move-result v0

    iput v0, p0, Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler;->mMinCropHeight:F

    .line 77
    invoke-virtual {p2}, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->getMaxCropWidth()F

    move-result v0

    iput v0, p0, Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler;->mMaxCropWidth:F

    .line 78
    invoke-virtual {p2}, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->getMaxCropHeight()F

    move-result v0

    iput v0, p0, Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler;->mMaxCropHeight:F

    .line 79
    invoke-virtual {p2}, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->getRect()Landroid/graphics/RectF;

    move-result-object v0

    invoke-direct {p0, v0, p3, p4}, Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler;->calculateTouchOffset(Landroid/graphics/RectF;FF)V

    .line 80
    return-void
.end method

.method private adjustBottom(Landroid/graphics/RectF;FLandroid/graphics/RectF;IFFZZ)V
    .locals 6
    .param p1, "rect"    # Landroid/graphics/RectF;
    .param p2, "bottom"    # F
    .param p3, "bounds"    # Landroid/graphics/RectF;
    .param p4, "viewHeight"    # I
    .param p5, "snapMargin"    # F
    .param p6, "aspectRatio"    # F
    .param p7, "leftMoves"    # Z
    .param p8, "rightMoves"    # Z

    .prologue
    .line 559
    move v0, p2

    .line 561
    .local v0, "newBottom":F
    int-to-float v2, p4

    cmpl-float v2, v0, v2

    if-lez v2, :cond_0

    .line 562
    int-to-float v2, p4

    int-to-float v3, p4

    sub-float v3, v0, v3

    const v4, 0x3f866666    # 1.05f

    div-float/2addr v3, v4

    add-float v0, v2, v3

    .line 563
    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler;->mTouchOffset:Landroid/graphics/PointF;

    iget v3, v2, Landroid/graphics/PointF;->y:F

    int-to-float v4, p4

    sub-float v4, v0, v4

    const v5, 0x3f8ccccd    # 1.1f

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/PointF;->y:F

    .line 566
    :cond_0
    iget v2, p3, Landroid/graphics/RectF;->bottom:F

    cmpl-float v2, v0, v2

    if-lez v2, :cond_1

    .line 567
    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler;->mTouchOffset:Landroid/graphics/PointF;

    iget v3, v2, Landroid/graphics/PointF;->y:F

    iget v4, p3, Landroid/graphics/RectF;->bottom:F

    sub-float v4, v0, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/PointF;->y:F

    .line 570
    :cond_1
    iget v2, p3, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v2, v0

    cmpg-float v2, v2, p5

    if-gez v2, :cond_2

    .line 571
    iget v0, p3, Landroid/graphics/RectF;->bottom:F

    .line 575
    :cond_2
    iget v2, p1, Landroid/graphics/RectF;->top:F

    sub-float v2, v0, v2

    iget v3, p0, Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler;->mMinCropHeight:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_3

    .line 576
    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p0, Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler;->mMinCropHeight:F

    add-float v0, v2, v3

    .line 580
    :cond_3
    iget v2, p1, Landroid/graphics/RectF;->top:F

    sub-float v2, v0, v2

    iget v3, p0, Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler;->mMaxCropHeight:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_4

    .line 581
    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p0, Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler;->mMaxCropHeight:F

    add-float v0, v2, v3

    .line 584
    :cond_4
    iget v2, p3, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v2, v0

    cmpg-float v2, v2, p5

    if-gez v2, :cond_5

    .line 585
    iget v0, p3, Landroid/graphics/RectF;->bottom:F

    .line 589
    :cond_5
    const/4 v2, 0x0

    cmpl-float v2, p6, v2

    if-lez v2, :cond_8

    .line 590
    iget v2, p1, Landroid/graphics/RectF;->top:F

    sub-float v2, v0, v2

    mul-float v1, v2, p6

    .line 593
    .local v1, "newWidth":F
    iget v2, p0, Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler;->mMinCropWidth:F

    cmpg-float v2, v1, v2

    if-gez v2, :cond_6

    .line 594
    iget v2, p3, Landroid/graphics/RectF;->bottom:F

    iget v3, p1, Landroid/graphics/RectF;->top:F

    iget v4, p0, Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler;->mMinCropWidth:F

    div-float/2addr v4, p6

    add-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 595
    iget v2, p1, Landroid/graphics/RectF;->top:F

    sub-float v2, v0, v2

    mul-float v1, v2, p6

    .line 599
    :cond_6
    iget v2, p0, Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler;->mMaxCropWidth:F

    cmpl-float v2, v1, v2

    if-lez v2, :cond_7

    .line 600
    iget v2, p3, Landroid/graphics/RectF;->bottom:F

    iget v3, p1, Landroid/graphics/RectF;->top:F

    iget v4, p0, Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler;->mMaxCropWidth:F

    div-float/2addr v4, p6

    add-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 601
    iget v2, p1, Landroid/graphics/RectF;->top:F

    sub-float v2, v0, v2

    mul-float v1, v2, p6

    .line 605
    :cond_7
    if-eqz p7, :cond_9

    if-eqz p8, :cond_9

    .line 606
    iget v2, p3, Landroid/graphics/RectF;->bottom:F

    iget v3, p1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result v4

    div-float/2addr v4, p6

    add-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 621
    .end local v1    # "newWidth":F
    :cond_8
    :goto_0
    iput v0, p1, Landroid/graphics/RectF;->bottom:F

    .line 622
    return-void

    .line 609
    .restart local v1    # "newWidth":F
    :cond_9
    if-eqz p7, :cond_a

    iget v2, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v2, v1

    iget v3, p3, Landroid/graphics/RectF;->left:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_a

    .line 610
    iget v2, p3, Landroid/graphics/RectF;->bottom:F

    iget v3, p1, Landroid/graphics/RectF;->top:F

    iget v4, p1, Landroid/graphics/RectF;->right:F

    iget v5, p3, Landroid/graphics/RectF;->left:F

    sub-float/2addr v4, v5

    div-float/2addr v4, p6

    add-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 611
    iget v2, p1, Landroid/graphics/RectF;->top:F

    sub-float v2, v0, v2

    mul-float v1, v2, p6

    .line 615
    :cond_a
    if-eqz p8, :cond_8

    iget v2, p1, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, v1

    iget v3, p3, Landroid/graphics/RectF;->right:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_8

    .line 616
    iget v2, p3, Landroid/graphics/RectF;->bottom:F

    iget v3, p1, Landroid/graphics/RectF;->top:F

    iget v4, p3, Landroid/graphics/RectF;->right:F

    iget v5, p1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v4, v5

    div-float/2addr v4, p6

    add-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    goto :goto_0
.end method

.method private adjustBottomByAspectRatio(Landroid/graphics/RectF;F)V
    .locals 2
    .param p1, "rect"    # Landroid/graphics/RectF;
    .param p2, "aspectRatio"    # F

    .prologue
    .line 653
    iget v0, p1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float/2addr v1, p2

    add-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->bottom:F

    .line 654
    return-void
.end method

.method private adjustLeft(Landroid/graphics/RectF;FLandroid/graphics/RectF;FFZZ)V
    .locals 7
    .param p1, "rect"    # Landroid/graphics/RectF;
    .param p2, "left"    # F
    .param p3, "bounds"    # Landroid/graphics/RectF;
    .param p4, "snapMargin"    # F
    .param p5, "aspectRatio"    # F
    .param p6, "topMoves"    # Z
    .param p7, "bottomMoves"    # Z

    .prologue
    const/4 v6, 0x0

    .line 330
    move v1, p2

    .line 332
    .local v1, "newLeft":F
    cmpg-float v2, v1, v6

    if-gez v2, :cond_0

    .line 333
    const v2, 0x3f866666    # 1.05f

    div-float/2addr v1, v2

    .line 334
    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler;->mTouchOffset:Landroid/graphics/PointF;

    iget v3, v2, Landroid/graphics/PointF;->x:F

    const v4, 0x3f8ccccd    # 1.1f

    div-float v4, v1, v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/PointF;->x:F

    .line 337
    :cond_0
    iget v2, p3, Landroid/graphics/RectF;->left:F

    cmpg-float v2, v1, v2

    if-gez v2, :cond_1

    .line 338
    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler;->mTouchOffset:Landroid/graphics/PointF;

    iget v3, v2, Landroid/graphics/PointF;->x:F

    iget v4, p3, Landroid/graphics/RectF;->left:F

    sub-float v4, v1, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/PointF;->x:F

    .line 341
    :cond_1
    iget v2, p3, Landroid/graphics/RectF;->left:F

    sub-float v2, v1, v2

    cmpg-float v2, v2, p4

    if-gez v2, :cond_2

    .line 342
    iget v1, p3, Landroid/graphics/RectF;->left:F

    .line 346
    :cond_2
    iget v2, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v2, v1

    iget v3, p0, Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler;->mMinCropWidth:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_3

    .line 347
    iget v2, p1, Landroid/graphics/RectF;->right:F

    iget v3, p0, Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler;->mMinCropWidth:F

    sub-float v1, v2, v3

    .line 351
    :cond_3
    iget v2, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v2, v1

    iget v3, p0, Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler;->mMaxCropWidth:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_4

    .line 352
    iget v2, p1, Landroid/graphics/RectF;->right:F

    iget v3, p0, Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler;->mMaxCropWidth:F

    sub-float v1, v2, v3

    .line 355
    :cond_4
    iget v2, p3, Landroid/graphics/RectF;->left:F

    sub-float v2, v1, v2

    cmpg-float v2, v2, p4

    if-gez v2, :cond_5

    .line 356
    iget v1, p3, Landroid/graphics/RectF;->left:F

    .line 360
    :cond_5
    cmpl-float v2, p5, v6

    if-lez v2, :cond_8

    .line 361
    iget v2, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v2, v1

    div-float v0, v2, p5

    .line 364
    .local v0, "newHeight":F
    iget v2, p0, Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler;->mMinCropHeight:F

    cmpg-float v2, v0, v2

    if-gez v2, :cond_6

    .line 365
    iget v2, p3, Landroid/graphics/RectF;->left:F

    iget v3, p1, Landroid/graphics/RectF;->right:F

    iget v4, p0, Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler;->mMinCropHeight:F

    mul-float/2addr v4, p5

    sub-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 366
    iget v2, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v2, v1

    div-float v0, v2, p5

    .line 370
    :cond_6
    iget v2, p0, Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler;->mMaxCropHeight:F

    cmpl-float v2, v0, v2

    if-lez v2, :cond_7

    .line 371
    iget v2, p3, Landroid/graphics/RectF;->left:F

    iget v3, p1, Landroid/graphics/RectF;->right:F

    iget v4, p0, Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler;->mMaxCropHeight:F

    mul-float/2addr v4, p5

    sub-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 372
    iget v2, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v2, v1

    div-float v0, v2, p5

    .line 376
    :cond_7
    if-eqz p6, :cond_9

    if-eqz p7, :cond_9

    .line 377
    iget v2, p3, Landroid/graphics/RectF;->left:F

    iget v3, p1, Landroid/graphics/RectF;->right:F

    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result v4

    mul-float/2addr v4, p5

    sub-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 392
    .end local v0    # "newHeight":F
    :cond_8
    :goto_0
    iput v1, p1, Landroid/graphics/RectF;->left:F

    .line 393
    return-void

    .line 380
    .restart local v0    # "newHeight":F
    :cond_9
    if-eqz p6, :cond_a

    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v2, v0

    iget v3, p3, Landroid/graphics/RectF;->top:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_a

    .line 381
    iget v2, p3, Landroid/graphics/RectF;->left:F

    iget v3, p1, Landroid/graphics/RectF;->right:F

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    iget v5, p3, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v5

    mul-float/2addr v4, p5

    sub-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 382
    iget v2, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v2, v1

    div-float v0, v2, p5

    .line 386
    :cond_a
    if-eqz p7, :cond_8

    iget v2, p1, Landroid/graphics/RectF;->top:F

    add-float/2addr v2, v0

    iget v3, p3, Landroid/graphics/RectF;->bottom:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_8

    .line 387
    iget v2, p3, Landroid/graphics/RectF;->left:F

    iget v3, p1, Landroid/graphics/RectF;->right:F

    iget v4, p3, Landroid/graphics/RectF;->bottom:F

    iget v5, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v5

    mul-float/2addr v4, p5

    sub-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    goto :goto_0
.end method

.method private adjustLeftByAspectRatio(Landroid/graphics/RectF;F)V
    .locals 2
    .param p1, "rect"    # Landroid/graphics/RectF;
    .param p2, "aspectRatio"    # F

    .prologue
    .line 629
    iget v0, p1, Landroid/graphics/RectF;->right:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v1

    mul-float/2addr v1, p2

    sub-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->left:F

    .line 630
    return-void
.end method

.method private adjustLeftRightByAspectRatio(Landroid/graphics/RectF;Landroid/graphics/RectF;F)V
    .locals 3
    .param p1, "rect"    # Landroid/graphics/RectF;
    .param p2, "bounds"    # Landroid/graphics/RectF;
    .param p3, "aspectRatio"    # F

    .prologue
    const/4 v2, 0x0

    .line 661
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v1

    mul-float/2addr v1, p3

    sub-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-virtual {p1, v0, v2}, Landroid/graphics/RectF;->inset(FF)V

    .line 662
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p2, Landroid/graphics/RectF;->left:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 663
    iget v0, p2, Landroid/graphics/RectF;->left:F

    iget v1, p1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v1

    invoke-virtual {p1, v0, v2}, Landroid/graphics/RectF;->offset(FF)V

    .line 665
    :cond_0
    iget v0, p1, Landroid/graphics/RectF;->right:F

    iget v1, p2, Landroid/graphics/RectF;->right:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 666
    iget v0, p2, Landroid/graphics/RectF;->right:F

    iget v1, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v1

    invoke-virtual {p1, v0, v2}, Landroid/graphics/RectF;->offset(FF)V

    .line 668
    :cond_1
    return-void
.end method

.method private adjustRight(Landroid/graphics/RectF;FLandroid/graphics/RectF;IFFZZ)V
    .locals 6
    .param p1, "rect"    # Landroid/graphics/RectF;
    .param p2, "right"    # F
    .param p3, "bounds"    # Landroid/graphics/RectF;
    .param p4, "viewWidth"    # I
    .param p5, "snapMargin"    # F
    .param p6, "aspectRatio"    # F
    .param p7, "topMoves"    # Z
    .param p8, "bottomMoves"    # Z

    .prologue
    .line 406
    move v1, p2

    .line 408
    .local v1, "newRight":F
    int-to-float v2, p4

    cmpl-float v2, v1, v2

    if-lez v2, :cond_0

    .line 409
    int-to-float v2, p4

    int-to-float v3, p4

    sub-float v3, v1, v3

    const v4, 0x3f866666    # 1.05f

    div-float/2addr v3, v4

    add-float v1, v2, v3

    .line 410
    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler;->mTouchOffset:Landroid/graphics/PointF;

    iget v3, v2, Landroid/graphics/PointF;->x:F

    int-to-float v4, p4

    sub-float v4, v1, v4

    const v5, 0x3f8ccccd    # 1.1f

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/PointF;->x:F

    .line 413
    :cond_0
    iget v2, p3, Landroid/graphics/RectF;->right:F

    cmpl-float v2, v1, v2

    if-lez v2, :cond_1

    .line 414
    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler;->mTouchOffset:Landroid/graphics/PointF;

    iget v3, v2, Landroid/graphics/PointF;->x:F

    iget v4, p3, Landroid/graphics/RectF;->right:F

    sub-float v4, v1, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/PointF;->x:F

    .line 418
    :cond_1
    iget v2, p3, Landroid/graphics/RectF;->right:F

    sub-float/2addr v2, v1

    cmpg-float v2, v2, p5

    if-gez v2, :cond_2

    .line 419
    iget v1, p3, Landroid/graphics/RectF;->right:F

    .line 423
    :cond_2
    iget v2, p1, Landroid/graphics/RectF;->left:F

    sub-float v2, v1, v2

    iget v3, p0, Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler;->mMinCropWidth:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_3

    .line 424
    iget v2, p1, Landroid/graphics/RectF;->left:F

    iget v3, p0, Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler;->mMinCropWidth:F

    add-float v1, v2, v3

    .line 428
    :cond_3
    iget v2, p1, Landroid/graphics/RectF;->left:F

    sub-float v2, v1, v2

    iget v3, p0, Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler;->mMaxCropWidth:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_4

    .line 429
    iget v2, p1, Landroid/graphics/RectF;->left:F

    iget v3, p0, Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler;->mMaxCropWidth:F

    add-float v1, v2, v3

    .line 433
    :cond_4
    iget v2, p3, Landroid/graphics/RectF;->right:F

    sub-float/2addr v2, v1

    cmpg-float v2, v2, p5

    if-gez v2, :cond_5

    .line 434
    iget v1, p3, Landroid/graphics/RectF;->right:F

    .line 438
    :cond_5
    const/4 v2, 0x0

    cmpl-float v2, p6, v2

    if-lez v2, :cond_8

    .line 439
    iget v2, p1, Landroid/graphics/RectF;->left:F

    sub-float v2, v1, v2

    div-float v0, v2, p6

    .line 442
    .local v0, "newHeight":F
    iget v2, p0, Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler;->mMinCropHeight:F

    cmpg-float v2, v0, v2

    if-gez v2, :cond_6

    .line 443
    iget v2, p3, Landroid/graphics/RectF;->right:F

    iget v3, p1, Landroid/graphics/RectF;->left:F

    iget v4, p0, Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler;->mMinCropHeight:F

    mul-float/2addr v4, p6

    add-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 444
    iget v2, p1, Landroid/graphics/RectF;->left:F

    sub-float v2, v1, v2

    div-float v0, v2, p6

    .line 448
    :cond_6
    iget v2, p0, Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler;->mMaxCropHeight:F

    cmpl-float v2, v0, v2

    if-lez v2, :cond_7

    .line 449
    iget v2, p3, Landroid/graphics/RectF;->right:F

    iget v3, p1, Landroid/graphics/RectF;->left:F

    iget v4, p0, Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler;->mMaxCropHeight:F

    mul-float/2addr v4, p6

    add-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 450
    iget v2, p1, Landroid/graphics/RectF;->left:F

    sub-float v2, v1, v2

    div-float v0, v2, p6

    .line 454
    :cond_7
    if-eqz p7, :cond_9

    if-eqz p8, :cond_9

    .line 455
    iget v2, p3, Landroid/graphics/RectF;->right:F

    iget v3, p1, Landroid/graphics/RectF;->left:F

    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result v4

    mul-float/2addr v4, p6

    add-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 470
    .end local v0    # "newHeight":F
    :cond_8
    :goto_0
    iput v1, p1, Landroid/graphics/RectF;->right:F

    .line 471
    return-void

    .line 458
    .restart local v0    # "newHeight":F
    :cond_9
    if-eqz p7, :cond_a

    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v2, v0

    iget v3, p3, Landroid/graphics/RectF;->top:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_a

    .line 459
    iget v2, p3, Landroid/graphics/RectF;->right:F

    iget v3, p1, Landroid/graphics/RectF;->left:F

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    iget v5, p3, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v5

    mul-float/2addr v4, p6

    add-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 460
    iget v2, p1, Landroid/graphics/RectF;->left:F

    sub-float v2, v1, v2

    div-float v0, v2, p6

    .line 464
    :cond_a
    if-eqz p8, :cond_8

    iget v2, p1, Landroid/graphics/RectF;->top:F

    add-float/2addr v2, v0

    iget v3, p3, Landroid/graphics/RectF;->bottom:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_8

    .line 465
    iget v2, p3, Landroid/graphics/RectF;->right:F

    iget v3, p1, Landroid/graphics/RectF;->left:F

    iget v4, p3, Landroid/graphics/RectF;->bottom:F

    iget v5, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v5

    mul-float/2addr v4, p6

    add-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    goto :goto_0
.end method

.method private adjustRightByAspectRatio(Landroid/graphics/RectF;F)V
    .locals 2
    .param p1, "rect"    # Landroid/graphics/RectF;
    .param p2, "aspectRatio"    # F

    .prologue
    .line 645
    iget v0, p1, Landroid/graphics/RectF;->left:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v1

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->right:F

    .line 646
    return-void
.end method

.method private adjustTop(Landroid/graphics/RectF;FLandroid/graphics/RectF;FFZZ)V
    .locals 7
    .param p1, "rect"    # Landroid/graphics/RectF;
    .param p2, "top"    # F
    .param p3, "bounds"    # Landroid/graphics/RectF;
    .param p4, "snapMargin"    # F
    .param p5, "aspectRatio"    # F
    .param p6, "leftMoves"    # Z
    .param p7, "rightMoves"    # Z

    .prologue
    const/4 v6, 0x0

    .line 483
    move v0, p2

    .line 485
    .local v0, "newTop":F
    cmpg-float v2, v0, v6

    if-gez v2, :cond_0

    .line 486
    const v2, 0x3f866666    # 1.05f

    div-float/2addr v0, v2

    .line 487
    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler;->mTouchOffset:Landroid/graphics/PointF;

    iget v3, v2, Landroid/graphics/PointF;->y:F

    const v4, 0x3f8ccccd    # 1.1f

    div-float v4, v0, v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/PointF;->y:F

    .line 490
    :cond_0
    iget v2, p3, Landroid/graphics/RectF;->top:F

    cmpg-float v2, v0, v2

    if-gez v2, :cond_1

    .line 491
    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler;->mTouchOffset:Landroid/graphics/PointF;

    iget v3, v2, Landroid/graphics/PointF;->y:F

    iget v4, p3, Landroid/graphics/RectF;->top:F

    sub-float v4, v0, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/PointF;->y:F

    .line 494
    :cond_1
    iget v2, p3, Landroid/graphics/RectF;->top:F

    sub-float v2, v0, v2

    cmpg-float v2, v2, p4

    if-gez v2, :cond_2

    .line 495
    iget v0, p3, Landroid/graphics/RectF;->top:F

    .line 499
    :cond_2
    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v2, v0

    iget v3, p0, Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler;->mMinCropHeight:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_3

    .line 500
    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    iget v3, p0, Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler;->mMinCropHeight:F

    sub-float v0, v2, v3

    .line 504
    :cond_3
    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v2, v0

    iget v3, p0, Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler;->mMaxCropHeight:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_4

    .line 505
    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    iget v3, p0, Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler;->mMaxCropHeight:F

    sub-float v0, v2, v3

    .line 508
    :cond_4
    iget v2, p3, Landroid/graphics/RectF;->top:F

    sub-float v2, v0, v2

    cmpg-float v2, v2, p4

    if-gez v2, :cond_5

    .line 509
    iget v0, p3, Landroid/graphics/RectF;->top:F

    .line 513
    :cond_5
    cmpl-float v2, p5, v6

    if-lez v2, :cond_8

    .line 514
    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v2, v0

    mul-float v1, v2, p5

    .line 517
    .local v1, "newWidth":F
    iget v2, p0, Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler;->mMinCropWidth:F

    cmpg-float v2, v1, v2

    if-gez v2, :cond_6

    .line 518
    iget v2, p3, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/graphics/RectF;->bottom:F

    iget v4, p0, Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler;->mMinCropWidth:F

    div-float/2addr v4, p5

    sub-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 519
    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v2, v0

    mul-float v1, v2, p5

    .line 523
    :cond_6
    iget v2, p0, Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler;->mMaxCropWidth:F

    cmpl-float v2, v1, v2

    if-lez v2, :cond_7

    .line 524
    iget v2, p3, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/graphics/RectF;->bottom:F

    iget v4, p0, Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler;->mMaxCropWidth:F

    div-float/2addr v4, p5

    sub-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 525
    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v2, v0

    mul-float v1, v2, p5

    .line 529
    :cond_7
    if-eqz p6, :cond_9

    if-eqz p7, :cond_9

    .line 530
    iget v2, p3, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result v4

    div-float/2addr v4, p5

    sub-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 545
    .end local v1    # "newWidth":F
    :cond_8
    :goto_0
    iput v0, p1, Landroid/graphics/RectF;->top:F

    .line 546
    return-void

    .line 533
    .restart local v1    # "newWidth":F
    :cond_9
    if-eqz p6, :cond_a

    iget v2, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v2, v1

    iget v3, p3, Landroid/graphics/RectF;->left:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_a

    .line 534
    iget v2, p3, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/graphics/RectF;->bottom:F

    iget v4, p1, Landroid/graphics/RectF;->right:F

    iget v5, p3, Landroid/graphics/RectF;->left:F

    sub-float/2addr v4, v5

    div-float/2addr v4, p5

    sub-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 535
    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v2, v0

    mul-float v1, v2, p5

    .line 539
    :cond_a
    if-eqz p7, :cond_8

    iget v2, p1, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, v1

    iget v3, p3, Landroid/graphics/RectF;->right:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_8

    .line 540
    iget v2, p3, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/graphics/RectF;->bottom:F

    iget v4, p3, Landroid/graphics/RectF;->right:F

    iget v5, p1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v4, v5

    div-float/2addr v4, p5

    sub-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    goto :goto_0
.end method

.method private adjustTopBottomByAspectRatio(Landroid/graphics/RectF;Landroid/graphics/RectF;F)V
    .locals 3
    .param p1, "rect"    # Landroid/graphics/RectF;
    .param p2, "bounds"    # Landroid/graphics/RectF;
    .param p3, "aspectRatio"    # F

    .prologue
    const/4 v2, 0x0

    .line 675
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float/2addr v1, p3

    sub-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-virtual {p1, v2, v0}, Landroid/graphics/RectF;->inset(FF)V

    .line 676
    iget v0, p1, Landroid/graphics/RectF;->top:F

    iget v1, p2, Landroid/graphics/RectF;->top:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 677
    iget v0, p2, Landroid/graphics/RectF;->top:F

    iget v1, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, v1

    invoke-virtual {p1, v2, v0}, Landroid/graphics/RectF;->offset(FF)V

    .line 679
    :cond_0
    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    iget v1, p2, Landroid/graphics/RectF;->bottom:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 680
    iget v0, p2, Landroid/graphics/RectF;->bottom:F

    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v1

    invoke-virtual {p1, v2, v0}, Landroid/graphics/RectF;->offset(FF)V

    .line 682
    :cond_1
    return-void
.end method

.method private adjustTopByAspectRatio(Landroid/graphics/RectF;F)V
    .locals 2
    .param p1, "rect"    # Landroid/graphics/RectF;
    .param p2, "aspectRatio"    # F

    .prologue
    .line 637
    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float/2addr v1, p2

    sub-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->top:F

    .line 638
    return-void
.end method

.method private static calculateAspectRatio(FFFF)F
    .locals 2
    .param p0, "left"    # F
    .param p1, "top"    # F
    .param p2, "right"    # F
    .param p3, "bottom"    # F

    .prologue
    .line 688
    sub-float v0, p2, p0

    sub-float v1, p3, p1

    div-float/2addr v0, v1

    return v0
.end method

.method private calculateTouchOffset(Landroid/graphics/RectF;FF)V
    .locals 4
    .param p1, "rect"    # Landroid/graphics/RectF;
    .param p2, "touchX"    # F
    .param p3, "touchY"    # F

    .prologue
    .line 130
    const/4 v0, 0x0

    .line 131
    .local v0, "touchOffsetX":F
    const/4 v1, 0x0

    .line 134
    .local v1, "touchOffsetY":F
    sget-object v2, Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler$1;->$SwitchMap$com$theartofdev$edmodo$cropper$CropWindowMoveHandler$Type:[I

    iget-object v3, p0, Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler;->mType:Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler$Type;

    invoke-virtual {v3}, Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler$Type;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 175
    :goto_0
    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler;->mTouchOffset:Landroid/graphics/PointF;

    iput v0, v2, Landroid/graphics/PointF;->x:F

    .line 176
    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler;->mTouchOffset:Landroid/graphics/PointF;

    iput v1, v2, Landroid/graphics/PointF;->y:F

    .line 177
    return-void

    .line 136
    :pswitch_0
    iget v2, p1, Landroid/graphics/RectF;->left:F

    sub-float v0, v2, p2

    .line 137
    iget v2, p1, Landroid/graphics/RectF;->top:F

    sub-float v1, v2, p3

    .line 138
    goto :goto_0

    .line 140
    :pswitch_1
    iget v2, p1, Landroid/graphics/RectF;->right:F

    sub-float v0, v2, p2

    .line 141
    iget v2, p1, Landroid/graphics/RectF;->top:F

    sub-float v1, v2, p3

    .line 142
    goto :goto_0

    .line 144
    :pswitch_2
    iget v2, p1, Landroid/graphics/RectF;->left:F

    sub-float v0, v2, p2

    .line 145
    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    sub-float v1, v2, p3

    .line 146
    goto :goto_0

    .line 148
    :pswitch_3
    iget v2, p1, Landroid/graphics/RectF;->right:F

    sub-float v0, v2, p2

    .line 149
    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    sub-float v1, v2, p3

    .line 150
    goto :goto_0

    .line 152
    :pswitch_4
    iget v2, p1, Landroid/graphics/RectF;->left:F

    sub-float v0, v2, p2

    .line 153
    const/4 v1, 0x0

    .line 154
    goto :goto_0

    .line 156
    :pswitch_5
    const/4 v0, 0x0

    .line 157
    iget v2, p1, Landroid/graphics/RectF;->top:F

    sub-float v1, v2, p3

    .line 158
    goto :goto_0

    .line 160
    :pswitch_6
    iget v2, p1, Landroid/graphics/RectF;->right:F

    sub-float v0, v2, p2

    .line 161
    const/4 v1, 0x0

    .line 162
    goto :goto_0

    .line 164
    :pswitch_7
    const/4 v0, 0x0

    .line 165
    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    sub-float v1, v2, p3

    .line 166
    goto :goto_0

    .line 168
    :pswitch_8
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    sub-float v0, v2, p2

    .line 169
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    sub-float v1, v2, p3

    .line 170
    goto :goto_0

    .line 134
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private moveCenter(Landroid/graphics/RectF;FFLandroid/graphics/RectF;IIF)V
    .locals 8
    .param p1, "rect"    # Landroid/graphics/RectF;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "bounds"    # Landroid/graphics/RectF;
    .param p5, "viewWidth"    # I
    .param p6, "viewHeight"    # I
    .param p7, "snapRadius"    # F

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    const v6, 0x3f866666    # 1.05f

    const/4 v5, 0x0

    .line 183
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    sub-float v0, p2, v2

    .line 184
    .local v0, "dx":F
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    sub-float v1, p3, v2

    .line 185
    .local v1, "dy":F
    iget v2, p1, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, v0

    cmpg-float v2, v2, v5

    if-ltz v2, :cond_0

    iget v2, p1, Landroid/graphics/RectF;->right:F

    add-float/2addr v2, v0

    int-to-float v3, p5

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_0

    iget v2, p1, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, v0

    iget v3, p4, Landroid/graphics/RectF;->left:F

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_0

    iget v2, p1, Landroid/graphics/RectF;->right:F

    add-float/2addr v2, v0

    iget v3, p4, Landroid/graphics/RectF;->right:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 186
    :cond_0
    div-float/2addr v0, v6

    .line 187
    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler;->mTouchOffset:Landroid/graphics/PointF;

    iget v3, v2, Landroid/graphics/PointF;->x:F

    div-float v4, v0, v7

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/PointF;->x:F

    .line 189
    :cond_1
    iget v2, p1, Landroid/graphics/RectF;->top:F

    add-float/2addr v2, v1

    cmpg-float v2, v2, v5

    if-ltz v2, :cond_2

    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v2, v1

    int-to-float v3, p6

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_2

    iget v2, p1, Landroid/graphics/RectF;->top:F

    add-float/2addr v2, v1

    iget v3, p4, Landroid/graphics/RectF;->top:F

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_2

    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v2, v1

    iget v3, p4, Landroid/graphics/RectF;->bottom:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_3

    .line 190
    :cond_2
    div-float/2addr v1, v6

    .line 191
    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler;->mTouchOffset:Landroid/graphics/PointF;

    iget v3, v2, Landroid/graphics/PointF;->y:F

    div-float v4, v1, v7

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/PointF;->y:F

    .line 193
    :cond_3
    invoke-virtual {p1, v0, v1}, Landroid/graphics/RectF;->offset(FF)V

    .line 194
    invoke-direct {p0, p1, p4, p7}, Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler;->snapEdgesToBounds(Landroid/graphics/RectF;Landroid/graphics/RectF;F)V

    .line 195
    return-void
.end method

.method private moveSizeWithFixedAspectRatio(Landroid/graphics/RectF;FFLandroid/graphics/RectF;IIFF)V
    .locals 10
    .param p1, "rect"    # Landroid/graphics/RectF;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "bounds"    # Landroid/graphics/RectF;
    .param p5, "viewWidth"    # I
    .param p6, "viewHeight"    # I
    .param p7, "snapMargin"    # F
    .param p8, "aspectRatio"    # F

    .prologue
    .line 244
    sget-object v1, Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler$1;->$SwitchMap$com$theartofdev$edmodo$cropper$CropWindowMoveHandler$Type:[I

    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler;->mType:Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler$Type;

    invoke-virtual {v2}, Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler$Type;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 300
    :goto_0
    return-void

    .line 246
    :pswitch_0
    iget v1, p1, Landroid/graphics/RectF;->right:F

    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    invoke-static {p2, p3, v1, v2}, Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler;->calculateAspectRatio(FFFF)F

    move-result v1

    cmpg-float v1, v1, p8

    if-gez v1, :cond_0

    .line 247
    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p3

    move-object v4, p4

    move/from16 v5, p7

    move/from16 v6, p8

    invoke-direct/range {v1 .. v8}, Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler;->adjustTop(Landroid/graphics/RectF;FLandroid/graphics/RectF;FFZZ)V

    .line 248
    move/from16 v0, p8

    invoke-direct {p0, p1, v0}, Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler;->adjustLeftByAspectRatio(Landroid/graphics/RectF;F)V

    goto :goto_0

    .line 250
    :cond_0
    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p4

    move/from16 v5, p7

    move/from16 v6, p8

    invoke-direct/range {v1 .. v8}, Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler;->adjustLeft(Landroid/graphics/RectF;FLandroid/graphics/RectF;FFZZ)V

    .line 251
    move/from16 v0, p8

    invoke-direct {p0, p1, v0}, Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler;->adjustTopByAspectRatio(Landroid/graphics/RectF;F)V

    goto :goto_0

    .line 255
    :pswitch_1
    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    invoke-static {v1, p3, p2, v2}, Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler;->calculateAspectRatio(FFFF)F

    move-result v1

    cmpg-float v1, v1, p8

    if-gez v1, :cond_1

    .line 256
    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v1, p0

    move-object v2, p1

    move v3, p3

    move-object v4, p4

    move/from16 v5, p7

    move/from16 v6, p8

    invoke-direct/range {v1 .. v8}, Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler;->adjustTop(Landroid/graphics/RectF;FLandroid/graphics/RectF;FFZZ)V

    .line 257
    move/from16 v0, p8

    invoke-direct {p0, p1, v0}, Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler;->adjustRightByAspectRatio(Landroid/graphics/RectF;F)V

    goto :goto_0

    .line 259
    :cond_1
    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p4

    move v5, p5

    move/from16 v6, p7

    move/from16 v7, p8

    invoke-direct/range {v1 .. v9}, Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler;->adjustRight(Landroid/graphics/RectF;FLandroid/graphics/RectF;IFFZZ)V

    .line 260
    move/from16 v0, p8

    invoke-direct {p0, p1, v0}, Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler;->adjustTopByAspectRatio(Landroid/graphics/RectF;F)V

    goto :goto_0

    .line 264
    :pswitch_2
    iget v1, p1, Landroid/graphics/RectF;->top:F

    iget v2, p1, Landroid/graphics/RectF;->right:F

    invoke-static {p2, v1, v2, p3}, Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler;->calculateAspectRatio(FFFF)F

    move-result v1

    cmpg-float v1, v1, p8

    if-gez v1, :cond_2

    .line 265
    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p3

    move-object v4, p4

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    invoke-direct/range {v1 .. v9}, Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler;->adjustBottom(Landroid/graphics/RectF;FLandroid/graphics/RectF;IFFZZ)V

    .line 266
    move/from16 v0, p8

    invoke-direct {p0, p1, v0}, Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler;->adjustLeftByAspectRatio(Landroid/graphics/RectF;F)V

    goto/16 :goto_0

    .line 268
    :cond_2
    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p4

    move/from16 v5, p7

    move/from16 v6, p8

    invoke-direct/range {v1 .. v8}, Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler;->adjustLeft(Landroid/graphics/RectF;FLandroid/graphics/RectF;FFZZ)V

    .line 269
    move/from16 v0, p8

    invoke-direct {p0, p1, v0}, Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler;->adjustBottomByAspectRatio(Landroid/graphics/RectF;F)V

    goto/16 :goto_0

    .line 273
    :pswitch_3
    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    invoke-static {v1, v2, p2, p3}, Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler;->calculateAspectRatio(FFFF)F

    move-result v1

    cmpg-float v1, v1, p8

    if-gez v1, :cond_3

    .line 274
    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v1, p0

    move-object v2, p1

    move v3, p3

    move-object v4, p4

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    invoke-direct/range {v1 .. v9}, Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler;->adjustBottom(Landroid/graphics/RectF;FLandroid/graphics/RectF;IFFZZ)V

    .line 275
    move/from16 v0, p8

    invoke-direct {p0, p1, v0}, Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler;->adjustRightByAspectRatio(Landroid/graphics/RectF;F)V

    goto/16 :goto_0

    .line 277
    :cond_3
    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p4

    move v5, p5

    move/from16 v6, p7

    move/from16 v7, p8

    invoke-direct/range {v1 .. v9}, Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler;->adjustRight(Landroid/graphics/RectF;FLandroid/graphics/RectF;IFFZZ)V

    .line 278
    move/from16 v0, p8

    invoke-direct {p0, p1, v0}, Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler;->adjustBottomByAspectRatio(Landroid/graphics/RectF;F)V

    goto/16 :goto_0

    .line 282
    :pswitch_4
    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p4

    move/from16 v5, p7

    move/from16 v6, p8

    invoke-direct/range {v1 .. v8}, Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler;->adjustLeft(Landroid/graphics/RectF;FLandroid/graphics/RectF;FFZZ)V

    .line 283
    move/from16 v0, p8

    invoke-direct {p0, p1, p4, v0}, Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler;->adjustTopBottomByAspectRatio(Landroid/graphics/RectF;Landroid/graphics/RectF;F)V

    goto/16 :goto_0

    .line 286
    :pswitch_5
    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object v1, p0

    move-object v2, p1

    move v3, p3

    move-object v4, p4

    move/from16 v5, p7

    move/from16 v6, p8

    invoke-direct/range {v1 .. v8}, Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler;->adjustTop(Landroid/graphics/RectF;FLandroid/graphics/RectF;FFZZ)V

    .line 287
    move/from16 v0, p8

    invoke-direct {p0, p1, p4, v0}, Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler;->adjustLeftRightByAspectRatio(Landroid/graphics/RectF;Landroid/graphics/RectF;F)V

    goto/16 :goto_0

    .line 290
    :pswitch_6
    const/4 v8, 0x1

    const/4 v9, 0x1

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p4

    move v5, p5

    move/from16 v6, p7

    move/from16 v7, p8

    invoke-direct/range {v1 .. v9}, Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler;->adjustRight(Landroid/graphics/RectF;FLandroid/graphics/RectF;IFFZZ)V

    .line 291
    move/from16 v0, p8

    invoke-direct {p0, p1, p4, v0}, Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler;->adjustTopBottomByAspectRatio(Landroid/graphics/RectF;Landroid/graphics/RectF;F)V

    goto/16 :goto_0

    .line 294
    :pswitch_7
    const/4 v8, 0x1

    const/4 v9, 0x1

    move-object v1, p0

    move-object v2, p1

    move v3, p3

    move-object v4, p4

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    invoke-direct/range {v1 .. v9}, Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler;->adjustBottom(Landroid/graphics/RectF;FLandroid/graphics/RectF;IFFZZ)V

    .line 295
    move/from16 v0, p8

    invoke-direct {p0, p1, p4, v0}, Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler;->adjustLeftRightByAspectRatio(Landroid/graphics/RectF;Landroid/graphics/RectF;F)V

    goto/16 :goto_0

    .line 244
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private moveSizeWithFreeAspectRatio(Landroid/graphics/RectF;FFLandroid/graphics/RectF;IIF)V
    .locals 9
    .param p1, "rect"    # Landroid/graphics/RectF;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "bounds"    # Landroid/graphics/RectF;
    .param p5, "viewWidth"    # I
    .param p6, "viewHeight"    # I
    .param p7, "snapMargin"    # F

    .prologue
    .line 203
    sget-object v0, Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler$1;->$SwitchMap$com$theartofdev$edmodo$cropper$CropWindowMoveHandler$Type:[I

    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler;->mType:Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler$Type;

    invoke-virtual {v1}, Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 235
    :goto_0
    return-void

    .line 205
    :pswitch_0
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move-object v3, p4

    move/from16 v4, p7

    invoke-direct/range {v0 .. v7}, Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler;->adjustTop(Landroid/graphics/RectF;FLandroid/graphics/RectF;FFZZ)V

    .line 206
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p4

    move/from16 v4, p7

    invoke-direct/range {v0 .. v7}, Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler;->adjustLeft(Landroid/graphics/RectF;FLandroid/graphics/RectF;FFZZ)V

    goto :goto_0

    .line 209
    :pswitch_1
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move-object v3, p4

    move/from16 v4, p7

    invoke-direct/range {v0 .. v7}, Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler;->adjustTop(Landroid/graphics/RectF;FLandroid/graphics/RectF;FFZZ)V

    .line 210
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p4

    move v4, p5

    move/from16 v5, p7

    invoke-direct/range {v0 .. v8}, Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler;->adjustRight(Landroid/graphics/RectF;FLandroid/graphics/RectF;IFFZZ)V

    goto :goto_0

    .line 213
    :pswitch_2
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move-object v3, p4

    move v4, p6

    move/from16 v5, p7

    invoke-direct/range {v0 .. v8}, Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler;->adjustBottom(Landroid/graphics/RectF;FLandroid/graphics/RectF;IFFZZ)V

    .line 214
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p4

    move/from16 v4, p7

    invoke-direct/range {v0 .. v7}, Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler;->adjustLeft(Landroid/graphics/RectF;FLandroid/graphics/RectF;FFZZ)V

    goto :goto_0

    .line 217
    :pswitch_3
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move-object v3, p4

    move v4, p6

    move/from16 v5, p7

    invoke-direct/range {v0 .. v8}, Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler;->adjustBottom(Landroid/graphics/RectF;FLandroid/graphics/RectF;IFFZZ)V

    .line 218
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p4

    move v4, p5

    move/from16 v5, p7

    invoke-direct/range {v0 .. v8}, Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler;->adjustRight(Landroid/graphics/RectF;FLandroid/graphics/RectF;IFFZZ)V

    goto :goto_0

    .line 221
    :pswitch_4
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p4

    move/from16 v4, p7

    invoke-direct/range {v0 .. v7}, Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler;->adjustLeft(Landroid/graphics/RectF;FLandroid/graphics/RectF;FFZZ)V

    goto :goto_0

    .line 224
    :pswitch_5
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move-object v3, p4

    move/from16 v4, p7

    invoke-direct/range {v0 .. v7}, Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler;->adjustTop(Landroid/graphics/RectF;FLandroid/graphics/RectF;FFZZ)V

    goto/16 :goto_0

    .line 227
    :pswitch_6
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p4

    move v4, p5

    move/from16 v5, p7

    invoke-direct/range {v0 .. v8}, Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler;->adjustRight(Landroid/graphics/RectF;FLandroid/graphics/RectF;IFFZZ)V

    goto/16 :goto_0

    .line 230
    :pswitch_7
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move-object v3, p4

    move v4, p6

    move/from16 v5, p7

    invoke-direct/range {v0 .. v8}, Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler;->adjustBottom(Landroid/graphics/RectF;FLandroid/graphics/RectF;IFFZZ)V

    goto/16 :goto_0

    .line 203
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private snapEdgesToBounds(Landroid/graphics/RectF;Landroid/graphics/RectF;F)V
    .locals 3
    .param p1, "edges"    # Landroid/graphics/RectF;
    .param p2, "bounds"    # Landroid/graphics/RectF;
    .param p3, "margin"    # F

    .prologue
    const/4 v2, 0x0

    .line 306
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p2, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, p3

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 307
    iget v0, p2, Landroid/graphics/RectF;->left:F

    iget v1, p1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v1

    invoke-virtual {p1, v0, v2}, Landroid/graphics/RectF;->offset(FF)V

    .line 309
    :cond_0
    iget v0, p1, Landroid/graphics/RectF;->top:F

    iget v1, p2, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, p3

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 310
    iget v0, p2, Landroid/graphics/RectF;->top:F

    iget v1, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, v1

    invoke-virtual {p1, v2, v0}, Landroid/graphics/RectF;->offset(FF)V

    .line 312
    :cond_1
    iget v0, p1, Landroid/graphics/RectF;->right:F

    iget v1, p2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v1, p3

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 313
    iget v0, p2, Landroid/graphics/RectF;->right:F

    iget v1, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v1

    invoke-virtual {p1, v0, v2}, Landroid/graphics/RectF;->offset(FF)V

    .line 315
    :cond_2
    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    iget v1, p2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v1, p3

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    .line 316
    iget v0, p2, Landroid/graphics/RectF;->bottom:F

    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v1

    invoke-virtual {p1, v2, v0}, Landroid/graphics/RectF;->offset(FF)V

    .line 318
    :cond_3
    return-void
.end method


# virtual methods
.method public move(Landroid/graphics/RectF;FFLandroid/graphics/RectF;IIFZF)V
    .locals 9
    .param p1, "rect"    # Landroid/graphics/RectF;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "bounds"    # Landroid/graphics/RectF;
    .param p5, "viewWidth"    # I
    .param p6, "viewHeight"    # I
    .param p7, "snapMargin"    # F
    .param p8, "fixedAspectRatio"    # Z
    .param p9, "aspectRatio"    # F

    .prologue
    .line 108
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler;->mTouchOffset:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    add-float v2, p2, v0

    .line 109
    .local v2, "adjX":F
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler;->mTouchOffset:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    add-float v3, p3, v0

    .line 111
    .local v3, "adjY":F
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler;->mType:Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler$Type;

    sget-object v1, Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler$Type;->CENTER:Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler$Type;

    if-ne v0, v1, :cond_0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    .line 112
    invoke-direct/range {v0 .. v7}, Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler;->moveCenter(Landroid/graphics/RectF;FFLandroid/graphics/RectF;IIF)V

    .line 120
    :goto_0
    return-void

    .line 114
    :cond_0
    if-eqz p8, :cond_1

    move-object v0, p0

    move-object v1, p1

    move-object v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    move/from16 v8, p9

    .line 115
    invoke-direct/range {v0 .. v8}, Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler;->moveSizeWithFixedAspectRatio(Landroid/graphics/RectF;FFLandroid/graphics/RectF;IIFF)V

    goto :goto_0

    :cond_1
    move-object v0, p0

    move-object v1, p1

    move-object v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    .line 117
    invoke-direct/range {v0 .. v7}, Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler;->moveSizeWithFreeAspectRatio(Landroid/graphics/RectF;FFLandroid/graphics/RectF;IIF)V

    goto :goto_0
.end method
