.class public Lorg/adw/library/widgets/discreteseekbar/internal/compat/SeekBarCompat;
.super Ljava/lang/Object;
.source "SeekBarCompat.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getRipple(Landroid/content/res/ColorStateList;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p0, "colorStateList"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 61
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 62
    invoke-static {p0}, Lorg/adw/library/widgets/discreteseekbar/internal/compat/SeekBarCompatDontCrash;->getRipple(Landroid/content/res/ColorStateList;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 64
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/AlmostRippleDrawable;

    invoke-direct {v0, p0}, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/AlmostRippleDrawable;-><init>(Landroid/content/res/ColorStateList;)V

    goto :goto_0
.end method

.method public static isHardwareAccelerated(Landroid/view/View;)Z
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 138
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 139
    invoke-static {p0}, Lorg/adw/library/widgets/discreteseekbar/internal/compat/SeekBarCompatDontCrash;->isHardwareAccelerated(Landroid/view/View;)Z

    move-result v0

    .line 141
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isInScrollingContainer(Landroid/view/ViewParent;)Z
    .locals 2
    .param p0, "p"    # Landroid/view/ViewParent;

    .prologue
    .line 131
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 132
    invoke-static {p0}, Lorg/adw/library/widgets/discreteseekbar/internal/compat/SeekBarCompatDontCrash;->isInScrollingContainer(Landroid/view/ViewParent;)Z

    move-result v0

    .line 134
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 110
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 111
    invoke-static {p0, p1}, Lorg/adw/library/widgets/discreteseekbar/internal/compat/SeekBarCompatDontCrash;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 115
    :goto_0
    return-void

    .line 113
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public static setHotspotBounds(Landroid/graphics/drawable/Drawable;IIII)V
    .locals 5
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 92
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 94
    sub-int v1, p3, p1

    div-int/lit8 v0, v1, 0x8

    .line 95
    .local v0, "size":I
    add-int v1, p1, v0

    add-int v2, p2, v0

    sub-int v3, p3, v0

    sub-int v4, p4, v0

    invoke-static {p0, v1, v2, v3, v4}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setHotspotBounds(Landroid/graphics/drawable/Drawable;IIII)V

    .line 99
    .end local v0    # "size":I
    :goto_0
    return-void

    .line 97
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0
.end method

.method public static setOutlineProvider(Landroid/view/View;Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;)V
    .locals 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "markerDrawable"    # Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;

    .prologue
    .line 48
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 49
    invoke-static {p0, p1}, Lorg/adw/library/widgets/discreteseekbar/internal/compat/SeekBarCompatDontCrash;->setOutlineProvider(Landroid/view/View;Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;)V

    .line 51
    :cond_0
    return-void
.end method

.method public static setRippleColor(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V
    .locals 2
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "colorStateList"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 74
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 75
    check-cast p0, Landroid/graphics/drawable/RippleDrawable;

    .end local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    .line 79
    :goto_0
    return-void

    .line 77
    .restart local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    check-cast p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/AlmostRippleDrawable;

    .end local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, p1}, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/AlmostRippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0
.end method

.method public static setTextDirection(Landroid/widget/TextView;I)V
    .locals 2
    .param p0, "textView"    # Landroid/widget/TextView;
    .param p1, "textDirection"    # I

    .prologue
    .line 125
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 126
    invoke-static {p0, p1}, Lorg/adw/library/widgets/discreteseekbar/internal/compat/SeekBarCompatDontCrash;->setTextDirection(Landroid/widget/TextView;I)V

    .line 128
    :cond_0
    return-void
.end method
