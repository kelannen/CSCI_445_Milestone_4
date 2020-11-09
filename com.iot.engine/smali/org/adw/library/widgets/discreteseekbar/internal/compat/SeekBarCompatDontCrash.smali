.class Lorg/adw/library/widgets/discreteseekbar/internal/compat/SeekBarCompatDontCrash;
.super Ljava/lang/Object;
.source "SeekBarCompatDontCrash.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getRipple(Landroid/content/res/ColorStateList;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p0, "colorStateList"    # Landroid/content/res/ColorStateList;

    .prologue
    const/4 v1, 0x0

    .line 50
    new-instance v0, Landroid/graphics/drawable/RippleDrawable;

    invoke-direct {v0, p0, v1, v1}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-object v0
.end method

.method public static isHardwareAccelerated(Landroid/view/View;)Z
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 72
    invoke-virtual {p0}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v0

    return v0
.end method

.method public static isInScrollingContainer(Landroid/view/ViewParent;)Z
    .locals 1
    .param p0, "p"    # Landroid/view/ViewParent;

    .prologue
    .line 62
    :goto_0
    if-eqz p0, :cond_1

    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    move-object v0, p0

    .line 63
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->shouldDelayChildPressedState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    const/4 v0, 0x1

    .line 68
    :goto_1
    return v0

    .line 66
    :cond_0
    invoke-interface {p0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    goto :goto_0

    .line 68
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p0, "view"    # Landroid/view/View;
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 54
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 55
    return-void
.end method

.method public static setOutlineProvider(Landroid/view/View;Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;)V
    .locals 1
    .param p0, "marker"    # Landroid/view/View;
    .param p1, "markerDrawable"    # Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;

    .prologue
    .line 41
    new-instance v0, Lorg/adw/library/widgets/discreteseekbar/internal/compat/SeekBarCompatDontCrash$1;

    invoke-direct {v0, p1}, Lorg/adw/library/widgets/discreteseekbar/internal/compat/SeekBarCompatDontCrash$1;-><init>(Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 47
    return-void
.end method

.method public static setTextDirection(Landroid/widget/TextView;I)V
    .locals 0
    .param p0, "number"    # Landroid/widget/TextView;
    .param p1, "textDirection"    # I

    .prologue
    .line 58
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextDirection(I)V

    .line 59
    return-void
.end method
