.class public abstract Lorg/adw/library/widgets/discreteseekbar/internal/drawable/StateDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "StateDrawable.java"


# instance fields
.field private mAlpha:I

.field private mCurrentColor:I

.field private final mPaint:Landroid/graphics/Paint;

.field private mTintStateList:Landroid/content/res/ColorStateList;


# direct methods
.method public constructor <init>(Landroid/content/res/ColorStateList;)V
    .locals 2
    .param p1, "tintStateList"    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 40
    const/16 v0, 0xff

    iput v0, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/StateDrawable;->mAlpha:I

    .line 44
    invoke-virtual {p0, p1}, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/StateDrawable;->setColorStateList(Landroid/content/res/ColorStateList;)V

    .line 45
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/StateDrawable;->mPaint:Landroid/graphics/Paint;

    .line 46
    return-void
.end method

.method private updateTint([I)Z
    .locals 3
    .param p1, "state"    # [I

    .prologue
    .line 66
    iget-object v1, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/StateDrawable;->mTintStateList:Landroid/content/res/ColorStateList;

    iget v2, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/StateDrawable;->mCurrentColor:I

    invoke-virtual {v1, p1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 67
    .local v0, "color":I
    iget v1, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/StateDrawable;->mCurrentColor:I

    if-eq v0, v1, :cond_0

    .line 68
    iput v0, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/StateDrawable;->mCurrentColor:I

    .line 70
    invoke-virtual {p0}, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/StateDrawable;->invalidateSelf()V

    .line 71
    const/4 v1, 0x1

    .line 73
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method abstract doDraw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 78
    iget-object v1, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/StateDrawable;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/StateDrawable;->mCurrentColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 79
    iget v1, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/StateDrawable;->mCurrentColor:I

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/StateDrawable;->modulateAlpha(I)I

    move-result v0

    .line 80
    .local v0, "alpha":I
    iget-object v1, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/StateDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 81
    iget-object v1, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/StateDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, v1}, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/StateDrawable;->doDraw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 82
    return-void
.end method

.method public getAlpha()I
    .locals 1

    .prologue
    .line 111
    iget v0, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/StateDrawable;->mAlpha:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 62
    const/4 v0, -0x3

    return v0
.end method

.method public isStateful()Z
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/StateDrawable;->mTintStateList:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

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

.method modulateAlpha(I)I
    .locals 3
    .param p1, "alpha"    # I

    .prologue
    .line 105
    iget v1, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/StateDrawable;->mAlpha:I

    iget v2, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/StateDrawable;->mAlpha:I

    shr-int/lit8 v2, v2, 0x7

    add-int v0, v1, v2

    .line 106
    .local v0, "scale":I
    mul-int v1, p1, v0

    shr-int/lit8 v1, v1, 0x8

    return v1
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .prologue
    .line 100
    iput p1, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/StateDrawable;->mAlpha:I

    .line 101
    invoke-virtual {p0}, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/StateDrawable;->invalidateSelf()V

    .line 102
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 116
    iget-object v0, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/StateDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 117
    return-void
.end method

.method public setColorStateList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "tintStateList"    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 85
    iput-object p1, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/StateDrawable;->mTintStateList:Landroid/content/res/ColorStateList;

    .line 86
    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    iput v0, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/StateDrawable;->mCurrentColor:I

    .line 87
    return-void
.end method

.method public setState([I)Z
    .locals 2
    .param p1, "stateSet"    # [I

    .prologue
    .line 55
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

    .line 56
    .local v0, "handled":Z
    invoke-direct {p0, p1}, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/StateDrawable;->updateTint([I)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 57
    :goto_0
    return v0

    .line 56
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
