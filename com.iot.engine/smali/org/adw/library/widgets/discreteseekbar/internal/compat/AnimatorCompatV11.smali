.class public Lorg/adw/library/widgets/discreteseekbar/internal/compat/AnimatorCompatV11;
.super Lorg/adw/library/widgets/discreteseekbar/internal/compat/AnimatorCompat;
.source "AnimatorCompatV11.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation


# instance fields
.field animator:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(FFLorg/adw/library/widgets/discreteseekbar/internal/compat/AnimatorCompat$AnimationFrameUpdateListener;)V
    .locals 2
    .param p1, "start"    # F
    .param p2, "end"    # F
    .param p3, "listener"    # Lorg/adw/library/widgets/discreteseekbar/internal/compat/AnimatorCompat$AnimationFrameUpdateListener;

    .prologue
    .line 36
    invoke-direct {p0}, Lorg/adw/library/widgets/discreteseekbar/internal/compat/AnimatorCompat;-><init>()V

    .line 37
    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/adw/library/widgets/discreteseekbar/internal/compat/AnimatorCompatV11;->animator:Landroid/animation/ValueAnimator;

    .line 38
    iget-object v0, p0, Lorg/adw/library/widgets/discreteseekbar/internal/compat/AnimatorCompatV11;->animator:Landroid/animation/ValueAnimator;

    new-instance v1, Lorg/adw/library/widgets/discreteseekbar/internal/compat/AnimatorCompatV11$1;

    invoke-direct {v1, p0, p3}, Lorg/adw/library/widgets/discreteseekbar/internal/compat/AnimatorCompatV11$1;-><init>(Lorg/adw/library/widgets/discreteseekbar/internal/compat/AnimatorCompatV11;Lorg/adw/library/widgets/discreteseekbar/internal/compat/AnimatorCompat$AnimationFrameUpdateListener;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 44
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lorg/adw/library/widgets/discreteseekbar/internal/compat/AnimatorCompatV11;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 49
    return-void
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lorg/adw/library/widgets/discreteseekbar/internal/compat/AnimatorCompatV11;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    return v0
.end method

.method public setDuration(I)V
    .locals 4
    .param p1, "duration"    # I

    .prologue
    .line 58
    iget-object v0, p0, Lorg/adw/library/widgets/discreteseekbar/internal/compat/AnimatorCompatV11;->animator:Landroid/animation/ValueAnimator;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 59
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lorg/adw/library/widgets/discreteseekbar/internal/compat/AnimatorCompatV11;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 64
    return-void
.end method
