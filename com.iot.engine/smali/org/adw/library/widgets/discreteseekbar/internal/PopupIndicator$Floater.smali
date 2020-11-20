.class Lorg/adw/library/widgets/discreteseekbar/internal/PopupIndicator$Floater;
.super Landroid/widget/FrameLayout;
.source "PopupIndicator.java"

# interfaces
.implements Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable$MarkerAnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/adw/library/widgets/discreteseekbar/internal/PopupIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Floater"
.end annotation


# instance fields
.field private mMarker:Lorg/adw/library/widgets/discreteseekbar/internal/Marker;

.field private mOffset:I

.field final synthetic this$0:Lorg/adw/library/widgets/discreteseekbar/internal/PopupIndicator;


# direct methods
.method public constructor <init>(Lorg/adw/library/widgets/discreteseekbar/internal/PopupIndicator;Landroid/content/Context;Landroid/util/AttributeSet;ILjava/lang/String;II)V
    .locals 8
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "defStyleAttr"    # I
    .param p5, "maxValue"    # Ljava/lang/String;
    .param p6, "thumbSize"    # I
    .param p7, "separation"    # I

    .prologue
    const/4 v7, -0x2

    .line 216
    iput-object p1, p0, Lorg/adw/library/widgets/discreteseekbar/internal/PopupIndicator$Floater;->this$0:Lorg/adw/library/widgets/discreteseekbar/internal/PopupIndicator;

    .line 217
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 218
    new-instance v0, Lorg/adw/library/widgets/discreteseekbar/internal/Marker;

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move-object v4, p5

    move v5, p6

    move v6, p7

    invoke-direct/range {v0 .. v6}, Lorg/adw/library/widgets/discreteseekbar/internal/Marker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILjava/lang/String;II)V

    iput-object v0, p0, Lorg/adw/library/widgets/discreteseekbar/internal/PopupIndicator$Floater;->mMarker:Lorg/adw/library/widgets/discreteseekbar/internal/Marker;

    .line 219
    iget-object v0, p0, Lorg/adw/library/widgets/discreteseekbar/internal/PopupIndicator$Floater;->mMarker:Lorg/adw/library/widgets/discreteseekbar/internal/Marker;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x33

    invoke-direct {v1, v7, v7, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p0, v0, v1}, Lorg/adw/library/widgets/discreteseekbar/internal/PopupIndicator$Floater;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 220
    return-void
.end method

.method static synthetic access$000(Lorg/adw/library/widgets/discreteseekbar/internal/PopupIndicator$Floater;)Lorg/adw/library/widgets/discreteseekbar/internal/Marker;
    .locals 1
    .param p0, "x0"    # Lorg/adw/library/widgets/discreteseekbar/internal/PopupIndicator$Floater;

    .prologue
    .line 212
    iget-object v0, p0, Lorg/adw/library/widgets/discreteseekbar/internal/PopupIndicator$Floater;->mMarker:Lorg/adw/library/widgets/discreteseekbar/internal/Marker;

    return-object v0
.end method


# virtual methods
.method public onClosingComplete()V
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lorg/adw/library/widgets/discreteseekbar/internal/PopupIndicator$Floater;->this$0:Lorg/adw/library/widgets/discreteseekbar/internal/PopupIndicator;

    invoke-static {v0}, Lorg/adw/library/widgets/discreteseekbar/internal/PopupIndicator;->access$100(Lorg/adw/library/widgets/discreteseekbar/internal/PopupIndicator;)Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable$MarkerAnimationListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lorg/adw/library/widgets/discreteseekbar/internal/PopupIndicator$Floater;->this$0:Lorg/adw/library/widgets/discreteseekbar/internal/PopupIndicator;

    invoke-static {v0}, Lorg/adw/library/widgets/discreteseekbar/internal/PopupIndicator;->access$100(Lorg/adw/library/widgets/discreteseekbar/internal/PopupIndicator;)Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable$MarkerAnimationListener;

    move-result-object v0

    invoke-interface {v0}, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable$MarkerAnimationListener;->onClosingComplete()V

    .line 254
    :cond_0
    iget-object v0, p0, Lorg/adw/library/widgets/discreteseekbar/internal/PopupIndicator$Floater;->this$0:Lorg/adw/library/widgets/discreteseekbar/internal/PopupIndicator;

    invoke-virtual {v0}, Lorg/adw/library/widgets/discreteseekbar/internal/PopupIndicator;->dismissComplete()V

    .line 255
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 6
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 232
    iget-object v2, p0, Lorg/adw/library/widgets/discreteseekbar/internal/PopupIndicator$Floater;->mMarker:Lorg/adw/library/widgets/discreteseekbar/internal/Marker;

    invoke-virtual {v2}, Lorg/adw/library/widgets/discreteseekbar/internal/Marker;->getMeasuredWidth()I

    move-result v2

    div-int/lit8 v0, v2, 0x2

    .line 233
    .local v0, "centerDiffX":I
    iget v2, p0, Lorg/adw/library/widgets/discreteseekbar/internal/PopupIndicator$Floater;->mOffset:I

    sub-int v1, v2, v0

    .line 234
    .local v1, "offset":I
    iget-object v2, p0, Lorg/adw/library/widgets/discreteseekbar/internal/PopupIndicator$Floater;->mMarker:Lorg/adw/library/widgets/discreteseekbar/internal/Marker;

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/adw/library/widgets/discreteseekbar/internal/PopupIndicator$Floater;->mMarker:Lorg/adw/library/widgets/discreteseekbar/internal/Marker;

    invoke-virtual {v4}, Lorg/adw/library/widgets/discreteseekbar/internal/Marker;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v4, v1

    iget-object v5, p0, Lorg/adw/library/widgets/discreteseekbar/internal/PopupIndicator$Floater;->mMarker:Lorg/adw/library/widgets/discreteseekbar/internal/Marker;

    invoke-virtual {v5}, Lorg/adw/library/widgets/discreteseekbar/internal/Marker;->getMeasuredHeight()I

    move-result v5

    invoke-virtual {v2, v1, v3, v4, v5}, Lorg/adw/library/widgets/discreteseekbar/internal/Marker;->layout(IIII)V

    .line 235
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 224
    invoke-virtual {p0, p1, p2}, Lorg/adw/library/widgets/discreteseekbar/internal/PopupIndicator$Floater;->measureChildren(II)V

    .line 225
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 226
    .local v1, "widthSize":I
    iget-object v2, p0, Lorg/adw/library/widgets/discreteseekbar/internal/PopupIndicator$Floater;->mMarker:Lorg/adw/library/widgets/discreteseekbar/internal/Marker;

    invoke-virtual {v2}, Lorg/adw/library/widgets/discreteseekbar/internal/Marker;->getMeasuredHeight()I

    move-result v0

    .line 227
    .local v0, "heightSie":I
    invoke-virtual {p0, v1, v0}, Lorg/adw/library/widgets/discreteseekbar/internal/PopupIndicator$Floater;->setMeasuredDimension(II)V

    .line 228
    return-void
