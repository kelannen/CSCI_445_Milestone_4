.class public Lorg/adw/library/widgets/discreteseekbar/internal/drawable/AlmostRippleDrawable;
.super Lorg/adw/library/widgets/discreteseekbar/internal/drawable/StateDrawable;
.source "AlmostRippleDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Animatable;


# static fields
.field private static final ACTIVE_SCALE:F = 1.0f

.field private static final ANIMATION_DURATION:I = 0xfa

.field private static final FRAME_DURATION:J = 0x10L

.field private static final INACTIVE_SCALE:F


# instance fields
.field private mAnimationInitialValue:F

.field private mCurrentScale:F

.field private mDisabledColor:I

.field private mDuration:I

.field private mFocusedColor:I

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mPressedColor:I

.field private mReverse:Z

.field private mRippleBgColor:I

.field private mRippleColor:I

.field private mRunning:Z

.field private mStartTime:J

.field private final mUpdater:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/res/ColorStateList;)V
    .locals 2
    .param p1, "tintStateList"    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 51
    invoke-direct {p0, p1}, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/StateDrawable;-><init>(Landroid/content/res/ColorStateList;)V

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/AlmostRippleDrawable;->mCurrentScale:F

    .line 39
    iput-boolean v1, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/AlmostRippleDrawable;->mReverse:Z

    .line 40
    iput-boolean v1, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/AlmostRippleDrawable;->mRunning:Z

    .line 41
    const/16 v0, 0xfa

    iput v0, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/AlmostRippleDrawable;->mDuration:I

    .line 187
    new-instance v0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/AlmostRippleDrawable$1;

    invoke-direct {v0, p0}, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/AlmostRippleDrawable$1;-><init>(Lorg/adw/library/widgets/discreteseekbar/internal/drawable/AlmostRippleDrawable;)V

    iput-object v0, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/AlmostRippleDrawable;->mUpdater:Ljava/lang/Runnable;

    .line 52
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/AlmostRippleDrawable;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 53
    invoke-virtual {p0, p1}, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/AlmostRippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    .line 54
    return-void
.end method

.method static synthetic access$000(Lorg/adw/library/widgets/discreteseekbar/internal/drawable/AlmostRippleDrawable;)J
    .locals 2
    .param p0, "x0"    # Lorg/adw/library/widgets/discreteseekbar/internal/drawable/AlmostRippleDrawable;

    .prologue
    .line 30
    iget-wide v0, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/AlmostRippleDrawable;->mStartTime:J

    return-wide v0
.end method

.method static synthetic access$100(Lorg/adw/library/widgets/discreteseekbar/internal/drawable/AlmostRippleDrawable;)I
    .locals 1
    .param p0, "x0"    # Lorg/adw/library/widgets/discreteseekbar/internal/drawable/AlmostRippleDrawable;

    .prologue
    .line 30
    iget v0, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/AlmostRippleDrawable;->mDuration:I

    return v0
.end method

