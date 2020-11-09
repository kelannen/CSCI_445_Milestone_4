.class public Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;
.super Landroid/view/View;
.source "DiscreteSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$CustomState;,
        Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$DefaultNumericTransformer;,
        Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$NumericTransformer;,
        Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$OnProgressChangeListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_FORMATTER:Ljava/lang/String; = "%d"

.field private static final DEFAULT_THUMB_COLOR:I = -0xff6978

.field private static final FOCUSED_STATE:I = 0x101009c

.field private static final INDICATOR_DELAY_FOR_TAPS:I = 0x96

.field private static final PRESSED_STATE:I = 0x10100a7

.field private static final PROGRESS_ANIMATION_DURATION:I = 0xfa

.field private static final SEPARATION_DP:I = 0x5

.field private static final isLollipopOrGreater:Z


# instance fields
.field private mAddedTouchBounds:I

.field private mAllowTrackClick:Z

.field private mAnimationPosition:F

.field private mAnimationTarget:I

.field private mDownX:F

.field private mDragOffset:I

.field private mFloaterListener:Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable$MarkerAnimationListener;

.field private mFormatBuilder:Ljava/lang/StringBuilder;

.field mFormatter:Ljava/util/Formatter;

.field private mIndicator:Lorg/adw/library/widgets/discreteseekbar/internal/PopupIndicator;

.field private mIndicatorFormatter:Ljava/lang/String;

.field private mIndicatorPopupEnabled:Z

.field private mInvalidateRect:Landroid/graphics/Rect;

.field private mIsDragging:Z

.field private mKeyProgressIncrement:I

.field private mMax:I

.field private mMin:I

.field private mMirrorForRtl:Z

.field private mNumericTransformer:Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$NumericTransformer;

.field private mPositionAnimator:Lorg/adw/library/widgets/discreteseekbar/internal/compat/AnimatorCompat;

.field private mPublicChangeListener:Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$OnProgressChangeListener;

.field private mRipple:Landroid/graphics/drawable/Drawable;

.field private mScrubber:Lorg/adw/library/widgets/discreteseekbar/internal/drawable/TrackRectDrawable;

.field private mScrubberHeight:I

.field private mShowIndicatorRunnable:Ljava/lang/Runnable;

.field private mTempRect:Landroid/graphics/Rect;

.field private mThumb:Lorg/adw/library/widgets/discreteseekbar/internal/drawable/ThumbDrawable;

.field private mTouchSlop:F

.field private mTrack:Lorg/adw/library/widgets/discreteseekbar/internal/drawable/TrackRectDrawable;

.field private mTrackHeight:I

