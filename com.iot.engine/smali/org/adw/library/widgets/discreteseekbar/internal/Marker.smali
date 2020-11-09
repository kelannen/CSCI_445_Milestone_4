.class public Lorg/adw/library/widgets/discreteseekbar/internal/Marker;
.super Landroid/view/ViewGroup;
.source "Marker.java"

# interfaces
.implements Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable$MarkerAnimationListener;


# static fields
.field private static final ELEVATION_DP:I = 0x8

.field private static final PADDING_DP:I = 0x4


# instance fields
.field mMarkerDrawable:Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;

.field private mNumber:Landroid/widget/TextView;

.field private mSeparation:I

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILjava/lang/String;II)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "maxValue"    # Ljava/lang/String;
    .param p5, "thumbSize"    # I
    .param p6, "separation"    # I

    .prologue
    .line 61
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 63
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lorg/adw/library/widgets/discreteseekbar/internal/Marker;->setVisibility(I)V

    .line 65
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 66
    .local v2, "displayMetrics":Landroid/util/DisplayMetrics;
    sget-object v6, Lorg/adw/library/widgets/discreteseekbar/R$styleable;->DiscreteSeekBar:[I

    sget v7, Lorg/adw/library/widgets/discreteseekbar/R$attr;->discreteSeekBarStyle:I

    sget v8, Lorg/adw/library/widgets/discreteseekbar/R$style;->Widget_DiscreteSeekBar:I

    invoke-virtual {p1, p2, v6, v7, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 69
    .local v0, "a":Landroid/content/res/TypedArray;
    const/high16 v6, 0x40800000    # 4.0f

    iget v7, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v6, v7

    float-to-int v6, v6

    mul-int/lit8 v4, v6, 0x2

    .line 70
    .local v4, "padding":I
    sget v6, Lorg/adw/library/widgets/discreteseekbar/R$styleable;->DiscreteSeekBar_dsb_indicatorTextAppearance:I

    sget v7, Lorg/adw/library/widgets/discreteseekbar/R$style;->Widget_DiscreteIndicatorTextAppearance:I

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    .line 72
    .local v5, "textAppearanceId":I
    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lorg/adw/library/widgets/discreteseekbar/internal/Marker;->mNumber:Landroid/widget/TextView;

    .line 74
    iget-object v6, p0, Lorg/adw/library/widgets/discreteseekbar/internal/Marker;->mNumber:Landroid/widget/TextView;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v6, v4, v7, v4, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 75
    iget-object v6, p0, Lorg/adw/library/widgets/discreteseekbar/internal/Marker;->mNumber:Landroid/widget/TextView;

    invoke-virtual {v6, p1, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 76
    iget-object v6, p0, Lorg/adw/library/widgets/discreteseekbar/internal/Marker;->mNumber:Landroid/widget/TextView;

    const/16 v7, 0x11

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 77
    iget-object v6, p0, Lorg/adw/library/widgets/discreteseekbar/internal/Marker;->mNumber:Landroid/widget/TextView;

    invoke-virtual {v6, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    iget-object v6, p0, Lorg/adw/library/widgets/discreteseekbar/internal/Marker;->mNumber:Landroid/widget/TextView;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 79
    iget-object v6, p0, Lorg/adw/library/widgets/discreteseekbar/internal/Marker;->mNumber:Landroid/widget/TextView;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 80
    iget-object v6, p0, Lorg/adw/library/widgets/discreteseekbar/internal/Marker;->mNumber:Landroid/widget/TextView;

    const/4 v7, 0x5

    invoke-static {v6, v7}, Lorg/adw/library/widgets/discreteseekbar/internal/compat/SeekBarCompat;->setTextDirection(Landroid/widget/TextView;I)V

    .line 81
    iget-object v6, p0, Lorg/adw/library/widgets/discreteseekbar/internal/Marker;->mNumber:Landroid/widget/TextView;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 85
    invoke-virtual {p0, v4, v4, v4, v4}, Lorg/adw/library/widgets/discreteseekbar/internal/Marker;->setPadding(IIII)V

    .line 87
    invoke-virtual {p0, p4}, Lorg/adw/library/widgets/discreteseekbar/internal/Marker;->resetSizes(Ljava/lang/String;)V

    .line 89
    iput p6, p0, Lorg/adw/library/widgets/discreteseekbar/internal/Marker;->mSeparation:I

    .line 90
    sget v6, Lorg/adw/library/widgets/discreteseekbar/R$styleable;->DiscreteSeekBar_dsb_indicatorColor:I

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 91
    .local v1, "color":Landroid/content/res/ColorStateList;
    new-instance v6, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;

    invoke-direct {v6, v1, p5}, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;-><init>(Landroid/content/res/ColorStateList;I)V

    iput-object v6, p0, Lorg/adw/library/widgets/discreteseekbar/internal/Marker;->mMarkerDrawable:Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;

    .line 92
    iget-object v6, p0, Lorg/adw/library/widgets/discreteseekbar/internal/Marker;->mMarkerDrawable:Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;

    invoke-virtual {v6, p0}, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 93
    iget-object v6, p0, Lorg/adw/library/widgets/discreteseekbar/internal/Marker;->mMarkerDrawable:Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;

    invoke-virtual {v6, p0}, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;->setMarkerListener(Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable$MarkerAnimationListener;)V

    .line 94
    iget-object v6, p0, Lorg/adw/library/widgets/discreteseekbar/internal/Marker;->mMarkerDrawable:Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;

    invoke-virtual {v6, v4}, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;->setExternalOffset(I)V

    .line 97
    sget v6, Lorg/adw/library/widgets/discreteseekbar/R$styleable;->DiscreteSeekBar_dsb_indicatorElevation:I

    const/high16 v7, 0x41000000    # 8.0f

    iget v8, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v7, v8

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    .line 98
    .local v3, "elevation":F
    invoke-static {p0, v3}, Landroid/support/v4/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    .line 99
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x15

    if-lt v6, v7, :cond_0

    .line 100
    iget-object v6, p0, Lorg/adw/library/widgets/discreteseekbar/internal/Marker;->mMarkerDrawable:Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;

    invoke-static {p0, v6}, Lorg/adw/library/widgets/discreteseekbar/internal/compat/SeekBarCompat;->setOutlineProvider(Landroid/view/View;Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;)V

    .line 102
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 103
    return-void
.end method


# virtual methods
.method public animateClose()V
    .locals 2

    .prologue
    .line 181
    iget-object v0, p0, Lorg/adw/library/widgets/discreteseekbar/internal/Marker;->mMarkerDrawable:Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;

    invoke-virtual {v0}, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;->stop()V

    .line 182
    iget-object v0, p0, Lorg/adw/library/widgets/discreteseekbar/internal/Marker;->mNumber:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 183
    iget-object v0, p0, Lorg/adw/library/widgets/discreteseekbar/internal/Marker;->mMarkerDrawable:Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;

    invoke-virtual {v0}, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;->animateToNormal()V

    .line 184
    return-void
.end method

.method public animateOpen()V
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lorg/adw/library/widgets/discreteseekbar/internal/Marker;->mMarkerDrawable:Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;

    invoke-virtual {v0}, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;->stop()V

    .line 177
    iget-object v0, p0, Lorg/adw/library/widgets/discreteseekbar/internal/Marker;->mMarkerDrawable:Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;

    invoke-virtual {v0}, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;->animateToPressed()V

    .line 178
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 122
    iget-object v0, p0, Lorg/adw/library/widgets/discreteseekbar/internal/Marker;->mMarkerDrawable:Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;

    invoke-virtual {v0, p1}, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 123
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 124
    return-void
.end method

.method public getValue()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lorg/adw/library/widgets/discreteseekbar/internal/Marker;->mNumber:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 159
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 164
    invoke-virtual {p0}, Lorg/adw/library/widgets/discreteseekbar/internal/Marker;->animateOpen()V

    .line 165
    return-void
.end method

.method public onClosingComplete()V
    .locals 1

    .prologue
    .line 196
    invoke-virtual {p0}, Lorg/adw/library/widgets/discreteseekbar/internal/Marker;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable$MarkerAnimationListener;

    if-eqz v0, :cond_0

    .line 197
    invoke-virtual {p0}, Lorg/adw/library/widgets/discreteseekbar/internal/Marker;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable$MarkerAnimationListener;

    invoke-interface {v0}, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable$MarkerAnimationListener;->onClosingComplete()V

    .line 199
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 203
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 204
    iget-object v0, p0, Lorg/adw/library/widgets/discreteseekbar/internal/Marker;->mMarkerDrawable:Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;

    invoke-virtual {v0}, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;->stop()V

    .line 205
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 7
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 141
    invoke-virtual {p0}, Lorg/adw/library/widgets/discreteseekbar/internal/Marker;->getPaddingLeft()I

    move-result v1

    .line 142
    .local v1, "left":I
    invoke-virtual {p0}, Lorg/adw/library/widgets/discreteseekbar/internal/Marker;->getPaddingTop()I

    move-result v3

    .line 143
    .local v3, "top":I
    invoke-virtual {p0}, Lorg/adw/library/widgets/discreteseekbar/internal/Marker;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lorg/adw/library/widgets/discreteseekbar/internal/Marker;->getPaddingRight()I

    move-result v5

    sub-int v2, v4, v5

    .line 144
    .local v2, "right":I
    invoke-virtual {p0}, Lorg/adw/library/widgets/discreteseekbar/internal/Marker;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Lorg/adw/library/widgets/discreteseekbar/internal/Marker;->getPaddingBottom()I

    move-result v5

    sub-int v0, v4, v5

    .line 146
    .local v0, "bottom":I
    iget-object v4, p0, Lorg/adw/library/widgets/discreteseekbar/internal/Marker;->mNumber:Landroid/widget/TextView;

    iget v5, p0, Lorg/adw/library/widgets/discreteseekbar/internal/Marker;->mWidth:I

    add-int/2addr v5, v1

    iget v6, p0, Lorg/adw/library/widgets/discreteseekbar/internal/Marker;->mWidth:I

    add-int/2addr v6, v3

    invoke-virtual {v4, v1, v3, v5, v6}, Landroid/widget/TextView;->layout(IIII)V

    .line 149
    iget-object v4, p0, Lorg/adw/library/widgets/discreteseekbar/internal/Marker;->mMarkerDrawable:Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;

    invoke-virtual {v4, v1, v3, v2, v0}, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;->setBounds(IIII)V

    .line 150
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 128
    invoke-virtual {p0, p1, p2}, Lorg/adw/library/widgets/discreteseekbar/internal/Marker;->measureChildren(II)V

    .line 129
    iget v3, p0, Lorg/adw/library/widgets/discreteseekbar/internal/Marker;->mWidth:I

    invoke-virtual {p0}, Lorg/adw/library/widgets/discreteseekbar/internal/Marker;->getPaddingLeft()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p0}, Lorg/adw/library/widgets/discreteseekbar/internal/Marker;->getPaddingRight()I

    move-result v4

    add-int v2, v3, v4

    .line 130
    .local v2, "widthSize":I
    iget v3, p0, Lorg/adw/library/widgets/discreteseekbar/internal/Marker;->mWidth:I

    invoke-virtual {p0}, Lorg/adw/library/widgets/discreteseekbar/internal/Marker;->getPaddingTop()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p0}, Lorg/adw/library/widgets/discreteseekbar/internal/Marker;->getPaddingBottom()I

    move-result v4

    add-int v1, v3, v4

    .line 135
    .local v1, "heightSize":I
    const v3, 0x3fb47ae1    # 1.41f

    iget v4, p0, Lorg/adw/library/widgets/discreteseekbar/internal/Marker;->mWidth:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    iget v4, p0, Lorg/adw/library/widgets/discreteseekbar/internal/Marker;->mWidth:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    float-to-int v3, v3

    div-int/lit8 v0, v3, 0x2

    .line 136
    .local v0, "diff":I
    add-int v3, v1, v0

    iget v4, p0, Lorg/adw/library/widgets/discreteseekbar/internal/Marker;->mSeparation:I

    add-int/2addr v3, v4

    invoke-virtual {p0, v2, v3}, Lorg/adw/library/widgets/discreteseekbar/internal/Marker;->setMeasuredDimension(II)V

    .line 137
    return-void
.end method

.method public onOpeningComplete()V
    .locals 2

    .prologue
    .line 188
    iget-object v0, p0, Lorg/adw/library/widgets/discreteseekbar/internal/Marker;->mNumber:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 189
    invoke-virtual {p0}, Lorg/adw/library/widgets/discreteseekbar/internal/Marker;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable$MarkerAnimationListener;

    if-eqz v0, :cond_0

    .line 190
    invoke-virtual {p0}, Lorg/adw/library/widgets/discreteseekbar/internal/Marker;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable$MarkerAnimationListener;

    invoke-interface {v0}, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable$MarkerAnimationListener;->onOpeningComplete()V

    .line 192
    :cond_0
    return-void
.end method

.method public resetSizes(Ljava/lang/String;)V
    .locals 8
    .param p1, "maxValue"    # Ljava/lang/String;

    .prologue
    const/high16 v6, -0x80000000

    .line 106
    invoke-virtual {p0}, Lorg/adw/library/widgets/discreteseekbar/internal/Marker;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 108
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    iget-object v3, p0, Lorg/adw/library/widgets/discreteseekbar/internal/Marker;->mNumber:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 113
    .local v2, "wSpec":I
    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 114
    .local v1, "hSpec":I
    iget-object v3, p0, Lorg/adw/library/widgets/discreteseekbar/internal/Marker;->mNumber:Landroid/widget/TextView;

    invoke-virtual {v3, v2, v1}, Landroid/widget/TextView;->measure(II)V

    .line 115
    iget-object v3, p0, Lorg/adw/library/widgets/discreteseekbar/internal/Marker;->mNumber:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    iget-object v4, p0, Lorg/adw/library/widgets/discreteseekbar/internal/Marker;->mNumber:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Lorg/adw/library/widgets/discreteseekbar/internal/Marker;->mWidth:I

    .line 116
    iget-object v3, p0, Lorg/adw/library/widgets/discreteseekbar/internal/Marker;->mNumber:Landroid/widget/TextView;

    invoke-virtual {p0, v3}, Lorg/adw/library/widgets/discreteseekbar/internal/Marker;->removeView(Landroid/view/View;)V

    .line 117
    iget-object v3, p0, Lorg/adw/library/widgets/discreteseekbar/internal/Marker;->mNumber:Landroid/widget/TextView;

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    iget v5, p0, Lorg/adw/library/widgets/discreteseekbar/internal/Marker;->mWidth:I

    iget v6, p0, Lorg/adw/library/widgets/discreteseekbar/internal/Marker;->mWidth:I

    const/16 v7, 0x33

    invoke-direct {v4, v5, v6, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p0, v3, v4}, Lorg/adw/library/widgets/discreteseekbar/internal/Marker;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 118
    return-void
.end method

.method public setColors(II)V
    .locals 1
    .param p1, "startColor"    # I
    .param p2, "endColor"    # I

    .prologue
    .line 208
    iget-object v0, p0, Lorg/adw/library/widgets/discreteseekbar/internal/Marker;->mMarkerDrawable:Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;

    invoke-virtual {v0, p1, p2}, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;->setColors(II)V

    .line 209
    return-void
.end method

.method public setValue(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/CharSequence;

    .prologue
    .line 168
    iget-object v0, p0, Lorg/adw/library/widgets/discreteseekbar/internal/Marker;->mNumber:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 154
    iget-object v0, p0, Lorg/adw/library/widgets/discreteseekbar/internal/Marker;->mMarkerDrawable:Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;

    if-eq p1, v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

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
