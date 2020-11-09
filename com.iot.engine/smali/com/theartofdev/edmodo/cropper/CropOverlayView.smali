.class public Lcom/theartofdev/edmodo/cropper/CropOverlayView;
.super Landroid/view/View;
.source "CropOverlayView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/theartofdev/edmodo/cropper/CropOverlayView$ScaleListener;,
        Lcom/theartofdev/edmodo/cropper/CropOverlayView$CropWindowChangeListener;
    }
.end annotation


# instance fields
.field private initializedCropWindow:Z

.field private mAspectRatioX:I

.field private mAspectRatioY:I

.field private mBackgroundPaint:Landroid/graphics/Paint;

.field private mBorderCornerLength:F

.field private mBorderCornerOffset:F

.field private mBorderCornerPaint:Landroid/graphics/Paint;

.field private mBorderPaint:Landroid/graphics/Paint;

.field private final mBoundsPoints:[F

.field private final mCalcBounds:Landroid/graphics/RectF;

.field private mCropShape:Lcom/theartofdev/edmodo/cropper/CropImageView$CropShape;

.field private mCropWindowChangeListener:Lcom/theartofdev/edmodo/cropper/CropOverlayView$CropWindowChangeListener;

.field private final mCropWindowHandler:Lcom/theartofdev/edmodo/cropper/CropWindowHandler;

.field private final mDrawRect:Landroid/graphics/RectF;

.field private mFixAspectRatio:Z

.field private mGuidelinePaint:Landroid/graphics/Paint;

.field private mGuidelines:Lcom/theartofdev/edmodo/cropper/CropImageView$Guidelines;

.field private mInitialCropWindowPaddingRatio:F

.field private final mInitialCropWindowRect:Landroid/graphics/Rect;

.field private mMoveHandler:Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler;

.field private mMultiTouchEnabled:Z

.field private mOriginalLayerType:Ljava/lang/Integer;

.field private mPath:Landroid/graphics/Path;

.field private mScaleDetector:Landroid/view/ScaleGestureDetector;

.field private mSnapRadius:F

.field private mTargetAspectRatio:F

.field private mTouchRadius:F

.field private mViewHeight:I

.field private mViewWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 188
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 189
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 192
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    new-instance v0, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;

    invoke-direct {v0}, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;-><init>()V

    iput-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mCropWindowHandler:Lcom/theartofdev/edmodo/cropper/CropWindowHandler;

    .line 62
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mDrawRect:Landroid/graphics/RectF;

    .line 87
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mPath:Landroid/graphics/Path;

    .line 92
    const/16 v0, 0x8

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mBoundsPoints:[F

    .line 97
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mCalcBounds:Landroid/graphics/RectF;

    .line 159
    iget v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mAspectRatioX:I

    int-to-float v0, v0

    iget v1, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mAspectRatioY:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mTargetAspectRatio:F

    .line 174
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mInitialCropWindowRect:Landroid/graphics/Rect;

    .line 193
    return-void
.end method

.method static synthetic access$100(Lcom/theartofdev/edmodo/cropper/CropOverlayView;)Lcom/theartofdev/edmodo/cropper/CropWindowHandler;
    .locals 1
    .param p0, "x0"    # Lcom/theartofdev/edmodo/cropper/CropOverlayView;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mCropWindowHandler:Lcom/theartofdev/edmodo/cropper/CropWindowHandler;

    return-object v0
.end method

.method private calculateBounds(Landroid/graphics/RectF;)Z
    .locals 24
    .param p1, "rect"    # Landroid/graphics/RectF;

    .prologue
    .line 918
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mBoundsPoints:[F

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->getRectLeft([F)F

    move-result v12

    .line 919
    .local v12, "left":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mBoundsPoints:[F

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->getRectTop([F)F

    move-result v14

    .line 920
    .local v14, "top":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mBoundsPoints:[F

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->getRectRight([F)F

    move-result v13

    .line 921
    .local v13, "right":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mBoundsPoints:[F

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->getRectBottom([F)F

    move-result v7

    .line 923
    .local v7, "bottom":F
    invoke-direct/range {p0 .. p0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->isNonStraightAngleRotated()Z

    move-result v21

    if-nez v21, :cond_0

    .line 924
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mCalcBounds:Landroid/graphics/RectF;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v12, v14, v13, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 925
    const/16 v21, 0x0

    .line 985
    :goto_0
    return v21

    .line 927
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mBoundsPoints:[F

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aget v15, v21, v22

    .line 928
    .local v15, "x0":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mBoundsPoints:[F

    move-object/from16 v21, v0

    const/16 v22, 0x1

    aget v18, v21, v22

    .line 929
    .local v18, "y0":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mBoundsPoints:[F

    move-object/from16 v21, v0

    const/16 v22, 0x4

    aget v16, v21, v22

    .line 930
    .local v16, "x2":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mBoundsPoints:[F

    move-object/from16 v21, v0

    const/16 v22, 0x5

    aget v19, v21, v22

    .line 931
    .local v19, "y2":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mBoundsPoints:[F

    move-object/from16 v21, v0

    const/16 v22, 0x6

    aget v17, v21, v22

    .line 932
    .local v17, "x3":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mBoundsPoints:[F

    move-object/from16 v21, v0

    const/16 v22, 0x7

    aget v20, v21, v22

    .line 934
    .local v20, "y3":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mBoundsPoints:[F

    move-object/from16 v21, v0

    const/16 v22, 0x7

    aget v21, v21, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mBoundsPoints:[F

    move-object/from16 v22, v0

    const/16 v23, 0x1

    aget v22, v22, v23

    cmpg-float v21, v21, v22

    if-gez v21, :cond_3

    .line 935
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mBoundsPoints:[F

    move-object/from16 v21, v0

    const/16 v22, 0x1

    aget v21, v21, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mBoundsPoints:[F

    move-object/from16 v22, v0

    const/16 v23, 0x3

    aget v22, v22, v23

    cmpg-float v21, v21, v22

    if-gez v21, :cond_2

    .line 936
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mBoundsPoints:[F

    move-object/from16 v21, v0

    const/16 v22, 0x6

    aget v15, v21, v22

    .line 937
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mBoundsPoints:[F

    move-object/from16 v21, v0

    const/16 v22, 0x7

    aget v18, v21, v22

    .line 938
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mBoundsPoints:[F

    move-object/from16 v21, v0

    const/16 v22, 0x2

    aget v16, v21, v22

    .line 939
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mBoundsPoints:[F

    move-object/from16 v21, v0

    const/16 v22, 0x3

    aget v19, v21, v22

    .line 940
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mBoundsPoints:[F

    move-object/from16 v21, v0

    const/16 v22, 0x4

    aget v17, v21, v22

    .line 941
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mBoundsPoints:[F

    move-object/from16 v21, v0

    const/16 v22, 0x5

    aget v20, v21, v22

    .line 959
    :cond_1
    :goto_1
    sub-float v21, v20, v18

    sub-float v22, v17, v15

    div-float v1, v21, v22

    .line 960
    .local v1, "a0":F
    const/high16 v21, -0x40800000    # -1.0f

    div-float v2, v21, v1

    .line 961
    .local v2, "a1":F
    mul-float v21, v1, v15

    sub-float v3, v18, v21

    .line 962
    .local v3, "b0":F
    mul-float v21, v2, v15

    sub-float v4, v18, v21

    .line 963
    .local v4, "b1":F
    mul-float v21, v1, v16

    sub-float v5, v19, v21

    .line 964
    .local v5, "b2":F
    mul-float v21, v2, v16

    sub-float v6, v19, v21

    .line 966
    .local v6, "b3":F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/RectF;->centerY()F

    move-result v21

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v22, v0

    sub-float v21, v21, v22

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/RectF;->centerX()F

    move-result v22

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v23, v0

    sub-float v22, v22, v23

    div-float v8, v21, v22

    .line 967
    .local v8, "c0":F
    neg-float v9, v8

    .line 968
    .local v9, "c1":F
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v21, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v22, v0

    mul-float v22, v22, v8

    sub-float v10, v21, v22

    .line 969
    .local v10, "d0":F
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v21, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v22, v0

    mul-float v22, v22, v9

    sub-float v11, v21, v22

    .line 971
    .local v11, "d1":F
    sub-float v21, v10, v3

    sub-float v22, v1, v8

    div-float v21, v21, v22

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v22, v0

    cmpg-float v21, v21, v22

    if-gez v21, :cond_4

    sub-float v21, v10, v3

    sub-float v22, v1, v8

    div-float v21, v21, v22

    :goto_2
    move/from16 v0, v21

    invoke-static {v12, v0}, Ljava/lang/Math;->max(FF)F

    move-result v12

    .line 972
    sub-float v21, v10, v4

    sub-float v22, v2, v8

    div-float v21, v21, v22

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v22, v0

    cmpg-float v21, v21, v22

    if-gez v21, :cond_5

    sub-float v21, v10, v4

    sub-float v22, v2, v8

    div-float v21, v21, v22

    :goto_3
    move/from16 v0, v21

    invoke-static {v12, v0}, Ljava/lang/Math;->max(FF)F

    move-result v12

    .line 973
    sub-float v21, v11, v6

    sub-float v22, v2, v9

    div-float v21, v21, v22

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v22, v0

    cmpg-float v21, v21, v22

    if-gez v21, :cond_6

    sub-float v21, v11, v6

    sub-float v22, v2, v9

    div-float v21, v21, v22

    :goto_4
    move/from16 v0, v21

    invoke-static {v12, v0}, Ljava/lang/Math;->max(FF)F

    move-result v12

    .line 974
    sub-float v21, v11, v4

    sub-float v22, v2, v9

    div-float v21, v21, v22

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v22, v0

    cmpl-float v21, v21, v22

    if-lez v21, :cond_7

    sub-float v21, v11, v4

    sub-float v22, v2, v9

    div-float v21, v21, v22

    :goto_5
    move/from16 v0, v21

    invoke-static {v13, v0}, Ljava/lang/Math;->min(FF)F

    move-result v13

    .line 975
    sub-float v21, v11, v5

    sub-float v22, v1, v9

    div-float v21, v21, v22

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v22, v0

    cmpl-float v21, v21, v22

    if-lez v21, :cond_8

    sub-float v21, v11, v5

    sub-float v22, v1, v9

    div-float v21, v21, v22

    :goto_6
    move/from16 v0, v21

    invoke-static {v13, v0}, Ljava/lang/Math;->min(FF)F

    move-result v13

    .line 976
    sub-float v21, v10, v5

    sub-float v22, v1, v8

    div-float v21, v21, v22

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v22, v0

    cmpl-float v21, v21, v22

    if-lez v21, :cond_9

    sub-float v21, v10, v5

    sub-float v22, v1, v8

    div-float v21, v21, v22

    :goto_7
    move/from16 v0, v21

    invoke-static {v13, v0}, Ljava/lang/Math;->min(FF)F

    move-result v13

    .line 978
    mul-float v21, v1, v12

    add-float v21, v21, v3

    mul-float v22, v2, v13

    add-float v22, v22, v4

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->max(FF)F

    move-result v21

    move/from16 v0, v21

    invoke-static {v14, v0}, Ljava/lang/Math;->max(FF)F

    move-result v14

    .line 979
    mul-float v21, v2, v12

    add-float v21, v21, v6

    mul-float v22, v1, v13

    add-float v22, v22, v5

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->min(FF)F

    move-result v21

    move/from16 v0, v21

    invoke-static {v7, v0}, Ljava/lang/Math;->min(FF)F

    move-result v7

    .line 981
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mCalcBounds:Landroid/graphics/RectF;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iput v12, v0, Landroid/graphics/RectF;->left:F

    .line 982
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mCalcBounds:Landroid/graphics/RectF;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iput v14, v0, Landroid/graphics/RectF;->top:F

    .line 983
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mCalcBounds:Landroid/graphics/RectF;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iput v13, v0, Landroid/graphics/RectF;->right:F

    .line 984
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mCalcBounds:Landroid/graphics/RectF;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iput v7, v0, Landroid/graphics/RectF;->bottom:F

    .line 985
    const/16 v21, 0x1

    goto/16 :goto_0

    .line 943
    .end local v1    # "a0":F
    .end local v2    # "a1":F
    .end local v3    # "b0":F
    .end local v4    # "b1":F
    .end local v5    # "b2":F
    .end local v6    # "b3":F
    .end local v8    # "c0":F
    .end local v9    # "c1":F
    .end local v10    # "d0":F
    .end local v11    # "d1":F
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mBoundsPoints:[F

    move-object/from16 v21, v0

    const/16 v22, 0x4

    aget v15, v21, v22

    .line 944
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mBoundsPoints:[F

    move-object/from16 v21, v0

    const/16 v22, 0x5

    aget v18, v21, v22

    .line 945
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mBoundsPoints:[F

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aget v16, v21, v22

    .line 946
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mBoundsPoints:[F

    move-object/from16 v21, v0

    const/16 v22, 0x1

    aget v19, v21, v22

    .line 947
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mBoundsPoints:[F

    move-object/from16 v21, v0

    const/16 v22, 0x2

    aget v17, v21, v22

    .line 948
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mBoundsPoints:[F

    move-object/from16 v21, v0

    const/16 v22, 0x3

    aget v20, v21, v22

    goto/16 :goto_1

    .line 950
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mBoundsPoints:[F

    move-object/from16 v21, v0

    const/16 v22, 0x1

    aget v21, v21, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mBoundsPoints:[F

    move-object/from16 v22, v0

    const/16 v23, 0x3

    aget v22, v22, v23

    cmpl-float v21, v21, v22

    if-lez v21, :cond_1

    .line 951
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mBoundsPoints:[F

    move-object/from16 v21, v0

    const/16 v22, 0x2

    aget v15, v21, v22

    .line 952
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mBoundsPoints:[F

    move-object/from16 v21, v0

    const/16 v22, 0x3

    aget v18, v21, v22

    .line 953
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mBoundsPoints:[F

    move-object/from16 v21, v0

    const/16 v22, 0x6

    aget v16, v21, v22

    .line 954
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mBoundsPoints:[F

    move-object/from16 v21, v0

    const/16 v22, 0x7

    aget v19, v21, v22

    .line 955
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mBoundsPoints:[F

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aget v17, v21, v22

    .line 956
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mBoundsPoints:[F

    move-object/from16 v21, v0

    const/16 v22, 0x1

    aget v20, v21, v22

    goto/16 :goto_1

    .restart local v1    # "a0":F
    .restart local v2    # "a1":F
    .restart local v3    # "b0":F
    .restart local v4    # "b1":F
    .restart local v5    # "b2":F
    .restart local v6    # "b3":F
    .restart local v8    # "c0":F
    .restart local v9    # "c1":F
    .restart local v10    # "d0":F
    .restart local v11    # "d1":F
    :cond_4
    move/from16 v21, v12

    .line 971
    goto/16 :goto_2

    :cond_5
    move/from16 v21, v12

    .line 972
    goto/16 :goto_3

    :cond_6
    move/from16 v21, v12

    .line 973
    goto/16 :goto_4

    :cond_7
    move/from16 v21, v13

    .line 974
    goto/16 :goto_5

    :cond_8
    move/from16 v21, v13

    .line 975
    goto/16 :goto_6

    :cond_9
    move/from16 v21, v13

    .line 976
    goto/16 :goto_7
.end method

.method private callOnCropWindowChanged(Z)V
    .locals 3
    .param p1, "inProgress"    # Z

    .prologue
    .line 1001
    :try_start_0
    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mCropWindowChangeListener:Lcom/theartofdev/edmodo/cropper/CropOverlayView$CropWindowChangeListener;

    if-eqz v1, :cond_0

    .line 1002
    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mCropWindowChangeListener:Lcom/theartofdev/edmodo/cropper/CropOverlayView$CropWindowChangeListener;

    invoke-interface {v1, p1}, Lcom/theartofdev/edmodo/cropper/CropOverlayView$CropWindowChangeListener;->onCropWindowChanged(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1007
    :cond_0
    :goto_0
    return-void

    .line 1004
    :catch_0
    move-exception v0

    .line 1005
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "AIC"

    const-string v2, "Exception in crop window changed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private drawBackground(Landroid/graphics/Canvas;)V
    .locals 18
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 671
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mCropWindowHandler:Lcom/theartofdev/edmodo/cropper/CropWindowHandler;

    invoke-virtual {v2}, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->getRect()Landroid/graphics/RectF;

    move-result-object v17

    .line 673
    .local v17, "rect":Landroid/graphics/RectF;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mBoundsPoints:[F

    invoke-static {v2}, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->getRectLeft([F)F

    move-result v2

    const/4 v6, 0x0

    invoke-static {v2, v6}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 674
    .local v3, "left":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mBoundsPoints:[F

    invoke-static {v2}, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->getRectTop([F)F

    move-result v2

    const/4 v6, 0x0

    invoke-static {v2, v6}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 675
    .local v4, "top":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mBoundsPoints:[F

    invoke-static {v2}, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->getRectRight([F)F

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->getWidth()I

    move-result v6

    int-to-float v6, v6

    invoke-static {v2, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 676
    .local v5, "right":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mBoundsPoints:[F

    invoke-static {v2}, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->getRectBottom([F)F

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    invoke-static {v2, v6}, Ljava/lang/Math;->min(FF)F

    move-result v10

    .line 678
    .local v10, "bottom":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mCropShape:Lcom/theartofdev/edmodo/cropper/CropImageView$CropShape;

    sget-object v6, Lcom/theartofdev/edmodo/cropper/CropImageView$CropShape;->RECTANGLE:Lcom/theartofdev/edmodo/cropper/CropImageView$CropShape;

    if-ne v2, v6, :cond_2

    .line 679
    invoke-direct/range {p0 .. p0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->isNonStraightAngleRotated()Z

    move-result v2

    if-eqz v2, :cond_0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x11

    if-gt v2, v6, :cond_1

    .line 680
    :cond_0
    move-object/from16 v0, v17

    iget v6, v0, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mBackgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 681
    move-object/from16 v0, v17

    iget v8, v0, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mBackgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v6, p1

    move v7, v3

    move v9, v5

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 682
    move-object/from16 v0, v17

    iget v13, v0, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, v17

    iget v14, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, v17

    iget v15, v0, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mBackgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v16, v0

    move-object/from16 v11, p1

    move v12, v3

    invoke-virtual/range {v11 .. v16}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 683
    move-object/from16 v0, v17

    iget v12, v0, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, v17

    iget v13, v0, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, v17

    iget v15, v0, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mBackgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v16, v0

    move-object/from16 v11, p1

    move v14, v5

    invoke-virtual/range {v11 .. v16}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 711
    :goto_0
    return-void

    .line 685
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 686
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mBoundsPoints:[F

    const/4 v7, 0x0

    aget v6, v6, v7

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mBoundsPoints:[F

    const/4 v8, 0x1

    aget v7, v7, v8

    invoke-virtual {v2, v6, v7}, Landroid/graphics/Path;->moveTo(FF)V

    .line 687
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mBoundsPoints:[F

    const/4 v7, 0x2

    aget v6, v6, v7

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mBoundsPoints:[F

    const/4 v8, 0x3

    aget v7, v7, v8

    invoke-virtual {v2, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 688
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mBoundsPoints:[F

    const/4 v7, 0x4

    aget v6, v6, v7

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mBoundsPoints:[F

    const/4 v8, 0x5

    aget v7, v7, v8

    invoke-virtual {v2, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 689
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mBoundsPoints:[F

    const/4 v7, 0x6

    aget v6, v6, v7

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mBoundsPoints:[F

    const/4 v8, 0x7

    aget v7, v7, v8

    invoke-virtual {v2, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 690
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    .line 692
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 693
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mPath:Landroid/graphics/Path;

    sget-object v6, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v6}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 694
    sget-object v2, Landroid/graphics/Region$Op;->XOR:Landroid/graphics/Region$Op;

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;Landroid/graphics/Region$Op;)Z

    .line 695
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mBackgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    move v6, v10

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 696
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_0

    .line 699
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 700
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xb

    if-lt v2, v6, :cond_3

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x11

    if-gt v2, v6, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mCropShape:Lcom/theartofdev/edmodo/cropper/CropImageView$CropShape;

    sget-object v6, Lcom/theartofdev/edmodo/cropper/CropImageView$CropShape;->OVAL:Lcom/theartofdev/edmodo/cropper/CropImageView$CropShape;

    if-ne v2, v6, :cond_3

    .line 701
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mDrawRect:Landroid/graphics/RectF;

    move-object/from16 v0, v17

    iget v6, v0, Landroid/graphics/RectF;->left:F

    const/high16 v7, 0x40000000    # 2.0f

    add-float/2addr v6, v7

    move-object/from16 v0, v17

    iget v7, v0, Landroid/graphics/RectF;->top:F

    const/high16 v8, 0x40000000    # 2.0f

    add-float/2addr v7, v8

    move-object/from16 v0, v17

    iget v8, v0, Landroid/graphics/RectF;->right:F

    const/high16 v9, 0x40000000    # 2.0f

    sub-float/2addr v8, v9

    move-object/from16 v0, v17

    iget v9, v0, Landroid/graphics/RectF;->bottom:F

    const/high16 v11, 0x40000000    # 2.0f

    sub-float/2addr v9, v11

    invoke-virtual {v2, v6, v7, v8, v9}, Landroid/graphics/RectF;->set(FFFF)V

    .line 705
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mDrawRect:Landroid/graphics/RectF;

    sget-object v7, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v2, v6, v7}, Landroid/graphics/Path;->addOval(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 706
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 707
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mPath:Landroid/graphics/Path;

    sget-object v6, Landroid/graphics/Region$Op;->XOR:Landroid/graphics/Region$Op;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v6}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 708
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mBackgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    move v6, v10

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 709
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_0

    .line 703
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mDrawRect:Landroid/graphics/RectF;

    move-object/from16 v0, v17

    iget v6, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, v17

    iget v7, v0, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, v17

    iget v8, v0, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, v17

    iget v9, v0, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v2, v6, v7, v8, v9}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_1
.end method

.method private drawBorders(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 764
    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mBorderPaint:Landroid/graphics/Paint;

    if-eqz v2, :cond_0

    .line 765
    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v1

    .line 766
    .local v1, "w":F
    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mCropWindowHandler:Lcom/theartofdev/edmodo/cropper/CropWindowHandler;

    invoke-virtual {v2}, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->getRect()Landroid/graphics/RectF;

    move-result-object v0

    .line 767
    .local v0, "rect":Landroid/graphics/RectF;
    div-float v2, v1, v3

    div-float v3, v1, v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/RectF;->inset(FF)V

    .line 769
    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mCropShape:Lcom/theartofdev/edmodo/cropper/CropImageView$CropShape;

    sget-object v3, Lcom/theartofdev/edmodo/cropper/CropImageView$CropShape;->RECTANGLE:Lcom/theartofdev/edmodo/cropper/CropImageView$CropShape;

    if-ne v2, v3, :cond_1

    .line 771
    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 777
    .end local v0    # "rect":Landroid/graphics/RectF;
    .end local v1    # "w":F
    :cond_0
    :goto_0
    return-void

    .line 774
    .restart local v0    # "rect":Landroid/graphics/RectF;
    .restart local v1    # "w":F
    :cond_1
    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method private drawCorners(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    .line 783
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mBorderCornerPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 785
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mBorderPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v9

    .line 786
    .local v9, "lineWidth":F
    :goto_0
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mBorderCornerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v8

    .line 787
    .local v8, "cornerWidth":F
    div-float v0, v8, v2

    iget v1, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mBorderCornerOffset:F

    add-float v11, v0, v1

    .line 788
    .local v11, "w":F
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mCropWindowHandler:Lcom/theartofdev/edmodo/cropper/CropWindowHandler;

    invoke-virtual {v0}, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->getRect()Landroid/graphics/RectF;

    move-result-object v10

    .line 789
    .local v10, "rect":Landroid/graphics/RectF;
    invoke-virtual {v10, v11, v11}, Landroid/graphics/RectF;->inset(FF)V

    .line 791
    sub-float v0, v8, v9

    div-float v7, v0, v2

    .line 792
    .local v7, "cornerOffset":F
    div-float v0, v8, v2

    add-float v6, v0, v7

    .line 795
    .local v6, "cornerExtension":F
    iget v0, v10, Landroid/graphics/RectF;->left:F

    sub-float v1, v0, v7

    iget v0, v10, Landroid/graphics/RectF;->top:F

    sub-float v2, v0, v6

    iget v0, v10, Landroid/graphics/RectF;->left:F

    sub-float v3, v0, v7

    iget v0, v10, Landroid/graphics/RectF;->top:F

    iget v4, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mBorderCornerLength:F

    add-float/2addr v4, v0

    iget-object v5, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mBorderCornerPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 796
    iget v0, v10, Landroid/graphics/RectF;->left:F

    sub-float v1, v0, v6

    iget v0, v10, Landroid/graphics/RectF;->top:F

    sub-float v2, v0, v7

    iget v0, v10, Landroid/graphics/RectF;->left:F

    iget v3, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mBorderCornerLength:F

    add-float/2addr v3, v0

    iget v0, v10, Landroid/graphics/RectF;->top:F

    sub-float v4, v0, v7

    iget-object v5, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mBorderCornerPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 799
    iget v0, v10, Landroid/graphics/RectF;->right:F

    add-float v1, v0, v7

    iget v0, v10, Landroid/graphics/RectF;->top:F

    sub-float v2, v0, v6

    iget v0, v10, Landroid/graphics/RectF;->right:F

    add-float v3, v0, v7

    iget v0, v10, Landroid/graphics/RectF;->top:F

    iget v4, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mBorderCornerLength:F

    add-float/2addr v4, v0

    iget-object v5, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mBorderCornerPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 800
    iget v0, v10, Landroid/graphics/RectF;->right:F

    add-float v1, v0, v6

    iget v0, v10, Landroid/graphics/RectF;->top:F

    sub-float v2, v0, v7

    iget v0, v10, Landroid/graphics/RectF;->right:F

    iget v3, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mBorderCornerLength:F

    sub-float v3, v0, v3

    iget v0, v10, Landroid/graphics/RectF;->top:F

    sub-float v4, v0, v7

    iget-object v5, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mBorderCornerPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 803
    iget v0, v10, Landroid/graphics/RectF;->left:F

    sub-float v1, v0, v7

    iget v0, v10, Landroid/graphics/RectF;->bottom:F

    add-float v2, v0, v6

    iget v0, v10, Landroid/graphics/RectF;->left:F

    sub-float v3, v0, v7

    iget v0, v10, Landroid/graphics/RectF;->bottom:F

    iget v4, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mBorderCornerLength:F

    sub-float v4, v0, v4

    iget-object v5, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mBorderCornerPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 804
    iget v0, v10, Landroid/graphics/RectF;->left:F

    sub-float v1, v0, v6

    iget v0, v10, Landroid/graphics/RectF;->bottom:F

    add-float v2, v0, v7

    iget v0, v10, Landroid/graphics/RectF;->left:F

    iget v3, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mBorderCornerLength:F

    add-float/2addr v3, v0

    iget v0, v10, Landroid/graphics/RectF;->bottom:F

    add-float v4, v0, v7

    iget-object v5, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mBorderCornerPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 807
    iget v0, v10, Landroid/graphics/RectF;->right:F

    add-float v1, v0, v7

    iget v0, v10, Landroid/graphics/RectF;->bottom:F

    add-float v2, v0, v6

    iget v0, v10, Landroid/graphics/RectF;->right:F

    add-float v3, v0, v7

    iget v0, v10, Landroid/graphics/RectF;->bottom:F

    iget v4, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mBorderCornerLength:F

    sub-float v4, v0, v4

    iget-object v5, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mBorderCornerPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 808
    iget v0, v10, Landroid/graphics/RectF;->right:F

    add-float v1, v0, v6

    iget v0, v10, Landroid/graphics/RectF;->bottom:F

    add-float v2, v0, v7

    iget v0, v10, Landroid/graphics/RectF;->right:F

    iget v3, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mBorderCornerLength:F

    sub-float v3, v0, v3

    iget v0, v10, Landroid/graphics/RectF;->bottom:F

    add-float v4, v0, v7

    iget-object v5, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mBorderCornerPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 810
    .end local v6    # "cornerExtension":F
    .end local v7    # "cornerOffset":F
    .end local v8    # "cornerWidth":F
    .end local v9    # "lineWidth":F
    .end local v10    # "rect":Landroid/graphics/RectF;
    .end local v11    # "w":F
    :cond_0
    return-void

    .line 785
    :cond_1
    const/4 v9, 0x0

    goto/16 :goto_0
.end method

.method private drawGuidelines(Landroid/graphics/Canvas;)V
    .locals 25
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 717
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mGuidelinePaint:Landroid/graphics/Paint;

    if-eqz v4, :cond_0

    .line 718
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mBorderPaint:Landroid/graphics/Paint;

    if-eqz v4, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v19

    .line 719
    .local v19, "sw":F
    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mCropWindowHandler:Lcom/theartofdev/edmodo/cropper/CropWindowHandler;

    invoke-virtual {v4}, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->getRect()Landroid/graphics/RectF;

    move-result-object v18

    .line 720
    .local v18, "rect":Landroid/graphics/RectF;
    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->inset(FF)V

    .line 722
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/RectF;->width()F

    move-result v4

    const/high16 v6, 0x40400000    # 3.0f

    div-float v17, v4, v6

    .line 723
    .local v17, "oneThirdCropWidth":F
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/RectF;->height()F

    move-result v4

    const/high16 v6, 0x40400000    # 3.0f

    div-float v16, v4, v6

    .line 725
    .local v16, "oneThirdCropHeight":F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mCropShape:Lcom/theartofdev/edmodo/cropper/CropImageView$CropShape;

    sget-object v6, Lcom/theartofdev/edmodo/cropper/CropImageView$CropShape;->OVAL:Lcom/theartofdev/edmodo/cropper/CropImageView$CropShape;

    if-ne v4, v6, :cond_2

    .line 727
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/RectF;->width()F

    move-result v4

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v4, v6

    sub-float v20, v4, v19

    .line 728
    .local v20, "w":F
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/RectF;->height()F

    move-result v4

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v4, v6

    sub-float v15, v4, v19

    .line 731
    .local v15, "h":F
    move-object/from16 v0, v18

    iget v4, v0, Landroid/graphics/RectF;->left:F

    add-float v5, v4, v17

    .line 732
    .local v5, "x1":F
    move-object/from16 v0, v18

    iget v4, v0, Landroid/graphics/RectF;->right:F

    sub-float v21, v4, v17

    .line 733
    .local v21, "x2":F
    float-to-double v6, v15

    sub-float v4, v20, v17

    div-float v4, v4, v20

    float-to-double v10, v4

    invoke-static {v10, v11}, Ljava/lang/Math;->acos(D)D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    mul-double/2addr v6, v10

    double-to-float v0, v6

    move/from16 v24, v0

    .line 734
    .local v24, "yv":F
    move-object/from16 v0, v18

    iget v4, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr v4, v15

    sub-float v6, v4, v24

    move-object/from16 v0, v18

    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v4, v15

    add-float v8, v4, v24

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mGuidelinePaint:Landroid/graphics/Paint;

    move-object/from16 v4, p1

    move v7, v5

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 735
    move-object/from16 v0, v18

    iget v4, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr v4, v15

    sub-float v8, v4, v24

    move-object/from16 v0, v18

    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v4, v15

    add-float v10, v4, v24

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mGuidelinePaint:Landroid/graphics/Paint;

    move-object/from16 v6, p1

    move/from16 v7, v21

    move/from16 v9, v21

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 738
    move-object/from16 v0, v18

    iget v4, v0, Landroid/graphics/RectF;->top:F

    add-float v8, v4, v16

    .line 739
    .local v8, "y1":F
    move-object/from16 v0, v18

    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    sub-float v23, v4, v16

    .line 740
    .local v23, "y2":F
    move/from16 v0, v20

    float-to-double v6, v0

    sub-float v4, v15, v16

    div-float/2addr v4, v15

    float-to-double v10, v4

    invoke-static {v10, v11}, Ljava/lang/Math;->asin(D)D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    mul-double/2addr v6, v10

    double-to-float v0, v6

    move/from16 v22, v0

    .line 741
    .local v22, "xv":F
    move-object/from16 v0, v18

    iget v4, v0, Landroid/graphics/RectF;->left:F

    add-float v4, v4, v20

    sub-float v7, v4, v22

    move-object/from16 v0, v18

    iget v4, v0, Landroid/graphics/RectF;->right:F

    sub-float v4, v4, v20

    add-float v9, v4, v22

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mGuidelinePaint:Landroid/graphics/Paint;

    move-object/from16 v6, p1

    move v10, v8

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 742
    move-object/from16 v0, v18

    iget v4, v0, Landroid/graphics/RectF;->left:F

    add-float v4, v4, v20

    sub-float v10, v4, v22

    move-object/from16 v0, v18

    iget v4, v0, Landroid/graphics/RectF;->right:F

    sub-float v4, v4, v20

    add-float v12, v4, v22

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mGuidelinePaint:Landroid/graphics/Paint;

    move-object/from16 v9, p1

    move/from16 v11, v23

    move/from16 v13, v23

    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 758
    .end local v5    # "x1":F
    .end local v8    # "y1":F
    .end local v15    # "h":F
    .end local v16    # "oneThirdCropHeight":F
    .end local v17    # "oneThirdCropWidth":F
    .end local v18    # "rect":Landroid/graphics/RectF;
    .end local v19    # "sw":F
    .end local v20    # "w":F
    .end local v21    # "x2":F
    .end local v22    # "xv":F
    .end local v23    # "y2":F
    .end local v24    # "yv":F
    :cond_0
    :goto_1
    return-void

    .line 718
    :cond_1
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 746
    .restart local v16    # "oneThirdCropHeight":F
    .restart local v17    # "oneThirdCropWidth":F
    .restart local v18    # "rect":Landroid/graphics/RectF;
    .restart local v19    # "sw":F
    :cond_2
    move-object/from16 v0, v18

    iget v4, v0, Landroid/graphics/RectF;->left:F

    add-float v5, v4, v17

    .line 747
    .restart local v5    # "x1":F
    move-object/from16 v0, v18

    iget v4, v0, Landroid/graphics/RectF;->right:F

    sub-float v21, v4, v17

    .line 748
    .restart local v21    # "x2":F
    move-object/from16 v0, v18

    iget v11, v0, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, v18

    iget v13, v0, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mGuidelinePaint:Landroid/graphics/Paint;

    move-object/from16 v9, p1

    move v10, v5

    move v12, v5

    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 749
    move-object/from16 v0, v18

    iget v11, v0, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, v18

    iget v13, v0, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mGuidelinePaint:Landroid/graphics/Paint;

    move-object/from16 v9, p1

    move/from16 v10, v21

    move/from16 v12, v21

    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 752
    move-object/from16 v0, v18

    iget v4, v0, Landroid/graphics/RectF;->top:F

    add-float v8, v4, v16

    .line 753
    .restart local v8    # "y1":F
    move-object/from16 v0, v18

    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    sub-float v23, v4, v16

    .line 754
    .restart local v23    # "y2":F
    move-object/from16 v0, v18

    iget v7, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, v18

    iget v9, v0, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mGuidelinePaint:Landroid/graphics/Paint;

    move-object/from16 v6, p1

    move v10, v8

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 755
    move-object/from16 v0, v18

    iget v10, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, v18

    iget v12, v0, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mGuidelinePaint:Landroid/graphics/Paint;

    move-object/from16 v9, p1

    move/from16 v11, v23

    move/from16 v13, v23

    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_1
.end method

.method private fixCropWindowRectByRules(Landroid/graphics/RectF;)V
    .locals 11
    .param p1, "rect"    # Landroid/graphics/RectF;

    .prologue
    const/4 v7, 0x0

    const/high16 v10, 0x40000000    # 2.0f

    .line 587
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v5

    iget-object v6, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mCropWindowHandler:Lcom/theartofdev/edmodo/cropper/CropWindowHandler;

    invoke-virtual {v6}, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->getMinCropWidth()F

    move-result v6

    cmpg-float v5, v5, v6

    if-gez v5, :cond_0

    .line 588
    iget-object v5, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mCropWindowHandler:Lcom/theartofdev/edmodo/cropper/CropWindowHandler;

    invoke-virtual {v5}, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->getMinCropWidth()F

    move-result v5

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v6

    sub-float/2addr v5, v6

    div-float v0, v5, v10

    .line 589
    .local v0, "adj":F
    iget v5, p1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v5, v0

    iput v5, p1, Landroid/graphics/RectF;->left:F

    .line 590
    iget v5, p1, Landroid/graphics/RectF;->right:F

    add-float/2addr v5, v0

    iput v5, p1, Landroid/graphics/RectF;->right:F

    .line 592
    .end local v0    # "adj":F
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v5

    iget-object v6, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mCropWindowHandler:Lcom/theartofdev/edmodo/cropper/CropWindowHandler;

    invoke-virtual {v6}, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->getMinCropHeight()F

    move-result v6

    cmpg-float v5, v5, v6

    if-gez v5, :cond_1

    .line 593
    iget-object v5, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mCropWindowHandler:Lcom/theartofdev/edmodo/cropper/CropWindowHandler;

    invoke-virtual {v5}, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->getMinCropHeight()F

    move-result v5

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v6

    sub-float/2addr v5, v6

    div-float v0, v5, v10

    .line 594
    .restart local v0    # "adj":F
    iget v5, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v5, v0

    iput v5, p1, Landroid/graphics/RectF;->top:F

    .line 595
    iget v5, p1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v5, v0

    iput v5, p1, Landroid/graphics/RectF;->bottom:F

    .line 597
    .end local v0    # "adj":F
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v5

    iget-object v6, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mCropWindowHandler:Lcom/theartofdev/edmodo/cropper/CropWindowHandler;

    invoke-virtual {v6}, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->getMaxCropWidth()F

    move-result v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_2

    .line 598
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v5

    iget-object v6, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mCropWindowHandler:Lcom/theartofdev/edmodo/cropper/CropWindowHandler;

    invoke-virtual {v6}, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->getMaxCropWidth()F

    move-result v6

    sub-float/2addr v5, v6

    div-float v0, v5, v10

    .line 599
    .restart local v0    # "adj":F
    iget v5, p1, Landroid/graphics/RectF;->left:F

    add-float/2addr v5, v0

    iput v5, p1, Landroid/graphics/RectF;->left:F

    .line 600
    iget v5, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v5, v0

    iput v5, p1, Landroid/graphics/RectF;->right:F

    .line 602
    .end local v0    # "adj":F
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v5

    iget-object v6, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mCropWindowHandler:Lcom/theartofdev/edmodo/cropper/CropWindowHandler;

    invoke-virtual {v6}, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->getMaxCropHeight()F

    move-result v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_3

    .line 603
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v5

    iget-object v6, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mCropWindowHandler:Lcom/theartofdev/edmodo/cropper/CropWindowHandler;

    invoke-virtual {v6}, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->getMaxCropHeight()F

    move-result v6

    sub-float/2addr v5, v6

    div-float v0, v5, v10

    .line 604
    .restart local v0    # "adj":F
    iget v5, p1, Landroid/graphics/RectF;->top:F

    add-float/2addr v5, v0

    iput v5, p1, Landroid/graphics/RectF;->top:F

    .line 605
    iget v5, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v5, v0

    iput v5, p1, Landroid/graphics/RectF;->bottom:F

    .line 608
    .end local v0    # "adj":F
    :cond_3
    invoke-direct {p0, p1}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->calculateBounds(Landroid/graphics/RectF;)Z

    .line 609
    iget-object v5, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mCalcBounds:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    cmpl-float v5, v5, v7

    if-lez v5, :cond_7

    iget-object v5, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mCalcBounds:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    cmpl-float v5, v5, v7

    if-lez v5, :cond_7

    .line 610
    iget-object v5, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mCalcBounds:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    invoke-static {v5, v7}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 611
    .local v2, "leftLimit":F
    iget-object v5, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mCalcBounds:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    invoke-static {v5, v7}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 612
    .local v4, "topLimit":F
    iget-object v5, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mCalcBounds:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->getWidth()I

    move-result v6

    int-to-float v6, v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 613
    .local v3, "rightLimit":F
    iget-object v5, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mCalcBounds:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 614
    .local v1, "bottomLimit":F
    iget v5, p1, Landroid/graphics/RectF;->left:F

    cmpg-float v5, v5, v2

    if-gez v5, :cond_4

    .line 615
    iput v2, p1, Landroid/graphics/RectF;->left:F

    .line 617
    :cond_4
    iget v5, p1, Landroid/graphics/RectF;->top:F

    cmpg-float v5, v5, v4

    if-gez v5, :cond_5

    .line 618
    iput v4, p1, Landroid/graphics/RectF;->top:F

    .line 620
    :cond_5
    iget v5, p1, Landroid/graphics/RectF;->right:F

    cmpl-float v5, v5, v3

    if-lez v5, :cond_6

    .line 621
    iput v3, p1, Landroid/graphics/RectF;->right:F

    .line 623
    :cond_6
    iget v5, p1, Landroid/graphics/RectF;->bottom:F

    cmpl-float v5, v5, v1

    if-lez v5, :cond_7

    .line 624
    iput v1, p1, Landroid/graphics/RectF;->bottom:F

    .line 627
    .end local v1    # "bottomLimit":F
    .end local v2    # "leftLimit":F
    .end local v3    # "rightLimit":F
    .end local v4    # "topLimit":F
    :cond_7
    iget-boolean v5, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mFixAspectRatio:Z

    if-eqz v5, :cond_8

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v5

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v6

    iget v7, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mTargetAspectRatio:F

    mul-float/2addr v6, v7

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    float-to-double v6, v5

    const-wide v8, 0x3fb999999999999aL    # 0.1

    cmpl-double v5, v6, v8

    if-lez v5, :cond_8

    .line 628
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v5

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v6

    iget v7, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mTargetAspectRatio:F

    mul-float/2addr v6, v7

    cmpl-float v5, v5, v6

    if-lez v5, :cond_9

    .line 629
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v5

    iget v6, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mTargetAspectRatio:F

    mul-float/2addr v5, v6

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v6

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    div-float v0, v5, v10

    .line 630
    .restart local v0    # "adj":F
    iget v5, p1, Landroid/graphics/RectF;->left:F

    add-float/2addr v5, v0

    iput v5, p1, Landroid/graphics/RectF;->left:F

    .line 631
    iget v5, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v5, v0

    iput v5, p1, Landroid/graphics/RectF;->right:F

    .line 638
    .end local v0    # "adj":F
    :cond_8
    :goto_0
    return-void

    .line 633
    :cond_9
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v5

    iget v6, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mTargetAspectRatio:F

    div-float/2addr v5, v6

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v6

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    div-float v0, v5, v10

    .line 634
    .restart local v0    # "adj":F
    iget v5, p1, Landroid/graphics/RectF;->top:F

    add-float/2addr v5, v0

    iput v5, p1, Landroid/graphics/RectF;->top:F

    .line 635
    iget v5, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v5, v0

    iput v5, p1, Landroid/graphics/RectF;->bottom:F

    goto :goto_0
.end method

.method private static getNewPaint(I)Landroid/graphics/Paint;
    .locals 1
    .param p0, "color"    # I

    .prologue
    .line 816
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 817
    .local v0, "paint":Landroid/graphics/Paint;
    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setColor(I)V

    .line 818
    return-object v0
.end method

.method private static getNewPaintOrNull(FI)Landroid/graphics/Paint;
    .locals 2
    .param p0, "thickness"    # F
    .param p1, "color"    # I

    .prologue
    .line 825
    const/4 v1, 0x0

    cmpl-float v1, p0, v1

    if-lez v1, :cond_0

    .line 826
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 827
    .local v0, "borderPaint":Landroid/graphics/Paint;
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 828
    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 829
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 830
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 833
    .end local v0    # "borderPaint":Landroid/graphics/Paint;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initCropWindow()V
    .locals 18

    .prologue
    .line 504
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mBoundsPoints:[F

    invoke-static {v15}, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->getRectLeft([F)F

    move-result v15

    const/16 v16, 0x0

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->max(FF)F

    move-result v10

    .line 505
    .local v10, "leftLimit":F
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mBoundsPoints:[F

    invoke-static {v15}, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->getRectTop([F)F

    move-result v15

    const/16 v16, 0x0

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->max(FF)F

    move-result v13

    .line 506
    .local v13, "topLimit":F
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mBoundsPoints:[F

    invoke-static {v15}, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->getRectRight([F)F

    move-result v15

    invoke-virtual/range {p0 .. p0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->getWidth()I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->min(FF)F

    move-result v12

    .line 507
    .local v12, "rightLimit":F
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mBoundsPoints:[F

    invoke-static {v15}, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->getRectBottom([F)F

    move-result v15

    invoke-virtual/range {p0 .. p0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->getHeight()I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 509
    .local v2, "bottomLimit":F
    cmpg-float v15, v12, v10

    if-lez v15, :cond_0

    cmpg-float v15, v2, v13

    if-gtz v15, :cond_1

    .line 581
    :cond_0
    :goto_0
    return-void

    .line 513
    :cond_1
    new-instance v11, Landroid/graphics/RectF;

    invoke-direct {v11}, Landroid/graphics/RectF;-><init>()V

    .line 516
    .local v11, "rect":Landroid/graphics/RectF;
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->initializedCropWindow:Z

    .line 518
    move-object/from16 v0, p0

    iget v15, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mInitialCropWindowPaddingRatio:F

    sub-float v16, v12, v10

    mul-float v9, v15, v16

    .line 519
    .local v9, "horizontalPadding":F
    move-object/from16 v0, p0

    iget v15, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mInitialCropWindowPaddingRatio:F

    sub-float v16, v2, v13

    mul-float v14, v15, v16

    .line 521
    .local v14, "verticalPadding":F
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mInitialCropWindowRect:Landroid/graphics/Rect;

    invoke-virtual {v15}, Landroid/graphics/Rect;->width()I

    move-result v15

    if-lez v15, :cond_2

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mInitialCropWindowRect:Landroid/graphics/Rect;

    invoke-virtual {v15}, Landroid/graphics/Rect;->height()I

    move-result v15

    if-lez v15, :cond_2

    .line 523
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mInitialCropWindowRect:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->left:I

    int-to-float v15, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mCropWindowHandler:Lcom/theartofdev/edmodo/cropper/CropWindowHandler;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->getScaleFactorWidth()F

    move-result v16

    div-float v15, v15, v16

    add-float/2addr v15, v10

    iput v15, v11, Landroid/graphics/RectF;->left:F

    .line 524
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mInitialCropWindowRect:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->top:I

    int-to-float v15, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mCropWindowHandler:Lcom/theartofdev/edmodo/cropper/CropWindowHandler;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->getScaleFactorHeight()F

    move-result v16

    div-float v15, v15, v16

    add-float/2addr v15, v13

    iput v15, v11, Landroid/graphics/RectF;->top:F

    .line 525
    iget v15, v11, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mInitialCropWindowRect:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Rect;->width()I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mCropWindowHandler:Lcom/theartofdev/edmodo/cropper/CropWindowHandler;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->getScaleFactorWidth()F

    move-result v17

    div-float v16, v16, v17

    add-float v15, v15, v16

    iput v15, v11, Landroid/graphics/RectF;->right:F

    .line 526
    iget v15, v11, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mInitialCropWindowRect:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Rect;->height()I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mCropWindowHandler:Lcom/theartofdev/edmodo/cropper/CropWindowHandler;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->getScaleFactorHeight()F

    move-result v17

    div-float v16, v16, v17

    add-float v15, v15, v16

    iput v15, v11, Landroid/graphics/RectF;->bottom:F

    .line 529
    iget v15, v11, Landroid/graphics/RectF;->left:F

    invoke-static {v10, v15}, Ljava/lang/Math;->max(FF)F

    move-result v15

    iput v15, v11, Landroid/graphics/RectF;->left:F

    .line 530
    iget v15, v11, Landroid/graphics/RectF;->top:F

    invoke-static {v13, v15}, Ljava/lang/Math;->max(FF)F

    move-result v15

    iput v15, v11, Landroid/graphics/RectF;->top:F

    .line 531
    iget v15, v11, Landroid/graphics/RectF;->right:F

    invoke-static {v12, v15}, Ljava/lang/Math;->min(FF)F

    move-result v15

    iput v15, v11, Landroid/graphics/RectF;->right:F

    .line 532
    iget v15, v11, Landroid/graphics/RectF;->bottom:F

    invoke-static {v2, v15}, Ljava/lang/Math;->min(FF)F

    move-result v15

    iput v15, v11, Landroid/graphics/RectF;->bottom:F

    .line 578
    :goto_1
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->fixCropWindowRectByRules(Landroid/graphics/RectF;)V

    .line 580
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mCropWindowHandler:Lcom/theartofdev/edmodo/cropper/CropWindowHandler;

    invoke-virtual {v15, v11}, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->setRect(Landroid/graphics/RectF;)V

    goto/16 :goto_0

    .line 534
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mFixAspectRatio:Z

    if-eqz v15, :cond_4

    cmpl-float v15, v12, v10

    if-lez v15, :cond_4

    cmpl-float v15, v2, v13

    if-lez v15, :cond_4

    .line 538
    sub-float v15, v12, v10

    sub-float v16, v2, v13

    div-float v1, v15, v16

    .line 539
    .local v1, "bitmapAspectRatio":F
    move-object/from16 v0, p0

    iget v15, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mTargetAspectRatio:F

    cmpl-float v15, v1, v15

    if-lez v15, :cond_3

    .line 541
    add-float v15, v13, v14

    iput v15, v11, Landroid/graphics/RectF;->top:F

    .line 542
    sub-float v15, v2, v14

    iput v15, v11, Landroid/graphics/RectF;->bottom:F

    .line 544
    invoke-virtual/range {p0 .. p0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->getWidth()I

    move-result v15

    int-to-float v15, v15

    const/high16 v16, 0x40000000    # 2.0f

    div-float v3, v15, v16

    .line 547
    .local v3, "centerX":F
    move-object/from16 v0, p0

    iget v15, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mAspectRatioX:I

    int-to-float v15, v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mAspectRatioY:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    div-float v15, v15, v16

    move-object/from16 v0, p0

    iput v15, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mTargetAspectRatio:F

    .line 550
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mCropWindowHandler:Lcom/theartofdev/edmodo/cropper/CropWindowHandler;

    invoke-virtual {v15}, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->getMinCropWidth()F

    move-result v15

    invoke-virtual {v11}, Landroid/graphics/RectF;->height()F

    move-result v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mTargetAspectRatio:F

    move/from16 v17, v0

    mul-float v16, v16, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 552
    .local v6, "cropWidth":F
    const/high16 v15, 0x40000000    # 2.0f

    div-float v8, v6, v15

    .line 553
    .local v8, "halfCropWidth":F
    sub-float v15, v3, v8

    iput v15, v11, Landroid/graphics/RectF;->left:F

    .line 554
    add-float v15, v3, v8

    iput v15, v11, Landroid/graphics/RectF;->right:F

    goto :goto_1

    .line 558
    .end local v3    # "centerX":F
    .end local v6    # "cropWidth":F
    .end local v8    # "halfCropWidth":F
    :cond_3
    add-float v15, v10, v9

    iput v15, v11, Landroid/graphics/RectF;->left:F

    .line 559
    sub-float v15, v12, v9

    iput v15, v11, Landroid/graphics/RectF;->right:F

    .line 561
    invoke-virtual/range {p0 .. p0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->getHeight()I

    move-result v15

    int-to-float v15, v15

    const/high16 v16, 0x40000000    # 2.0f

    div-float v4, v15, v16

    .line 564
    .local v4, "centerY":F
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mCropWindowHandler:Lcom/theartofdev/edmodo/cropper/CropWindowHandler;

    invoke-virtual {v15}, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->getMinCropHeight()F

    move-result v15

    invoke-virtual {v11}, Landroid/graphics/RectF;->width()F

    move-result v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mTargetAspectRatio:F

    move/from16 v17, v0

    div-float v16, v16, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 566
    .local v5, "cropHeight":F
    const/high16 v15, 0x40000000    # 2.0f

    div-float v7, v5, v15

    .line 567
    .local v7, "halfCropHeight":F
    sub-float v15, v4, v7

    iput v15, v11, Landroid/graphics/RectF;->top:F

    .line 568
    add-float v15, v4, v7

    iput v15, v11, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_1

    .line 572
    .end local v1    # "bitmapAspectRatio":F
    .end local v4    # "centerY":F
    .end local v5    # "cropHeight":F
    .end local v7    # "halfCropHeight":F
    :cond_4
    add-float v15, v10, v9

    iput v15, v11, Landroid/graphics/RectF;->left:F

    .line 573
    add-float v15, v13, v14

    iput v15, v11, Landroid/graphics/RectF;->top:F

    .line 574
    sub-float v15, v12, v9

    iput v15, v11, Landroid/graphics/RectF;->right:F

    .line 575
    sub-float v15, v2, v14

    iput v15, v11, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_1
.end method

.method private isNonStraightAngleRotated()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 993
    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mBoundsPoints:[F

    aget v2, v2, v1

    iget-object v3, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mBoundsPoints:[F

    const/4 v4, 0x6

    aget v3, v3, v4

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mBoundsPoints:[F

    aget v2, v2, v0

    iget-object v3, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mBoundsPoints:[F

    const/4 v4, 0x7

    aget v3, v3, v4

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private onActionDown(FF)V
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 871
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mCropWindowHandler:Lcom/theartofdev/edmodo/cropper/CropWindowHandler;

    iget v1, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mTouchRadius:F

    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mCropShape:Lcom/theartofdev/edmodo/cropper/CropImageView$CropShape;

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->getMoveHandler(FFFLcom/theartofdev/edmodo/cropper/CropImageView$CropShape;)Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mMoveHandler:Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler;

    .line 872
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mMoveHandler:Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler;

    if-eqz v0, :cond_0

    .line 873
    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->invalidate()V

    .line 875
    :cond_0
    return-void
.end method

.method private onActionMove(FF)V
    .locals 10
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 893
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mMoveHandler:Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler;

    if-eqz v0, :cond_1

    .line 894
    iget v7, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mSnapRadius:F

    .line 895
    .local v7, "snapRadius":F
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mCropWindowHandler:Lcom/theartofdev/edmodo/cropper/CropWindowHandler;

    invoke-virtual {v0}, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->getRect()Landroid/graphics/RectF;

    move-result-object v1

    .line 897
    .local v1, "rect":Landroid/graphics/RectF;
    invoke-direct {p0, v1}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->calculateBounds(Landroid/graphics/RectF;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 898
    const/4 v7, 0x0

    .line 901
    :cond_0
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mMoveHandler:Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler;

    iget-object v4, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mCalcBounds:Landroid/graphics/RectF;

    iget v5, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mViewWidth:I

    iget v6, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mViewHeight:I

    iget-boolean v8, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mFixAspectRatio:Z

    iget v9, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mTargetAspectRatio:F

    move v2, p1

    move v3, p2

    invoke-virtual/range {v0 .. v9}, Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler;->move(Landroid/graphics/RectF;FFLandroid/graphics/RectF;IIFZF)V

    .line 902
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mCropWindowHandler:Lcom/theartofdev/edmodo/cropper/CropWindowHandler;

    invoke-virtual {v0, v1}, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->setRect(Landroid/graphics/RectF;)V

    .line 903
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->callOnCropWindowChanged(Z)V

    .line 904
    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->invalidate()V

    .line 906
    .end local v1    # "rect":Landroid/graphics/RectF;
    .end local v7    # "snapRadius":F
    :cond_1
    return-void
.end method

.method private onActionUp()V
    .locals 1

    .prologue
    .line 881
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mMoveHandler:Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler;

    if-eqz v0, :cond_0

    .line 882
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mMoveHandler:Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler;

    .line 883
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->callOnCropWindowChanged(Z)V

    .line 884
    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->invalidate()V

    .line 886
    :cond_0
    return-void
.end method


# virtual methods
.method public fixCurrentCropWindowRect()V
    .locals 2

    .prologue
    .line 220
    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->getCropWindowRect()Landroid/graphics/RectF;

    move-result-object v0

    .line 221
    .local v0, "rect":Landroid/graphics/RectF;
    invoke-direct {p0, v0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->fixCropWindowRectByRules(Landroid/graphics/RectF;)V

    .line 222
    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mCropWindowHandler:Lcom/theartofdev/edmodo/cropper/CropWindowHandler;

    invoke-virtual {v1, v0}, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->setRect(Landroid/graphics/RectF;)V

    .line 223
    return-void
.end method

.method public getAspectRatioX()I
    .locals 1

    .prologue
    .line 335
    iget v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mAspectRatioX:I

    return v0
.end method

.method public getAspectRatioY()I
    .locals 1

    .prologue
    .line 359
    iget v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mAspectRatioY:I

    return v0
.end method

.method public getCropShape()Lcom/theartofdev/edmodo/cropper/CropImageView$CropShape;
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mCropShape:Lcom/theartofdev/edmodo/cropper/CropImageView$CropShape;

    return-object v0
.end method

.method public getCropWindowRect()Landroid/graphics/RectF;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mCropWindowHandler:Lcom/theartofdev/edmodo/cropper/CropWindowHandler;

    invoke-virtual {v0}, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->getRect()Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method public getGuidelines()Lcom/theartofdev/edmodo/cropper/CropImageView$Guidelines;
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mGuidelines:Lcom/theartofdev/edmodo/cropper/CropImageView$Guidelines;

    return-object v0
.end method

.method public getInitialCropWindowRect()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 433
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mInitialCropWindowRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public isFixAspectRatio()Z
    .locals 1

    .prologue
    .line 315
    iget-boolean v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mFixAspectRatio:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 646
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 649
    invoke-direct {p0, p1}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->drawBackground(Landroid/graphics/Canvas;)V

    .line 651
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mCropWindowHandler:Lcom/theartofdev/edmodo/cropper/CropWindowHandler;

    invoke-virtual {v0}, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->showGuidelines()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 653
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mGuidelines:Lcom/theartofdev/edmodo/cropper/CropImageView$Guidelines;

    sget-object v1, Lcom/theartofdev/edmodo/cropper/CropImageView$Guidelines;->ON:Lcom/theartofdev/edmodo/cropper/CropImageView$Guidelines;

    if-ne v0, v1, :cond_1

    .line 654
    invoke-direct {p0, p1}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->drawGuidelines(Landroid/graphics/Canvas;)V

    .line 661
    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->drawBorders(Landroid/graphics/Canvas;)V

    .line 663
    invoke-direct {p0, p1}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->drawCorners(Landroid/graphics/Canvas;)V

    .line 664
    return-void

    .line 655
    :cond_1
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mGuidelines:Lcom/theartofdev/edmodo/cropper/CropImageView$Guidelines;

    sget-object v1, Lcom/theartofdev/edmodo/cropper/CropImageView$Guidelines;->ON_TOUCH:Lcom/theartofdev/edmodo/cropper/CropImageView$Guidelines;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mMoveHandler:Lcom/theartofdev/edmodo/cropper/CropWindowMoveHandler;

    if-eqz v0, :cond_0

    .line 657
    invoke-direct {p0, p1}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->drawGuidelines(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 840
    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 841
    iget-boolean v2, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mMultiTouchEnabled:Z

    if-eqz v2, :cond_0

    .line 842
    iget-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v2, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 845
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 862
    :goto_0
    return v0

    .line 847
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->onActionDown(FF)V

    goto :goto_0

    .line 851
    :pswitch_1
    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 852
    invoke-direct {p0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->onActionUp()V

    goto :goto_0

    .line 855
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->onActionMove(FF)V

    .line 856
    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 862
    goto :goto_0

    .line 845
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public resetCropOverlayView()V
    .locals 1

    .prologue
    .line 253
    iget-boolean v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->initializedCropWindow:Z

    if-eqz v0, :cond_0

    .line 254
    sget-object v0, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->EMPTY_RECT_F:Landroid/graphics/RectF;

    invoke-virtual {p0, v0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->setCropWindowRect(Landroid/graphics/RectF;)V

    .line 255
    invoke-direct {p0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->initCropWindow()V

    .line 256
    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->invalidate()V

    .line 258
    :cond_0
    return-void
.end method

.method public resetCropWindowRect()V
    .locals 1

    .prologue
    .line 452
    iget-boolean v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->initializedCropWindow:Z

    if-eqz v0, :cond_0

    .line 453
    invoke-direct {p0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->initCropWindow()V

    .line 454
    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->invalidate()V

    .line 455
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->callOnCropWindowChanged(Z)V

    .line 457
    :cond_0
    return-void
.end method

.method public setAspectRatioX(I)V
    .locals 2
    .param p1, "aspectRatioX"    # I

    .prologue
    .line 342
    if-gtz p1, :cond_0

    .line 343
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot set aspect ratio value to a number less than or equal to 0."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 344
    :cond_0
    iget v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mAspectRatioX:I

    if-eq v0, p1, :cond_1

    .line 345
    iput p1, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mAspectRatioX:I

    .line 346
    iget v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mAspectRatioX:I

    int-to-float v0, v0

    iget v1, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mAspectRatioY:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mTargetAspectRatio:F

    .line 348
    iget-boolean v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->initializedCropWindow:Z

    if-eqz v0, :cond_1

    .line 349
    invoke-direct {p0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->initCropWindow()V

    .line 350
    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->invalidate()V

    .line 353
    :cond_1
    return-void
.end method

.method public setAspectRatioY(I)V
    .locals 2
    .param p1, "aspectRatioY"    # I

    .prologue
    .line 369
    if-gtz p1, :cond_0

    .line 370
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot set aspect ratio value to a number less than or equal to 0."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 371
    :cond_0
    iget v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mAspectRatioY:I

    if-eq v0, p1, :cond_1

    .line 372
    iput p1, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mAspectRatioY:I

    .line 373
    iget v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mAspectRatioX:I

    int-to-float v0, v0

    iget v1, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mAspectRatioY:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mTargetAspectRatio:F

    .line 375
    iget-boolean v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->initializedCropWindow:Z

    if-eqz v0, :cond_1

    .line 376
    invoke-direct {p0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->initCropWindow()V

    .line 377
    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->invalidate()V

    .line 380
    :cond_1
    return-void
.end method

.method public setBounds([FII)V
    .locals 5
    .param p1, "boundsPoints"    # [F
    .param p2, "viewWidth"    # I
    .param p3, "viewHeight"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 234
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mBoundsPoints:[F

    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v1

    if-nez v1, :cond_2

    .line 235
    :cond_0
    if-nez p1, :cond_3

    .line 236
    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mBoundsPoints:[F

    invoke-static {v1, v3}, Ljava/util/Arrays;->fill([FF)V

    .line 240
    :goto_0
    iput p2, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mViewWidth:I

    .line 241
    iput p3, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mViewHeight:I

    .line 242
    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mCropWindowHandler:Lcom/theartofdev/edmodo/cropper/CropWindowHandler;

    invoke-virtual {v1}, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->getRect()Landroid/graphics/RectF;

    move-result-object v0

    .line 243
    .local v0, "cropRect":Landroid/graphics/RectF;
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v1

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v1

    cmpl-float v1, v1, v3

    if-nez v1, :cond_2

    .line 244
    :cond_1
    invoke-direct {p0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->initCropWindow()V

    .line 247
    .end local v0    # "cropRect":Landroid/graphics/RectF;
    :cond_2
    return-void

    .line 238
    :cond_3
    iget-object v1, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mBoundsPoints:[F

    array-length v2, p1

    invoke-static {p1, v4, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public setCropShape(Lcom/theartofdev/edmodo/cropper/CropImageView$CropShape;)V
    .locals 4
    .param p1, "cropShape"    # Lcom/theartofdev/edmodo/cropper/CropImageView$CropShape;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 271
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mCropShape:Lcom/theartofdev/edmodo/cropper/CropImageView$CropShape;

    if-eq v0, p1, :cond_1

    .line 272
    iput-object p1, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mCropShape:Lcom/theartofdev/edmodo/cropper/CropImageView$CropShape;

    .line 273
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-gt v0, v1, :cond_0

    .line 274
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mCropShape:Lcom/theartofdev/edmodo/cropper/CropImageView$CropShape;

    sget-object v1, Lcom/theartofdev/edmodo/cropper/CropImageView$CropShape;->OVAL:Lcom/theartofdev/edmodo/cropper/CropImageView$CropShape;

    if-ne v0, v1, :cond_3

    .line 275
    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->getLayerType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mOriginalLayerType:Ljava/lang/Integer;

    .line 276
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mOriginalLayerType:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v3, :cond_2

    .line 278
    invoke-virtual {p0, v3, v2}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 288
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->invalidate()V

    .line 290
    :cond_1
    return-void

    .line 280
    :cond_2
    iput-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mOriginalLayerType:Ljava/lang/Integer;

    goto :goto_0

    .line 282
    :cond_3
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mOriginalLayerType:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mOriginalLayerType:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0, v2}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 285
    iput-object v2, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mOriginalLayerType:Ljava/lang/Integer;

    goto :goto_0
.end method

.method public setCropWindowChangeListener(Lcom/theartofdev/edmodo/cropper/CropOverlayView$CropWindowChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/theartofdev/edmodo/cropper/CropOverlayView$CropWindowChangeListener;

    .prologue
    .line 199
    iput-object p1, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mCropWindowChangeListener:Lcom/theartofdev/edmodo/cropper/CropOverlayView$CropWindowChangeListener;

    .line 200
    return-void
.end method

.method public setCropWindowLimits(FFFF)V
    .locals 1
    .param p1, "maxWidth"    # F
    .param p2, "maxHeight"    # F
    .param p3, "scaleFactorWidth"    # F
    .param p4, "scaleFactorHeight"    # F

    .prologue
    .line 426
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mCropWindowHandler:Lcom/theartofdev/edmodo/cropper/CropWindowHandler;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->setCropWindowLimits(FFFF)V

    .line 427
    return-void
.end method

.method public setCropWindowRect(Landroid/graphics/RectF;)V
    .locals 1
    .param p1, "rect"    # Landroid/graphics/RectF;

    .prologue
    .line 213
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mCropWindowHandler:Lcom/theartofdev/edmodo/cropper/CropWindowHandler;

    invoke-virtual {v0, p1}, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->setRect(Landroid/graphics/RectF;)V

    .line 214
    return-void
.end method

.method public setFixedAspectRatio(Z)V
    .locals 1
    .param p1, "fixAspectRatio"    # Z

    .prologue
    .line 322
    iget-boolean v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mFixAspectRatio:Z

    if-eq v0, p1, :cond_0

    .line 323
    iput-boolean p1, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mFixAspectRatio:Z

    .line 324
    iget-boolean v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->initializedCropWindow:Z

    if-eqz v0, :cond_0

    .line 325
    invoke-direct {p0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->initCropWindow()V

    .line 326
    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->invalidate()V

    .line 329
    :cond_0
    return-void
.end method

.method public setGuidelines(Lcom/theartofdev/edmodo/cropper/CropImageView$Guidelines;)V
    .locals 1
    .param p1, "guidelines"    # Lcom/theartofdev/edmodo/cropper/CropImageView$Guidelines;

    .prologue
    .line 303
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mGuidelines:Lcom/theartofdev/edmodo/cropper/CropImageView$Guidelines;

    if-eq v0, p1, :cond_0

    .line 304
    iput-object p1, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mGuidelines:Lcom/theartofdev/edmodo/cropper/CropImageView$Guidelines;

    .line 305
    iget-boolean v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->initializedCropWindow:Z

    if-eqz v0, :cond_0

    .line 306
    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->invalidate()V

    .line 309
    :cond_0
    return-void
.end method

.method public setInitialAttributeValues(Lcom/theartofdev/edmodo/cropper/CropImageOptions;)V
    .locals 2
    .param p1, "options"    # Lcom/theartofdev/edmodo/cropper/CropImageOptions;

    .prologue
    .line 465
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mCropWindowHandler:Lcom/theartofdev/edmodo/cropper/CropWindowHandler;

    invoke-virtual {v0, p1}, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->setInitialAttributeValues(Lcom/theartofdev/edmodo/cropper/CropImageOptions;)V

    .line 467
    iget-object v0, p1, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->cropShape:Lcom/theartofdev/edmodo/cropper/CropImageView$CropShape;

    invoke-virtual {p0, v0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->setCropShape(Lcom/theartofdev/edmodo/cropper/CropImageView$CropShape;)V

    .line 469
    iget v0, p1, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->snapRadius:F

    invoke-virtual {p0, v0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->setSnapRadius(F)V

    .line 471
    iget-object v0, p1, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->guidelines:Lcom/theartofdev/edmodo/cropper/CropImageView$Guidelines;

    invoke-virtual {p0, v0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->setGuidelines(Lcom/theartofdev/edmodo/cropper/CropImageView$Guidelines;)V

    .line 473
    iget-boolean v0, p1, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->fixAspectRatio:Z

    invoke-virtual {p0, v0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->setFixedAspectRatio(Z)V

    .line 475
    iget v0, p1, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->aspectRatioX:I

    invoke-virtual {p0, v0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->setAspectRatioX(I)V

    .line 477
    iget v0, p1, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->aspectRatioY:I

    invoke-virtual {p0, v0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->setAspectRatioY(I)V

    .line 479
    iget-boolean v0, p1, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->multiTouchEnabled:Z

    invoke-virtual {p0, v0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->setMultiTouchEnabled(Z)Z

    .line 481
    iget v0, p1, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->touchRadius:F

    iput v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mTouchRadius:F

    .line 483
    iget v0, p1, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->initialCropWindowPaddingRatio:F

    iput v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mInitialCropWindowPaddingRatio:F

    .line 485
    iget v0, p1, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->borderLineThickness:F

    iget v1, p1, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->borderLineColor:I

    invoke-static {v0, v1}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->getNewPaintOrNull(FI)Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mBorderPaint:Landroid/graphics/Paint;

    .line 487
    iget v0, p1, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->borderCornerOffset:F

    iput v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mBorderCornerOffset:F

    .line 488
    iget v0, p1, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->borderCornerLength:F

    iput v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mBorderCornerLength:F

    .line 489
    iget v0, p1, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->borderCornerThickness:F

    iget v1, p1, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->borderCornerColor:I

    invoke-static {v0, v1}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->getNewPaintOrNull(FI)Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mBorderCornerPaint:Landroid/graphics/Paint;

    .line 491
    iget v0, p1, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->guidelinesThickness:F

    iget v1, p1, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->guidelinesColor:I

    invoke-static {v0, v1}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->getNewPaintOrNull(FI)Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mGuidelinePaint:Landroid/graphics/Paint;

    .line 493
    iget v0, p1, Lcom/theartofdev/edmodo/cropper/CropImageOptions;->backgroundColor:I

    invoke-static {v0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->getNewPaint(I)Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mBackgroundPaint:Landroid/graphics/Paint;

    .line 494
    return-void
.end method

.method public setInitialCropWindowRect(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 440
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mInitialCropWindowRect:Landroid/graphics/Rect;

    if-eqz p1, :cond_1

    .end local p1    # "rect":Landroid/graphics/Rect;
    :goto_0
    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 441
    iget-boolean v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->initializedCropWindow:Z

    if-eqz v0, :cond_0

    .line 442
    invoke-direct {p0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->initCropWindow()V

    .line 443
    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->invalidate()V

    .line 444
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->callOnCropWindowChanged(Z)V

    .line 446
    :cond_0
    return-void

    .line 440
    .restart local p1    # "rect":Landroid/graphics/Rect;
    :cond_1
    sget-object p1, Lcom/theartofdev/edmodo/cropper/BitmapUtils;->EMPTY_RECT:Landroid/graphics/Rect;

    goto :goto_0
.end method

.method public setMaxCropResultSize(II)V
    .locals 1
    .param p1, "maxCropResultWidth"    # I
    .param p2, "maxCropResultHeight"    # I

    .prologue
    .line 418
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mCropWindowHandler:Lcom/theartofdev/edmodo/cropper/CropWindowHandler;

    invoke-virtual {v0, p1, p2}, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->setMaxCropResultSize(II)V

    .line 419
    return-void
.end method

.method public setMinCropResultSize(II)V
    .locals 1
    .param p1, "minCropResultWidth"    # I
    .param p2, "minCropResultHeight"    # I

    .prologue
    .line 410
    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mCropWindowHandler:Lcom/theartofdev/edmodo/cropper/CropWindowHandler;

    invoke-virtual {v0, p1, p2}, Lcom/theartofdev/edmodo/cropper/CropWindowHandler;->setMinCropResultSize(II)V

    .line 411
    return-void
.end method

.method public setMultiTouchEnabled(Z)Z
    .locals 4
    .param p1, "multiTouchEnabled"    # Z

    .prologue
    .line 395
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mMultiTouchEnabled:Z

    if-eq v0, p1, :cond_1

    .line 396
    iput-boolean p1, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mMultiTouchEnabled:Z

    .line 397
    iget-boolean v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mMultiTouchEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    if-nez v0, :cond_0

    .line 398
    new-instance v0, Landroid/view/ScaleGestureDetector;

    invoke-virtual {p0}, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/theartofdev/edmodo/cropper/CropOverlayView$ScaleListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/theartofdev/edmodo/cropper/CropOverlayView$ScaleListener;-><init>(Lcom/theartofdev/edmodo/cropper/CropOverlayView;Lcom/theartofdev/edmodo/cropper/CropOverlayView$1;)V

    invoke-direct {v0, v1, v2}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    .line 400
    :cond_0
    const/4 v0, 0x1

    .line 402
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSnapRadius(F)V
    .locals 0
    .param p1, "snapRadius"    # F

    .prologue
    .line 388
    iput p1, p0, Lcom/theartofdev/edmodo/cropper/CropOverlayView;->mSnapRadius:F

    .line 389
    return-void
.end method