.end method

.method public onOpeningComplete()V
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lorg/adw/library/widgets/discreteseekbar/internal/PopupIndicator$Floater;->this$0:Lorg/adw/library/widgets/discreteseekbar/internal/PopupIndicator;

    invoke-static {v0}, Lorg/adw/library/widgets/discreteseekbar/internal/PopupIndicator;->access$100(Lorg/adw/library/widgets/discreteseekbar/internal/PopupIndicator;)Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable$MarkerAnimationListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lorg/adw/library/widgets/discreteseekbar/internal/PopupIndicator$Floater;->this$0:Lorg/adw/library/widgets/discreteseekbar/internal/PopupIndicator;

    invoke-static {v0}, Lorg/adw/library/widgets/discreteseekbar/internal/PopupIndicator;->access$100(Lorg/adw/library/widgets/discreteseekbar/internal/PopupIndicator;)Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable$MarkerAnimationListener;

    move-result-object v0

    invoke-interface {v0}, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable$MarkerAnimationListener;->onOpeningComplete()V

    .line 262
    :cond_0
    return-void
.end method

.method public setColors(II)V
    .locals 1
    .param p1, "startColor"    # I
    .param p2, "endColor"    # I

    .prologue
    .line 265
    iget-object v0, p0, Lorg/adw/library/widgets/discreteseekbar/internal/PopupIndicator$Floater;->mMarker:Lorg/adw/library/widgets/discreteseekbar/internal/Marker;

    invoke-virtual {v0, p1, p2}, Lorg/adw/library/widgets/discreteseekbar/internal/Marker;->setColors(II)V

    .line 266
    return-void
.end method

.method public setFloatOffset(I)V
    .locals 4
    .param p1, "x"    # I

    .prologue
    .line 238
    iput p1, p0, Lorg/adw/library/widgets/discreteseekbar/internal/PopupIndicator$Floater;->mOffset:I

    .line 239
    iget-object v2, p0, Lorg/adw/library/widgets/discreteseekbar/internal/PopupIndicator$Floater;->mMarker:Lorg/adw/library/widgets/discreteseekbar/internal/Marker;

    invoke-virtual {v2}, Lorg/adw/library/widgets/discreteseekbar/internal/Marker;->getMeasuredWidth()I

    move-result v2

    div-int/lit8 v0, v2, 0x2

    .line 240
    .local v0, "centerDiffX":I
    sub-int v1, p1, v0

    .line 241
    .local v1, "offset":I
    iget-object v2, p0, Lorg/adw/library/widgets/discreteseekbar/internal/PopupIndicator$Floater;->mMarker:Lorg/adw/library/widgets/discreteseekbar/internal/Marker;

    iget-object v3, p0, Lorg/adw/library/widgets/discreteseekbar/internal/PopupIndicator$Floater;->mMarker:Lorg/adw/library/widgets/discreteseekbar/internal/Marker;

    invoke-virtual {v3}, Lorg/adw/library/widgets/discreteseekbar/internal/Marker;->getLeft()I

    move-result v3

    sub-int v3, v1, v3

    invoke-virtual {v2, v3}, Lorg/adw/library/widgets/discreteseekbar/internal/Marker;->offsetLeftAndRight(I)V

    .line 244
    invoke-static {p0}, Lorg/adw/library/widgets/discreteseekbar/internal/compat/SeekBarCompat;->isHardwareAccelerated(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 245
    invoke-virtual {p0}, Lorg/adw/library/widgets/discreteseekbar/internal/PopupIndicator$Floater;->invalidate()V

    .line 247
    :cond_0
    return-void
.end method
