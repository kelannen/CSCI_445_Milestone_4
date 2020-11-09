.class public Lcom/kyleduo/switchbutton/SwitchButton;
.super Landroid/widget/CompoundButton;
.source "SwitchButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kyleduo/switchbutton/SwitchButton$SavedState;
    }
.end annotation


# static fields
.field private static CHECKED_PRESSED_STATE:[I = null

.field public static final DEFAULT_ANIMATION_DURATION:I = 0xfa

.field public static final DEFAULT_BACK_MEASURE_RATIO:F = 1.8f

.field public static final DEFAULT_TEXT_MARGIN_DP:I = 0x2

.field public static final DEFAULT_THUMB_MARGIN_DP:I = 0x2

.field public static final DEFAULT_THUMB_SIZE_DP:I = 0x14

.field public static final DEFAULT_TINT_COLOR:I = 0x327fc2

.field private static UNCHECKED_PRESSED_STATE:[I


# instance fields
.field private mAnimationDuration:J

.field private mAutoAdjustTextPosition:Z

.field private mBackColor:Landroid/content/res/ColorStateList;

.field private mBackDrawable:Landroid/graphics/drawable/Drawable;

.field private mBackMeasureRatio:F

.field private mBackRadius:F

.field private mBackRectF:Landroid/graphics/RectF;

.field private mChildOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mClickTimeout:I

.field private mCurrBackColor:I

.field private mCurrThumbColor:I

.field private mCurrentBackDrawable:Landroid/graphics/drawable/Drawable;

.field private mDrawDebugRect:Z

.field private mFadeBack:Z

.field private mIsBackUseDrawable:Z

.field private mIsThumbUseDrawable:Z

.field private mLastX:F

.field private mNextBackColor:I

.field private mNextBackDrawable:Landroid/graphics/drawable/Drawable;

.field private mOffLayout:Landroid/text/Layout;

.field private mOffTextColor:I

.field private mOnLayout:Landroid/text/Layout;

.field private mOnTextColor:I

.field private mPaint:Landroid/graphics/Paint;

.field private mPresentThumbRectF:Landroid/graphics/RectF;

.field private mProcess:F

.field private mProcessAnimator:Landroid/animation/ObjectAnimator;

.field private mRectPaint:Landroid/graphics/Paint;

.field private mSafeRectF:Landroid/graphics/RectF;

.field private mStartX:F

.field private mStartY:F

.field private mTextHeight:F

.field private mTextMarginH:F

.field private mTextOff:Ljava/lang/CharSequence;

.field private mTextOffRectF:Landroid/graphics/RectF;

.field private mTextOn:Ljava/lang/CharSequence;

.field private mTextOnRectF:Landroid/graphics/RectF;

.field private mTextPaint:Landroid/text/TextPaint;

.field private mTextWidth:F

.field private mThumbColor:Landroid/content/res/ColorStateList;

.field private mThumbDrawable:Landroid/graphics/drawable/Drawable;

.field private mThumbMargin:Landroid/graphics/RectF;

.field private mThumbRadius:F

.field private mThumbRectF:Landroid/graphics/RectF;

.field private mThumbSizeF:Landroid/graphics/PointF;

.field private mTintColor:I

.field private mTouchSlop:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 50
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/kyleduo/switchbutton/SwitchButton;->CHECKED_PRESSED_STATE:[I

    .line 51
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/kyleduo/switchbutton/SwitchButton;->UNCHECKED_PRESSED_STATE:[I

    return-void

    .line 50
    :array_0
    .array-data 4
        0x10100a0
        0x101009e
        0x10100a7
    .end array-data

    .line 51
    :array_1
    .array-data 4
        -0x10100a0
        0x101009e
        0x10100a7
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 103
    invoke-direct {p0, p1}, Landroid/widget/CompoundButton;-><init>(Landroid/content/Context;)V

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mDrawDebugRect:Z

    .line 88
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mAutoAdjustTextPosition:Z

    .line 104
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/kyleduo/switchbutton/SwitchButton;->init(Landroid/util/AttributeSet;)V

    .line 105
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 98
    invoke-direct {p0, p1, p2}, Landroid/widget/CompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mDrawDebugRect:Z

    .line 88
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mAutoAdjustTextPosition:Z

    .line 99
    invoke-direct {p0, p2}, Lcom/kyleduo/switchbutton/SwitchButton;->init(Landroid/util/AttributeSet;)V

    .line 100
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 93
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/CompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mDrawDebugRect:Z

    .line 88
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mAutoAdjustTextPosition:Z

    .line 94
    invoke-direct {p0, p2}, Lcom/kyleduo/switchbutton/SwitchButton;->init(Landroid/util/AttributeSet;)V

    .line 95
    return-void
.end method

.method private catchView()V
    .locals 2

    .prologue
    .line 622
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 623
    .local v0, "parent":Landroid/view/ViewParent;
    if-eqz v0, :cond_0

    .line 624
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 626
    :cond_0
    return-void
.end method

.method private ceil(D)I
    .locals 3
    .param p1, "dimen"    # D

    .prologue
    .line 343
    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method private getStatusBasedOnPos()Z
    .locals 2

    .prologue
    .line 577
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getProcess()F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private init(Landroid/util/AttributeSet;)V
    .locals 38
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 108
    invoke-virtual/range {p0 .. p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getContext()Landroid/content/Context;

    move-result-object v34

    invoke-static/range {v34 .. v34}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v34

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/kyleduo/switchbutton/SwitchButton;->mTouchSlop:I

    .line 109
    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v34

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v35

    add-int v34, v34, v35

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/kyleduo/switchbutton/SwitchButton;->mClickTimeout:I

    .line 111
    new-instance v34, Landroid/graphics/Paint;

    const/16 v35, 0x1

    invoke-direct/range {v34 .. v35}, Landroid/graphics/Paint;-><init>(I)V

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kyleduo/switchbutton/SwitchButton;->mPaint:Landroid/graphics/Paint;

    .line 112
    new-instance v34, Landroid/graphics/Paint;

    const/16 v35, 0x1

    invoke-direct/range {v34 .. v35}, Landroid/graphics/Paint;-><init>(I)V

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kyleduo/switchbutton/SwitchButton;->mRectPaint:Landroid/graphics/Paint;

    .line 113
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mRectPaint:Landroid/graphics/Paint;

    move-object/from16 v34, v0

    sget-object v35, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual/range {v34 .. v35}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 114
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mRectPaint:Landroid/graphics/Paint;

    move-object/from16 v34, v0

    invoke-virtual/range {p0 .. p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getResources()Landroid/content/res/Resources;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v35

    move-object/from16 v0, v35

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    move/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 116
    invoke-virtual/range {p0 .. p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getPaint()Landroid/text/TextPaint;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kyleduo/switchbutton/SwitchButton;->mTextPaint:Landroid/text/TextPaint;

    .line 118
    new-instance v34, Landroid/graphics/RectF;

    invoke-direct/range {v34 .. v34}, Landroid/graphics/RectF;-><init>()V

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbRectF:Landroid/graphics/RectF;

    .line 119
    new-instance v34, Landroid/graphics/RectF;

    invoke-direct/range {v34 .. v34}, Landroid/graphics/RectF;-><init>()V

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kyleduo/switchbutton/SwitchButton;->mBackRectF:Landroid/graphics/RectF;

    .line 120
    new-instance v34, Landroid/graphics/RectF;

    invoke-direct/range {v34 .. v34}, Landroid/graphics/RectF;-><init>()V

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kyleduo/switchbutton/SwitchButton;->mSafeRectF:Landroid/graphics/RectF;

    .line 121
    new-instance v34, Landroid/graphics/PointF;

    invoke-direct/range {v34 .. v34}, Landroid/graphics/PointF;-><init>()V

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbSizeF:Landroid/graphics/PointF;

    .line 122
    new-instance v34, Landroid/graphics/RectF;

    invoke-direct/range {v34 .. v34}, Landroid/graphics/RectF;-><init>()V

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbMargin:Landroid/graphics/RectF;

    .line 123
    new-instance v34, Landroid/graphics/RectF;

    invoke-direct/range {v34 .. v34}, Landroid/graphics/RectF;-><init>()V

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kyleduo/switchbutton/SwitchButton;->mTextOnRectF:Landroid/graphics/RectF;

    .line 124
    new-instance v34, Landroid/graphics/RectF;

    invoke-direct/range {v34 .. v34}, Landroid/graphics/RectF;-><init>()V

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kyleduo/switchbutton/SwitchButton;->mTextOffRectF:Landroid/graphics/RectF;

    .line 126
    const-string v34, "process"

    const/16 v35, 0x2

    move/from16 v0, v35

    new-array v0, v0, [F

    move-object/from16 v35, v0

    fill-array-data v35, :array_0

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v34

    const-wide/16 v36, 0xfa

    move-object/from16 v0, v34

    move-wide/from16 v1, v36

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kyleduo/switchbutton/SwitchButton;->mProcessAnimator:Landroid/animation/ObjectAnimator;

    .line 127
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mProcessAnimator:Landroid/animation/ObjectAnimator;

    move-object/from16 v34, v0

    new-instance v35, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct/range {v35 .. v35}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual/range {v34 .. v35}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 129
    new-instance v34, Landroid/graphics/RectF;

    invoke-direct/range {v34 .. v34}, Landroid/graphics/RectF;-><init>()V

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kyleduo/switchbutton/SwitchButton;->mPresentThumbRectF:Landroid/graphics/RectF;

    .line 131
    invoke-virtual/range {p0 .. p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    .line 132
    .local v22, "res":Landroid/content/res/Resources;
    invoke-virtual/range {v22 .. v22}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v34

    move-object/from16 v0, v34

    iget v13, v0, Landroid/util/DisplayMetrics;->density:F

    .line 134
    .local v13, "density":F
    const/16 v28, 0x0

    .line 135
    .local v28, "thumbDrawable":Landroid/graphics/drawable/Drawable;
    const/16 v27, 0x0

    .line 136
    .local v27, "thumbColor":Landroid/content/res/ColorStateList;
    const/high16 v34, 0x40000000    # 2.0f

    mul-float v17, v13, v34

    .line 137
    .local v17, "margin":F
    const/16 v19, 0x0

    .line 138
    .local v19, "marginLeft":F
    const/16 v20, 0x0

    .line 139
    .local v20, "marginRight":F
    const/16 v21, 0x0

    .line 140
    .local v21, "marginTop":F
    const/16 v18, 0x0

    .line 141
    .local v18, "marginBottom":F
    const/high16 v34, 0x41a00000    # 20.0f

    mul-float v31, v13, v34

    .line 142
    .local v31, "thumbWidth":F
    const/high16 v34, 0x41a00000    # 20.0f

    mul-float v29, v13, v34

    .line 143
    .local v29, "thumbHeight":F
    const/high16 v34, 0x41a00000    # 20.0f

    mul-float v34, v34, v13

    const/high16 v35, 0x40000000    # 2.0f

    div-float v30, v34, v35

    .line 144
    .local v30, "thumbRadius":F
    move/from16 v11, v30

    .line 145
    .local v11, "backRadius":F
    const/4 v9, 0x0

    .line 146
    .local v9, "backDrawable":Landroid/graphics/drawable/Drawable;
    const/4 v8, 0x0

    .line 147
    .local v8, "backColor":Landroid/content/res/ColorStateList;
    const v10, 0x3fe66666    # 1.8f

    .line 148
    .local v10, "backMeasureRatio":F
    const/16 v6, 0xfa

    .line 149
    .local v6, "animationDuration":I
    const/4 v14, 0x1

    .line 150
    .local v14, "fadeBack":Z
    const/16 v32, 0x0

    .line 151
    .local v32, "tintColor":I
    const/16 v26, 0x0

    .line 152
    .local v26, "textOn":Ljava/lang/String;
    const/16 v25, 0x0

    .line 153
    .local v25, "textOff":Ljava/lang/String;
    const/high16 v34, 0x40000000    # 2.0f

    mul-float v24, v13, v34

    .line 154
    .local v24, "textMarginH":F
    const/4 v7, 0x1

    .line 156
    .local v7, "autoAdjustTextPosition":Z
    if-nez p1, :cond_8

    const/16 v23, 0x0

    .line 157
    .local v23, "ta":Landroid/content/res/TypedArray;
    :goto_0
    if-eqz v23, :cond_0

    .line 158
    sget v34, Lcom/kyleduo/switchbutton/R$styleable;->SwitchButton_kswThumbDrawable:I

    move-object/from16 v0, v23

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v28

    .line 159
    sget v34, Lcom/kyleduo/switchbutton/R$styleable;->SwitchButton_kswThumbColor:I

    move-object/from16 v0, v23

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v27

    .line 160
    sget v34, Lcom/kyleduo/switchbutton/R$styleable;->SwitchButton_kswThumbMargin:I

    move-object/from16 v0, v23

    move/from16 v1, v34

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v17

    .line 161
    sget v34, Lcom/kyleduo/switchbutton/R$styleable;->SwitchButton_kswThumbMarginLeft:I

    move-object/from16 v0, v23

    move/from16 v1, v34

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v19

    .line 162
    sget v34, Lcom/kyleduo/switchbutton/R$styleable;->SwitchButton_kswThumbMarginRight:I

    move-object/from16 v0, v23

    move/from16 v1, v34

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v20

    .line 163
    sget v34, Lcom/kyleduo/switchbutton/R$styleable;->SwitchButton_kswThumbMarginTop:I

    move-object/from16 v0, v23

    move/from16 v1, v34

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v21

    .line 164
    sget v34, Lcom/kyleduo/switchbutton/R$styleable;->SwitchButton_kswThumbMarginBottom:I

    move-object/from16 v0, v23

    move/from16 v1, v34

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v18

    .line 165
    sget v34, Lcom/kyleduo/switchbutton/R$styleable;->SwitchButton_kswThumbWidth:I

    move-object/from16 v0, v23

    move/from16 v1, v34

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v31

    .line 166
    sget v34, Lcom/kyleduo/switchbutton/R$styleable;->SwitchButton_kswThumbHeight:I

    move-object/from16 v0, v23

    move/from16 v1, v34

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v29

    .line 167
    sget v34, Lcom/kyleduo/switchbutton/R$styleable;->SwitchButton_kswThumbRadius:I

    move/from16 v0, v31

    move/from16 v1, v29

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v35

    const/high16 v36, 0x40000000    # 2.0f

    div-float v35, v35, v36

    move-object/from16 v0, v23

    move/from16 v1, v34

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v30

    .line 168
    sget v34, Lcom/kyleduo/switchbutton/R$styleable;->SwitchButton_kswBackRadius:I

    const/high16 v35, 0x40000000    # 2.0f

    mul-float v35, v35, v13

    add-float v35, v35, v30

    move-object/from16 v0, v23

    move/from16 v1, v34

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v11

    .line 169
    sget v34, Lcom/kyleduo/switchbutton/R$styleable;->SwitchButton_kswBackDrawable:I

    move-object/from16 v0, v23

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 170
    sget v34, Lcom/kyleduo/switchbutton/R$styleable;->SwitchButton_kswBackColor:I

    move-object/from16 v0, v23

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v8

    .line 171
    sget v34, Lcom/kyleduo/switchbutton/R$styleable;->SwitchButton_kswBackMeasureRatio:I

    move-object/from16 v0, v23

    move/from16 v1, v34

    invoke-virtual {v0, v1, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v10

    .line 172
    sget v34, Lcom/kyleduo/switchbutton/R$styleable;->SwitchButton_kswAnimationDuration:I

    move-object/from16 v0, v23

    move/from16 v1, v34

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v6

    .line 173
    sget v34, Lcom/kyleduo/switchbutton/R$styleable;->SwitchButton_kswFadeBack:I

    const/16 v35, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v34

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v14

    .line 174
    sget v34, Lcom/kyleduo/switchbutton/R$styleable;->SwitchButton_kswTintColor:I

    move-object/from16 v0, v23

    move/from16 v1, v34

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v32

    .line 175
    sget v34, Lcom/kyleduo/switchbutton/R$styleable;->SwitchButton_kswTextOn:I

    move-object/from16 v0, v23

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v26

    .line 176
    sget v34, Lcom/kyleduo/switchbutton/R$styleable;->SwitchButton_kswTextOff:I

    move-object/from16 v0, v23

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v25

    .line 177
    const/high16 v34, 0x40000000    # 2.0f

    div-float v34, v11, v34

    move/from16 v0, v24

    move/from16 v1, v34

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v24

    .line 178
    sget v34, Lcom/kyleduo/switchbutton/R$styleable;->SwitchButton_kswTextMarginH:I

    move-object/from16 v0, v23

    move/from16 v1, v34

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v24

    .line 179
    sget v34, Lcom/kyleduo/switchbutton/R$styleable;->SwitchButton_kswAutoAdjustTextPosition:I

    move-object/from16 v0, v23

    move/from16 v1, v34

    invoke-virtual {v0, v1, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    .line 180
    invoke-virtual/range {v23 .. v23}, Landroid/content/res/TypedArray;->recycle()V

    .line 184
    :cond_0
    if-nez p1, :cond_9

    const/16 v23, 0x0

    .line 185
    :goto_1
    if-eqz v23, :cond_1

    .line 186
    const/16 v34, 0x0

    const/16 v35, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v34

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v15

    .line 188
    .local v15, "focusable":Z
    const/16 v34, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v34

    invoke-virtual {v0, v1, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v12

    .line 189
    .local v12, "clickable":Z
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/kyleduo/switchbutton/SwitchButton;->setFocusable(Z)V

    .line 190
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/kyleduo/switchbutton/SwitchButton;->setClickable(Z)V

    .line 191
    invoke-virtual/range {v23 .. v23}, Landroid/content/res/TypedArray;->recycle()V

    .line 195
    .end local v12    # "clickable":Z
    .end local v15    # "focusable":Z
    :cond_1
    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kyleduo/switchbutton/SwitchButton;->mTextOn:Ljava/lang/CharSequence;

    .line 196
    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kyleduo/switchbutton/SwitchButton;->mTextOff:Ljava/lang/CharSequence;

    .line 197
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/kyleduo/switchbutton/SwitchButton;->mTextMarginH:F

    .line 198
    move-object/from16 v0, p0

    iput-boolean v7, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mAutoAdjustTextPosition:Z

    .line 201
    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 202
    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbColor:Landroid/content/res/ColorStateList;

    .line 203
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v34, v0

    if-eqz v34, :cond_a

    const/16 v34, 0x1

    :goto_2
    move/from16 v0, v34

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/kyleduo/switchbutton/SwitchButton;->mIsThumbUseDrawable:Z

    .line 204
    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Lcom/kyleduo/switchbutton/SwitchButton;->mTintColor:I

    .line 205
    move-object/from16 v0, p0

    iget v0, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mTintColor:I

    move/from16 v34, v0

    if-nez v34, :cond_2

    .line 206
    new-instance v33, Landroid/util/TypedValue;

    invoke-direct/range {v33 .. v33}, Landroid/util/TypedValue;-><init>()V

    .line 207
    .local v33, "typedValue":Landroid/util/TypedValue;
    invoke-virtual/range {p0 .. p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getContext()Landroid/content/Context;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v34

    sget v35, Lcom/kyleduo/switchbutton/R$attr;->colorAccent:I

    const/16 v36, 0x1

    move-object/from16 v0, v34

    move/from16 v1, v35

    move-object/from16 v2, v33

    move/from16 v3, v36

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v16

    .line 208
    .local v16, "found":Z
    if-eqz v16, :cond_b

    .line 209
    move-object/from16 v0, v33

    iget v0, v0, Landroid/util/TypedValue;->data:I

    move/from16 v34, v0

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/kyleduo/switchbutton/SwitchButton;->mTintColor:I

    .line 214
    .end local v16    # "found":Z
    .end local v33    # "typedValue":Landroid/util/TypedValue;
    :cond_2
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mIsThumbUseDrawable:Z

    move/from16 v34, v0

    if-nez v34, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbColor:Landroid/content/res/ColorStateList;

    move-object/from16 v34, v0

    if-nez v34, :cond_3

    .line 215
    move-object/from16 v0, p0

    iget v0, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mTintColor:I

    move/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/kyleduo/switchbutton/ColorUtils;->generateThumbColorWithTintColor(I)Landroid/content/res/ColorStateList;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbColor:Landroid/content/res/ColorStateList;

    .line 216
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbColor:Landroid/content/res/ColorStateList;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v34

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/kyleduo/switchbutton/SwitchButton;->mCurrThumbColor:I

    .line 218
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mIsThumbUseDrawable:Z

    move/from16 v34, v0

    if-eqz v34, :cond_4

    .line 219
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v34

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v34, v0

    move/from16 v0, v31

    move/from16 v1, v34

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v31

    .line 220
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v34

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v34, v0

    move/from16 v0, v29

    move/from16 v1, v34

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v29

    .line 222
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbSizeF:Landroid/graphics/PointF;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move/from16 v1, v31

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 225
    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackDrawable:Landroid/graphics/drawable/Drawable;

    .line 226
    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackColor:Landroid/content/res/ColorStateList;

    .line 227
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v34, v0

    if-eqz v34, :cond_c

    const/16 v34, 0x1

    :goto_4
    move/from16 v0, v34

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/kyleduo/switchbutton/SwitchButton;->mIsBackUseDrawable:Z

    .line 228
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mIsBackUseDrawable:Z

    move/from16 v34, v0

    if-nez v34, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackColor:Landroid/content/res/ColorStateList;

    move-object/from16 v34, v0

    if-nez v34, :cond_5

    .line 229
    move-object/from16 v0, p0

    iget v0, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mTintColor:I

    move/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/kyleduo/switchbutton/ColorUtils;->generateBackColorWithTintColor(I)Landroid/content/res/ColorStateList;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kyleduo/switchbutton/SwitchButton;->mBackColor:Landroid/content/res/ColorStateList;

    .line 230
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackColor:Landroid/content/res/ColorStateList;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v34

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/kyleduo/switchbutton/SwitchButton;->mCurrBackColor:I

    .line 231
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackColor:Landroid/content/res/ColorStateList;

    move-object/from16 v34, v0

    sget-object v35, Lcom/kyleduo/switchbutton/SwitchButton;->CHECKED_PRESSED_STATE:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mCurrBackColor:I

    move/from16 v36, v0

    invoke-virtual/range {v34 .. v36}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v34

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/kyleduo/switchbutton/SwitchButton;->mNextBackColor:I

    .line 235
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbMargin:Landroid/graphics/RectF;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move/from16 v1, v19

    move/from16 v2, v21

    move/from16 v3, v20

    move/from16 v4, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 238
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbMargin:Landroid/graphics/RectF;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/graphics/RectF;->width()F

    move-result v34

    const/16 v35, 0x0

    cmpl-float v34, v34, v35

    if-ltz v34, :cond_6

    const/high16 v34, 0x3f800000    # 1.0f

    move/from16 v0, v34

    invoke-static {v10, v0}, Ljava/lang/Math;->max(FF)F

    move-result v10

    .end local v10    # "backMeasureRatio":F
    :cond_6
    move-object/from16 v0, p0

    iput v10, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackMeasureRatio:F

    .line 240
    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbRadius:F

    .line 241
    move-object/from16 v0, p0

    iput v11, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackRadius:F

    .line 242
    int-to-long v0, v6

    move-wide/from16 v34, v0

    move-wide/from16 v0, v34

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/kyleduo/switchbutton/SwitchButton;->mAnimationDuration:J

    .line 243
    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mFadeBack:Z

    .line 245
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mProcessAnimator:Landroid/animation/ObjectAnimator;

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mAnimationDuration:J

    move-wide/from16 v36, v0

    move-object/from16 v0, v34

    move-wide/from16 v1, v36

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 248
    invoke-virtual/range {p0 .. p0}, Lcom/kyleduo/switchbutton/SwitchButton;->isChecked()Z

    move-result v34

    if-eqz v34, :cond_7

    .line 249
    const/high16 v34, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/kyleduo/switchbutton/SwitchButton;->setProcess(F)V

    .line 251
    :cond_7
    return-void

    .line 156
    .end local v23    # "ta":Landroid/content/res/TypedArray;
    .restart local v10    # "backMeasureRatio":F
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getContext()Landroid/content/Context;

    move-result-object v34

    sget-object v35, Lcom/kyleduo/switchbutton/R$styleable;->SwitchButton:[I

    move-object/from16 v0, v34

    move-object/from16 v1, p1

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v23

    goto/16 :goto_0

    .line 184
    .restart local v23    # "ta":Landroid/content/res/TypedArray;
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getContext()Landroid/content/Context;

    move-result-object v34

    const/16 v35, 0x2

    move/from16 v0, v35

    new-array v0, v0, [I

    move-object/from16 v35, v0

    fill-array-data v35, :array_1

    move-object/from16 v0, v34

    move-object/from16 v1, p1

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v23

    goto/16 :goto_1

    .line 203
    :cond_a
    const/16 v34, 0x0

    goto/16 :goto_2

    .line 211
    .restart local v16    # "found":Z
    .restart local v33    # "typedValue":Landroid/util/TypedValue;
    :cond_b
    const v34, 0x327fc2

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/kyleduo/switchbutton/SwitchButton;->mTintColor:I

    goto/16 :goto_3

    .line 227
    .end local v16    # "found":Z
    .end local v33    # "typedValue":Landroid/util/TypedValue;
    :cond_c
    const/16 v34, 0x0

    goto/16 :goto_4

    .line 126
    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    .line 184
    :array_1
    .array-data 4
        0x10100da
        0x10100e5
    .end array-data
.end method

.method private makeLayout(Ljava/lang/CharSequence;)Landroid/text/Layout;
    .locals 8
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 255
    new-instance v0, Landroid/text/StaticLayout;

    iget-object v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mTextPaint:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mTextPaint:Landroid/text/TextPaint;

    invoke-static {p1, v1}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v1

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v3, v4

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    return-object v0
.end method

.method private measureHeight(I)I
    .locals 10
    .param p1, "heightMeasureSpec"    # I

    .prologue
    const/4 v6, 0x0

    .line 306
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 307
    .local v0, "heightMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 310
    .local v1, "heightSize":I
    iget-object v7, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbSizeF:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->y:F

    iget-object v8, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbSizeF:Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->y:F

    iget-object v9, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbMargin:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->top:F

    add-float/2addr v8, v9

    iget-object v9, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbMargin:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->right:F

    add-float/2addr v8, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v7

    float-to-double v8, v7

    invoke-direct {p0, v8, v9}, Lcom/kyleduo/switchbutton/SwitchButton;->ceil(D)I

    move-result v3

    .line 311
    .local v3, "minHeight":I
    iget-object v7, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mOnLayout:Landroid/text/Layout;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mOnLayout:Landroid/text/Layout;

    invoke-virtual {v7}, Landroid/text/Layout;->getHeight()I

    move-result v7

    int-to-float v5, v7

    .line 312
    .local v5, "onHeight":F
    :goto_0
    iget-object v7, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mOffLayout:Landroid/text/Layout;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mOffLayout:Landroid/text/Layout;

    invoke-virtual {v7}, Landroid/text/Layout;->getHeight()I

    move-result v7

    int-to-float v4, v7

    .line 313
    .local v4, "offHeight":F
    :goto_1
    cmpl-float v7, v5, v6

    if-nez v7, :cond_0

    cmpl-float v7, v4, v6

    if-eqz v7, :cond_4

    .line 314
    :cond_0
    invoke-static {v5, v4}, Ljava/lang/Math;->max(FF)F

    move-result v6

    iput v6, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mTextHeight:F

    .line 315
    int-to-float v6, v3

    iget v7, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mTextHeight:F

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    float-to-double v6, v6

    invoke-direct {p0, v6, v7}, Lcom/kyleduo/switchbutton/SwitchButton;->ceil(D)I

    move-result v3

    .line 319
    :goto_2
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getSuggestedMinimumHeight()I

    move-result v6

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 320
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getPaddingTop()I

    move-result v6

    add-int/2addr v6, v3

    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getPaddingBottom()I

    move-result v7

    add-int/2addr v6, v7

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 322
    const/high16 v6, 0x40000000    # 2.0f

    if-ne v0, v6, :cond_5

    .line 323
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 331
    .local v2, "measuredHeight":I
    :cond_1
    :goto_3
    return v2

    .end local v2    # "measuredHeight":I
    .end local v4    # "offHeight":F
    .end local v5    # "onHeight":F
    :cond_2
    move v5, v6

    .line 311
    goto :goto_0

    .restart local v5    # "onHeight":F
    :cond_3
    move v4, v6

    .line 312
    goto :goto_1

    .line 317
    .restart local v4    # "offHeight":F
    :cond_4
    iput v6, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mTextHeight:F

    goto :goto_2

    .line 325
    :cond_5
    move v2, v3

    .line 326
    .restart local v2    # "measuredHeight":I
    const/high16 v6, -0x80000000

    if-ne v0, v6, :cond_1

    .line 327
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_3
.end method

.method private measureWidth(I)I
    .locals 10
    .param p1, "widthMeasureSpec"    # I

    .prologue
    const/4 v7, 0x0

    .line 270
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 271
    .local v6, "widthSize":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 274
    .local v5, "widthMode":I
    iget-object v8, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbSizeF:Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->x:F

    iget v9, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackMeasureRatio:F

    mul-float/2addr v8, v9

    float-to-double v8, v8

    invoke-direct {p0, v8, v9}, Lcom/kyleduo/switchbutton/SwitchButton;->ceil(D)I

    move-result v2

    .line 275
    .local v2, "minWidth":I
    iget-boolean v8, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mIsBackUseDrawable:Z

    if-eqz v8, :cond_0

    .line 276
    iget-object v8, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v8

    invoke-static {v2, v8}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 278
    :cond_0
    iget-object v8, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mOnLayout:Landroid/text/Layout;

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mOnLayout:Landroid/text/Layout;

    invoke-virtual {v8}, Landroid/text/Layout;->getWidth()I

    move-result v8

    int-to-float v4, v8

    .line 279
    .local v4, "onWidth":F
    :goto_0
    iget-object v8, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mOffLayout:Landroid/text/Layout;

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mOffLayout:Landroid/text/Layout;

    invoke-virtual {v8}, Landroid/text/Layout;->getWidth()I

    move-result v8

    int-to-float v3, v8

    .line 280
    .local v3, "offWidth":F
    :goto_1
    cmpl-float v8, v4, v7

    if-nez v8, :cond_1

    cmpl-float v8, v3, v7

    if-eqz v8, :cond_6

    .line 281
    :cond_1
    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v7

    iget v8, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mTextMarginH:F

    const/high16 v9, 0x40000000    # 2.0f

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    iput v7, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mTextWidth:F

    .line 282
    int-to-float v7, v2

    iget-object v8, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbSizeF:Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->x:F

    sub-float v0, v7, v8

    .line 283
    .local v0, "left":F
    iget v7, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mTextWidth:F

    cmpg-float v7, v0, v7

    if-gez v7, :cond_2

    .line 284
    int-to-float v7, v2

    iget v8, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mTextWidth:F

    sub-float/2addr v8, v0

    add-float/2addr v7, v8

    float-to-int v2, v7

    .line 289
    .end local v0    # "left":F
    :cond_2
    :goto_2
    int-to-float v7, v2

    iget-object v8, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbMargin:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->left:F

    add-float/2addr v7, v8

    iget-object v8, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbMargin:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->right:F

    add-float/2addr v7, v8

    float-to-double v8, v7

    invoke-direct {p0, v8, v9}, Lcom/kyleduo/switchbutton/SwitchButton;->ceil(D)I

    move-result v7

    invoke-static {v2, v7}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 290
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getPaddingLeft()I

    move-result v7

    add-int/2addr v7, v2

    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getPaddingRight()I

    move-result v8

    add-int/2addr v7, v8

    invoke-static {v2, v7}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 291
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getSuggestedMinimumWidth()I

    move-result v7

    invoke-static {v2, v7}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 293
    const/high16 v7, 0x40000000    # 2.0f

    if-ne v5, v7, :cond_7

    .line 294
    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 302
    .local v1, "measuredWidth":I
    :cond_3
    :goto_3
    return v1

    .end local v1    # "measuredWidth":I
    .end local v3    # "offWidth":F
    .end local v4    # "onWidth":F
    :cond_4
    move v4, v7

    .line 278
    goto :goto_0

    .restart local v4    # "onWidth":F
    :cond_5
    move v3, v7

    .line 279
    goto :goto_1

    .line 287
    .restart local v3    # "offWidth":F
    :cond_6
    iput v7, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mTextWidth:F

    goto :goto_2

    .line 296
    :cond_7
    move v1, v2

    .line 297
    .restart local v1    # "measuredWidth":I
    const/high16 v7, -0x80000000

    if-ne v5, v7, :cond_3

    .line 298
    invoke-static {v1, v6}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_3
.end method

.method private setDrawableState(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 697
    if-eqz p1, :cond_0

    .line 698
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getDrawableState()[I

    move-result-object v0

    .line 699
    .local v0, "myDrawableState":[I
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 700
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->invalidate()V

    .line 702
    .end local v0    # "myDrawableState":[I
    :cond_0
    return-void
.end method

.method private setup()V
    .locals 22

    .prologue
    .line 350
    invoke-virtual/range {p0 .. p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getPaddingTop()I

    move-result v15

    int-to-float v15, v15

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbMargin:Landroid/graphics/RectF;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v17, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->max(FF)F

    move-result v16

    add-float v14, v15, v16

    .line 351
    .local v14, "thumbTop":F
    invoke-virtual/range {p0 .. p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getPaddingLeft()I

    move-result v15

    int-to-float v15, v15

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbMargin:Landroid/graphics/RectF;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v17, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->max(FF)F

    move-result v16

    add-float v13, v15, v16

    .line 353
    .local v13, "thumbLeft":F
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mOnLayout:Landroid/text/Layout;

    if-eqz v15, :cond_0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mOffLayout:Landroid/text/Layout;

    if-eqz v15, :cond_0

    .line 354
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbMargin:Landroid/graphics/RectF;

    iget v15, v15, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbMargin:Landroid/graphics/RectF;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v16, v0

    add-float v15, v15, v16

    const/16 v16, 0x0

    cmpl-float v15, v15, v16

    if-lez v15, :cond_0

    .line 356
    invoke-virtual/range {p0 .. p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getMeasuredHeight()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getPaddingBottom()I

    move-result v16

    sub-int v15, v15, v16

    invoke-virtual/range {p0 .. p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getPaddingTop()I

    move-result v16

    sub-int v15, v15, v16

    int-to-float v15, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbSizeF:Landroid/graphics/PointF;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v16, v0

    sub-float v15, v15, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbMargin:Landroid/graphics/RectF;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v16, v0

    sub-float v15, v15, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbMargin:Landroid/graphics/RectF;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v16, v0

    sub-float v15, v15, v16

    const/high16 v16, 0x40000000    # 2.0f

    div-float v4, v15, v16

    .line 357
    .local v4, "addition":F
    add-float/2addr v14, v4

    .line 361
    .end local v4    # "addition":F
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mIsThumbUseDrawable:Z

    if-eqz v15, :cond_1

    .line 362
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbSizeF:Landroid/graphics/PointF;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbSizeF:Landroid/graphics/PointF;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->max(FF)F

    move-result v16

    move/from16 v0, v16

    iput v0, v15, Landroid/graphics/PointF;->x:F

    .line 363
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbSizeF:Landroid/graphics/PointF;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbSizeF:Landroid/graphics/PointF;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->max(FF)F

    move-result v16

    move/from16 v0, v16

    iput v0, v15, Landroid/graphics/PointF;->y:F

    .line 366
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbRectF:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbSizeF:Landroid/graphics/PointF;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v16, v0

    add-float v16, v16, v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbSizeF:Landroid/graphics/PointF;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v17, v0

    add-float v17, v17, v14

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v15, v13, v14, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 368
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbRectF:Landroid/graphics/RectF;

    iget v15, v15, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbMargin:Landroid/graphics/RectF;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v16, v0

    sub-float v5, v15, v16

    .line 369
    .local v5, "backLeft":F
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbSizeF:Landroid/graphics/PointF;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackMeasureRatio:F

    move/from16 v17, v0

    mul-float v16, v16, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbSizeF:Landroid/graphics/PointF;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mTextWidth:F

    move/from16 v18, v0

    add-float v17, v17, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->max(FF)F

    move-result v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbRectF:Landroid/graphics/RectF;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/RectF;->width()F

    move-result v17

    sub-float v16, v16, v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mTextWidth:F

    move/from16 v17, v0

    sub-float v16, v16, v17

    const/high16 v17, 0x40000000    # 2.0f

    div-float v16, v16, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->min(FF)F

    move-result v12

    .line 370
    .local v12, "textDiffWidth":F
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbRectF:Landroid/graphics/RectF;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/RectF;->height()F

    move-result v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbMargin:Landroid/graphics/RectF;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v17, v0

    add-float v16, v16, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbMargin:Landroid/graphics/RectF;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v17, v0

    add-float v16, v16, v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mTextHeight:F

    move/from16 v17, v0

    sub-float v16, v16, v17

    const/high16 v17, 0x40000000    # 2.0f

    div-float v16, v16, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->min(FF)F

    move-result v11

    .line 371
    .local v11, "textDiffHeight":F
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackRectF:Landroid/graphics/RectF;

    add-float v16, v5, v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbRectF:Landroid/graphics/RectF;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbMargin:Landroid/graphics/RectF;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v18, v0

    sub-float v17, v17, v18

    add-float v17, v17, v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbMargin:Landroid/graphics/RectF;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v18, v0

    add-float v18, v18, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbSizeF:Landroid/graphics/PointF;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackMeasureRatio:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbSizeF:Landroid/graphics/PointF;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mTextWidth:F

    move/from16 v21, v0

    add-float v20, v20, v21

    .line 373
    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->max(FF)F

    move-result v19

    add-float v18, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbMargin:Landroid/graphics/RectF;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v19, v0

    add-float v18, v18, v19

    sub-float v18, v18, v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbRectF:Landroid/graphics/RectF;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbMargin:Landroid/graphics/RectF;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v20, v0

    add-float v19, v19, v20

    sub-float v19, v19, v11

    .line 371
    invoke-virtual/range {v15 .. v19}, Landroid/graphics/RectF;->set(FFFF)V

    .line 376
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mSafeRectF:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbRectF:Landroid/graphics/RectF;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackRectF:Landroid/graphics/RectF;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbMargin:Landroid/graphics/RectF;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v19, v0

    sub-float v18, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbRectF:Landroid/graphics/RectF;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/RectF;->width()F

    move-result v19

    sub-float v18, v18, v19

    const/16 v19, 0x0

    invoke-virtual/range {v15 .. v19}, Landroid/graphics/RectF;->set(FFFF)V

    .line 378
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackRectF:Landroid/graphics/RectF;

    invoke-virtual {v15}, Landroid/graphics/RectF;->width()F

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackRectF:Landroid/graphics/RectF;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/RectF;->height()F

    move-result v16

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->min(FF)F

    move-result v15

    const/high16 v16, 0x40000000    # 2.0f

    div-float v10, v15, v16

    .line 379
    .local v10, "minBackRadius":F
    move-object/from16 v0, p0

    iget v15, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackRadius:F

    invoke-static {v10, v15}, Ljava/lang/Math;->min(FF)F

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackRadius:F

    .line 381
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v15, :cond_2

    .line 382
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackRectF:Landroid/graphics/RectF;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v16, v0

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackRectF:Landroid/graphics/RectF;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v17, v0

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackRectF:Landroid/graphics/RectF;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v18, v0

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-direct {v0, v1, v2}, Lcom/kyleduo/switchbutton/SwitchButton;->ceil(D)I

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackRectF:Landroid/graphics/RectF;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v19, v0

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-direct {v0, v1, v2}, Lcom/kyleduo/switchbutton/SwitchButton;->ceil(D)I

    move-result v19

    invoke-virtual/range {v15 .. v19}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 385
    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mOnLayout:Landroid/text/Layout;

    if-eqz v15, :cond_4

    .line 386
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackRectF:Landroid/graphics/RectF;

    iget v15, v15, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackRectF:Landroid/graphics/RectF;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/RectF;->width()F

    move-result v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbRectF:Landroid/graphics/RectF;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/RectF;->width()F

    move-result v17

    sub-float v16, v16, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbMargin:Landroid/graphics/RectF;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v17, v0

    sub-float v16, v16, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mOnLayout:Landroid/text/Layout;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/text/Layout;->getWidth()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    sub-float v16, v16, v17

    const/high16 v17, 0x40000000    # 2.0f

    div-float v16, v16, v17

    add-float v16, v16, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbMargin:Landroid/graphics/RectF;

    iget v15, v15, Landroid/graphics/RectF;->left:F

    const/16 v17, 0x0

    cmpg-float v15, v15, v17

    if-gez v15, :cond_7

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbMargin:Landroid/graphics/RectF;

    iget v15, v15, Landroid/graphics/RectF;->left:F

    const/high16 v17, -0x41000000    # -0.5f

    mul-float v15, v15, v17

    :goto_0
    add-float v8, v16, v15

    .line 387
    .local v8, "marginOnX":F
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mIsBackUseDrawable:Z

    if-nez v15, :cond_3

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mAutoAdjustTextPosition:Z

    if-eqz v15, :cond_3

    .line 388
    move-object/from16 v0, p0

    iget v15, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackRadius:F

    const/high16 v16, 0x40800000    # 4.0f

    div-float v15, v15, v16

    add-float/2addr v8, v15

    .line 390
    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackRectF:Landroid/graphics/RectF;

    iget v15, v15, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackRectF:Landroid/graphics/RectF;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/RectF;->height()F

    move-result v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mOnLayout:Landroid/text/Layout;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/text/Layout;->getHeight()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    sub-float v16, v16, v17

    const/high16 v17, 0x40000000    # 2.0f

    div-float v16, v16, v17

    add-float v9, v15, v16

    .line 391
    .local v9, "marginOnY":F
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mTextOnRectF:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mOnLayout:Landroid/text/Layout;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/text/Layout;->getWidth()I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    add-float v16, v16, v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mOnLayout:Landroid/text/Layout;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/text/Layout;->getHeight()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    add-float v17, v17, v9

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v15, v8, v9, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 394
    .end local v8    # "marginOnX":F
    .end local v9    # "marginOnY":F
    :cond_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mOffLayout:Landroid/text/Layout;

    if-eqz v15, :cond_6

    .line 395
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackRectF:Landroid/graphics/RectF;

    iget v15, v15, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackRectF:Landroid/graphics/RectF;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/RectF;->width()F

    move-result v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbRectF:Landroid/graphics/RectF;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/RectF;->width()F

    move-result v17

    sub-float v16, v16, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbMargin:Landroid/graphics/RectF;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v17, v0

    sub-float v16, v16, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mOffLayout:Landroid/text/Layout;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/text/Layout;->getWidth()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    sub-float v16, v16, v17

    const/high16 v17, 0x40000000    # 2.0f

    div-float v16, v16, v17

    sub-float v15, v15, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mOffLayout:Landroid/text/Layout;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/text/Layout;->getWidth()I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    sub-float v16, v15, v16

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbMargin:Landroid/graphics/RectF;

    iget v15, v15, Landroid/graphics/RectF;->right:F

    const/16 v17, 0x0

    cmpg-float v15, v15, v17

    if-gez v15, :cond_8

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbMargin:Landroid/graphics/RectF;

    iget v15, v15, Landroid/graphics/RectF;->right:F

    const/high16 v17, 0x3f000000    # 0.5f

    mul-float v15, v15, v17

    :goto_1
    add-float v6, v16, v15

    .line 396
    .local v6, "marginOffX":F
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mIsBackUseDrawable:Z

    if-nez v15, :cond_5

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mAutoAdjustTextPosition:Z

    if-eqz v15, :cond_5

    .line 397
    move-object/from16 v0, p0

    iget v15, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackRadius:F

    const/high16 v16, 0x40800000    # 4.0f

    div-float v15, v15, v16

    sub-float/2addr v6, v15

    .line 399
    :cond_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackRectF:Landroid/graphics/RectF;

    iget v15, v15, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackRectF:Landroid/graphics/RectF;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/RectF;->height()F

    move-result v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mOffLayout:Landroid/text/Layout;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/text/Layout;->getHeight()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    sub-float v16, v16, v17

    const/high16 v17, 0x40000000    # 2.0f

    div-float v16, v16, v17

    add-float v7, v15, v16

    .line 400
    .local v7, "marginOffY":F
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mTextOffRectF:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mOffLayout:Landroid/text/Layout;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/text/Layout;->getWidth()I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    add-float v16, v16, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kyleduo/switchbutton/SwitchButton;->mOffLayout:Landroid/text/Layout;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/text/Layout;->getHeight()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    add-float v17, v17, v7

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v15, v6, v7, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 402
    .end local v6    # "marginOffX":F
    .end local v7    # "marginOffY":F
    :cond_6
    return-void

    .line 386
    :cond_7
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 395
    :cond_8
    const/4 v15, 0x0

    goto :goto_1
.end method


# virtual methods
.method protected animateToState(Z)V
    .locals 6
    .param p1, "checked"    # Z

    .prologue
    const/4 v1, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 606
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mProcessAnimator:Landroid/animation/ObjectAnimator;

    if-nez v0, :cond_0

    .line 619
    :goto_0
    return-void

    .line 609
    :cond_0
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mProcessAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 610
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mProcessAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 612
    :cond_1
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mProcessAnimator:Landroid/animation/ObjectAnimator;

    iget-wide v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mAnimationDuration:J

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 613
    if-eqz p1, :cond_2

    .line 614
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mProcessAnimator:Landroid/animation/ObjectAnimator;

    new-array v1, v1, [F

    iget v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mProcess:F

    aput v2, v1, v4

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v1, v5

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 618
    :goto_1
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mProcessAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    .line 616
    :cond_2
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mProcessAnimator:Landroid/animation/ObjectAnimator;

    new-array v1, v1, [F

    iget v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mProcess:F

    aput v2, v1, v4

    const/4 v2, 0x0

    aput v2, v1, v5

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    goto :goto_1
.end method

.method protected drawableStateChanged()V
    .locals 6

    .prologue
    .line 485
    invoke-super {p0}, Landroid/widget/CompoundButton;->drawableStateChanged()V

    .line 487
    iget-boolean v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mIsThumbUseDrawable:Z

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbColor:Landroid/content/res/ColorStateList;

    if-eqz v3, :cond_2

    .line 488
    iget-object v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getDrawableState()[I

    move-result-object v4

    iget v5, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mCurrThumbColor:I

    invoke-virtual {v3, v4, v5}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v3

    iput v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mCurrThumbColor:I

    .line 493
    :goto_0
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object v1, Lcom/kyleduo/switchbutton/SwitchButton;->UNCHECKED_PRESSED_STATE:[I

    .line 494
    .local v1, "nextState":[I
    :goto_1
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 495
    .local v2, "textColors":Landroid/content/res/ColorStateList;
    if-eqz v2, :cond_0

    .line 496
    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    .line 497
    .local v0, "defaultTextColor":I
    sget-object v3, Lcom/kyleduo/switchbutton/SwitchButton;->CHECKED_PRESSED_STATE:[I

    invoke-virtual {v2, v3, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v3

    iput v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mOnTextColor:I

    .line 498
    sget-object v3, Lcom/kyleduo/switchbutton/SwitchButton;->UNCHECKED_PRESSED_STATE:[I

    invoke-virtual {v2, v3, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v3

    iput v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mOffTextColor:I

    .line 500
    .end local v0    # "defaultTextColor":I
    :cond_0
    iget-boolean v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mIsBackUseDrawable:Z

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackColor:Landroid/content/res/ColorStateList;

    if-eqz v3, :cond_4

    .line 501
    iget-object v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getDrawableState()[I

    move-result-object v4

    iget v5, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mCurrBackColor:I

    invoke-virtual {v3, v4, v5}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v3

    iput v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mCurrBackColor:I

    .line 502
    iget-object v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackColor:Landroid/content/res/ColorStateList;

    iget v4, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mCurrBackColor:I

    invoke-virtual {v3, v1, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v3

    iput v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mNextBackColor:I

    .line 515
    :cond_1
    :goto_2
    return-void

    .line 490
    .end local v1    # "nextState":[I
    .end local v2    # "textColors":Landroid/content/res/ColorStateList;
    :cond_2
    iget-object v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v3}, Lcom/kyleduo/switchbutton/SwitchButton;->setDrawableState(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 493
    :cond_3
    sget-object v1, Lcom/kyleduo/switchbutton/SwitchButton;->CHECKED_PRESSED_STATE:[I

    goto :goto_1

    .line 504
    .restart local v1    # "nextState":[I
    .restart local v2    # "textColors":Landroid/content/res/ColorStateList;
    :cond_4
    iget-object v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v3, v3, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v3, :cond_5

    iget-boolean v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mFadeBack:Z

    if-eqz v3, :cond_5

    .line 505
    iget-object v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 506
    iget-object v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mNextBackDrawable:Landroid/graphics/drawable/Drawable;

    .line 510
    :goto_3
    iget-object v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v3}, Lcom/kyleduo/switchbutton/SwitchButton;->setDrawableState(Landroid/graphics/drawable/Drawable;)V

    .line 511
    iget-object v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_1

    .line 512
    iget-object v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mCurrentBackDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    .line 508
    :cond_5
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mNextBackDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_3
.end method

.method public getAnimationDuration()J
    .locals 2

    .prologue
    .line 714
    iget-wide v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mAnimationDuration:J

    return-wide v0
.end method

.method public getBackColor()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 756
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getBackDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 739
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getBackMeasureRatio()F
    .locals 1

    .prologue
    .line 787
    iget v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackMeasureRatio:F

    return v0
.end method

.method public getBackRadius()F
    .locals 1

    .prologue
    .line 855
    iget v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackRadius:F

    return v0
.end method

.method public getBackSizeF()Landroid/graphics/PointF;
    .locals 3

    .prologue
    .line 851
    new-instance v0, Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackRectF:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget-object v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackRectF:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method public final getProcess()F
    .locals 1

    .prologue
    .line 581
    iget v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mProcess:F

    return v0
.end method

.method public getThumbColor()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 772
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getThumbDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 722
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getThumbHeight()F
    .locals 1

    .prologue
    .line 823
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbSizeF:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    return v0
.end method

.method public getThumbMargin()Landroid/graphics/RectF;
    .locals 1

    .prologue
    .line 796
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbMargin:Landroid/graphics/RectF;

    return-object v0
.end method

.method public getThumbRadius()F
    .locals 1

    .prologue
    .line 840
    iget v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbRadius:F

    return v0
.end method

.method public getThumbSizeF()Landroid/graphics/PointF;
    .locals 1

    .prologue
    .line 836
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbSizeF:Landroid/graphics/PointF;

    return-object v0
.end method

.method public getThumbWidth()F
    .locals 1

    .prologue
    .line 819
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbSizeF:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    return v0
.end method

.method public getTintColor()I
    .locals 1

    .prologue
    .line 874
    iget v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mTintColor:I

    return v0
.end method

.method public isDrawDebugRect()Z
    .locals 1

    .prologue
    .line 705
    iget-boolean v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mDrawDebugRect:Z

    return v0
.end method

.method public isFadeBack()Z
    .locals 1

    .prologue
    .line 866
    iget-boolean v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mFadeBack:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 406
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onDraw(Landroid/graphics/Canvas;)V

    .line 409
    iget-boolean v5, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mIsBackUseDrawable:Z

    if-eqz v5, :cond_4

    .line 410
    iget-boolean v5, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mFadeBack:Z

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mCurrentBackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mNextBackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_3

    .line 411
    const/high16 v6, 0x437f0000    # 255.0f

    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getProcess()F

    move-result v5

    :goto_0
    mul-float/2addr v5, v6

    float-to-int v0, v5

    .line 412
    .local v0, "alpha":I
    iget-object v5, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mCurrentBackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 413
    iget-object v5, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mCurrentBackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 414
    rsub-int v0, v0, 0xff

    .line 415
    iget-object v5, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mNextBackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 416
    iget-object v5, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mNextBackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 448
    .end local v0    # "alpha":I
    :goto_1
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getProcess()F

    move-result v5

    float-to-double v6, v5

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    cmpl-double v5, v6, v8

    if-lez v5, :cond_7

    iget-object v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mOnLayout:Landroid/text/Layout;

    .line 449
    .local v2, "switchText":Landroid/text/Layout;
    :goto_2
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getProcess()F

    move-result v5

    float-to-double v6, v5

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    cmpl-double v5, v6, v8

    if-lez v5, :cond_8

    iget-object v4, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mTextOnRectF:Landroid/graphics/RectF;

    .line 450
    .local v4, "textRectF":Landroid/graphics/RectF;
    :goto_3
    if-eqz v2, :cond_0

    if-eqz v4, :cond_0

    .line 451
    const/high16 v6, 0x437f0000    # 255.0f

    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getProcess()F

    move-result v5

    float-to-double v8, v5

    const-wide/high16 v10, 0x3fe8000000000000L    # 0.75

    cmpl-double v5, v8, v10

    if-ltz v5, :cond_9

    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getProcess()F

    move-result v5

    const/high16 v7, 0x40800000    # 4.0f

    mul-float/2addr v5, v7

    const/high16 v7, 0x40400000    # 3.0f

    sub-float/2addr v5, v7

    :goto_4
    mul-float/2addr v5, v6

    float-to-int v0, v5

    .line 452
    .restart local v0    # "alpha":I
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getProcess()F

    move-result v5

    float-to-double v6, v5

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    cmpl-double v5, v6, v8

    if-lez v5, :cond_b

    iget v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mOnTextColor:I

    .line 453
    .local v3, "textColor":I
    :goto_5
    invoke-static {v3}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    .line 454
    .local v1, "colorAlpha":I
    mul-int v5, v1, v0

    div-int/lit16 v1, v5, 0xff

    .line 455
    invoke-virtual {v2}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object v5

    invoke-static {v3}, Landroid/graphics/Color;->red(I)I

    move-result v6

    invoke-static {v3}, Landroid/graphics/Color;->green(I)I

    move-result v7

    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    move-result v8

    invoke-virtual {v5, v1, v6, v7, v8}, Landroid/text/TextPaint;->setARGB(IIII)V

    .line 456
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 457
    iget v5, v4, Landroid/graphics/RectF;->left:F

    iget v6, v4, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 458
    invoke-virtual {v2, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 459
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 463
    .end local v0    # "alpha":I
    .end local v1    # "colorAlpha":I
    .end local v3    # "textColor":I
    :cond_0
    iget-object v5, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mPresentThumbRectF:Landroid/graphics/RectF;

    iget-object v6, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbRectF:Landroid/graphics/RectF;

    invoke-virtual {v5, v6}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 464
    iget-object v5, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mPresentThumbRectF:Landroid/graphics/RectF;

    iget v6, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mProcess:F

    iget-object v7, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mSafeRectF:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v7

    mul-float/2addr v6, v7

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/graphics/RectF;->offset(FF)V

    .line 465
    iget-boolean v5, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mIsThumbUseDrawable:Z

    if-eqz v5, :cond_c

    .line 466
    iget-object v5, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v6, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mPresentThumbRectF:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    float-to-int v6, v6

    iget-object v7, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mPresentThumbRectF:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    float-to-int v7, v7

    iget-object v8, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mPresentThumbRectF:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->right:F

    float-to-double v8, v8

    invoke-direct {p0, v8, v9}, Lcom/kyleduo/switchbutton/SwitchButton;->ceil(D)I

    move-result v8

    iget-object v9, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mPresentThumbRectF:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->bottom:F

    float-to-double v10, v9

    invoke-direct {p0, v10, v11}, Lcom/kyleduo/switchbutton/SwitchButton;->ceil(D)I

    move-result v9

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 467
    iget-object v5, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 473
    :goto_6
    iget-boolean v5, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mDrawDebugRect:Z

    if-eqz v5, :cond_1

    .line 474
    iget-object v5, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mRectPaint:Landroid/graphics/Paint;

    const-string v6, "#AA0000"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 475
    iget-object v5, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackRectF:Landroid/graphics/RectF;

    iget-object v6, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mRectPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 476
    iget-object v5, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mRectPaint:Landroid/graphics/Paint;

    const-string v6, "#0000FF"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 477
    iget-object v5, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mPresentThumbRectF:Landroid/graphics/RectF;

    iget-object v6, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mRectPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 478
    iget-object v5, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mRectPaint:Landroid/graphics/Paint;

    const-string v6, "#00CC00"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 479
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getProcess()F

    move-result v5

    float-to-double v6, v5

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    cmpl-double v5, v6, v8

    if-lez v5, :cond_d

    iget-object v5, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mTextOnRectF:Landroid/graphics/RectF;

    :goto_7
    iget-object v6, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mRectPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 481
    :cond_1
    return-void

    .line 411
    .end local v2    # "switchText":Landroid/text/Layout;
    .end local v4    # "textRectF":Landroid/graphics/RectF;
    :cond_2
    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getProcess()F

    move-result v7

    sub-float/2addr v5, v7

    goto/16 :goto_0

    .line 418
    :cond_3
    iget-object v5, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackDrawable:Landroid/graphics/drawable/Drawable;

    const/16 v6, 0xff

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 419
    iget-object v5, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_1

    .line 422
    :cond_4
    iget-boolean v5, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mFadeBack:Z

    if-eqz v5, :cond_6

    .line 427
    const/high16 v6, 0x437f0000    # 255.0f

    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getProcess()F

    move-result v5

    :goto_8
    mul-float/2addr v5, v6

    float-to-int v0, v5

    .line 428
    .restart local v0    # "alpha":I
    iget v5, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mCurrBackColor:I

    invoke-static {v5}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    .line 429
    .restart local v1    # "colorAlpha":I
    mul-int v5, v1, v0

    div-int/lit16 v1, v5, 0xff

    .line 430
    iget-object v5, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mPaint:Landroid/graphics/Paint;

    iget v6, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mCurrBackColor:I

    invoke-static {v6}, Landroid/graphics/Color;->red(I)I

    move-result v6

    iget v7, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mCurrBackColor:I

    invoke-static {v7}, Landroid/graphics/Color;->green(I)I

    move-result v7

    iget v8, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mCurrBackColor:I

    invoke-static {v8}, Landroid/graphics/Color;->blue(I)I

    move-result v8

    invoke-virtual {v5, v1, v6, v7, v8}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 431
    iget-object v5, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackRectF:Landroid/graphics/RectF;

    iget v6, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackRadius:F

    iget v7, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackRadius:F

    iget-object v8, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6, v7, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 434
    rsub-int v0, v0, 0xff

    .line 435
    iget v5, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mNextBackColor:I

    invoke-static {v5}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    .line 436
    mul-int v5, v1, v0

    div-int/lit16 v1, v5, 0xff

    .line 437
    iget-object v5, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mPaint:Landroid/graphics/Paint;

    iget v6, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mNextBackColor:I

    invoke-static {v6}, Landroid/graphics/Color;->red(I)I

    move-result v6

    iget v7, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mNextBackColor:I

    invoke-static {v7}, Landroid/graphics/Color;->green(I)I

    move-result v7

    iget v8, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mNextBackColor:I

    invoke-static {v8}, Landroid/graphics/Color;->blue(I)I

    move-result v8

    invoke-virtual {v5, v1, v6, v7, v8}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 438
    iget-object v5, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackRectF:Landroid/graphics/RectF;

    iget v6, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackRadius:F

    iget v7, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackRadius:F

    iget-object v8, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6, v7, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 440
    iget-object v5, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mPaint:Landroid/graphics/Paint;

    const/16 v6, 0xff

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    goto/16 :goto_1

    .line 427
    .end local v0    # "alpha":I
    .end local v1    # "colorAlpha":I
    :cond_5
    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getProcess()F

    move-result v7

    sub-float/2addr v5, v7

    goto :goto_8

    .line 442
    :cond_6
    iget-object v5, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mPaint:Landroid/graphics/Paint;

    iget v6, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mCurrBackColor:I

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 443
    iget-object v5, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackRectF:Landroid/graphics/RectF;

    iget v6, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackRadius:F

    iget v7, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackRadius:F

    iget-object v8, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6, v7, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto/16 :goto_1

    .line 448
    :cond_7
    iget-object v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mOffLayout:Landroid/text/Layout;

    goto/16 :goto_2

    .line 449
    .restart local v2    # "switchText":Landroid/text/Layout;
    :cond_8
    iget-object v4, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mTextOffRectF:Landroid/graphics/RectF;

    goto/16 :goto_3

    .line 451
    .restart local v4    # "textRectF":Landroid/graphics/RectF;
    :cond_9
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getProcess()F

    move-result v5

    float-to-double v8, v5

    const-wide/high16 v10, 0x3fd0000000000000L    # 0.25

    cmpg-double v5, v8, v10

    if-gez v5, :cond_a

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getProcess()F

    move-result v7

    const/high16 v8, 0x40800000    # 4.0f

    mul-float/2addr v7, v8

    sub-float/2addr v5, v7

    goto/16 :goto_4

    :cond_a
    const/4 v5, 0x0

    goto/16 :goto_4

    .line 452
    .restart local v0    # "alpha":I
    :cond_b
    iget v3, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mOffTextColor:I

    goto/16 :goto_5

    .line 469
    .end local v0    # "alpha":I
    :cond_c
    iget-object v5, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mPaint:Landroid/graphics/Paint;

    iget v6, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mCurrThumbColor:I

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 470
    iget-object v5, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mPresentThumbRectF:Landroid/graphics/RectF;

    iget v6, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbRadius:F

    iget v7, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbRadius:F

    iget-object v8, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6, v7, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto/16 :goto_6

    .line 479
    :cond_d
    iget-object v5, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mTextOffRectF:Landroid/graphics/RectF;

    goto/16 :goto_7
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 260
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mOnLayout:Landroid/text/Layout;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mTextOn:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mTextOn:Ljava/lang/CharSequence;

    invoke-direct {p0, v0}, Lcom/kyleduo/switchbutton/SwitchButton;->makeLayout(Ljava/lang/CharSequence;)Landroid/text/Layout;

    move-result-object v0

    iput-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mOnLayout:Landroid/text/Layout;

    .line 263
    :cond_0
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mOffLayout:Landroid/text/Layout;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mTextOff:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 264
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mTextOff:Ljava/lang/CharSequence;

    invoke-direct {p0, v0}, Lcom/kyleduo/switchbutton/SwitchButton;->makeLayout(Ljava/lang/CharSequence;)Landroid/text/Layout;

    move-result-object v0

    iput-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mOffLayout:Landroid/text/Layout;

    .line 266
    :cond_1
    invoke-direct {p0, p1}, Lcom/kyleduo/switchbutton/SwitchButton;->measureWidth(I)I

    move-result v0

    invoke-direct {p0, p2}, Lcom/kyleduo/switchbutton/SwitchButton;->measureHeight(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/kyleduo/switchbutton/SwitchButton;->setMeasuredDimension(II)V

    .line 267
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 911
    move-object v0, p1

    check-cast v0, Lcom/kyleduo/switchbutton/SwitchButton$SavedState;

    .line 912
    .local v0, "ss":Lcom/kyleduo/switchbutton/SwitchButton$SavedState;
    iget-object v1, v0, Lcom/kyleduo/switchbutton/SwitchButton$SavedState;->onText:Ljava/lang/CharSequence;

    iget-object v2, v0, Lcom/kyleduo/switchbutton/SwitchButton$SavedState;->offText:Ljava/lang/CharSequence;

    invoke-virtual {p0, v1, v2}, Lcom/kyleduo/switchbutton/SwitchButton;->setText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 913
    invoke-virtual {v0}, Lcom/kyleduo/switchbutton/SwitchButton$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/CompoundButton;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 914
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 902
    invoke-super {p0}, Landroid/widget/CompoundButton;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 903
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Lcom/kyleduo/switchbutton/SwitchButton$SavedState;

    invoke-direct {v0, v1}, Lcom/kyleduo/switchbutton/SwitchButton$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 904
    .local v0, "ss":Lcom/kyleduo/switchbutton/SwitchButton$SavedState;
    iget-object v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mTextOn:Ljava/lang/CharSequence;

    iput-object v2, v0, Lcom/kyleduo/switchbutton/SwitchButton$SavedState;->onText:Ljava/lang/CharSequence;

    .line 905
    iget-object v2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mTextOff:Ljava/lang/CharSequence;

    iput-object v2, v0, Lcom/kyleduo/switchbutton/SwitchButton$SavedState;->offText:Ljava/lang/CharSequence;

    .line 906
    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 336
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/CompoundButton;->onSizeChanged(IIII)V

    .line 337
    if-ne p1, p3, :cond_0

    if-eq p2, p4, :cond_1

    .line 338
    :cond_0
    invoke-direct {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->setup()V

    .line 340
    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 520
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->isEnabled()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->isClickable()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->isFocusable()Z

    move-result v8

    if-nez v8, :cond_1

    :cond_0
    move v6, v7

    .line 567
    :goto_0
    return v6

    .line 524
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 526
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    iget v9, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mStartX:F

    sub-float v1, v8, v9

    .line 527
    .local v1, "deltaX":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    iget v9, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mStartY:F

    sub-float v2, v8, v9

    .line 532
    .local v2, "deltaY":F
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 534
    :pswitch_0
    invoke-direct {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->catchView()V

    .line 535
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    iput v7, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mStartX:F

    .line 536
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    iput v7, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mStartY:F

    .line 537
    iget v7, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mStartX:F

    iput v7, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mLastX:F

    .line 538
    invoke-virtual {p0, v6}, Lcom/kyleduo/switchbutton/SwitchButton;->setPressed(Z)V

    goto :goto_0

    .line 542
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    .line 543
    .local v5, "x":F
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getProcess()F

    move-result v7

    iget v8, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mLastX:F

    sub-float v8, v5, v8

    iget-object v9, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mSafeRectF:Landroid/graphics/RectF;

    invoke-virtual {v9}, Landroid/graphics/RectF;->width()F

    move-result v9

    div-float/2addr v8, v9

    add-float/2addr v7, v8

    invoke-virtual {p0, v7}, Lcom/kyleduo/switchbutton/SwitchButton;->setProcess(F)V

    .line 544
    iput v5, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mLastX:F

    goto :goto_0

    .line 549
    .end local v5    # "x":F
    :pswitch_2
    invoke-virtual {p0, v7}, Lcom/kyleduo/switchbutton/SwitchButton;->setPressed(Z)V

    .line 550
    invoke-direct {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getStatusBasedOnPos()Z

    move-result v3

    .line 551
    .local v3, "nextStatus":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v10

    sub-long/2addr v8, v10

    long-to-float v4, v8

    .line 552
    .local v4, "time":F
    iget v8, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mTouchSlop:I

    int-to-float v8, v8

    cmpg-float v8, v1, v8

    if-gez v8, :cond_2

    iget v8, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mTouchSlop:I

    int-to-float v8, v8

    cmpg-float v8, v2, v8

    if-gez v8, :cond_2

    iget v8, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mClickTimeout:I

    int-to-float v8, v8

    cmpg-float v8, v4, v8

    if-gez v8, :cond_2

    .line 553
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->performClick()Z

    goto :goto_0

    .line 555
    :cond_2
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->isChecked()Z

    move-result v8

    if-eq v3, v8, :cond_3

    .line 556
    invoke-virtual {p0, v7}, Lcom/kyleduo/switchbutton/SwitchButton;->playSoundEffect(I)V

    .line 557
    invoke-virtual {p0, v3}, Lcom/kyleduo/switchbutton/SwitchButton;->setChecked(Z)V

    goto :goto_0

    .line 559
    :cond_3
    invoke-virtual {p0, v3}, Lcom/kyleduo/switchbutton/SwitchButton;->animateToState(Z)V

    goto/16 :goto_0

    .line 532
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public performClick()Z
    .locals 1

    .prologue
    .line 597
    invoke-super {p0}, Landroid/widget/CompoundButton;->performClick()Z

    move-result v0

    return v0
.end method

.method public setAnimationDuration(J)V
    .locals 1
    .param p1, "animationDuration"    # J

    .prologue
    .line 718
    iput-wide p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mAnimationDuration:J

    .line 719
    return-void
.end method

.method public setBackColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "backColor"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 760
    iput-object p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackColor:Landroid/content/res/ColorStateList;

    .line 761
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackColor:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    .line 762
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/kyleduo/switchbutton/SwitchButton;->setBackDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 764
    :cond_0
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->invalidate()V

    .line 765
    return-void
.end method

.method public setBackColorRes(I)V
    .locals 1
    .param p1, "backColorRes"    # I

    .prologue
    .line 768
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v4/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kyleduo/switchbutton/SwitchButton;->setBackColor(Landroid/content/res/ColorStateList;)V

    .line 769
    return-void
.end method

.method public setBackDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "backDrawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 743
    iput-object p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackDrawable:Landroid/graphics/drawable/Drawable;

    .line 744
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mIsBackUseDrawable:Z

    .line 745
    invoke-direct {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->setup()V

    .line 746
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->refreshDrawableState()V

    .line 747
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->requestLayout()V

    .line 748
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->invalidate()V

    .line 749
    return-void

    .line 744
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setBackDrawableRes(I)V
    .locals 1
    .param p1, "backDrawableRes"    # I

    .prologue
    .line 752
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kyleduo/switchbutton/SwitchButton;->setBackDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 753
    return-void
.end method

.method public setBackMeasureRatio(F)V
    .locals 0
    .param p1, "backMeasureRatio"    # F

    .prologue
    .line 791
    iput p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackMeasureRatio:F

    .line 792
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->requestLayout()V

    .line 793
    return-void
.end method

.method public setBackRadius(F)V
    .locals 1
    .param p1, "backRadius"    # F

    .prologue
    .line 859
    iput p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackRadius:F

    .line 860
    iget-boolean v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mIsBackUseDrawable:Z

    if-nez v0, :cond_0

    .line 861
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->invalidate()V

    .line 863
    :cond_0
    return-void
.end method

.method public setChecked(Z)V
    .locals 1
    .param p1, "checked"    # Z

    .prologue
    .line 631
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->isChecked()Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 632
    invoke-virtual {p0, p1}, Lcom/kyleduo/switchbutton/SwitchButton;->animateToState(Z)V

    .line 634
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 635
    return-void
.end method

.method public setCheckedImmediately(Z)V
    .locals 1
    .param p1, "checked"    # Z

    .prologue
    .line 684
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 685
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mProcessAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mProcessAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 686
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mProcessAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 688
    :cond_0
    if-eqz p1, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {p0, v0}, Lcom/kyleduo/switchbutton/SwitchButton;->setProcess(F)V

    .line 689
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->invalidate()V

    .line 690
    return-void

    .line 688
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCheckedImmediatelyNoEvent(Z)V
    .locals 1
    .param p1, "checked"    # Z

    .prologue
    .line 648
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mChildOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    if-nez v0, :cond_0

    .line 649
    invoke-virtual {p0, p1}, Lcom/kyleduo/switchbutton/SwitchButton;->setCheckedImmediately(Z)V

    .line 655
    :goto_0
    return-void

    .line 651
    :cond_0
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 652
    invoke-virtual {p0, p1}, Lcom/kyleduo/switchbutton/SwitchButton;->setCheckedImmediately(Z)V

    .line 653
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mChildOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {p0, v0}, Lcom/kyleduo/switchbutton/SwitchButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0
.end method

.method public setCheckedNoEvent(Z)V
    .locals 1
    .param p1, "checked"    # Z

    .prologue
    .line 638
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mChildOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    if-nez v0, :cond_0

    .line 639
    invoke-virtual {p0, p1}, Lcom/kyleduo/switchbutton/SwitchButton;->setChecked(Z)V

    .line 645
    :goto_0
    return-void

    .line 641
    :cond_0
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 642
    invoke-virtual {p0, p1}, Lcom/kyleduo/switchbutton/SwitchButton;->setChecked(Z)V

    .line 643
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mChildOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {p0, v0}, Lcom/kyleduo/switchbutton/SwitchButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0
.end method

.method public setDrawDebugRect(Z)V
    .locals 0
    .param p1, "drawDebugRect"    # Z

    .prologue
    .line 709
    iput-boolean p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mDrawDebugRect:Z

    .line 710
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->invalidate()V

    .line 711
    return-void
.end method

.method public setFadeBack(Z)V
    .locals 0
    .param p1, "fadeBack"    # Z

    .prologue
    .line 870
    iput-boolean p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mFadeBack:Z

    .line 871
    return-void
.end method

.method public setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 0
    .param p1, "onCheckedChangeListener"    # Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .prologue
    .line 679
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 680
    iput-object p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mChildOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 681
    return-void
.end method

.method public final setProcess(F)V
    .locals 2
    .param p1, "process"    # F

    .prologue
    .line 585
    move v0, p1

    .line 586
    .local v0, "tp":F
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_1

    .line 587
    const/high16 v0, 0x3f800000    # 1.0f

    .line 591
    :cond_0
    :goto_0
    iput v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mProcess:F

    .line 592
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->invalidate()V

    .line 593
    return-void

    .line 588
    :cond_1
    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    .line 589
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "onText"    # Ljava/lang/CharSequence;
    .param p2, "offText"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v0, 0x0

    .line 889
    iput-object p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mTextOn:Ljava/lang/CharSequence;

    .line 890
    iput-object p2, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mTextOff:Ljava/lang/CharSequence;

    .line 892
    iput-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mOnLayout:Landroid/text/Layout;

    .line 893
    iput-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mOffLayout:Landroid/text/Layout;

    .line 895
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->requestLayout()V

    .line 896
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->invalidate()V

    .line 897
    return-void
.end method

.method public setThumbColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "thumbColor"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 776
    iput-object p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbColor:Landroid/content/res/ColorStateList;

    .line 777
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbColor:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    .line 778
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/kyleduo/switchbutton/SwitchButton;->setThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 780
    :cond_0
    return-void
.end method

.method public setThumbColorRes(I)V
    .locals 1
    .param p1, "thumbColorRes"    # I

    .prologue
    .line 783
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v4/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kyleduo/switchbutton/SwitchButton;->setThumbColor(Landroid/content/res/ColorStateList;)V

    .line 784
    return-void
.end method

.method public setThumbDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "thumbDrawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 726
    iput-object p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 727
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mIsThumbUseDrawable:Z

    .line 728
    invoke-direct {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->setup()V

    .line 729
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->refreshDrawableState()V

    .line 730
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->requestLayout()V

    .line 731
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->invalidate()V

    .line 732
    return-void

    .line 727
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setThumbDrawableRes(I)V
    .locals 1
    .param p1, "thumbDrawableRes"    # I

    .prologue
    .line 735
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kyleduo/switchbutton/SwitchButton;->setThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 736
    return-void
.end method

.method public setThumbMargin(FFFF)V
    .locals 1
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .prologue
    .line 808
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbMargin:Landroid/graphics/RectF;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 809
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->requestLayout()V

    .line 810
    return-void
.end method

.method public setThumbMargin(Landroid/graphics/RectF;)V
    .locals 4
    .param p1, "thumbMargin"    # Landroid/graphics/RectF;

    .prologue
    const/4 v0, 0x0

    .line 800
    if-nez p1, :cond_0

    .line 801
    invoke-virtual {p0, v0, v0, v0, v0}, Lcom/kyleduo/switchbutton/SwitchButton;->setThumbMargin(FFFF)V

    .line 805
    :goto_0
    return-void

    .line 803
    :cond_0
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p1, Landroid/graphics/RectF;->top:F

    iget v2, p1, Landroid/graphics/RectF;->right:F

    iget v3, p1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/kyleduo/switchbutton/SwitchButton;->setThumbMargin(FFFF)V

    goto :goto_0
.end method

.method public setThumbRadius(F)V
    .locals 1
    .param p1, "thumbRadius"    # F

    .prologue
    .line 844
    iput p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbRadius:F

    .line 845
    iget-boolean v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mIsThumbUseDrawable:Z

    if-nez v0, :cond_0

    .line 846
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->invalidate()V

    .line 848
    :cond_0
    return-void
.end method

.method public setThumbSize(FF)V
    .locals 1
    .param p1, "width"    # F
    .param p2, "height"    # F

    .prologue
    .line 813
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbSizeF:Landroid/graphics/PointF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    .line 814
    invoke-direct {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->setup()V

    .line 815
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->requestLayout()V

    .line 816
    return-void
.end method

.method public setThumbSize(Landroid/graphics/PointF;)V
    .locals 3
    .param p1, "size"    # Landroid/graphics/PointF;

    .prologue
    .line 827
    if-nez p1, :cond_0

    .line 828
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x41a00000    # 20.0f

    mul-float v0, v1, v2

    .line 829
    .local v0, "defaultSize":F
    invoke-virtual {p0, v0, v0}, Lcom/kyleduo/switchbutton/SwitchButton;->setThumbSize(FF)V

    .line 833
    .end local v0    # "defaultSize":F
    :goto_0
    return-void

    .line 831
    :cond_0
    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget v2, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0, v1, v2}, Lcom/kyleduo/switchbutton/SwitchButton;->setThumbSize(FF)V

    goto :goto_0
.end method

.method public setTintColor(I)V
    .locals 2
    .param p1, "tintColor"    # I

    .prologue
    const/4 v1, 0x0

    .line 878
    iput p1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mTintColor:I

    .line 879
    iget v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mTintColor:I

    invoke-static {v0}, Lcom/kyleduo/switchbutton/ColorUtils;->generateThumbColorWithTintColor(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mThumbColor:Landroid/content/res/ColorStateList;

    .line 880
    iget v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mTintColor:I

    invoke-static {v0}, Lcom/kyleduo/switchbutton/ColorUtils;->generateBackColorWithTintColor(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mBackColor:Landroid/content/res/ColorStateList;

    .line 881
    iput-boolean v1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mIsBackUseDrawable:Z

    .line 882
    iput-boolean v1, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mIsThumbUseDrawable:Z

    .line 884
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->refreshDrawableState()V

    .line 885
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->invalidate()V

    .line 886
    return-void
.end method

.method public toggleImmediately()V
    .locals 1

    .prologue
    .line 693
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/kyleduo/switchbutton/SwitchButton;->setCheckedImmediately(Z)V

    .line 694
    return-void

    .line 693
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toggleImmediatelyNoEvent()V
    .locals 1

    .prologue
    .line 668
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mChildOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    if-nez v0, :cond_0

    .line 669
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->toggleImmediately()V

    .line 675
    :goto_0
    return-void

    .line 671
    :cond_0
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 672
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->toggleImmediately()V

    .line 673
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mChildOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {p0, v0}, Lcom/kyleduo/switchbutton/SwitchButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0
.end method

.method public toggleNoEvent()V
    .locals 1

    .prologue
    .line 658
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mChildOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    if-nez v0, :cond_0

    .line 659
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->toggle()V

    .line 665
    :goto_0
    return-void

    .line 661
    :cond_0
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 662
    invoke-virtual {p0}, Lcom/kyleduo/switchbutton/SwitchButton;->toggle()V

    .line 663
    iget-object v0, p0, Lcom/kyleduo/switchbutton/SwitchButton;->mChildOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {p0, v0}, Lcom/kyleduo/switchbutton/SwitchButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0
.end method
