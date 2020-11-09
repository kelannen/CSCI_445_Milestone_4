.class public Lcom/alimuzaffar/lib/pin/PinEntryEditText;
.super Landroid/widget/EditText;
.source "PinEntryEditText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alimuzaffar/lib/pin/PinEntryEditText$OnPinEnteredListener;
    }
.end annotation


# static fields
.field private static final XML_NAMESPACE_ANDROID:Ljava/lang/String; = "http://schemas.android.com/apk/res/android"


# instance fields
.field protected mAnimate:Z

.field protected mAnimatedType:I

.field protected mCharBottom:[F

.field protected mCharPaint:Landroid/graphics/Paint;

.field protected mCharSize:F

.field protected mClickListener:Landroid/view/View$OnClickListener;

.field protected mColorStates:Landroid/content/res/ColorStateList;

.field protected mColors:[I

.field protected mHasError:Z

.field protected mIsDigitSquare:Z

.field protected mLastCharPaint:Landroid/graphics/Paint;

.field protected mLineCoords:[Landroid/graphics/RectF;

.field protected mLineStroke:F

.field protected mLineStrokeSelected:F

.field protected mLinesPaint:Landroid/graphics/Paint;

.field protected mMask:Ljava/lang/String;

.field protected mMaskChars:Ljava/lang/StringBuilder;

.field protected mMaxLength:I

.field protected mNumChars:F

.field protected mOnPinEnteredListener:Lcom/alimuzaffar/lib/pin/PinEntryEditText$OnPinEnteredListener;

.field protected mOriginalTextColors:Landroid/content/res/ColorStateList;

.field protected mPinBackground:Landroid/graphics/drawable/Drawable;

.field protected mSingleCharHint:Ljava/lang/String;

.field protected mSingleCharPaint:Landroid/graphics/Paint;

.field protected mSpace:F

.field protected mStates:[[I

.field protected mTextBottomPadding:F

.field protected mTextHeight:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x4

    const/4 v1, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 96
    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 52
    iput-object v1, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mMask:Ljava/lang/String;

    .line 53
    iput-object v1, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mMaskChars:Ljava/lang/StringBuilder;

    .line 54
    iput-object v1, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mSingleCharHint:Ljava/lang/String;

    .line 55
    iput v4, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mAnimatedType:I

    .line 56
    const/high16 v0, 0x41c00000    # 24.0f

    iput v0, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mSpace:F

    .line 58
    const/high16 v0, 0x40800000    # 4.0f

    iput v0, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mNumChars:F

    .line 59
    const/high16 v0, 0x41000000    # 8.0f

    iput v0, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mTextBottomPadding:F

    .line 60
    iput v6, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mMaxLength:I

    .line 67
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mTextHeight:Landroid/graphics/Rect;

    .line 68
    iput-boolean v4, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mIsDigitSquare:Z

    .line 71
    iput-object v1, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mOnPinEnteredListener:Lcom/alimuzaffar/lib/pin/PinEntryEditText$OnPinEnteredListener;

    .line 73
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mLineStroke:F

    .line 74
    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mLineStrokeSelected:F

    .line 76
    iput-boolean v4, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mAnimate:Z

    .line 77
    iput-boolean v4, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mHasError:Z

    .line 79
    new-array v0, v6, [[I

    new-array v1, v5, [I

    const v2, 0x10100a1

    aput v2, v1, v4

    aput-object v1, v0, v4

    new-array v1, v5, [I

    const v2, 0x10100a2

    aput v2, v1, v4

    aput-object v1, v0, v5

    const/4 v1, 0x2

    new-array v2, v5, [I

    const v3, 0x101009c

    aput v3, v2, v4

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-array v2, v5, [I

    const v3, -0x101009c

    aput v3, v2, v4

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mStates:[[I

    .line 86
    new-array v0, v6, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mColors:[I

    .line 93
    new-instance v0, Landroid/content/res/ColorStateList;

    iget-object v1, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mStates:[[I

    iget-object v2, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mColors:[I

    invoke-direct {v0, v1, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    iput-object v0, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mColorStates:Landroid/content/res/ColorStateList;

    .line 97
    return-void

    .line 86
    nop

    :array_0
    .array-data 4
        -0xff0100
        -0x10000
        -0x1000000
        -0x777778
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v6, 0x4

    const/4 v1, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 100
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    iput-object v1, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mMask:Ljava/lang/String;

    .line 53
    iput-object v1, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mMaskChars:Ljava/lang/StringBuilder;

    .line 54
    iput-object v1, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mSingleCharHint:Ljava/lang/String;

    .line 55
    iput v4, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mAnimatedType:I

    .line 56
    const/high16 v0, 0x41c00000    # 24.0f

    iput v0, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mSpace:F

    .line 58
    const/high16 v0, 0x40800000    # 4.0f

    iput v0, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mNumChars:F

    .line 59
    const/high16 v0, 0x41000000    # 8.0f

    iput v0, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mTextBottomPadding:F

    .line 60
    iput v6, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mMaxLength:I

    .line 67
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mTextHeight:Landroid/graphics/Rect;

    .line 68
    iput-boolean v4, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mIsDigitSquare:Z

    .line 71
    iput-object v1, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mOnPinEnteredListener:Lcom/alimuzaffar/lib/pin/PinEntryEditText$OnPinEnteredListener;

    .line 73
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mLineStroke:F

    .line 74
    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mLineStrokeSelected:F

    .line 76
    iput-boolean v4, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mAnimate:Z

    .line 77
    iput-boolean v4, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mHasError:Z

    .line 79
    new-array v0, v6, [[I

    new-array v1, v5, [I

    const v2, 0x10100a1

    aput v2, v1, v4

    aput-object v1, v0, v4

    new-array v1, v5, [I

    const v2, 0x10100a2

    aput v2, v1, v4

    aput-object v1, v0, v5

    const/4 v1, 0x2

    new-array v2, v5, [I

    const v3, 0x101009c

    aput v3, v2, v4

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-array v2, v5, [I

    const v3, -0x101009c

    aput v3, v2, v4

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mStates:[[I

    .line 86
    new-array v0, v6, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mColors:[I

    .line 93
    new-instance v0, Landroid/content/res/ColorStateList;

    iget-object v1, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mStates:[[I

    iget-object v2, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mColors:[I

    invoke-direct {v0, v1, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    iput-object v0, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mColorStates:Landroid/content/res/ColorStateList;

    .line 101
    invoke-direct {p0, p1, p2}, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 102
    return-void

    .line 86
    :array_0
    .array-data 4
        -0xff0100
        -0x10000
        -0x1000000
        -0x777778
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v6, 0x4

    const/4 v1, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 105
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    iput-object v1, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mMask:Ljava/lang/String;

    .line 53
    iput-object v1, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mMaskChars:Ljava/lang/StringBuilder;

    .line 54
    iput-object v1, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mSingleCharHint:Ljava/lang/String;

    .line 55
    iput v4, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mAnimatedType:I

    .line 56
    const/high16 v0, 0x41c00000    # 24.0f

    iput v0, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mSpace:F

    .line 58
    const/high16 v0, 0x40800000    # 4.0f

    iput v0, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mNumChars:F

    .line 59
    const/high16 v0, 0x41000000    # 8.0f

    iput v0, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mTextBottomPadding:F

    .line 60
    iput v6, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mMaxLength:I

    .line 67
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mTextHeight:Landroid/graphics/Rect;

    .line 68
    iput-boolean v4, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mIsDigitSquare:Z

    .line 71
    iput-object v1, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mOnPinEnteredListener:Lcom/alimuzaffar/lib/pin/PinEntryEditText$OnPinEnteredListener;

    .line 73
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mLineStroke:F

    .line 74
    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mLineStrokeSelected:F

    .line 76
    iput-boolean v4, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mAnimate:Z

    .line 77
    iput-boolean v4, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mHasError:Z

    .line 79
    new-array v0, v6, [[I

    new-array v1, v5, [I

    const v2, 0x10100a1

    aput v2, v1, v4

    aput-object v1, v0, v4

    new-array v1, v5, [I

    const v2, 0x10100a2

    aput v2, v1, v4

    aput-object v1, v0, v5

    const/4 v1, 0x2

    new-array v2, v5, [I

    const v3, 0x101009c

    aput v3, v2, v4

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-array v2, v5, [I

    const v3, -0x101009c

    aput v3, v2, v4

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mStates:[[I

    .line 86
    new-array v0, v6, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mColors:[I

    .line 93
    new-instance v0, Landroid/content/res/ColorStateList;

    iget-object v1, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mStates:[[I

    iget-object v2, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mColors:[I

    invoke-direct {v0, v1, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    iput-object v0, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mColorStates:Landroid/content/res/ColorStateList;

    .line 106
    invoke-direct {p0, p1, p2}, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 107
    return-void

    .line 86
    :array_0
    .array-data 4
        -0xff0100
        -0x10000
        -0x1000000
        -0x777778
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    const/4 v6, 0x4

    const/4 v1, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 111
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 52
    iput-object v1, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mMask:Ljava/lang/String;

    .line 53
    iput-object v1, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mMaskChars:Ljava/lang/StringBuilder;

    .line 54
    iput-object v1, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mSingleCharHint:Ljava/lang/String;

    .line 55
    iput v4, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mAnimatedType:I

    .line 56
    const/high16 v0, 0x41c00000    # 24.0f

    iput v0, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mSpace:F

    .line 58
    const/high16 v0, 0x40800000    # 4.0f

    iput v0, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mNumChars:F

    .line 59
    const/high16 v0, 0x41000000    # 8.0f

    iput v0, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mTextBottomPadding:F

    .line 60
    iput v6, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mMaxLength:I

    .line 67
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mTextHeight:Landroid/graphics/Rect;

    .line 68
    iput-boolean v4, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mIsDigitSquare:Z

    .line 71
    iput-object v1, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mOnPinEnteredListener:Lcom/alimuzaffar/lib/pin/PinEntryEditText$OnPinEnteredListener;

    .line 73
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mLineStroke:F

    .line 74
    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mLineStrokeSelected:F

    .line 76
    iput-boolean v4, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mAnimate:Z

    .line 77
    iput-boolean v4, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mHasError:Z

    .line 79
    new-array v0, v6, [[I

    new-array v1, v5, [I

    const v2, 0x10100a1

    aput v2, v1, v4

    aput-object v1, v0, v4

    new-array v1, v5, [I

    const v2, 0x10100a2

    aput v2, v1, v4

    aput-object v1, v0, v5

    const/4 v1, 0x2

    new-array v2, v5, [I

    const v3, 0x101009c

    aput v3, v2, v4

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-array v2, v5, [I

    const v3, -0x101009c

    aput v3, v2, v4

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mStates:[[I

    .line 86
    new-array v0, v6, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mColors:[I

    .line 93
    new-instance v0, Landroid/content/res/ColorStateList;

    iget-object v1, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mStates:[[I

    iget-object v2, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mColors:[I

    invoke-direct {v0, v1, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    iput-object v0, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mColorStates:Landroid/content/res/ColorStateList;

    .line 112
    invoke-direct {p0, p1, p2}, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 113
    return-void

    .line 86
    :array_0
    .array-data 4
        -0xff0100
        -0x10000
        -0x1000000
        -0x777778
    .end array-data
.end method

.method private animateBottomUp(Ljava/lang/CharSequence;I)V
    .locals 12
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I

    .prologue
    const-wide/16 v10, 0x12c

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x2

    .line 459
    iget-object v3, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mCharBottom:[F

    iget-object v4, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mLineCoords:[Landroid/graphics/RectF;

    aget-object v4, v4, p2

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    iget v5, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mTextBottomPadding:F

    sub-float/2addr v4, v5

    aput v4, v3, p2

    .line 460
    new-array v3, v6, [F

    iget-object v4, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mCharBottom:[F

    aget v4, v4, p2

    invoke-virtual {p0}, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v5

    invoke-virtual {v5}, Landroid/text/TextPaint;->getTextSize()F

    move-result v5

    add-float/2addr v4, v5

    aput v4, v3, v7

    iget-object v4, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mCharBottom:[F

    aget v4, v4, p2

    aput v4, v3, v8

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 461
    .local v1, "animUp":Landroid/animation/ValueAnimator;
    invoke-virtual {v1, v10, v11}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 462
    new-instance v3, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v3}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 463
    new-instance v3, Lcom/alimuzaffar/lib/pin/PinEntryEditText$6;

    invoke-direct {v3, p0, p2}, Lcom/alimuzaffar/lib/pin/PinEntryEditText$6;-><init>(Lcom/alimuzaffar/lib/pin/PinEntryEditText;I)V

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 472
    iget-object v3, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mLastCharPaint:Landroid/graphics/Paint;

    const/16 v4, 0xff

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 473
    new-array v3, v6, [I

    fill-array-data v3, :array_0

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 474
    .local v0, "animAlpha":Landroid/animation/ValueAnimator;
    invoke-virtual {v0, v10, v11}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 475
    new-instance v3, Lcom/alimuzaffar/lib/pin/PinEntryEditText$7;

    invoke-direct {v3, p0}, Lcom/alimuzaffar/lib/pin/PinEntryEditText$7;-><init>(Lcom/alimuzaffar/lib/pin/PinEntryEditText;)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 483
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 484
    .local v2, "set":Landroid/animation/AnimatorSet;
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    iget v4, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mMaxLength:I

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mOnPinEnteredListener:Lcom/alimuzaffar/lib/pin/PinEntryEditText$OnPinEnteredListener;

    if-eqz v3, :cond_0

    .line 485
    new-instance v3, Lcom/alimuzaffar/lib/pin/PinEntryEditText$8;

    invoke-direct {v3, p0}, Lcom/alimuzaffar/lib/pin/PinEntryEditText$8;-><init>(Lcom/alimuzaffar/lib/pin/PinEntryEditText;)V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 506
    :cond_0
    new-array v3, v6, [Landroid/animation/Animator;

    aput-object v1, v3, v7

    aput-object v0, v3, v8

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 507
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 508
    return-void

    .line 473
    nop

    :array_0
    .array-data 4
        0x0
        0xff
    .end array-data
.end method

.method private animatePopIn()V
    .locals 4

    .prologue
    .line 425
    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-virtual {v3}, Landroid/text/TextPaint;->getTextSize()F

    move-result v3

    aput v3, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 426
    .local v0, "va":Landroid/animation/ValueAnimator;
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 427
    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v1}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 428
    new-instance v1, Lcom/alimuzaffar/lib/pin/PinEntryEditText$4;

    invoke-direct {v1, p0}, Lcom/alimuzaffar/lib/pin/PinEntryEditText$4;-><init>(Lcom/alimuzaffar/lib/pin/PinEntryEditText;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 435
    invoke-virtual {p0}, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    iget v2, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mMaxLength:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mOnPinEnteredListener:Lcom/alimuzaffar/lib/pin/PinEntryEditText$OnPinEnteredListener;

    if-eqz v1, :cond_0

    .line 436
    new-instance v1, Lcom/alimuzaffar/lib/pin/PinEntryEditText$5;

    invoke-direct {v1, p0}, Lcom/alimuzaffar/lib/pin/PinEntryEditText$5;-><init>(Lcom/alimuzaffar/lib/pin/PinEntryEditText;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 455
    :cond_0
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 456
    return-void
.end method

.method private varargs getColorForState([I)I
    .locals 2
    .param p1, "states"    # [I

    .prologue
    .line 343
    iget-object v0, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mColorStates:Landroid/content/res/ColorStateList;

    const v1, -0x777778

    invoke-virtual {v0, p1, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    return v0
.end method

.method private getFullText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mMask:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 320
    invoke-virtual {p0}, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 322
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->getMaskChars()Ljava/lang/StringBuilder;

    move-result-object v0

    goto :goto_0
.end method

.method private getMaskChars()Ljava/lang/StringBuilder;
    .locals 3

    .prologue
    .line 327
    iget-object v1, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mMaskChars:Ljava/lang/StringBuilder;

    if-nez v1, :cond_0

    .line 328
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mMaskChars:Ljava/lang/StringBuilder;

    .line 330
    :cond_0
    invoke-virtual {p0}, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v0

    .line 331
    .local v0, "textLength":I
    :goto_0
    iget-object v1, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mMaskChars:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-eq v1, v0, :cond_2

    .line 332
    iget-object v1, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mMaskChars:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-ge v1, v0, :cond_1

    .line 333
    iget-object v1, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mMaskChars:Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mMask:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 335
    :cond_1
    iget-object v1, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mMaskChars:Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mMaskChars:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 338
    :cond_2
    iget-object v1, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mMaskChars:Ljava/lang/StringBuilder;

    return-object v1
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const v7, -0x777778

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 116
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    iget v4, v10, Landroid/util/DisplayMetrics;->density:F

    .line 117
    .local v4, "multi":F
    iget v10, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mLineStroke:F

    mul-float/2addr v10, v4

    iput v10, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mLineStroke:F

    .line 118
    iget v10, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mLineStrokeSelected:F

    mul-float/2addr v10, v4

    iput v10, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mLineStrokeSelected:F

    .line 119
    iget v10, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mSpace:F

    mul-float/2addr v10, v4

    iput v10, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mSpace:F

    .line 120
    iget v10, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mTextBottomPadding:F

    mul-float/2addr v10, v4

    iput v10, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mTextBottomPadding:F

    .line 122
    sget-object v10, Lcom/alimuzaffar/lib/pin/R$styleable;->PinEntryEditText:[I

    invoke-virtual {p1, p2, v10, v9, v9}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 124
    .local v6, "ta":Landroid/content/res/TypedArray;
    :try_start_0
    new-instance v5, Landroid/util/TypedValue;

    invoke-direct {v5}, Landroid/util/TypedValue;-><init>()V

    .line 125
    .local v5, "outValue":Landroid/util/TypedValue;
    sget v10, Lcom/alimuzaffar/lib/pin/R$styleable;->PinEntryEditText_pinAnimationType:I

    invoke-virtual {v6, v10, v5}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 126
    iget v10, v5, Landroid/util/TypedValue;->data:I

    iput v10, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mAnimatedType:I

    .line 127
    sget v10, Lcom/alimuzaffar/lib/pin/R$styleable;->PinEntryEditText_pinCharacterMask:I

    invoke-virtual {v6, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mMask:Ljava/lang/String;

    .line 128
    sget v10, Lcom/alimuzaffar/lib/pin/R$styleable;->PinEntryEditText_pinRepeatedHint:I

    invoke-virtual {v6, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mSingleCharHint:Ljava/lang/String;

    .line 129
    sget v10, Lcom/alimuzaffar/lib/pin/R$styleable;->PinEntryEditText_pinLineStroke:I

    iget v11, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mLineStroke:F

    invoke-virtual {v6, v10, v11}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v10

    iput v10, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mLineStroke:F

    .line 130
    sget v10, Lcom/alimuzaffar/lib/pin/R$styleable;->PinEntryEditText_pinLineStrokeSelected:I

    iget v11, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mLineStrokeSelected:F

    invoke-virtual {v6, v10, v11}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v10

    iput v10, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mLineStrokeSelected:F

    .line 131
    sget v10, Lcom/alimuzaffar/lib/pin/R$styleable;->PinEntryEditText_pinCharacterSpacing:I

    iget v11, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mSpace:F

    invoke-virtual {v6, v10, v11}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v10

    iput v10, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mSpace:F

    .line 132
    sget v10, Lcom/alimuzaffar/lib/pin/R$styleable;->PinEntryEditText_pinTextBottomPadding:I

    iget v11, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mTextBottomPadding:F

    invoke-virtual {v6, v10, v11}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v10

    iput v10, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mTextBottomPadding:F

    .line 133
    sget v10, Lcom/alimuzaffar/lib/pin/R$styleable;->PinEntryEditText_pinBackgroundIsSquare:I

    iget-boolean v11, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mIsDigitSquare:Z

    invoke-virtual {v6, v10, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    iput-boolean v10, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mIsDigitSquare:Z

    .line 134
    sget v10, Lcom/alimuzaffar/lib/pin/R$styleable;->PinEntryEditText_pinBackgroundDrawable:I

    invoke-virtual {v6, v10}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    iput-object v10, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mPinBackground:Landroid/graphics/drawable/Drawable;

    .line 135
    sget v10, Lcom/alimuzaffar/lib/pin/R$styleable;->PinEntryEditText_pinLineColors:I

    invoke-virtual {v6, v10}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    .line 136
    .local v3, "colors":Landroid/content/res/ColorStateList;
    if-eqz v3, :cond_0

    .line 137
    iput-object v3, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mColorStates:Landroid/content/res/ColorStateList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    :cond_0
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 143
    new-instance v10, Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v10, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mCharPaint:Landroid/graphics/Paint;

    .line 144
    new-instance v10, Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v10, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mLastCharPaint:Landroid/graphics/Paint;

    .line 145
    new-instance v10, Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v10, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mSingleCharPaint:Landroid/graphics/Paint;

    .line 146
    new-instance v10, Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v10, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mLinesPaint:Landroid/graphics/Paint;

    .line 147
    iget-object v10, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mLinesPaint:Landroid/graphics/Paint;

    iget v11, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mLineStroke:F

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 149
    new-instance v5, Landroid/util/TypedValue;

    .end local v5    # "outValue":Landroid/util/TypedValue;
    invoke-direct {v5}, Landroid/util/TypedValue;-><init>()V

    .line 150
    .restart local v5    # "outValue":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v10

    sget v11, Lcom/alimuzaffar/lib/pin/R$attr;->colorControlActivated:I

    invoke-virtual {v10, v11, v5, v8}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 152
    iget v1, v5, Landroid/util/TypedValue;->data:I

    .line 153
    .local v1, "colorSelected":I
    iget-object v10, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mColors:[I

    aput v1, v10, v9

    .line 155
    invoke-virtual {p0}, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->isInEditMode()Z

    move-result v10

    if-eqz v10, :cond_3

    move v0, v7

    .line 156
    .local v0, "colorFocused":I
    :goto_0
    iget-object v10, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mColors:[I

    aput v0, v10, v8

    .line 158
    invoke-virtual {p0}, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->isInEditMode()Z

    move-result v10

    if-eqz v10, :cond_4

    move v2, v7

    .line 159
    .local v2, "colorUnfocused":I
    :goto_1
    iget-object v7, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mColors:[I

    const/4 v10, 0x2

    aput v2, v7, v10

    .line 161
    invoke-virtual {p0, v9}, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->setBackgroundResource(I)V

    .line 163
    const-string v7, "http://schemas.android.com/apk/res/android"

    const-string v10, "maxLength"

    const/4 v11, 0x4

    invoke-interface {p2, v7, v10, v11}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mMaxLength:I

    .line 164
    iget v7, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mMaxLength:I

    int-to-float v7, v7

    iput v7, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mNumChars:F

    .line 167
    new-instance v7, Lcom/alimuzaffar/lib/pin/PinEntryEditText$1;

    invoke-direct {v7, p0}, Lcom/alimuzaffar/lib/pin/PinEntryEditText$1;-><init>(Lcom/alimuzaffar/lib/pin/PinEntryEditText;)V

    invoke-super {p0, v7}, Landroid/widget/EditText;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    .line 184
    new-instance v7, Lcom/alimuzaffar/lib/pin/PinEntryEditText$2;

    invoke-direct {v7, p0}, Lcom/alimuzaffar/lib/pin/PinEntryEditText$2;-><init>(Lcom/alimuzaffar/lib/pin/PinEntryEditText;)V

    invoke-super {p0, v7}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    new-instance v7, Lcom/alimuzaffar/lib/pin/PinEntryEditText$3;

    invoke-direct {v7, p0}, Lcom/alimuzaffar/lib/pin/PinEntryEditText$3;-><init>(Lcom/alimuzaffar/lib/pin/PinEntryEditText;)V

    invoke-super {p0, v7}, Landroid/widget/EditText;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 203
    invoke-virtual {p0}, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->getInputType()I

    move-result v7

    and-int/lit16 v7, v7, 0x80

    const/16 v10, 0x80

    if-ne v7, v10, :cond_5

    iget-object v7, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mMask:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 204
    const-string v7, "\u25cf"

    iput-object v7, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mMask:Ljava/lang/String;

    .line 209
    :cond_1
    :goto_2
    iget-object v7, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mMask:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 210
    invoke-direct {p0}, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->getMaskChars()Ljava/lang/StringBuilder;

    move-result-object v7

    iput-object v7, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mMaskChars:Ljava/lang/StringBuilder;

    .line 214
    :cond_2
    invoke-virtual {p0}, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v7

    const-string v10, "|"

    iget-object v11, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mTextHeight:Landroid/graphics/Rect;

    invoke-virtual {v7, v10, v9, v8, v11}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 216
    iget v7, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mAnimatedType:I

    const/4 v10, -0x1

    if-le v7, v10, :cond_6

    move v7, v8

    :goto_3
    iput-boolean v7, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mAnimate:Z

    .line 217
    return-void

    .line 140
    .end local v0    # "colorFocused":I
    .end local v1    # "colorSelected":I
    .end local v2    # "colorUnfocused":I
    .end local v3    # "colors":Landroid/content/res/ColorStateList;
    .end local v5    # "outValue":Landroid/util/TypedValue;
    :catchall_0
    move-exception v7

    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    throw v7

    .line 155
    .restart local v1    # "colorSelected":I
    .restart local v3    # "colors":Landroid/content/res/ColorStateList;
    .restart local v5    # "outValue":Landroid/util/TypedValue;
    :cond_3
    sget v10, Lcom/alimuzaffar/lib/pin/R$color;->pin_normal:I

    invoke-static {p1, v10}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    goto :goto_0

    .line 158
    .restart local v0    # "colorFocused":I
    :cond_4
    sget v7, Lcom/alimuzaffar/lib/pin/R$color;->pin_normal:I

    invoke-static {p1, v7}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    goto :goto_1

    .line 205
    .restart local v2    # "colorUnfocused":I
    :cond_5
    invoke-virtual {p0}, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->getInputType()I

    move-result v7

    and-int/lit8 v7, v7, 0x10

    const/16 v10, 0x10

    if-ne v7, v10, :cond_1

    iget-object v7, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mMask:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 206
    const-string v7, "\u25cf"

    iput-object v7, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mMask:Ljava/lang/String;

    goto :goto_2

    :cond_6
    move v7, v9

    .line 216
    goto :goto_3
.end method


# virtual methods
.method public focus()V
    .locals 3

    .prologue
    .line 392
    invoke-virtual {p0}, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->requestFocus()Z

    .line 395
    invoke-virtual {p0}, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    .line 396
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 397
    .local v0, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 398
    return-void
.end method

.method public isError()Z
    .locals 1

    .prologue
    .line 385
    iget-boolean v0, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mHasError:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 280
    invoke-direct {p0}, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->getFullText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 281
    .local v1, "text":Ljava/lang/CharSequence;
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v12

    .line 282
    .local v12, "textLength":I
    new-array v13, v12, [F

    .line 283
    .local v13, "textWidths":[F
    invoke-virtual {p0}, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v12, v13}, Landroid/text/TextPaint;->getTextWidths(Ljava/lang/CharSequence;II[F)I

    .line 285
    const/4 v9, 0x0

    .line 286
    .local v9, "hintWidth":F
    iget-object v0, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mSingleCharHint:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mSingleCharHint:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    new-array v10, v0, [F

    .line 288
    .local v10, "hintWidths":[F
    invoke-virtual {p0}, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    iget-object v3, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mSingleCharHint:Ljava/lang/String;

    invoke-virtual {v0, v3, v10}, Landroid/text/TextPaint;->getTextWidths(Ljava/lang/String;[F)I

    .line 289
    array-length v3, v10

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget v2, v10, v0

    .line 290
    .local v2, "i":F
    add-float/2addr v9, v2

    .line 289
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 293
    .end local v2    # "i":F
    .end local v10    # "hintWidths":[F
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    int-to-float v0, v2

    iget v3, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mNumChars:F

    cmpg-float v0, v0, v3

    if-gez v0, :cond_a

    .line 295
    iget-object v0, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mPinBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 296
    if-ge v2, v12, :cond_5

    const/4 v0, 0x1

    move v3, v0

    :goto_2
    if-ne v2, v12, :cond_6

    const/4 v0, 0x1

    :goto_3
    invoke-virtual {p0, v3, v0}, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->updateDrawableState(ZZ)V

    .line 297
    iget-object v0, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mPinBackground:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mLineCoords:[Landroid/graphics/RectF;

    aget-object v3, v3, v2

    iget v3, v3, Landroid/graphics/RectF;->left:F

    float-to-int v3, v3

    iget-object v4, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mLineCoords:[Landroid/graphics/RectF;

    aget-object v4, v4, v2

    iget v4, v4, Landroid/graphics/RectF;->top:F

    float-to-int v4, v4

    iget-object v5, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mLineCoords:[Landroid/graphics/RectF;

    aget-object v5, v5, v2

    iget v5, v5, Landroid/graphics/RectF;->right:F

    float-to-int v5, v5

    iget-object v6, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mLineCoords:[Landroid/graphics/RectF;

    aget-object v6, v6, v2

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    float-to-int v6, v6

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 298
    iget-object v0, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mPinBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 300
    :cond_1
    iget-object v0, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mLineCoords:[Landroid/graphics/RectF;

    aget-object v0, v0, v2

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget v3, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mCharSize:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float v11, v0, v3

    .line 301
    .local v11, "middle":F
    if-le v12, v2, :cond_8

    .line 302
    iget-boolean v0, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mAnimate:Z

    if-eqz v0, :cond_2

    add-int/lit8 v0, v12, -0x1

    if-eq v2, v0, :cond_7

    .line 303
    :cond_2
    add-int/lit8 v3, v2, 0x1

    aget v0, v13, v2

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v0, v4

    sub-float v4, v11, v0

    iget-object v0, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mCharBottom:[F

    aget v5, v0, v2

    iget-object v6, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mCharPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 311
    :cond_3
    :goto_4
    iget-object v0, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mPinBackground:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_4

    .line 312
    if-gt v2, v12, :cond_9

    const/4 v0, 0x1

    :goto_5
    invoke-virtual {p0, v0}, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->updateColorForLines(Z)V

    .line 313
    iget-object v0, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mLineCoords:[Landroid/graphics/RectF;

    aget-object v0, v0, v2

    iget v4, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mLineCoords:[Landroid/graphics/RectF;

    aget-object v0, v0, v2

    iget v5, v0, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mLineCoords:[Landroid/graphics/RectF;

    aget-object v0, v0, v2

    iget v6, v0, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mLineCoords:[Landroid/graphics/RectF;

    aget-object v0, v0, v2

    iget v7, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v8, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mLinesPaint:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 293
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 296
    .end local v11    # "middle":F
    :cond_5
    const/4 v0, 0x0

    move v3, v0

    goto/16 :goto_2

    :cond_6
    const/4 v0, 0x0

    goto/16 :goto_3

    .line 305
    .restart local v11    # "middle":F
    :cond_7
    add-int/lit8 v3, v2, 0x1

    aget v0, v13, v2

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v0, v4

    sub-float v4, v11, v0

    iget-object v0, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mCharBottom:[F

    aget v5, v0, v2

    iget-object v6, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mLastCharPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    goto :goto_4

    .line 307
    :cond_8
    iget-object v0, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mSingleCharHint:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 308
    iget-object v0, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mSingleCharHint:Ljava/lang/String;

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v9, v3

    sub-float v3, v11, v3

    iget-object v4, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mCharBottom:[F

    aget v4, v4, v2

    iget-object v5, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mSingleCharPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_4

    .line 312
    :cond_9
    const/4 v0, 0x0

    goto :goto_5

    .line 316
    .end local v11    # "middle":F
    :cond_a
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 12
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 221
    invoke-super/range {p0 .. p4}, Landroid/widget/EditText;->onSizeChanged(IIII)V

    .line 222
    invoke-virtual {p0}, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v6

    iput-object v6, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mOriginalTextColors:Landroid/content/res/ColorStateList;

    .line 223
    iget-object v6, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mOriginalTextColors:Landroid/content/res/ColorStateList;

    if-eqz v6, :cond_0

    .line 224
    iget-object v6, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mLastCharPaint:Landroid/graphics/Paint;

    iget-object v7, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mOriginalTextColors:Landroid/content/res/ColorStateList;

    invoke-virtual {v7}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 225
    iget-object v6, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mCharPaint:Landroid/graphics/Paint;

    iget-object v7, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mOriginalTextColors:Landroid/content/res/ColorStateList;

    invoke-virtual {v7}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 226
    iget-object v6, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mSingleCharPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->getCurrentHintTextColor()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 228
    :cond_0
    invoke-virtual {p0}, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->getWidth()I

    move-result v6

    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getPaddingEnd(Landroid/view/View;)I

    move-result v7

    sub-int/2addr v6, v7

    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getPaddingStart(Landroid/view/View;)I

    move-result v7

    sub-int v0, v6, v7

    .line 229
    .local v0, "availableWidth":I
    iget v6, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mSpace:F

    const/4 v7, 0x0

    cmpg-float v6, v6, v7

    if-gez v6, :cond_2

    .line 230
    int-to-float v6, v0

    iget v7, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mNumChars:F

    const/high16 v8, 0x40000000    # 2.0f

    mul-float/2addr v7, v8

    const/high16 v8, 0x3f800000    # 1.0f

    sub-float/2addr v7, v8

    div-float/2addr v6, v7

    iput v6, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mCharSize:F

    .line 234
    :goto_0
    iget v6, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mNumChars:F

    float-to-int v6, v6

    new-array v6, v6, [Landroid/graphics/RectF;

    iput-object v6, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mLineCoords:[Landroid/graphics/RectF;

    .line 235
    iget v6, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mNumChars:F

    float-to-int v6, v6

    new-array v6, v6, [F

    iput-object v6, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mCharBottom:[F

    .line 237
    invoke-virtual {p0}, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->getHeight()I

    move-result v6

    invoke-virtual {p0}, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->getPaddingBottom()I

    move-result v7

    sub-int v1, v6, v7

    .line 239
    .local v1, "bottom":I
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-static {v6}, Landroid/support/v4/text/TextUtilsCompat;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_3

    const/4 v3, 0x1

    .line 240
    .local v3, "isLayoutRtl":Z
    :goto_1
    if-eqz v3, :cond_4

    .line 241
    const/4 v4, -0x1

    .line 242
    .local v4, "rtlFlag":I
    invoke-virtual {p0}, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->getWidth()I

    move-result v6

    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getPaddingStart(Landroid/view/View;)I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    iget v7, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mCharSize:F

    sub-float/2addr v6, v7

    float-to-int v5, v6

    .line 247
    .local v5, "startX":I
    :goto_2
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    int-to-float v6, v2

    iget v7, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mNumChars:F

    cmpg-float v6, v6, v7

    if-gez v6, :cond_7

    .line 248
    iget-object v6, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mLineCoords:[Landroid/graphics/RectF;

    new-instance v7, Landroid/graphics/RectF;

    int-to-float v8, v5

    int-to-float v9, v1

    int-to-float v10, v5

    iget v11, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mCharSize:F

    add-float/2addr v10, v11

    int-to-float v11, v1

    invoke-direct {v7, v8, v9, v10, v11}, Landroid/graphics/RectF;-><init>(FFFF)V

    aput-object v7, v6, v2

    .line 249
    iget-object v6, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mPinBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_1

    .line 250
    iget-boolean v6, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mIsDigitSquare:Z

    if-eqz v6, :cond_5

    .line 251
    iget-object v6, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mLineCoords:[Landroid/graphics/RectF;

    aget-object v6, v6, v2

    invoke-virtual {p0}, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->getPaddingTop()I

    move-result v7

    int-to-float v7, v7

    iput v7, v6, Landroid/graphics/RectF;->top:F

    .line 252
    iget-object v6, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mLineCoords:[Landroid/graphics/RectF;

    aget-object v6, v6, v2

    int-to-float v7, v5

    iget-object v8, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mLineCoords:[Landroid/graphics/RectF;

    aget-object v8, v8, v2

    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    move-result v8

    add-float/2addr v7, v8

    iput v7, v6, Landroid/graphics/RectF;->right:F

    .line 258
    :cond_1
    :goto_4
    iget v6, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mSpace:F

    const/4 v7, 0x0

    cmpg-float v6, v6, v7

    if-gez v6, :cond_6

    .line 259
    int-to-float v6, v5

    int-to-float v7, v4

    iget v8, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mCharSize:F

    mul-float/2addr v7, v8

    const/high16 v8, 0x40000000    # 2.0f

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    float-to-int v5, v6

    .line 263
    :goto_5
    iget-object v6, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mCharBottom:[F

    iget-object v7, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mLineCoords:[Landroid/graphics/RectF;

    aget-object v7, v7, v2

    iget v7, v7, Landroid/graphics/RectF;->bottom:F

    iget v8, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mTextBottomPadding:F

    sub-float/2addr v7, v8

    aput v7, v6, v2

    .line 247
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 232
    .end local v1    # "bottom":I
    .end local v2    # "i":I
    .end local v3    # "isLayoutRtl":Z
    .end local v4    # "rtlFlag":I
    .end local v5    # "startX":I
    :cond_2
    int-to-float v6, v0

    iget v7, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mSpace:F

    iget v8, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mNumChars:F

    const/high16 v9, 0x3f800000    # 1.0f

    sub-float/2addr v8, v9

    mul-float/2addr v7, v8

    sub-float/2addr v6, v7

    iget v7, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mNumChars:F

    div-float/2addr v6, v7

    iput v6, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mCharSize:F

    goto/16 :goto_0

    .line 239
    .restart local v1    # "bottom":I
    :cond_3
    const/4 v3, 0x0

    goto :goto_1

    .line 244
    .restart local v3    # "isLayoutRtl":Z
    :cond_4
    const/4 v4, 0x1

    .line 245
    .restart local v4    # "rtlFlag":I
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getPaddingStart(Landroid/view/View;)I

    move-result v5

    .restart local v5    # "startX":I
    goto :goto_2

    .line 254
    .restart local v2    # "i":I
    :cond_5
    iget-object v6, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mLineCoords:[Landroid/graphics/RectF;

    aget-object v6, v6, v2

    iget v7, v6, Landroid/graphics/RectF;->top:F

    iget-object v8, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mTextHeight:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    iget v9, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mTextBottomPadding:F

    const/high16 v10, 0x40000000    # 2.0f

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    sub-float/2addr v7, v8

    iput v7, v6, Landroid/graphics/RectF;->top:F

    goto :goto_4

    .line 261
    :cond_6
    int-to-float v6, v5

    int-to-float v7, v4

    iget v8, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mCharSize:F

    iget v9, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mSpace:F

    add-float/2addr v8, v9

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    float-to-int v5, v6

    goto :goto_5

    .line 265
    :cond_7
    return-void
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "lengthBefore"    # I
    .param p4, "lengthAfter"    # I

    .prologue
    .line 402
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->setError(Z)V

    .line 403
    iget-object v0, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mLineCoords:[Landroid/graphics/RectF;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mAnimate:Z

    if-nez v0, :cond_2

    .line 404
    :cond_0
    iget-object v0, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mOnPinEnteredListener:Lcom/alimuzaffar/lib/pin/PinEntryEditText$OnPinEnteredListener;

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iget v1, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mMaxLength:I

    if-ne v0, v1, :cond_1

    .line 405
    iget-object v0, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mOnPinEnteredListener:Lcom/alimuzaffar/lib/pin/PinEntryEditText$OnPinEnteredListener;

    invoke-interface {v0, p1}, Lcom/alimuzaffar/lib/pin/PinEntryEditText$OnPinEnteredListener;->onPinEntered(Ljava/lang/CharSequence;)V

    .line 422
    :cond_1
    :goto_0
    return-void

    .line 410
    :cond_2
    iget v0, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mAnimatedType:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    .line 411
    invoke-virtual {p0}, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->invalidate()V

    goto :goto_0

    .line 415
    :cond_3
    if-le p4, p3, :cond_1

    .line 416
    iget v0, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mAnimatedType:I

    if-nez v0, :cond_4

    .line 417
    invoke-direct {p0}, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->animatePopIn()V

    goto :goto_0

    .line 419
    :cond_4
    invoke-direct {p0, p1, p2}, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->animateBottomUp(Ljava/lang/CharSequence;I)V

    goto :goto_0
.end method

.method public setAnimateText(Z)V
    .locals 0
    .param p1, "animate"    # Z

    .prologue
    .line 511
    iput-boolean p1, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mAnimate:Z

    .line 512
    return-void
.end method

.method public setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V
    .locals 2
    .param p1, "actionModeCallback"    # Landroid/view/ActionMode$Callback;

    .prologue
    .line 274
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setCustomSelectionActionModeCallback() not supported."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setError(Z)V
    .locals 0
    .param p1, "hasError"    # Z

    .prologue
    .line 381
    iput-boolean p1, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mHasError:Z

    .line 382
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "l"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 269
    iput-object p1, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mClickListener:Landroid/view/View$OnClickListener;

    .line 270
    return-void
.end method

.method public setOnPinEnteredListener(Lcom/alimuzaffar/lib/pin/PinEntryEditText$OnPinEnteredListener;)V
    .locals 0
    .param p1, "l"    # Lcom/alimuzaffar/lib/pin/PinEntryEditText$OnPinEnteredListener;

    .prologue
    .line 515
    iput-object p1, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mOnPinEnteredListener:Lcom/alimuzaffar/lib/pin/PinEntryEditText$OnPinEnteredListener;

    .line 516
    return-void
.end method

.method protected updateColorForLines(Z)V
    .locals 5
    .param p1, "hasTextOrIsNext"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 351
    iget-boolean v0, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mHasError:Z

    if-eqz v0, :cond_1

    .line 352
    iget-object v0, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mLinesPaint:Landroid/graphics/Paint;

    new-array v1, v4, [I

    const v2, 0x10100a2

    aput v2, v1, v3

    invoke-direct {p0, v1}, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->getColorForState([I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 363
    :cond_0
    :goto_0
    return-void

    .line 353
    :cond_1
    invoke-virtual {p0}, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 354
    iget-object v0, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mLinesPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mLineStrokeSelected:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 355
    iget-object v0, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mLinesPaint:Landroid/graphics/Paint;

    new-array v1, v4, [I

    const v2, 0x101009c

    aput v2, v1, v3

    invoke-direct {p0, v1}, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->getColorForState([I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 356
    if-eqz p1, :cond_0

    .line 357
    iget-object v0, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mLinesPaint:Landroid/graphics/Paint;

    new-array v1, v4, [I

    const v2, 0x10100a1

    aput v2, v1, v3

    invoke-direct {p0, v1}, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->getColorForState([I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 360
    :cond_2
    iget-object v0, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mLinesPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mLineStroke:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 361
    iget-object v0, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mLinesPaint:Landroid/graphics/Paint;

    new-array v1, v4, [I

    const v2, -0x101009c

    aput v2, v1, v3

    invoke-direct {p0, v1}, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->getColorForState([I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0
.end method

.method protected updateDrawableState(ZZ)V
    .locals 5
    .param p1, "hasText"    # Z
    .param p2, "isNext"    # Z

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 366
    iget-boolean v0, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mHasError:Z

    if-eqz v0, :cond_1

    .line 367
    iget-object v0, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mPinBackground:Landroid/graphics/drawable/Drawable;

    new-array v1, v1, [I

    const v2, 0x10100a2

    aput v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 378
    :cond_0
    :goto_0
    return-void

    .line 368
    :cond_1
    invoke-virtual {p0}, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 369
    iget-object v0, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mPinBackground:Landroid/graphics/drawable/Drawable;

    new-array v1, v1, [I

    const v2, 0x101009c

    aput v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 370
    if-eqz p2, :cond_2

    .line 371
    iget-object v0, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mPinBackground:Landroid/graphics/drawable/Drawable;

    new-array v1, v4, [I

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_0

    .line 372
    :cond_2
    if-eqz p1, :cond_0

    .line 373
    iget-object v0, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mPinBackground:Landroid/graphics/drawable/Drawable;

    new-array v1, v4, [I

    fill-array-data v1, :array_1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_0

    .line 376
    :cond_3
    iget-object v0, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mPinBackground:Landroid/graphics/drawable/Drawable;

    new-array v1, v1, [I

    const v2, -0x101009c

    aput v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_0

    .line 371
    nop

    :array_0
    .array-data 4
        0x101009c
        0x10100a1
    .end array-data

    .line 373
    :array_1
    .array-data 4
        0x101009c
        0x10100a0
    .end array-data
.end method