.method static synthetic access$200(Lorg/adw/library/widgets/discreteseekbar/internal/drawable/AlmostRippleDrawable;)Landroid/view/animation/Interpolator;
    .locals 1
    .param p0, "x0"    # Lorg/adw/library/widgets/discreteseekbar/internal/drawable/AlmostRippleDrawable;

    .prologue
    .line 30
    iget-object v0, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/AlmostRippleDrawable;->mInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$300(Lorg/adw/library/widgets/discreteseekbar/internal/drawable/AlmostRippleDrawable;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lorg/adw/library/widgets/discreteseekbar/internal/drawable/AlmostRippleDrawable;

    .prologue
    .line 30
    iget-object v0, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/AlmostRippleDrawable;->mUpdater:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$400(Lorg/adw/library/widgets/discreteseekbar/internal/drawable/AlmostRippleDrawable;F)V
    .locals 0
    .param p0, "x0"    # Lorg/adw/library/widgets/discreteseekbar/internal/drawable/AlmostRippleDrawable;
    .param p1, "x1"    # F

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/AlmostRippleDrawable;->updateAnimation(F)V

    return-void
.end method

.method static synthetic access$502(Lorg/adw/library/widgets/discreteseekbar/internal/drawable/AlmostRippleDrawable;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/adw/library/widgets/discreteseekbar/internal/drawable/AlmostRippleDrawable;
    .param p1, "x1"    # Z

    .prologue
    .line 30
    iput-boolean p1, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/AlmostRippleDrawable;->mRunning:Z

    return p1
.end method

.method private decreasedAlpha(I)I
    .locals 2
    .param p1, "alpha"    # I

    .prologue
    .line 99
    const/16 v0, 0x64

    .line 100
    .local v0, "scale":I
    mul-int v1, p1, v0

    shr-int/lit8 v1, v1, 0x8

    return v1
.end method

.method private static getModulatedAlphaColor(II)I
    .locals 5
    .param p0, "alphaValue"    # I
    .param p1, "originalColor"    # I

    .prologue
    .line 69
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    .line 70
    .local v0, "alpha":I
    shr-int/lit8 v2, p0, 0x7

    add-int v1, p0, v2

    .line 71
    .local v1, "scale":I
    mul-int v2, v0, v1

    shr-int/lit8 v0, v2, 0x8

    .line 72
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v2

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v3

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    invoke-static {v0, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    return v2
.end method

.method private updateAnimation(F)V
    .locals 3
    .param p1, "factor"    # F

    .prologue
    .line 181
    iget v1, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/AlmostRippleDrawable;->mAnimationInitialValue:F

    .line 182
    .local v1, "initial":F
    iget-boolean v2, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/AlmostRippleDrawable;->mReverse:Z

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    .line 183
    .local v0, "destination":F
    :goto_0
    sub-float v2, v0, v1

    mul-float/2addr v2, p1

    add-float/2addr v2, v1

    iput v2, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/AlmostRippleDrawable;->mCurrentScale:F

    .line 184
    invoke-virtual {p0}, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/AlmostRippleDrawable;->invalidateSelf()V

    .line 185
    return-void

    .line 182
    .end local v0    # "destination":F
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0
.end method


# virtual methods
.method public animateToNormal()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    .line 168
    iget-object v1, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/AlmostRippleDrawable;->mUpdater:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/AlmostRippleDrawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 169
    iget v1, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/AlmostRippleDrawable;->mCurrentScale:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 170
    iput-boolean v4, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/AlmostRippleDrawable;->mReverse:Z

    .line 171
    iput-boolean v4, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/AlmostRippleDrawable;->mRunning:Z

    .line 172
    iget v1, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/AlmostRippleDrawable;->mCurrentScale:F

    iput v1, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/AlmostRippleDrawable;->mAnimationInitialValue:F

    .line 173
    iget v1, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/AlmostRippleDrawable;->mAnimationInitialValue:F

    sub-float/2addr v1, v3

    const/high16 v2, -0x40800000    # -1.0f

    div-float/2addr v1, v2

    sub-float v0, v3, v1

    .line 174
    .local v0, "durationFactor":F
    const/high16 v1, 0x437a0000    # 250.0f

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/AlmostRippleDrawable;->mDuration:I

    .line 175
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/AlmostRippleDrawable;->mStartTime:J

    .line 176
    iget-object v1, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/AlmostRippleDrawable;->mUpdater:Ljava/lang/Runnable;

    iget-wide v2, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/AlmostRippleDrawable;->mStartTime:J

    const-wide/16 v4, 0x10

    add-long/2addr v2, v4

    invoke-virtual {p0, v1, v2, v3}, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/AlmostRippleDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 178
    .end local v0    # "durationFactor":F
    :cond_0
    return-void
.end method

.method public animateToPressed()V
    .locals 6

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    .line 155
    iget-object v1, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/AlmostRippleDrawable;->mUpdater:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/AlmostRippleDrawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 156
    iget v1, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/AlmostRippleDrawable;->mCurrentScale:F

    cmpg-float v1, v1, v3

    if-gez v1, :cond_0

    .line 157
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/AlmostRippleDrawable;->mReverse:Z

    .line 158
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/AlmostRippleDrawable;->mRunning:Z

    .line 159
    iget v1, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/AlmostRippleDrawable;->mCurrentScale:F

    iput v1, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/AlmostRippleDrawable;->mAnimationInitialValue:F

    .line 160
    iget v1, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/AlmostRippleDrawable;->mAnimationInitialValue:F

    const/4 v2, 0x0

    sub-float/2addr v1, v2

    div-float/2addr v1, v3

    sub-float v0, v3, v1

    .line 161
    .local v0, "durationFactor":F
    const/high16 v1, 0x437a0000    # 250.0f

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/AlmostRippleDrawable;->mDuration:I

    .line 162
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/AlmostRippleDrawable;->mStartTime:J

    .line 163
    iget-object v1, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/AlmostRippleDrawable;->mUpdater:Ljava/lang/Runnable;

    iget-wide v2, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/AlmostRippleDrawable;->mStartTime:J

    const-wide/16 v4, 0x10

    add-long/2addr v2, v4

    invoke-virtual {p0, v1, v2, v3}, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/AlmostRippleDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 165
    .end local v0    # "durationFactor":F
    :cond_0
    return-void
.end method

.method public doDraw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 77
    invoke-virtual {p0}, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/AlmostRippleDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 78
    .local v1, "bounds":Landroid/graphics/Rect;
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v7

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 79
    .local v6, "size":I
    iget v5, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/AlmostRippleDrawable;->mCurrentScale:F

    .line 80
    .local v5, "scale":F
    iget v4, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/AlmostRippleDrawable;->mRippleColor:I

    .line 81
    .local v4, "rippleColor":I
    iget v0, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/AlmostRippleDrawable;->mRippleBgColor:I

    .line 82
    .local v0, "bgColor":I
    div-int/lit8 v7, v6, 0x2

    int-to-float v2, v7

    .line 83
    .local v2, "radius":F
    mul-float v3, v2, v5

    .line 84
    .local v3, "radiusAnimated":F
    const/4 v7, 0x0

    cmpl-float v7, v5, v7

    if-lez v7, :cond_1

    .line 85
    if-eqz v0, :cond_0

    .line 86
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 87
    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v7

    invoke-direct {p0, v7}, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/AlmostRippleDrawable;->decreasedAlpha(I)I

    move-result v7

    invoke-virtual {p2, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 88
    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {p1, v7, v8, v2, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 90
    :cond_0
    if-eqz v4, :cond_1

    .line 91
    invoke-virtual {p2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 92
    invoke-static {v4}, Landroid/graphics/Color;->alpha(I)I

    move-result v7

    invoke-virtual {p0, v7}, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/AlmostRippleDrawable;->modulateAlpha(I)I

    move-result v7

    invoke-virtual {p2, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 93
    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {p1, v7, v8, v3, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 96
    :cond_1
    return-void
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 218
    iget-boolean v0, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/AlmostRippleDrawable;->mRunning:Z

    return v0
.end method

.method public setColor(Landroid/content/res/ColorStateList;)V
    .locals 5
    .param p1, "tintStateList"    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x2

    const/16 v4, 0x82

    .line 57
    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    .line 58
    .local v0, "defaultColor":I
    new-array v1, v2, [I

    fill-array-data v1, :array_0

    invoke-virtual {p1, v1, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    iput v1, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/AlmostRippleDrawable;->mFocusedColor:I

    .line 59
    new-array v1, v2, [I

    fill-array-data v1, :array_1

    invoke-virtual {p1, v1, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    iput v1, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/AlmostRippleDrawable;->mPressedColor:I

    .line 60
    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const v3, -0x101009e

    aput v3, v1, v2

    invoke-virtual {p1, v1, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    iput v1, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/AlmostRippleDrawable;->mDisabledColor:I

    .line 63
    iget v1, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/AlmostRippleDrawable;->mFocusedColor:I

    invoke-static {v4, v1}, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/AlmostRippleDrawable;->getModulatedAlphaColor(II)I

    move-result v1

    iput v1, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/AlmostRippleDrawable;->mFocusedColor:I

    .line 64
    iget v1, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/AlmostRippleDrawable;->mPressedColor:I

    invoke-static {v4, v1}, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/AlmostRippleDrawable;->getModulatedAlphaColor(II)I

    move-result v1

    iput v1, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/AlmostRippleDrawable;->mPressedColor:I

    .line 65
    iget v1, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/AlmostRippleDrawable;->mDisabledColor:I

    invoke-static {v4, v1}, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/AlmostRippleDrawable;->getModulatedAlphaColor(II)I

    move-result v1

    iput v1, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/AlmostRippleDrawable;->mDisabledColor:I

    .line 66
    return-void

    .line 58
    nop

    :array_0
    .array-data 4
        0x101009e
        0x101009c
    .end array-data

    .line 59
    :array_1
    .array-data 4
        0x101009e
        0x10100a7
    .end array-data
.end method

.method public setState([I)Z
    .locals 12
    .param p1, "stateSet"    # [I

    .prologue
    const v11, 0x10100a7

    const/4 v10, 0x0

    .line 105
    invoke-virtual {p0}, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/AlmostRippleDrawable;->getState()[I

    move-result-object v7

    .line 106
    .local v7, "oldState":[I
    const/4 v6, 0x0

    .line 107
    .local v6, "oldPressed":Z
    move-object v0, v7

    .local v0, "arr$":[I
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_1

    aget v3, v0, v4

    .line 108
    .local v3, "i":I
    if-ne v3, v11, :cond_0

    .line 109
    const/4 v6, 0x1

    .line 107
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 112
    .end local v3    # "i":I
    :cond_1
    invoke-super {p0, p1}, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/StateDrawable;->setState([I)Z

    .line 113
    const/4 v2, 0x0

    .line 114
    .local v2, "focused":Z
    const/4 v8, 0x0

    .line 115
    .local v8, "pressed":Z
    const/4 v1, 0x1

    .line 116
    .local v1, "disabled":Z
    move-object v0, p1

    array-length v5, v0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v5, :cond_5

    aget v3, v0, v4

    .line 117
    .restart local v3    # "i":I
    const v9, 0x101009c

    if-ne v3, v9, :cond_3

    .line 118
    const/4 v2, 0x1

    .line 116
    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 119
    :cond_3
    if-ne v3, v11, :cond_4

    .line 120
    const/4 v8, 0x1

    goto :goto_2

    .line 121
    :cond_4
    const v9, 0x101009e

    if-ne v3, v9, :cond_2

    .line 122
    const/4 v1, 0x0

    goto :goto_2

    .line 126
    .end local v3    # "i":I
    :cond_5
    if-eqz v1, :cond_6

    .line 127
    iget-object v9, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/AlmostRippleDrawable;->mUpdater:Ljava/lang/Runnable;

    invoke-virtual {p0, v9}, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/AlmostRippleDrawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 128
    iget v9, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/AlmostRippleDrawable;->mDisabledColor:I

    iput v9, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/AlmostRippleDrawable;->mRippleColor:I

    .line 129
    iput v10, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/AlmostRippleDrawable;->mRippleBgColor:I

    .line 130
    const/high16 v9, 0x3f000000    # 0.5f

    iput v9, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/AlmostRippleDrawable;->mCurrentScale:F

    .line 131
    invoke-virtual {p0}, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/AlmostRippleDrawable;->invalidateSelf()V

    .line 151
    :goto_3
    const/4 v9, 0x1

    return v9

    .line 133
    :cond_6
    if-eqz v8, :cond_7

    .line 134
    invoke-virtual {p0}, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/AlmostRippleDrawable;->animateToPressed()V

    .line 135
    iget v9, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/AlmostRippleDrawable;->mPressedColor:I

    iput v9, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/AlmostRippleDrawable;->mRippleBgColor:I

    iput v9, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/AlmostRippleDrawable;->mRippleColor:I

    goto :goto_3

    .line 136
    :cond_7
    if-eqz v6, :cond_8

    .line 137
    iget v9, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/AlmostRippleDrawable;->mPressedColor:I

    iput v9, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/AlmostRippleDrawable;->mRippleBgColor:I

    iput v9, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/AlmostRippleDrawable;->mRippleColor:I

    .line 138
    invoke-virtual {p0}, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/AlmostRippleDrawable;->animateToNormal()V

    goto :goto_3

    .line 139
    :cond_8
    if-eqz v2, :cond_9

    .line 140
    iget v9, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/AlmostRippleDrawable;->mFocusedColor:I

    iput v9, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/AlmostRippleDrawable;->mRippleColor:I

    .line 141
    iput v10, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/AlmostRippleDrawable;->mRippleBgColor:I

    .line 142
    const/high16 v9, 0x3f800000    # 1.0f

    iput v9, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/AlmostRippleDrawable;->mCurrentScale:F

    .line 143
    invoke-virtual {p0}, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/AlmostRippleDrawable;->invalidateSelf()V

    goto :goto_3

    .line 145
    :cond_9
    iput v10, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/AlmostRippleDrawable;->mRippleColor:I

    .line 146
    iput v10, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/AlmostRippleDrawable;->mRippleBgColor:I

    .line 147
    const/4 v9, 0x0

    iput v9, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/AlmostRippleDrawable;->mCurrentScale:F

    .line 148
    invoke-virtual {p0}, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/AlmostRippleDrawable;->invalidateSelf()V

    goto :goto_3
.end method

.method public start()V
    .locals 0

    .prologue
    .line 209
    return-void
.end method

.method public stop()V
    .locals 0

    .prologue
    .line 214
    return-void
.end method