.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 124
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->isLollipopOrGreater:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 169
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 170
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 173
    sget v0, Lorg/adw/library/widgets/discreteseekbar/R$attr;->discreteSeekBarStyle:I

    invoke-direct {p0, p1, p2, v0}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 174
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 26
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 177
    invoke-direct/range {p0 .. p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 146
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mKeyProgressIncrement:I

    .line 147
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mMirrorForRtl:Z

    .line 148
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mAllowTrackClick:Z

    .line 149
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mIndicatorPopupEnabled:Z

    .line 159
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mInvalidateRect:Landroid/graphics/Rect;

    .line 160
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mTempRect:Landroid/graphics/Rect;

    .line 961
    new-instance v3, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$2;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$2;-><init>(Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mShowIndicatorRunnable:Ljava/lang/Runnable;

    .line 984
    new-instance v3, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$3;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$3;-><init>(Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mFloaterListener:Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable$MarkerAnimationListener;

    .line 178
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->setFocusable(Z)V

    .line 179
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->setWillNotDraw(Z)V

    .line 181
    invoke-static/range {p1 .. p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    int-to-float v3, v3

    move-object/from16 v0, p0

    iput v3, v0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mTouchSlop:F

    .line 182
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v11, v3, Landroid/util/DisplayMetrics;->density:F

    .line 184
    .local v11, "density":F
    sget-object v3, Lorg/adw/library/widgets/discreteseekbar/R$styleable;->DiscreteSeekBar:[I

    sget v4, Lorg/adw/library/widgets/discreteseekbar/R$style;->Widget_DiscreteSeekBar:I

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v10

    .line 187
    .local v10, "a":Landroid/content/res/TypedArray;
    const/16 v16, 0x64

    .line 188
    .local v16, "max":I
    const/16 v17, 0x0

    .line 189
    .local v17, "min":I
    const/16 v25, 0x0

    .line 190
    .local v25, "value":I
    sget v3, Lorg/adw/library/widgets/discreteseekbar/R$styleable;->DiscreteSeekBar_dsb_mirrorForRtl:I

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mMirrorForRtl:Z

    invoke-virtual {v10, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mMirrorForRtl:Z

    .line 191
    sget v3, Lorg/adw/library/widgets/discreteseekbar/R$styleable;->DiscreteSeekBar_dsb_allowTrackClickToDrag:I

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mAllowTrackClick:Z

    invoke-virtual {v10, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mAllowTrackClick:Z

    .line 192
    sget v3, Lorg/adw/library/widgets/discreteseekbar/R$styleable;->DiscreteSeekBar_dsb_indicatorPopupEnabled:I

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mIndicatorPopupEnabled:Z

    invoke-virtual {v10, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mIndicatorPopupEnabled:Z

    .line 193
    sget v3, Lorg/adw/library/widgets/discreteseekbar/R$styleable;->DiscreteSeekBar_dsb_trackHeight:I

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float/2addr v4, v11

    float-to-int v4, v4

    invoke-virtual {v10, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mTrackHeight:I

    .line 194
    sget v3, Lorg/adw/library/widgets/discreteseekbar/R$styleable;->DiscreteSeekBar_dsb_scrubberHeight:I

    const/high16 v4, 0x40800000    # 4.0f

    mul-float/2addr v4, v11

    float-to-int v4, v4

    invoke-virtual {v10, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mScrubberHeight:I

    .line 195
    sget v3, Lorg/adw/library/widgets/discreteseekbar/R$styleable;->DiscreteSeekBar_dsb_thumbSize:I

    const/high16 v4, 0x41400000    # 12.0f

    mul-float/2addr v4, v11

    float-to-int v4, v4

    invoke-virtual {v10, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    .line 196
    .local v8, "thumbSize":I
    sget v3, Lorg/adw/library/widgets/discreteseekbar/R$styleable;->DiscreteSeekBar_dsb_indicatorSeparation:I

    const/high16 v4, 0x40a00000    # 5.0f

    mul-float/2addr v4, v11

    float-to-int v4, v4

    invoke-virtual {v10, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v21

    .line 200
    .local v21, "separation":I
    const/high16 v3, 0x42000000    # 32.0f

    mul-float/2addr v3, v11

    float-to-int v0, v3

    move/from16 v23, v0

    .line 201
    .local v23, "touchBounds":I
    const/4 v3, 0x0

    sub-int v4, v23, v8

    div-int/lit8 v4, v4, 0x2

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mAddedTouchBounds:I

    .line 203
    sget v13, Lorg/adw/library/widgets/discreteseekbar/R$styleable;->DiscreteSeekBar_dsb_max:I

    .line 204
    .local v13, "indexMax":I
    sget v14, Lorg/adw/library/widgets/discreteseekbar/R$styleable;->DiscreteSeekBar_dsb_min:I

    .line 205
    .local v14, "indexMin":I
    sget v15, Lorg/adw/library/widgets/discreteseekbar/R$styleable;->DiscreteSeekBar_dsb_value:I

    .line 206
    .local v15, "indexValue":I
    new-instance v18, Landroid/util/TypedValue;

    invoke-direct/range {v18 .. v18}, Landroid/util/TypedValue;-><init>()V

    .line 208
    .local v18, "out":Landroid/util/TypedValue;
    move-object/from16 v0, v18

    invoke-virtual {v10, v13, v0}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 209
    move-object/from16 v0, v18

    iget v3, v0, Landroid/util/TypedValue;->type:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_a

    .line 210
    move/from16 v0, v16

    invoke-virtual {v10, v13, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v16

    .line 215
    :cond_0
    :goto_0
    move-object/from16 v0, v18

    invoke-virtual {v10, v14, v0}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 216
    move-object/from16 v0, v18

    iget v3, v0, Landroid/util/TypedValue;->type:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_b

    .line 217
    move/from16 v0, v17

    invoke-virtual {v10, v14, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v17

    .line 222
    :cond_1
    :goto_1
    move-object/from16 v0, v18

    invoke-virtual {v10, v15, v0}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 223
    move-object/from16 v0, v18

    iget v3, v0, Landroid/util/TypedValue;->type:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_c

    .line 224
    move/from16 v0, v25

    invoke-virtual {v10, v15, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v25

    .line 230
    :cond_2
    :goto_2
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mMin:I

    .line 231
    add-int/lit8 v3, v17, 0x1

    move/from16 v0, v16

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mMax:I

    .line 232
    move/from16 v0, v16

    move/from16 v1, v25

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    move/from16 v0, v17

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mValue:I

    .line 233
    invoke-direct/range {p0 .. p0}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->updateKeyboardRange()V

    .line 235
    sget v3, Lorg/adw/library/widgets/discreteseekbar/R$styleable;->DiscreteSeekBar_dsb_indicatorFormatter:I

    invoke-virtual {v10, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mIndicatorFormatter:Ljava/lang/String;

    .line 237
    sget v3, Lorg/adw/library/widgets/discreteseekbar/R$styleable;->DiscreteSeekBar_dsb_trackColor:I

    invoke-virtual {v10, v3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v24

    .line 238
    .local v24, "trackColor":Landroid/content/res/ColorStateList;
    sget v3, Lorg/adw/library/widgets/discreteseekbar/R$styleable;->DiscreteSeekBar_dsb_progressColor:I

    invoke-virtual {v10, v3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v19

    .line 239
    .local v19, "progressColor":Landroid/content/res/ColorStateList;
    sget v3, Lorg/adw/library/widgets/discreteseekbar/R$styleable;->DiscreteSeekBar_dsb_rippleColor:I

    invoke-virtual {v10, v3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v20

    .line 240
    .local v20, "rippleColor":Landroid/content/res/ColorStateList;
    invoke-virtual/range {p0 .. p0}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->isInEditMode()Z

    move-result v12

    .line 241
    .local v12, "editMode":Z
    if-nez v12, :cond_3

    if-nez v20, :cond_4

    .line 242
    :cond_3
    new-instance v20, Landroid/content/res/ColorStateList;

    .end local v20    # "rippleColor":Landroid/content/res/ColorStateList;
    const/4 v3, 0x1

    new-array v3, v3, [[I

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-array v5, v5, [I

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [I

    const/4 v5, 0x0

    const v6, -0xbbbbbc

    aput v6, v4, v5

    move-object/from16 v0, v20

    invoke-direct {v0, v3, v4}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 244
    .restart local v20    # "rippleColor":Landroid/content/res/ColorStateList;
    :cond_4
    if-nez v12, :cond_5

    if-nez v24, :cond_6

    .line 245
    :cond_5
    new-instance v24, Landroid/content/res/ColorStateList;

    .end local v24    # "trackColor":Landroid/content/res/ColorStateList;
    const/4 v3, 0x1

    new-array v3, v3, [[I

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-array v5, v5, [I

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [I

    const/4 v5, 0x0

    const v6, -0x777778

    aput v6, v4, v5

    move-object/from16 v0, v24

    invoke-direct {v0, v3, v4}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 247
    .restart local v24    # "trackColor":Landroid/content/res/ColorStateList;
    :cond_6
    if-nez v12, :cond_7

    if-nez v19, :cond_8

    .line 248
    :cond_7
    new-instance v19, Landroid/content/res/ColorStateList;

    .end local v19    # "progressColor":Landroid/content/res/ColorStateList;
    const/4 v3, 0x1

    new-array v3, v3, [[I

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-array v5, v5, [I

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [I

    const/4 v5, 0x0

    const v6, -0xff6978

    aput v6, v4, v5

    move-object/from16 v0, v19

    invoke-direct {v0, v3, v4}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 251
    .restart local v19    # "progressColor":Landroid/content/res/ColorStateList;
    :cond_8
    invoke-static/range {v20 .. v20}, Lorg/adw/library/widgets/discreteseekbar/internal/compat/SeekBarCompat;->getRipple(Landroid/content/res/ColorStateList;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mRipple:Landroid/graphics/drawable/Drawable;

    .line 252
    sget-boolean v3, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->isLollipopOrGreater:Z

    if-eqz v3, :cond_d

    .line 253
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mRipple:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lorg/adw/library/widgets/discreteseekbar/internal/compat/SeekBarCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 258
    :goto_3
    new-instance v22, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/TrackRectDrawable;

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/TrackRectDrawable;-><init>(Landroid/content/res/ColorStateList;)V

    .line 259
    .local v22, "shapeDrawable":Lorg/adw/library/widgets/discreteseekbar/internal/drawable/TrackRectDrawable;
    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mTrack:Lorg/adw/library/widgets/discreteseekbar/internal/drawable/TrackRectDrawable;

    .line 260
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mTrack:Lorg/adw/library/widgets/discreteseekbar/internal/drawable/TrackRectDrawable;

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/TrackRectDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 262
    new-instance v22, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/TrackRectDrawable;

    .end local v22    # "shapeDrawable":Lorg/adw/library/widgets/discreteseekbar/internal/drawable/TrackRectDrawable;
    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/TrackRectDrawable;-><init>(Landroid/content/res/ColorStateList;)V

    .line 263
    .restart local v22    # "shapeDrawable":Lorg/adw/library/widgets/discreteseekbar/internal/drawable/TrackRectDrawable;
    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mScrubber:Lorg/adw/library/widgets/discreteseekbar/internal/drawable/TrackRectDrawable;

    .line 264
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mScrubber:Lorg/adw/library/widgets/discreteseekbar/internal/drawable/TrackRectDrawable;

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/TrackRectDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 266
    new-instance v3, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/ThumbDrawable;

    move-object/from16 v0, v19

    invoke-direct {v3, v0, v8}, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/ThumbDrawable;-><init>(Landroid/content/res/ColorStateList;I)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mThumb:Lorg/adw/library/widgets/discreteseekbar/internal/drawable/ThumbDrawable;

    .line 267
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mThumb:Lorg/adw/library/widgets/discreteseekbar/internal/drawable/ThumbDrawable;

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/ThumbDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 268
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mThumb:Lorg/adw/library/widgets/discreteseekbar/internal/drawable/ThumbDrawable;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mThumb:Lorg/adw/library/widgets/discreteseekbar/internal/drawable/ThumbDrawable;

    invoke-virtual {v6}, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/ThumbDrawable;->getIntrinsicWidth()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mThumb:Lorg/adw/library/widgets/discreteseekbar/internal/drawable/ThumbDrawable;

    invoke-virtual {v7}, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/ThumbDrawable;->getIntrinsicHeight()I

    move-result v7

    invoke-virtual {v3, v4, v5, v6, v7}, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/ThumbDrawable;->setBounds(IIII)V

    .line 271
    if-nez v12, :cond_9

    .line 272
    new-instance v3, Lorg/adw/library/widgets/discreteseekbar/internal/PopupIndicator;

    move-object/from16 v0, p0

    iget v4, v0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mMax:I

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->convertValueToMessage(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget v4, v0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mAddedTouchBounds:I

    add-int/2addr v4, v8

    add-int v9, v4, v21

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move/from16 v6, p3

    invoke-direct/range {v3 .. v9}, Lorg/adw/library/widgets/discreteseekbar/internal/PopupIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILjava/lang/String;II)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mIndicator:Lorg/adw/library/widgets/discreteseekbar/internal/PopupIndicator;

    .line 274
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mIndicator:Lorg/adw/library/widgets/discreteseekbar/internal/PopupIndicator;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mFloaterListener:Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable$MarkerAnimationListener;

    invoke-virtual {v3, v4}, Lorg/adw/library/widgets/discreteseekbar/internal/PopupIndicator;->setListener(Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable$MarkerAnimationListener;)V

    .line 276
    :cond_9
    invoke-virtual {v10}, Landroid/content/res/TypedArray;->recycle()V

    .line 278
    new-instance v3, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$DefaultNumericTransformer;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$DefaultNumericTransformer;-><init>(Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$1;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->setNumericTransformer(Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$NumericTransformer;)V

    .line 280
    return-void

    .line 212
    .end local v12    # "editMode":Z
    .end local v19    # "progressColor":Landroid/content/res/ColorStateList;
    .end local v20    # "rippleColor":Landroid/content/res/ColorStateList;
    .end local v22    # "shapeDrawable":Lorg/adw/library/widgets/discreteseekbar/internal/drawable/TrackRectDrawable;
    .end local v24    # "trackColor":Landroid/content/res/ColorStateList;
    :cond_a
    move/from16 v0, v16

    invoke-virtual {v10, v13, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v16

    goto/16 :goto_0

    .line 219
    :cond_b
    move/from16 v0, v17

    invoke-virtual {v10, v14, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v17

    goto/16 :goto_1

    .line 226
    :cond_c
    move/from16 v0, v25

    invoke-virtual {v10, v15, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v25

    goto/16 :goto_2

    .line 255
    .restart local v12    # "editMode":Z
    .restart local v19    # "progressColor":Landroid/content/res/ColorStateList;
    .restart local v20    # "rippleColor":Landroid/content/res/ColorStateList;
    .restart local v24    # "trackColor":Landroid/content/res/ColorStateList;
    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mRipple:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    goto/16 :goto_3
.end method

.method static synthetic access$100(Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;)V
    .locals 0
    .param p0, "x0"    # Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;

    .prologue
    .line 52
    invoke-direct {p0}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->showFloater()V

    return-void
.end method

.method static synthetic access$200(Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;)Lorg/adw/library/widgets/discreteseekbar/internal/drawable/ThumbDrawable;
    .locals 1
    .param p0, "x0"    # Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;

    .prologue
    .line 52
    iget-object v0, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mThumb:Lorg/adw/library/widgets/discreteseekbar/internal/drawable/ThumbDrawable;

    return-object v0
.end method

.method private attemptClaimDrag()V
    .locals 2

    .prologue
    .line 955
    invoke-virtual {p0}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 956
    .local v0, "parent":Landroid/view/ViewParent;
    if-eqz v0, :cond_0

    .line 957
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 959
    :cond_0
    return-void
.end method

.method private convertValueToMessage(I)Ljava/lang/String;
    .locals 6
    .param p1, "value"    # I

    .prologue
    const/4 v5, 0x0

    .line 678
    iget-object v2, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mIndicatorFormatter:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v1, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mIndicatorFormatter:Ljava/lang/String;

    .line 687
    .local v1, "format":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mFormatter:Ljava/util/Formatter;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mFormatter:Ljava/util/Formatter;

    invoke-virtual {v2}, Ljava/util/Formatter;->locale()Ljava/util/Locale;

    move-result-object v2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 688
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    iget v3, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mMax:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int v0, v2, v3

    .line 689
    .local v0, "bufferSize":I
    iget-object v2, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mFormatBuilder:Ljava/lang/StringBuilder;

    if-nez v2, :cond_2

    .line 690
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v2, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mFormatBuilder:Ljava/lang/StringBuilder;

    .line 694
    :goto_1
    new-instance v2, Ljava/util/Formatter;

    iget-object v3, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object v2, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mFormatter:Ljava/util/Formatter;

    .line 698
    .end local v0    # "bufferSize":I
    :goto_2
    iget-object v2, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mFormatter:Ljava/util/Formatter;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v2, v1, v3}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 678
    .end local v1    # "format":Ljava/lang/String;
    :cond_1
    const-string v1, "%d"

    goto :goto_0

    .line 692
    .restart local v0    # "bufferSize":I
    .restart local v1    # "format":Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->ensureCapacity(I)V

    goto :goto_1

    .line 696
    .end local v0    # "bufferSize":I
    :cond_3
    iget-object v2, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_2
.end method

.method private getAnimatedProgress()I
    .locals 1

    .prologue
    .line 804
    invoke-virtual {p0}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->isAnimationRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->getAnimationTarget()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mValue:I

    goto :goto_0
.end method

.method private getAnimationTarget()I
    .locals 1

    .prologue
    .line 839
    iget v0, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mAnimationTarget:I

    return v0
.end method

.method private hideFloater()V
    .locals 1

    .prologue
    .line 977
    iget-object v0, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mShowIndicatorRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 978
    invoke-virtual {p0}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 979
    iget-object v0, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mIndicator:Lorg/adw/library/widgets/discreteseekbar/internal/PopupIndicator;

    invoke-virtual {v0}, Lorg/adw/library/widgets/discreteseekbar/internal/PopupIndicator;->dismiss()V

    .line 980
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->notifyBubble(Z)V

    .line 982
    :cond_0
    return-void
.end method

.method private isDragging()Z
    .locals 1

    .prologue
    .line 769
    iget-boolean v0, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mIsDragging:Z

    return v0
.end method

.method private isInScrollingContainer()Z
    .locals 1

    .prologue
    .line 737
    invoke-virtual {p0}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-static {v0}, Lorg/adw/library/widgets/discreteseekbar/internal/compat/SeekBarCompat;->isInScrollingContainer(Landroid/view/ViewParent;)Z

    move-result v0

    return v0
.end method

.method private notifyBubble(Z)V
    .locals 0
    .param p1, "open"    # Z

    .prologue
    .line 531
    if-eqz p1, :cond_0

    .line 532
    invoke-virtual {p0}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->onShowBubble()V

    .line 536
    :goto_0
    return-void

    .line 534
    :cond_0
    invoke-virtual {p0}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->onHideBubble()V

    goto :goto_0
.end method

.method private notifyProgress(IZ)V
    .locals 1
    .param p1, "value"    # I
    .param p2, "fromUser"    # Z

    .prologue
    .line 524
    iget-object v0, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mPublicChangeListener:Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$OnProgressChangeListener;

    if-eqz v0, :cond_0

    .line 525
    iget-object v0, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mPublicChangeListener:Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$OnProgressChangeListener;

    invoke-interface {v0, p0, p1, p2}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$OnProgressChangeListener;->onProgressChanged(Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;IZ)V

    .line 527
    :cond_0
    invoke-virtual {p0, p1}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->onValueChanged(I)V

    .line 528
    return-void
.end method

.method private setHotspot(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 946
    iget-object v0, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mRipple:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1, p2}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setHotspot(Landroid/graphics/drawable/Drawable;FF)V

    .line 947
    return-void
.end method

.method private setProgress(IZ)V
    .locals 2
    .param p1, "value"    # I
    .param p2, "fromUser"    # Z

    .prologue
    .line 389
    iget v0, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mMin:I

    iget v1, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mMax:I

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 390
    invoke-virtual {p0}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->isAnimationRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 391
    iget-object v0, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mPositionAnimator:Lorg/adw/library/widgets/discreteseekbar/internal/compat/AnimatorCompat;

    invoke-virtual {v0}, Lorg/adw/library/widgets/discreteseekbar/internal/compat/AnimatorCompat;->cancel()V

    .line 394
    :cond_0
    iget v0, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mValue:I

    if-eq v0, p1, :cond_1

    .line 395
    iput p1, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mValue:I

    .line 396
    invoke-direct {p0, p1, p2}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->notifyProgress(IZ)V

    .line 397
    invoke-direct {p0, p1}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->updateProgressMessage(I)V

    .line 398
    invoke-direct {p0}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->updateThumbPosFromCurrentProgress()V

    .line 400
    :cond_1
    return-void
.end method

.method private showFloater()V
    .locals 2

    .prologue
    .line 969
    invoke-virtual {p0}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 970
    iget-object v0, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mThumb:Lorg/adw/library/widgets/discreteseekbar/internal/drawable/ThumbDrawable;

    invoke-virtual {v0}, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/ThumbDrawable;->animateToPressed()V

    .line 971
    iget-object v0, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mIndicator:Lorg/adw/library/widgets/discreteseekbar/internal/PopupIndicator;

    iget-object v1, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mThumb:Lorg/adw/library/widgets/discreteseekbar/internal/drawable/ThumbDrawable;

    invoke-virtual {v1}, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/ThumbDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lorg/adw/library/widgets/discreteseekbar/internal/PopupIndicator;->showIndicator(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 972
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->notifyBubble(Z)V

    .line 974
    :cond_0
    return-void
.end method

.method private startDragging(Landroid/view/MotionEvent;Z)Z
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .param p2, "ignoreTrackIfInScrollContainer"    # Z

    .prologue
    const/4 v3, 0x1

    .line 741
    iget-object v0, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mTempRect:Landroid/graphics/Rect;

    .line 742
    .local v0, "bounds":Landroid/graphics/Rect;
    iget-object v1, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mThumb:Lorg/adw/library/widgets/discreteseekbar/internal/drawable/ThumbDrawable;

    invoke-virtual {v1, v0}, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/ThumbDrawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 744
    iget v1, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mAddedTouchBounds:I

    neg-int v1, v1

    iget v2, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mAddedTouchBounds:I

    neg-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->inset(II)V

    .line 745
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    iput-boolean v1, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mIsDragging:Z

    .line 746
    iget-boolean v1, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mIsDragging:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mAllowTrackClick:Z

    if-eqz v1, :cond_0

    if-nez p2, :cond_0

    .line 749
    iput-boolean v3, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mIsDragging:Z

    .line 750
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mAddedTouchBounds:I

    sub-int/2addr v1, v2

    iput v1, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mDragOffset:I

    .line 751
    invoke-direct {p0, p1}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->updateDragging(Landroid/view/MotionEvent;)V

    .line 753
    iget-object v1, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mThumb:Lorg/adw/library/widgets/discreteseekbar/internal/drawable/ThumbDrawable;

    invoke-virtual {v1, v0}, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/ThumbDrawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 754
    iget v1, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mAddedTouchBounds:I

    neg-int v1, v1

    iget v2, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mAddedTouchBounds:I

    neg-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->inset(II)V

    .line 756
    :cond_0
    iget-boolean v1, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mIsDragging:Z

    if-eqz v1, :cond_1

    .line 757
    invoke-virtual {p0, v3}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->setPressed(Z)V

    .line 758
    invoke-direct {p0}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->attemptClaimDrag()V

    .line 759
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {p0, v1, v2}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->setHotspot(FF)V

    .line 760
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mAddedTouchBounds:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mDragOffset:I

    .line 761
    iget-object v1, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mPublicChangeListener:Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$OnProgressChangeListener;

    if-eqz v1, :cond_1

    .line 762
    iget-object v1, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mPublicChangeListener:Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$OnProgressChangeListener;

    invoke-interface {v1, p0}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$OnProgressChangeListener;->onStartTrackingTouch(Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;)V

    .line 765
    :cond_1
    iget-boolean v1, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mIsDragging:Z

    return v1
.end method

.method private stopDragging()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 773
    iget-object v0, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mPublicChangeListener:Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$OnProgressChangeListener;

    if-eqz v0, :cond_0

    .line 774
    iget-object v0, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mPublicChangeListener:Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$OnProgressChangeListener;

    invoke-interface {v0, p0}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$OnProgressChangeListener;->onStopTrackingTouch(Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;)V

    .line 776
    :cond_0
    iput-boolean v1, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mIsDragging:Z

    .line 777
    invoke-virtual {p0, v1}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->setPressed(Z)V

    .line 778
    return-void
.end method

.method private updateDragging(Landroid/view/MotionEvent;)V
    .locals 12
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 854
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    invoke-direct {p0, v10, v11}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->setHotspot(FF)V

    .line 855
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    float-to-int v9, v10

    .line 856
    .local v9, "x":I
    iget-object v10, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mThumb:Lorg/adw/library/widgets/discreteseekbar/internal/drawable/ThumbDrawable;

    invoke-virtual {v10}, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/ThumbDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    .line 857
    .local v5, "oldBounds":Landroid/graphics/Rect;
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v10

    div-int/lit8 v2, v10, 0x2

    .line 858
    .local v2, "halfThumb":I
    iget v0, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mAddedTouchBounds:I

    .line 859
    .local v0, "addedThumb":I
    iget v10, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mDragOffset:I

    sub-int v10, v9, v10

    add-int v4, v10, v2

    .line 860
    .local v4, "newX":I
    invoke-virtual {p0}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->getPaddingLeft()I

    move-result v10

    add-int/2addr v10, v2

    add-int v3, v10, v0

    .line 861
    .local v3, "left":I
    invoke-virtual {p0}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->getWidth()I

    move-result v10

    invoke-virtual {p0}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->getPaddingRight()I

    move-result v11

    add-int/2addr v11, v2

    add-int/2addr v11, v0

    sub-int v7, v10, v11

    .line 862
    .local v7, "right":I
    if-ge v4, v3, :cond_2

    .line 863
    move v4, v3

    .line 868
    :cond_0
    :goto_0
    sub-int v1, v7, v3

    .line 869
    .local v1, "available":I
    sub-int v10, v4, v3

    int-to-float v10, v10

    int-to-float v11, v1

    div-float v8, v10, v11

    .line 870
    .local v8, "scale":F
    invoke-virtual {p0}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->isRtl()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 871
    const/high16 v10, 0x3f800000    # 1.0f

    sub-float v8, v10, v8

    .line 873
    :cond_1
    iget v10, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mMax:I

    iget v11, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mMin:I

    sub-int/2addr v10, v11

    int-to-float v10, v10

    mul-float/2addr v10, v8

    iget v11, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mMin:I

    int-to-float v11, v11

    add-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 874
    .local v6, "progress":I
    const/4 v10, 0x1

    invoke-direct {p0, v6, v10}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->setProgress(IZ)V

    .line 875
    return-void

    .line 864
    .end local v1    # "available":I
    .end local v6    # "progress":I
    .end local v8    # "scale":F
    :cond_2
    if-le v4, v7, :cond_0

    .line 865
    move v4, v7

    goto :goto_0
.end method

.method private updateFromDrawableState()V
    .locals 10

    .prologue
    .line 643
    invoke-virtual {p0}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->getDrawableState()[I

    move-result-object v6

    .line 644
    .local v6, "state":[I
    const/4 v1, 0x0

    .line 645
    .local v1, "focused":Z
    const/4 v5, 0x0

    .line 646
    .local v5, "pressed":Z
    move-object v0, v6

    .local v0, "arr$":[I
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_2

    aget v2, v0, v3

    .line 647
    .local v2, "i":I
    const v7, 0x101009c

    if-ne v2, v7, :cond_1

    .line 648
    const/4 v1, 0x1

    .line 646
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 649
    :cond_1
    const v7, 0x10100a7

    if-ne v2, v7, :cond_0

    .line 650
    const/4 v5, 0x1

    goto :goto_1

    .line 653
    .end local v2    # "i":I
    :cond_2
    invoke-virtual {p0}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_4

    if-nez v1, :cond_3

    if-eqz v5, :cond_4

    :cond_3
    iget-boolean v7, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mIndicatorPopupEnabled:Z

    if-eqz v7, :cond_4

    .line 656
    iget-object v7, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mShowIndicatorRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v7}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 657
    iget-object v7, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mShowIndicatorRunnable:Ljava/lang/Runnable;

    const-wide/16 v8, 0x96

    invoke-virtual {p0, v7, v8, v9}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 661
    :goto_2
    iget-object v7, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mThumb:Lorg/adw/library/widgets/discreteseekbar/internal/drawable/ThumbDrawable;

    invoke-virtual {v7, v6}, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/ThumbDrawable;->setState([I)Z

    .line 662
    iget-object v7, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mTrack:Lorg/adw/library/widgets/discreteseekbar/internal/drawable/TrackRectDrawable;

    invoke-virtual {v7, v6}, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/TrackRectDrawable;->setState([I)Z

    .line 663
    iget-object v7, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mScrubber:Lorg/adw/library/widgets/discreteseekbar/internal/drawable/TrackRectDrawable;

    invoke-virtual {v7, v6}, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/TrackRectDrawable;->setState([I)Z

    .line 664
    iget-object v7, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mRipple:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v6}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 665
    return-void

    .line 659
    :cond_4
    invoke-direct {p0}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->hideFloater()V

    goto :goto_2
.end method

.method private updateIndicatorSizes()V
    .locals 3

    .prologue
    .line 513
    invoke-virtual {p0}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 514
    iget-object v0, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mNumericTransformer:Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$NumericTransformer;

    invoke-virtual {v0}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$NumericTransformer;->useStringTransform()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 515
    iget-object v0, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mIndicator:Lorg/adw/library/widgets/discreteseekbar/internal/PopupIndicator;

    iget-object v1, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mNumericTransformer:Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$NumericTransformer;

    iget v2, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mMax:I

    invoke-virtual {v1, v2}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$NumericTransformer;->transformToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/adw/library/widgets/discreteseekbar/internal/PopupIndicator;->updateSizes(Ljava/lang/String;)V

    .line 521
    :cond_0
    :goto_0
    return-void

    .line 517
    :cond_1
    iget-object v0, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mIndicator:Lorg/adw/library/widgets/discreteseekbar/internal/PopupIndicator;

    iget-object v1, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mNumericTransformer:Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$NumericTransformer;

    iget v2, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mMax:I

    invoke-virtual {v1, v2}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$NumericTransformer;->transform(I)I

    move-result v1

    invoke-direct {p0, v1}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->convertValueToMessage(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/adw/library/widgets/discreteseekbar/internal/PopupIndicator;->updateSizes(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateKeyboardRange()V
    .locals 4

    .prologue
    .line 569
    iget v1, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mMax:I

    iget v2, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mMin:I

    sub-int v0, v1, v2

    .line 570
    .local v0, "range":I
    iget v1, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mKeyProgressIncrement:I

    if-eqz v1, :cond_0

    iget v1, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mKeyProgressIncrement:I

    div-int v1, v0, v1

    const/16 v2, 0x14

    if-le v1, v2, :cond_1

    .line 573
    :cond_0
    const/4 v1, 0x1

    int-to-float v2, v0

    const/high16 v3, 0x41a00000    # 20.0f

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mKeyProgressIncrement:I

    .line 575
    :cond_1
    return-void
.end method

.method private updateProgressFromAnimation(F)V
    .locals 10
    .param p1, "scale"    # F

    .prologue
    .line 878
    iget-object v8, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mThumb:Lorg/adw/library/widgets/discreteseekbar/internal/drawable/ThumbDrawable;

    invoke-virtual {v8}, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/ThumbDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 879
    .local v2, "bounds":Landroid/graphics/Rect;
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v8

    div-int/lit8 v3, v8, 0x2

    .line 880
    .local v3, "halfThumb":I
    iget v0, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mAddedTouchBounds:I

    .line 881
    .local v0, "addedThumb":I
    invoke-virtual {p0}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->getPaddingLeft()I

    move-result v8

    add-int/2addr v8, v3

    add-int v4, v8, v0

    .line 882
    .local v4, "left":I
    invoke-virtual {p0}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->getWidth()I

    move-result v8

    invoke-virtual {p0}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->getPaddingRight()I

    move-result v9

    add-int/2addr v9, v3

    add-int/2addr v9, v0

    sub-int v6, v8, v9

    .line 883
    .local v6, "right":I
    sub-int v1, v6, v4

    .line 884
    .local v1, "available":I
    iget v8, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mMax:I

    iget v9, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mMin:I

    sub-int/2addr v8, v9

    int-to-float v8, v8

    mul-float/2addr v8, p1

    iget v9, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mMin:I

    int-to-float v9, v9

    add-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 887
    .local v5, "progress":I
    invoke-virtual {p0}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->getProgress()I

    move-result v8

    if-eq v5, v8, :cond_0

    .line 888
    iput v5, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mValue:I

    .line 889
    iget v8, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mValue:I

    const/4 v9, 0x1

    invoke-direct {p0, v8, v9}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->notifyProgress(IZ)V

    .line 890
    invoke-direct {p0, v5}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->updateProgressMessage(I)V

    .line 892
    :cond_0
    int-to-float v8, v1

    mul-float/2addr v8, p1

    const/high16 v9, 0x3f000000    # 0.5f

    add-float/2addr v8, v9

    float-to-int v7, v8

    .line 893
    .local v7, "thumbPos":I
    invoke-direct {p0, v7}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->updateThumbPos(I)V

    .line 894
    return-void
.end method

.method private updateProgressMessage(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 668
    invoke-virtual {p0}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 669
    iget-object v0, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mNumericTransformer:Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$NumericTransformer;

    invoke-virtual {v0}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$NumericTransformer;->useStringTransform()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 670
    iget-object v0, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mIndicator:Lorg/adw/library/widgets/discreteseekbar/internal/PopupIndicator;

    iget-object v1, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mNumericTransformer:Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$NumericTransformer;

    invoke-virtual {v1, p1}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$NumericTransformer;->transformToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/adw/library/widgets/discreteseekbar/internal/PopupIndicator;->setValue(Ljava/lang/CharSequence;)V

    .line 675
    :cond_0
    :goto_0
    return-void

    .line 672
    :cond_1
    iget-object v0, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mIndicator:Lorg/adw/library/widgets/discreteseekbar/internal/PopupIndicator;

    iget-object v1, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mNumericTransformer:Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$NumericTransformer;

    invoke-virtual {v1, p1}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$NumericTransformer;->transform(I)I

    move-result v1

    invoke-direct {p0, v1}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->convertValueToMessage(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/adw/library/widgets/discreteseekbar/internal/PopupIndicator;->setValue(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateThumbPos(I)V
    .locals 9
    .param p1, "posX"    # I

    .prologue
    .line 912
    iget-object v4, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mThumb:Lorg/adw/library/widgets/discreteseekbar/internal/drawable/ThumbDrawable;

    invoke-virtual {v4}, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/ThumbDrawable;->getIntrinsicWidth()I

    move-result v3

    .line 913
    .local v3, "thumbWidth":I
    div-int/lit8 v1, v3, 0x2

    .line 915
    .local v1, "halfThumb":I
    invoke-virtual {p0}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->isRtl()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 916
    invoke-virtual {p0}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    iget v5, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mAddedTouchBounds:I

    sub-int v2, v4, v5

    .line 917
    .local v2, "start":I
    sub-int v4, v2, p1

    sub-int p1, v4, v3

    .line 922
    :goto_0
    iget-object v4, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mThumb:Lorg/adw/library/widgets/discreteseekbar/internal/drawable/ThumbDrawable;

    iget-object v5, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mInvalidateRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/ThumbDrawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 923
    iget-object v4, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mThumb:Lorg/adw/library/widgets/discreteseekbar/internal/drawable/ThumbDrawable;

    iget-object v5, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mInvalidateRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    add-int v6, p1, v3

    iget-object v7, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mInvalidateRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, p1, v5, v6, v7}, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/ThumbDrawable;->setBounds(IIII)V

    .line 924
    invoke-virtual {p0}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->isRtl()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 925
    iget-object v4, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mScrubber:Lorg/adw/library/widgets/discreteseekbar/internal/drawable/TrackRectDrawable;

    invoke-virtual {v4}, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/TrackRectDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    sub-int v5, v2, v1

    iput v5, v4, Landroid/graphics/Rect;->right:I

    .line 926
    iget-object v4, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mScrubber:Lorg/adw/library/widgets/discreteseekbar/internal/drawable/TrackRectDrawable;

    invoke-virtual {v4}, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/TrackRectDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    add-int v5, p1, v1

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 931
    :goto_1
    iget-object v0, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mTempRect:Landroid/graphics/Rect;

    .line 932
    .local v0, "finalBounds":Landroid/graphics/Rect;
    iget-object v4, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mThumb:Lorg/adw/library/widgets/discreteseekbar/internal/drawable/ThumbDrawable;

    invoke-virtual {v4, v0}, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/ThumbDrawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 933
    invoke-virtual {p0}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->isInEditMode()Z

    move-result v4

    if-nez v4, :cond_0

    .line 934
    iget-object v4, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mIndicator:Lorg/adw/library/widgets/discreteseekbar/internal/PopupIndicator;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/adw/library/widgets/discreteseekbar/internal/PopupIndicator;->move(I)V

    .line 937
    :cond_0
    iget-object v4, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mInvalidateRect:Landroid/graphics/Rect;

    iget v5, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mAddedTouchBounds:I

    neg-int v5, v5

    iget v6, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mAddedTouchBounds:I

    neg-int v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Rect;->inset(II)V

    .line 938
    iget v4, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mAddedTouchBounds:I

    neg-int v4, v4

    iget v5, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mAddedTouchBounds:I

    neg-int v5, v5

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Rect;->inset(II)V

    .line 939
    iget-object v4, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mInvalidateRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v0}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 940
    iget-object v4, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mRipple:Landroid/graphics/drawable/Drawable;

    iget v5, v0, Landroid/graphics/Rect;->left:I

    iget v6, v0, Landroid/graphics/Rect;->top:I

    iget v7, v0, Landroid/graphics/Rect;->right:I

    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    invoke-static {v4, v5, v6, v7, v8}, Lorg/adw/library/widgets/discreteseekbar/internal/compat/SeekBarCompat;->setHotspotBounds(Landroid/graphics/drawable/Drawable;IIII)V

    .line 941
    iget-object v4, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mInvalidateRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v4}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->invalidate(Landroid/graphics/Rect;)V

    .line 942
    return-void

    .line 919
    .end local v0    # "finalBounds":Landroid/graphics/Rect;
    .end local v2    # "start":I
    :cond_1
    invoke-virtual {p0}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->getPaddingLeft()I

    move-result v4

    iget v5, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mAddedTouchBounds:I

    add-int v2, v4, v5

    .line 920
    .restart local v2    # "start":I
    add-int/2addr p1, v2

    goto :goto_0

    .line 928
    :cond_2
    iget-object v4, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mScrubber:Lorg/adw/library/widgets/discreteseekbar/internal/drawable/TrackRectDrawable;

    invoke-virtual {v4}, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/TrackRectDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    add-int v5, v2, v1

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 929
    iget-object v4, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mScrubber:Lorg/adw/library/widgets/discreteseekbar/internal/drawable/TrackRectDrawable;

    invoke-virtual {v4}, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/TrackRectDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    add-int v5, p1, v1

    iput v5, v4, Landroid/graphics/Rect;->right:I

    goto :goto_1
.end method

.method private updateThumbPosFromCurrentProgress()V
    .locals 11

    .prologue
    .line 897
    iget-object v8, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mThumb:Lorg/adw/library/widgets/discreteseekbar/internal/drawable/ThumbDrawable;

    invoke-virtual {v8}, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/ThumbDrawable;->getIntrinsicWidth()I

    move-result v7

    .line 898
    .local v7, "thumbWidth":I
    iget v0, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mAddedTouchBounds:I

    .line 899
    .local v0, "addedThumb":I
    div-int/lit8 v2, v7, 0x2

    .line 900
    .local v2, "halfThumb":I
    iget v8, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mValue:I

    iget v9, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mMin:I

    sub-int/2addr v8, v9

    int-to-float v8, v8

    iget v9, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mMax:I

    iget v10, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mMin:I

    sub-int/2addr v9, v10

    int-to-float v9, v9

    div-float v5, v8, v9

    .line 903
    .local v5, "scaleDraw":F
    invoke-virtual {p0}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->getPaddingLeft()I

    move-result v8

    add-int/2addr v8, v2

    add-int v3, v8, v0

    .line 904
    .local v3, "left":I
    invoke-virtual {p0}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->getWidth()I

    move-result v8

    invoke-virtual {p0}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->getPaddingRight()I

    move-result v9

    add-int/2addr v9, v2

    add-int/2addr v9, v0

    sub-int v4, v8, v9

    .line 905
    .local v4, "right":I
    sub-int v1, v4, v3

    .line 907
    .local v1, "available":I
    int-to-float v8, v1

    mul-float/2addr v8, v5

    const/high16 v9, 0x3f000000    # 0.5f

    add-float/2addr v8, v9

    float-to-int v6, v8

    .line 908
    .local v6, "thumbPos":I
    invoke-direct {p0, v6}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->updateThumbPos(I)V

    .line 909
    return-void
.end method


# virtual methods
.method animateSetProgress(I)V
    .locals 3
    .param p1, "progress"    # I

    .prologue
    .line 813
    invoke-virtual {p0}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->isAnimationRunning()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->getAnimationPosition()F

    move-result v0

    .line 815
    .local v0, "curProgress":F
    :goto_0
    iget v1, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mMin:I

    if-ge p1, v1, :cond_3

    .line 816
    iget p1, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mMin:I

    .line 822
    :cond_0
    :goto_1
    iget-object v1, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mPositionAnimator:Lorg/adw/library/widgets/discreteseekbar/internal/compat/AnimatorCompat;

    if-eqz v1, :cond_1

    .line 823
    iget-object v1, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mPositionAnimator:Lorg/adw/library/widgets/discreteseekbar/internal/compat/AnimatorCompat;

    invoke-virtual {v1}, Lorg/adw/library/widgets/discreteseekbar/internal/compat/AnimatorCompat;->cancel()V

    .line 826
    :cond_1
    iput p1, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mAnimationTarget:I

    .line 827
    int-to-float v1, p1

    new-instance v2, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$1;

    invoke-direct {v2, p0}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$1;-><init>(Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;)V

    invoke-static {v0, v1, v2}, Lorg/adw/library/widgets/discreteseekbar/internal/compat/AnimatorCompat;->create(FFLorg/adw/library/widgets/discreteseekbar/internal/compat/AnimatorCompat$AnimationFrameUpdateListener;)Lorg/adw/library/widgets/discreteseekbar/internal/compat/AnimatorCompat;

    move-result-object v1

    iput-object v1, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mPositionAnimator:Lorg/adw/library/widgets/discreteseekbar/internal/compat/AnimatorCompat;

    .line 834
    iget-object v1, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mPositionAnimator:Lorg/adw/library/widgets/discreteseekbar/internal/compat/AnimatorCompat;

    const/16 v2, 0xfa

    invoke-virtual {v1, v2}, Lorg/adw/library/widgets/discreteseekbar/internal/compat/AnimatorCompat;->setDuration(I)V

    .line 835
    iget-object v1, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mPositionAnimator:Lorg/adw/library/widgets/discreteseekbar/internal/compat/AnimatorCompat;

    invoke-virtual {v1}, Lorg/adw/library/widgets/discreteseekbar/internal/compat/AnimatorCompat;->start()V

    .line 836
    return-void

    .line 813
    .end local v0    # "curProgress":F
    :cond_2
    invoke-virtual {p0}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->getProgress()I

    move-result v1

    int-to-float v0, v1

    goto :goto_0

    .line 817
    .restart local v0    # "curProgress":F
    :cond_3
    iget v1, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mMax:I

    if-le p1, v1, :cond_0

    .line 818
    iget p1, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mMax:I

    goto :goto_1
.end method

.method protected drawableStateChanged()V
    .locals 0

    .prologue
    .line 638
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 639
    invoke-direct {p0}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->updateFromDrawableState()V

    .line 640
    return-void
.end method

.method getAnimationPosition()F
    .locals 1

    .prologue
    .line 849
    iget v0, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mAnimationPosition:F

    return v0
.end method

.method public getMax()I
    .locals 1

    .prologue
    .line 345
    iget v0, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mMax:I

    return v0
.end method

.method public getMin()I
    .locals 1

    .prologue
    .line 373
    iget v0, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mMin:I

    return v0
.end method

.method public getNumericTransformer()Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$NumericTransformer;
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mNumericTransformer:Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$NumericTransformer;

    return-object v0
.end method

.method public getProgress()I
    .locals 1

    .prologue
    .line 408
    iget v0, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mValue:I

    return v0
.end method

.method isAnimationRunning()Z
    .locals 1

    .prologue
    .line 809
    iget-object v0, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mPositionAnimator:Lorg/adw/library/widgets/discreteseekbar/internal/compat/AnimatorCompat;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mPositionAnimator:Lorg/adw/library/widgets/discreteseekbar/internal/compat/AnimatorCompat;

    invoke-virtual {v0}, Lorg/adw/library/widgets/discreteseekbar/internal/compat/AnimatorCompat;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRtl()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1007
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v1

    if-ne v1, v0, :cond_0

    iget-boolean v1, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mMirrorForRtl:Z

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 999
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 1000
    iget-object v0, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mShowIndicatorRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1001
    invoke-virtual {p0}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1002
    iget-object v0, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mIndicator:Lorg/adw/library/widgets/discreteseekbar/internal/PopupIndicator;

    invoke-virtual {v0}, Lorg/adw/library/widgets/discreteseekbar/internal/PopupIndicator;->dismissComplete()V

    .line 1004
    :cond_0
    return-void
.end method

.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 627
    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->isLollipopOrGreater:Z

    if-nez v0, :cond_0

    .line 628
    iget-object v0, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mRipple:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 630
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 631
    iget-object v0, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mTrack:Lorg/adw/library/widgets/discreteseekbar/internal/drawable/TrackRectDrawable;

    invoke-virtual {v0, p1}, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/TrackRectDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 632
    iget-object v0, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mScrubber:Lorg/adw/library/widgets/discreteseekbar/internal/drawable/TrackRectDrawable;

    invoke-virtual {v0, p1}, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/TrackRectDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 633
    iget-object v0, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mThumb:Lorg/adw/library/widgets/discreteseekbar/internal/drawable/ThumbDrawable;

    invoke-virtual {v0, p1}, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/ThumbDrawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 634
    monitor-exit p0

    return-void

    .line 627
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected onHideBubble()V
    .locals 0

    .prologue
    .line 556
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 783
    const/4 v0, 0x0

    .line 784
    .local v0, "handled":Z
    invoke-virtual {p0}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 785
    invoke-direct {p0}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->getAnimatedProgress()I

    move-result v1

    .line 786
    .local v1, "progress":I
    packed-switch p1, :pswitch_data_0

    .line 800
    .end local v1    # "progress":I
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const/4 v2, 0x1

    :goto_1
    return v2

    .line 788
    .restart local v1    # "progress":I
    :pswitch_0
    const/4 v0, 0x1

    .line 789
    iget v2, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mMin:I

    if-le v1, v2, :cond_0

    .line 790
    iget v2, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mKeyProgressIncrement:I

    sub-int v2, v1, v2

    invoke-virtual {p0, v2}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->animateSetProgress(I)V

    goto :goto_0

    .line 793
    :pswitch_1
    const/4 v0, 0x1

    .line 794
    iget v2, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mMax:I

    if-ge v1, v2, :cond_0

    .line 795
    iget v2, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mKeyProgressIncrement:I

    add-int/2addr v2, v1

    invoke-virtual {p0, v2}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->animateSetProgress(I)V

    goto :goto_0

    .line 800
    .end local v1    # "progress":I
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 786
    nop

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 588
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 589
    if-eqz p1, :cond_1

    .line 590
    iget-object v0, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mShowIndicatorRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 591
    invoke-virtual {p0}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 592
    iget-object v0, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mIndicator:Lorg/adw/library/widgets/discreteseekbar/internal/PopupIndicator;

    invoke-virtual {v0}, Lorg/adw/library/widgets/discreteseekbar/internal/PopupIndicator;->dismissComplete()V

    .line 594
    :cond_0
    invoke-direct {p0}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->updateFromDrawableState()V

    .line 596
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 580
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 581
    .local v1, "widthSize":I
    iget-object v2, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mThumb:Lorg/adw/library/widgets/discreteseekbar/internal/drawable/ThumbDrawable;

    invoke-virtual {v2}, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/ThumbDrawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {p0}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->getPaddingTop()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->getPaddingBottom()I

    move-result v3

    add-int v0, v2, v3

    .line 582
    .local v0, "height":I
    iget v2, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mAddedTouchBounds:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    .line 583
    invoke-virtual {p0, v1, v0}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->setMeasuredDimension(II)V

    .line 584
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 1022
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$CustomState;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1023
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1032
    :goto_0
    return-void

    :cond_1
    move-object v0, p1

    .line 1027
    check-cast v0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$CustomState;

    .line 1028
    .local v0, "customState":Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$CustomState;
    invoke-static {v0}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$CustomState;->access$500(Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$CustomState;)I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->setMin(I)V

    .line 1029
    invoke-static {v0}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$CustomState;->access$400(Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$CustomState;)I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->setMax(I)V

    .line 1030
    invoke-static {v0}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$CustomState;->access$300(Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$CustomState;)I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->setProgress(IZ)V

    .line 1031
    invoke-virtual {v0}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$CustomState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 1012
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 1013
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$CustomState;

    invoke-direct {v0, v1}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$CustomState;-><init>(Landroid/os/Parcelable;)V

    .line 1014
    .local v0, "state":Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$CustomState;
    invoke-virtual {p0}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->getProgress()I

    move-result v2

    invoke-static {v0, v2}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$CustomState;->access$302(Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$CustomState;I)I

    .line 1015
    iget v2, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mMax:I

    invoke-static {v0, v2}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$CustomState;->access$402(Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$CustomState;I)I

    .line 1016
    iget v2, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mMin:I

    invoke-static {v0, v2}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$CustomState;->access$502(Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$CustomState;I)I

    .line 1017
    return-object v0
.end method

.method protected onShowBubble()V
    .locals 0

    .prologue
    .line 546
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 14
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 605
    invoke-super/range {p0 .. p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 606
    iget-object v9, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mThumb:Lorg/adw/library/widgets/discreteseekbar/internal/drawable/ThumbDrawable;

    invoke-virtual {v9}, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/ThumbDrawable;->getIntrinsicWidth()I

    move-result v7

    .line 607
    .local v7, "thumbWidth":I
    iget-object v9, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mThumb:Lorg/adw/library/widgets/discreteseekbar/internal/drawable/ThumbDrawable;

    invoke-virtual {v9}, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/ThumbDrawable;->getIntrinsicHeight()I

    move-result v6

    .line 608
    .local v6, "thumbHeight":I
    iget v0, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mAddedTouchBounds:I

    .line 609
    .local v0, "addedThumb":I
    div-int/lit8 v2, v7, 0x2

    .line 610
    .local v2, "halfThumb":I
    invoke-virtual {p0}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->getPaddingLeft()I

    move-result v9

    add-int v3, v9, v0

    .line 611
    .local v3, "paddingLeft":I
    invoke-virtual {p0}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->getPaddingRight()I

    move-result v4

    .line 612
    .local v4, "paddingRight":I
    invoke-virtual {p0}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->getHeight()I

    move-result v9

    invoke-virtual {p0}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->getPaddingBottom()I

    move-result v10

    sub-int/2addr v9, v10

    sub-int v1, v9, v0

    .line 613
    .local v1, "bottom":I
    iget-object v9, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mThumb:Lorg/adw/library/widgets/discreteseekbar/internal/drawable/ThumbDrawable;

    sub-int v10, v1, v6

    add-int v11, v3, v7

    invoke-virtual {v9, v3, v10, v11, v1}, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/ThumbDrawable;->setBounds(IIII)V

    .line 614
    iget v9, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mTrackHeight:I

    div-int/lit8 v9, v9, 0x2

    const/4 v10, 0x1

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 615
    .local v8, "trackHeight":I
    iget-object v9, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mTrack:Lorg/adw/library/widgets/discreteseekbar/internal/drawable/TrackRectDrawable;

    add-int v10, v3, v2

    sub-int v11, v1, v2

    sub-int/2addr v11, v8

    invoke-virtual {p0}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->getWidth()I

    move-result v12

    sub-int/2addr v12, v2

    sub-int/2addr v12, v4

    sub-int/2addr v12, v0

    sub-int v13, v1, v2

    add-int/2addr v13, v8

    invoke-virtual {v9, v10, v11, v12, v13}, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/TrackRectDrawable;->setBounds(IIII)V

    .line 617
    iget v9, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mScrubberHeight:I

    div-int/lit8 v9, v9, 0x2

    const/4 v10, 0x2

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 618
    .local v5, "scrubberHeight":I
    iget-object v9, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mScrubber:Lorg/adw/library/widgets/discreteseekbar/internal/drawable/TrackRectDrawable;

    add-int v10, v3, v2

    sub-int v11, v1, v2

    sub-int/2addr v11, v5

    add-int v12, v3, v2

    sub-int v13, v1, v2

    add-int/2addr v13, v5

    invoke-virtual {v9, v10, v11, v12, v13}, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/TrackRectDrawable;->setBounds(IIII)V

    .line 622
    invoke-direct {p0}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->updateThumbPosFromCurrentProgress()V

    .line 623
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    .line 703
    invoke-virtual {p0}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 733
    :goto_0
    return v2

    .line 706
    :cond_0
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v0

    .line 707
    .local v0, "actionMasked":I
    packed-switch v0, :pswitch_data_0

    .line 733
    :cond_1
    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    .line 709
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mDownX:F

    .line 710
    invoke-direct {p0}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->isInScrollingContainer()Z

    move-result v2

    invoke-direct {p0, p1, v2}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->startDragging(Landroid/view/MotionEvent;Z)Z

    goto :goto_1

    .line 713
    :pswitch_1
    invoke-direct {p0}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->isDragging()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 714
    invoke-direct {p0, p1}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->updateDragging(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 716
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 717
    .local v1, "x":F
    iget v3, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mDownX:F

    sub-float v3, v1, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mTouchSlop:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    .line 718
    invoke-direct {p0, p1, v2}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->startDragging(Landroid/view/MotionEvent;Z)Z

    goto :goto_1

    .line 723
    .end local v1    # "x":F
    :pswitch_2
    invoke-direct {p0}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->isDragging()Z

    move-result v3

    if-nez v3, :cond_3

    iget-boolean v3, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mAllowTrackClick:Z

    if-eqz v3, :cond_3

    .line 724
    invoke-direct {p0, p1, v2}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->startDragging(Landroid/view/MotionEvent;Z)Z

    .line 725
    invoke-direct {p0, p1}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->updateDragging(Landroid/view/MotionEvent;)V

    .line 727
    :cond_3
    invoke-direct {p0}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->stopDragging()V

    goto :goto_1

    .line 730
    :pswitch_3
    invoke-direct {p0}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->stopDragging()V

    goto :goto_1

    .line 707
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method protected onValueChanged(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 566
    return-void
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;
    .param p2, "what"    # Ljava/lang/Runnable;
    .param p3, "when"    # J

    .prologue
    .line 600
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V

    .line 601
    return-void
.end method

.method setAnimationPosition(F)V
    .locals 4
    .param p1, "position"    # F

    .prologue
    .line 843
    iput p1, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mAnimationPosition:F

    .line 844
    iget v1, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mMin:I

    int-to-float v1, v1

    sub-float v1, p1, v1

    iget v2, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mMax:I

    iget v3, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mMin:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    div-float v0, v1, v2

    .line 845
    .local v0, "currentScale":F
    invoke-direct {p0, v0}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->updateProgressFromAnimation(F)V

    .line 846
    return-void
.end method

.method public setIndicatorFormatter(Ljava/lang/String;)V
    .locals 1
    .param p1, "formatter"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 290
    iput-object p1, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mIndicatorFormatter:Ljava/lang/String;

    .line 291
    iget v0, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mValue:I

    invoke-direct {p0, v0}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->updateProgressMessage(I)V

    .line 292
    return-void
.end method

.method public setIndicatorPopupEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 509
    iput-boolean p1, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mIndicatorPopupEnabled:Z

    .line 510
    return-void
.end method

.method public setMax(I)V
    .locals 2
    .param p1, "max"    # I

    .prologue
    .line 331
    iput p1, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mMax:I

    .line 332
    iget v0, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mMax:I

    iget v1, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mMin:I

    if-ge v0, v1, :cond_0

    .line 333
    iget v0, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mMax:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->setMin(I)V

    .line 335
    :cond_0
    invoke-direct {p0}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->updateKeyboardRange()V

    .line 337
    iget v0, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mValue:I

    iget v1, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mMin:I

    if-lt v0, v1, :cond_1

    iget v0, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mValue:I

    iget v1, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mMax:I

    if-le v0, v1, :cond_2

    .line 338
    :cond_1
    iget v0, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mMin:I

    invoke-virtual {p0, v0}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->setProgress(I)V

    .line 341
    :cond_2
    invoke-direct {p0}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->updateIndicatorSizes()V

    .line 342
    return-void
.end method

.method public setMin(I)V
    .locals 2
    .param p1, "min"    # I

    .prologue
    .line 361
    iput p1, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mMin:I

    .line 362
    iget v0, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mMin:I

    iget v1, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mMax:I

    if-le v0, v1, :cond_0

    .line 363
    iget v0, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mMin:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->setMax(I)V

    .line 365
    :cond_0
    invoke-direct {p0}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->updateKeyboardRange()V

    .line 367
    iget v0, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mValue:I

    iget v1, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mMin:I

    if-lt v0, v1, :cond_1

    iget v0, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mValue:I

    iget v1, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mMax:I

    if-le v0, v1, :cond_2

    .line 368
    :cond_1
    iget v0, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mMin:I

    invoke-virtual {p0, v0}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->setProgress(I)V

    .line 370
    :cond_2
    return-void
.end method

.method public setNumericTransformer(Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$NumericTransformer;)V
    .locals 1
    .param p1, "transformer"    # Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$NumericTransformer;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 301
    if-eqz p1, :cond_0

    .end local p1    # "transformer":Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$NumericTransformer;
    :goto_0
    iput-object p1, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mNumericTransformer:Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$NumericTransformer;

    .line 303
    invoke-direct {p0}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->updateIndicatorSizes()V

    .line 304
    iget v0, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mValue:I

    invoke-direct {p0, v0}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->updateProgressMessage(I)V

    .line 305
    return-void

    .line 301
    .restart local p1    # "transformer":Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$NumericTransformer;
    :cond_0
    new-instance p1, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$DefaultNumericTransformer;

    .end local p1    # "transformer":Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$NumericTransformer;
    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$DefaultNumericTransformer;-><init>(Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$1;)V

    goto :goto_0
.end method

.method public setOnProgressChangeListener(Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$OnProgressChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$OnProgressChangeListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 419
    iput-object p1, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mPublicChangeListener:Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$OnProgressChangeListener;

    .line 420
    return-void
.end method

.method public setProgress(I)V
    .locals 1
    .param p1, "progress"    # I

    .prologue
    .line 385
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->setProgress(IZ)V

    .line 386
    return-void
.end method

.method public setRippleColor(I)V
    .locals 5
    .param p1, "color"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 474
    new-instance v0, Landroid/content/res/ColorStateList;

    new-array v1, v4, [[I

    new-array v2, v3, [I

    aput-object v2, v1, v3

    new-array v2, v4, [I

    aput p1, v2, v3

    invoke-direct {v0, v1, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {p0, v0}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->setRippleColor(Landroid/content/res/ColorStateList;)V

    .line 475
    return-void
.end method

.method public setRippleColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "colorStateList"    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 483
    iget-object v0, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mRipple:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Lorg/adw/library/widgets/discreteseekbar/internal/compat/SeekBarCompat;->setRippleColor(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 484
    return-void
.end method

.method public setScrubberColor(I)V
    .locals 2
    .param p1, "color"    # I

    .prologue
    .line 456
    iget-object v0, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mScrubber:Lorg/adw/library/widgets/discreteseekbar/internal/drawable/TrackRectDrawable;

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/TrackRectDrawable;->setColorStateList(Landroid/content/res/ColorStateList;)V

    .line 457
    return-void
.end method

.method public setScrubberColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "colorStateList"    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 465
    iget-object v0, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mScrubber:Lorg/adw/library/widgets/discreteseekbar/internal/drawable/TrackRectDrawable;

    invoke-virtual {v0, p1}, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/TrackRectDrawable;->setColorStateList(Landroid/content/res/ColorStateList;)V

    .line 466
    return-void
.end method

.method public setThumbColor(II)V
    .locals 2
    .param p1, "thumbColor"    # I
    .param p2, "indicatorColor"    # I

    .prologue
    .line 431
    iget-object v0, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mThumb:Lorg/adw/library/widgets/discreteseekbar/internal/drawable/ThumbDrawable;

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/ThumbDrawable;->setColorStateList(Landroid/content/res/ColorStateList;)V

    .line 432
    iget-object v0, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mIndicator:Lorg/adw/library/widgets/discreteseekbar/internal/PopupIndicator;

    invoke-virtual {v0, p2, p1}, Lorg/adw/library/widgets/discreteseekbar/internal/PopupIndicator;->setColors(II)V

    .line 433
    return-void
.end method

.method public setThumbColor(Landroid/content/res/ColorStateList;I)V
    .locals 4
    .param p1, "thumbColorStateList"    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "indicatorColor"    # I

    .prologue
    .line 444
    iget-object v1, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mThumb:Lorg/adw/library/widgets/discreteseekbar/internal/drawable/ThumbDrawable;

    invoke-virtual {v1, p1}, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/ThumbDrawable;->setColorStateList(Landroid/content/res/ColorStateList;)V

    .line 446
    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const v3, 0x10100a7

    aput v3, v1, v2

    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 447
    .local v0, "thumbColor":I
    iget-object v1, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mIndicator:Lorg/adw/library/widgets/discreteseekbar/internal/PopupIndicator;

    invoke-virtual {v1, p2, v0}, Lorg/adw/library/widgets/discreteseekbar/internal/PopupIndicator;->setColors(II)V

    .line 448
    return-void
.end method

.method public setTrackColor(I)V
    .locals 2
    .param p1, "color"    # I

    .prologue
    .line 492
    iget-object v0, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mTrack:Lorg/adw/library/widgets/discreteseekbar/internal/drawable/TrackRectDrawable;

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/TrackRectDrawable;->setColorStateList(Landroid/content/res/ColorStateList;)V

    .line 493
    return-void
.end method

.method public setTrackColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "colorStateList"    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 501
    iget-object v0, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mTrack:Lorg/adw/library/widgets/discreteseekbar/internal/drawable/TrackRectDrawable;

    invoke-virtual {v0, p1}, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/TrackRectDrawable;->setColorStateList(Landroid/content/res/ColorStateList;)V

    .line 502
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 951
    iget-object v0, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mThumb:Lorg/adw/library/widgets/discreteseekbar/internal/drawable/ThumbDrawable;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mTrack:Lorg/adw/library/widgets/discreteseekbar/internal/drawable/TrackRectDrawable;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mScrubber:Lorg/adw/library/widgets/discreteseekbar/internal/drawable/TrackRectDrawable;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->mRipple:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
