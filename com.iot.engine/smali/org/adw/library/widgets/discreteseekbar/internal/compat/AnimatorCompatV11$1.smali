.class Lorg/adw/library/widgets/discreteseekbar/internal/compat/AnimatorCompatV11$1;
.super Ljava/lang/Object;
.source "AnimatorCompatV11.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/adw/library/widgets/discreteseekbar/internal/compat/AnimatorCompatV11;-><init>(FFLorg/adw/library/widgets/discreteseekbar/internal/compat/AnimatorCompat$AnimationFrameUpdateListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/adw/library/widgets/discreteseekbar/internal/compat/AnimatorCompatV11;

.field final synthetic val$listener:Lorg/adw/library/widgets/discreteseekbar/internal/compat/AnimatorCompat$AnimationFrameUpdateListener;


# direct methods
.method constructor <init>(Lorg/adw/library/widgets/discreteseekbar/internal/compat/AnimatorCompatV11;Lorg/adw/library/widgets/discreteseekbar/internal/compat/AnimatorCompat$AnimationFrameUpdateListener;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lorg/adw/library/widgets/discreteseekbar/internal/compat/AnimatorCompatV11$1;->this$0:Lorg/adw/library/widgets/discreteseekbar/internal/compat/AnimatorCompatV11;

    iput-object p2, p0, Lorg/adw/library/widgets/discreteseekbar/internal/compat/AnimatorCompatV11$1;->val$listener:Lorg/adw/library/widgets/discreteseekbar/internal/compat/AnimatorCompat$AnimationFrameUpdateListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 41
    iget-object v1, p0, Lorg/adw/library/widgets/discreteseekbar/internal/compat/AnimatorCompatV11$1;->val$listener:Lorg/adw/library/widgets/discreteseekbar/internal/compat/AnimatorCompat$AnimationFrameUpdateListener;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-interface {v1, v0}, Lorg/adw/library/widgets/discreteseekbar/internal/compat/AnimatorCompat$AnimationFrameUpdateListener;->onAnimationFrame(F)V

    .line 42
    return-void
.end method
