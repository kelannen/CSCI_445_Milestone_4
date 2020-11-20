.class Ldmax/dialog/AnimatorPlayer;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AnimatorPlayer.java"


# instance fields
.field private animators:[Landroid/animation/Animator;

.field private interrupted:Z


# direct methods
.method public constructor <init>([Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animators"    # [Landroid/animation/Animator;

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput-boolean v0, p0, Ldmax/dialog/AnimatorPlayer;->interrupted:Z

    .line 15
    iput-object p1, p0, Ldmax/dialog/AnimatorPlayer;->animators:[Landroid/animation/Animator;

    .line 16
    return-void
.end method

.method private animate()V
    .locals 2

    .prologue
    .line 32
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 33
    .local v0, "set":Landroid/animation/AnimatorSet;
    iget-object v1, p0, Ldmax/dialog/AnimatorPlayer;->animators:[Landroid/animation/Animator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 34
    invoke-virtual {v0, p0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 35
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 36
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 20
    iget-boolean v0, p0, Ldmax/dialog/AnimatorPlayer;->interrupted:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Ldmax/dialog/AnimatorPlayer;->animate()V

    .line 21
    :cond_0
    return-void
.end method

.method public play()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ldmax/dialog/AnimatorPlayer;->animate()V

    .line 25
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldmax/dialog/AnimatorPlayer;->interrupted:Z

    .line 29
    return-void
.end method
