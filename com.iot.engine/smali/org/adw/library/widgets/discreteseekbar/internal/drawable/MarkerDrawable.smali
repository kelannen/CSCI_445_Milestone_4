.class public Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;
.super Lorg/adw/library/widgets/discreteseekbar/internal/drawable/StateDrawable;
.source "MarkerDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Animatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable$MarkerAnimationListener;
    }
.end annotation


# static fields
.field private static final ANIMATION_DURATION:I = 0xfa

.field private static final FRAME_DURATION:J = 0x10L


# instance fields
.field private mAnimationInitialValue:F

.field private mClosedStateSize:F

.field private mCurrentScale:F

.field private mDuration:I

.field private mEndColor:I

.field private mExternalOffset:I

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mMarkerListener:Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable$MarkerAnimationListener;

.field mMatrix:Landroid/graphics/Matrix;

.field mPath:Landroid/graphics/Path;

.field mRect:Landroid/graphics/RectF;

.field private mReverse:Z

.field private mRunning:Z

.field private mStartColor:I

.field private mStartTime:J

.field private final mUpdater:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/res/ColorStateList;I)V
    .locals 2
    .param p1, "tintList"    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "closedSize"    # I

    .prologue
    const/4 v1, 0x0

    .line 73
    invoke-direct {p0, p1}, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/StateDrawable;-><init>(Landroid/content/res/ColorStateList;)V

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;->mCurrentScale:F

    .line 53
    iput-boolean v1, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;->mReverse:Z

    .line 54
    iput-boolean v1, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;->mRunning:Z

    .line 55
    const/16 v0, 0xfa

    iput v0, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;->mDuration:I

    .line 67
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;->mPath:Landroid/graphics/Path;

    .line 68
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;->mRect:Landroid/graphics/RectF;

    .line 69
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;->mMatrix:Landroid/graphics/Matrix;

    .line 181
    new-instance v0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable$1;

    invoke-direct {v0, p0}, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable$1;-><init>(Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;)V

    iput-object v0, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;->mUpdater:Ljava/lang/Runnable;

    .line 74
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 75
    int-to-float v0, p2

    iput v0, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;->mClosedStateSize:F

    .line 76
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    iput v0, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;->mStartColor:I

    .line 77
    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    iput v0, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;->mEndColor:I

    .line 79
    return-void

    .line 76
    :array_0
    .array-data 4
        0x101009e
        0x10100a7
    .end array-data
.end method

.method static synthetic access$000(Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;)J
    .locals 2
    .param p0, "x0"    # Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;

    .prologue
    .line 46
    iget-wide v0, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;->mStartTime:J

    return-wide v0
.end method

.method static synthetic access$100(Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;)I
    .locals 1
    .param p0, "x0"    # Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;

    .prologue
    .line 46
    iget v0, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;->mDuration:I

    return v0
.end method

