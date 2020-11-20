.class Ldmax/dialog/AnimatedView;
.super Landroid/view/View;
.source "AnimatedView.java"


# instance fields
.field private target:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 15
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 16
    return-void
.end method


# virtual methods
.method public getTarget()I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Ldmax/dialog/AnimatedView;->target:I

    return v0
.end method

.method public getXFactor()F
    .locals 2

    .prologue
    .line 19
    invoke-virtual {p0}, Ldmax/dialog/AnimatedView;->getX()F

    move-result v0

    iget v1, p0, Ldmax/dialog/AnimatedView;->target:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public setTarget(I)V
    .locals 0
    .param p1, "target"    # I

    .prologue
    .line 27
    iput p1, p0, Ldmax/dialog/AnimatedView;->target:I

    .line 28
    return-void
.end method

.method public setXFactor(F)V
    .locals 1
    .param p1, "xFactor"    # F

    .prologue
    .line 23
    iget v0, p0, Ldmax/dialog/AnimatedView;->target:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    invoke-virtual {p0, v0}, Ldmax/dialog/AnimatedView;->setX(F)V

    .line 24
    return-void
.end method