.method static synthetic access$200(Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;)Landroid/view/animation/Interpolator;
    .locals 1
    .param p0, "x0"    # Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;

    .prologue
    .line 46
    iget-object v0, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;->mInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$300(Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;

    .prologue
    .line 46
    iget-object v0, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;->mUpdater:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$400(Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;F)V
    .locals 0
    .param p0, "x0"    # Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;
    .param p1, "x1"    # F

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;->updateAnimation(F)V

    return-void
.end method

.method static synthetic access$502(Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;
    .param p1, "x1"    # Z

    .prologue
    .line 46
    iput-boolean p1, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;->mRunning:Z

    return p1
.end method

.method static synthetic access$600(Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;)V
    .locals 0
    .param p0, "x0"    # Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;

    .prologue
    .line 46
    invoke-direct {p0}, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;->notifyFinishedToListener()V

    return-void
.end method

.method private static blendColors(IIF)I
    .locals 9
    .param p0, "color1"    # I
    .param p1, "color2"    # I
    .param p2, "factor"    # F

    .prologue
    .line 231
    const/high16 v5, 0x3f800000    # 1.0f

    sub-float v3, v5, p2

    .line 232
    .local v3, "inverseFactor":F
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, p2

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v3

    add-float v0, v5, v6

    .line 233
    .local v0, "a":F
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, p2

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v3

    add-float v4, v5, v6

    .line 234
    .local v4, "r":F
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, p2

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v3

    add-float v2, v5, v6

    .line 235
    .local v2, "g":F
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, p2

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v3

    add-float v1, v5, v6

    .line 236
    .local v1, "b":F
    float-to-int v5, v0

    float-to-int v6, v4

    float-to-int v7, v2

    float-to-int v8, v1

    invoke-static {v5, v6, v7, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    return v5
.end method

.method private computePath(Landroid/graphics/Rect;)V
    .locals 21
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 117
    move-object/from16 v0, p0

    iget v6, v0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;->mCurrentScale:F

    .line 118
    .local v6, "currentScale":F
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;->mPath:Landroid/graphics/Path;

    .line 119
    .local v14, "path":Landroid/graphics/Path;
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;->mRect:Landroid/graphics/RectF;

    .line 120
    .local v15, "rect":Landroid/graphics/RectF;
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;->mMatrix:Landroid/graphics/Matrix;

    .line 122
    .local v13, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v14}, Landroid/graphics/Path;->reset()V

    .line 123
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v17

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v18

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->min(II)I

    move-result v16

    .line 125
    .local v16, "totalSize":I
    move-object/from16 v0, p0

    iget v11, v0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;->mClosedStateSize:F

    .line 126
    .local v11, "initial":F
    move/from16 v0, v16

    int-to-float v8, v0

    .line 127
    .local v8, "destination":F
    sub-float v17, v8, v11

    mul-float v17, v17, v6

    add-float v7, v11, v17

    .line 129
    .local v7, "currentSize":F
    const/high16 v17, 0x40000000    # 2.0f

    div-float v10, v7, v17

    .line 130
    .local v10, "halfSize":F
    const/high16 v17, 0x3f800000    # 1.0f

    sub-float v12, v17, v6

    .line 131
    .local v12, "inverseScale":F
    mul-float v4, v10, v12

    .line 132
    .local v4, "cornerSize":F
    const/16 v17, 0x8

    move/from16 v0, v17

    new-array v5, v0, [F

    const/16 v17, 0x0

    aput v10, v5, v17

    const/16 v17, 0x1

    aput v10, v5, v17

    const/16 v17, 0x2

    aput v10, v5, v17

    const/16 v17, 0x3

    aput v10, v5, v17

    const/16 v17, 0x4

    aput v10, v5, v17

    const/16 v17, 0x5

    aput v10, v5, v17

    const/16 v17, 0x6

    aput v4, v5, v17

    const/16 v17, 0x7

    aput v4, v5, v17

    .line 133
    .local v5, "corners":[F
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    add-float v19, v19, v7

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    add-float v20, v20, v7

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 134
    sget-object v17, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    move-object/from16 v0, v17

    invoke-virtual {v14, v15, v5, v0}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 135
    invoke-virtual {v13}, Landroid/graphics/Matrix;->reset()V

    .line 136
    const/high16 v17, -0x3dcc0000    # -45.0f

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    add-float v18, v18, v10

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    add-float v19, v19, v10

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v13, v0, v1, v2}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 137
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    sub-float v17, v17, v7

    const/high16 v18, 0x40000000    # 2.0f

    div-float v17, v17, v18

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v13, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 138
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    sub-float v17, v17, v7

    move-object/from16 v0, p0

    iget v0, v0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;->mExternalOffset:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    sub-float v17, v17, v18

    mul-float v9, v17, v12

    .line 139
    .local v9, "hDiff":F
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v13, v0, v9}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 140
    invoke-virtual {v14, v13}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 141
    return-void
.end method

.method private notifyFinishedToListener()V
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;->mMarkerListener:Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable$MarkerAnimationListener;

    if-eqz v0, :cond_0

    .line 207
    iget-boolean v0, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;->mReverse:Z

    if-eqz v0, :cond_1

    .line 208
    iget-object v0, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;->mMarkerListener:Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable$MarkerAnimationListener;

    invoke-interface {v0}, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable$MarkerAnimationListener;->onClosingComplete()V

    .line 213
    :cond_0
    :goto_0
    return-void

    .line 210
    :cond_1
    iget-object v0, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;->mMarkerListener:Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable$MarkerAnimationListener;

    invoke-interface {v0}, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable$MarkerAnimationListener;->onOpeningComplete()V

    goto :goto_0
.end method

.method private updateAnimation(F)V
    .locals 3
    .param p1, "factor"    # F

    .prologue
    .line 144
    iget v1, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;->mAnimationInitialValue:F

    .line 145
    .local v1, "initial":F
    iget-boolean v2, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;->mReverse:Z

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    .line 146
    .local v0, "destination":F
    :goto_0
    sub-float v2, v0, v1

    mul-float/2addr v2, p1

    add-float/2addr v2, v1

    iput v2, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;->mCurrentScale:F

    .line 147
    invoke-virtual {p0}, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;->computePath(Landroid/graphics/Rect;)V

    .line 148
    invoke-virtual {p0}, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;->invalidateSelf()V

    .line 149
    return-void

    .line 145
    .end local v0    # "destination":F
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0
.end method


# virtual methods
.method public animateToNormal()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 167
    iput-boolean v3, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;->mReverse:Z

    .line 168
    iget-object v1, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;->mUpdater:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 169
    iget v1, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;->mCurrentScale:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 170
    iput-boolean v3, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;->mRunning:Z

    .line 171
    iget v1, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;->mCurrentScale:F

    iput v1, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;->mAnimationInitialValue:F

    .line 172
    const/high16 v1, 0x3f800000    # 1.0f

    iget v2, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;->mCurrentScale:F

    sub-float v0, v1, v2

    .line 173
    .local v0, "durationFactor":F
    const/high16 v1, 0x437a0000    # 250.0f

    mul-float/2addr v1, v0

    float-to-int v1, v1

    rsub-int v1, v1, 0xfa

    iput v1, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;->mDuration:I

    .line 174
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;->mStartTime:J

    .line 175
    iget-object v1, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;->mUpdater:Ljava/lang/Runnable;

    iget-wide v2, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;->mStartTime:J

    const-wide/16 v4, 0x10

    add-long/2addr v2, v4

    invoke-virtual {p0, v1, v2, v3}, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 179
    .end local v0    # "durationFactor":F
    :goto_0
    return-void

    .line 177
    :cond_0
    invoke-direct {p0}, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;->notifyFinishedToListener()V

    goto :goto_0
.end method

.method public animateToPressed()V
    .locals 6

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 152
    iget-object v1, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;->mUpdater:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 153
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;->mReverse:Z

    .line 154
    iget v1, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;->mCurrentScale:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 155
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;->mRunning:Z

    .line 156
    iget v1, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;->mCurrentScale:F

    iput v1, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;->mAnimationInitialValue:F

    .line 157
    iget v1, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;->mCurrentScale:F

    sub-float v0, v2, v1

    .line 158
    .local v0, "durationFactor":F
    const/high16 v1, 0x437a0000    # 250.0f

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;->mDuration:I

    .line 159
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;->mStartTime:J

    .line 160
    iget-object v1, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;->mUpdater:Ljava/lang/Runnable;

    iget-wide v2, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;->mStartTime:J

    const-wide/16 v4, 0x10

    add-long/2addr v2, v4

    invoke-virtual {p0, v1, v2, v3}, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 164
    .end local v0    # "durationFactor":F
    :goto_0
    return-void

    .line 162
    :cond_0
    invoke-direct {p0}, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;->notifyFinishedToListener()V

    goto :goto_0
.end method

.method doDraw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 98
    iget-object v1, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;->mPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 99
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 100
    iget v1, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;->mStartColor:I

    iget v2, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;->mEndColor:I

    iget v3, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;->mCurrentScale:F

    invoke-static {v1, v2, v3}, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;->blendColors(IIF)I

    move-result v0

    .line 101
    .local v0, "color":I
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 102
    iget-object v1, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;->mPath:Landroid/graphics/Path;

    invoke-virtual {p1, v1, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 104
    .end local v0    # "color":I
    :cond_0
    return-void
.end method

.method public getPath()Landroid/graphics/Path;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;->mPath:Landroid/graphics/Path;

    return-object v0
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 227
    iget-boolean v0, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;->mRunning:Z

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 112
    invoke-super {p0, p1}, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/StateDrawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 113
    invoke-direct {p0, p1}, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;->computePath(Landroid/graphics/Rect;)V

    .line 114
    return-void
.end method

.method public setColors(II)V
    .locals 0
    .param p1, "startColor"    # I
    .param p2, "endColor"    # I

    .prologue
    .line 92
    iput p1, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;->mStartColor:I

    .line 93
    iput p2, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;->mEndColor:I

    .line 94
    return-void
.end method

.method public setExternalOffset(I)V
    .locals 0
    .param p1, "offset"    # I

    .prologue
    .line 82
    iput p1, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;->mExternalOffset:I

    .line 83
    return-void
.end method

.method public setMarkerListener(Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable$MarkerAnimationListener;)V
    .locals 0
    .param p1, "listener"    # Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable$MarkerAnimationListener;

    .prologue
    .line 202
    iput-object p1, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;->mMarkerListener:Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable$MarkerAnimationListener;

    .line 203
    return-void
.end method

.method public start()V
    .locals 0

    .prologue
    .line 218
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;->mUpdater:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 223
    return-void
.end method
