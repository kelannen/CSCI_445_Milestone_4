.class Lorg/adw/library/widgets/discreteseekbar/internal/drawable/AlmostRippleDrawable$1;
.super Ljava/lang/Object;
.source "AlmostRippleDrawable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/adw/library/widgets/discreteseekbar/internal/drawable/AlmostRippleDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/adw/library/widgets/discreteseekbar/internal/drawable/AlmostRippleDrawable;


# direct methods
.method constructor <init>(Lorg/adw/library/widgets/discreteseekbar/internal/drawable/AlmostRippleDrawable;)V
    .locals 0

    .prologue
    .line 187
    iput-object p1, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/AlmostRippleDrawable$1;->this$0:Lorg/adw/library/widgets/discreteseekbar/internal/drawable/AlmostRippleDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 192
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 193
    .local v0, "currentTime":J
    iget-object v5, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/AlmostRippleDrawable$1;->this$0:Lorg/adw/library/widgets/discreteseekbar/internal/drawable/AlmostRippleDrawable;

    invoke-static {v5}, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/AlmostRippleDrawable;->access$000(Lorg/adw/library/widgets/discreteseekbar/internal/drawable/AlmostRippleDrawable;)J

    move-result-wide v6

    sub-long v2, v0, v6

    .line 194
    .local v2, "diff":J
    iget-object v5, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/AlmostRippleDrawable$1;->this$0:Lorg/adw/library/widgets/discreteseekbar/internal/drawable/AlmostRippleDrawable;

    invoke-static {v5}, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/AlmostRippleDrawable;->access$100(Lorg/adw/library/widgets/discreteseekbar/internal/drawable/AlmostRippleDrawable;)I

    move-result v5

    int-to-long v6, v5

    cmp-long v5, v2, v6

    if-gez v5, :cond_0

    .line 195
    iget-object v5, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/AlmostRippleDrawable$1;->this$0:Lorg/adw/library/widgets/discreteseekbar/internal/drawable/AlmostRippleDrawable;

    invoke-static {v5}, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/AlmostRippleDrawable;->access$200(Lorg/adw/library/widgets/discreteseekbar/internal/drawable/AlmostRippleDrawable;)Landroid/view/animation/Interpolator;

    move-result-object v5

    long-to-float v6, v2

    iget-object v7, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/AlmostRippleDrawable$1;->this$0:Lorg/adw/library/widgets/discreteseekbar/internal/drawable/AlmostRippleDrawable;

    invoke-static {v7}, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/AlmostRippleDrawable;->access$100(Lorg/adw/library/widgets/discreteseekbar/internal/drawable/AlmostRippleDrawable;)I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    invoke-interface {v5, v6}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v4

    .line 196
    .local v4, "interpolation":F
    iget-object v5, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/AlmostRippleDrawable$1;->this$0:Lorg/adw/library/widgets/discreteseekbar/internal/drawable/AlmostRippleDrawable;

    iget-object v6, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/AlmostRippleDrawable$1;->this$0:Lorg/adw/library/widgets/discreteseekbar/internal/drawable/AlmostRippleDrawable;

    invoke-static {v6}, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/AlmostRippleDrawable;->access$300(Lorg/adw/library/widgets/discreteseekbar/internal/drawable/AlmostRippleDrawable;)Ljava/lang/Runnable;

    move-result-object v6

    const-wide/16 v8, 0x10

    add-long/2addr v8, v0

    invoke-virtual {v5, v6, v8, v9}, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/AlmostRippleDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 197
    iget-object v5, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/AlmostRippleDrawable$1;->this$0:Lorg/adw/library/widgets/discreteseekbar/internal/drawable/AlmostRippleDrawable;

    invoke-static {v5, v4}, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/AlmostRippleDrawable;->access$400(Lorg/adw/library/widgets/discreteseekbar/internal/drawable/AlmostRippleDrawable;F)V

    .line 203
    .end local v4    # "interpolation":F
    :goto_0
    return-void

    .line 199
    :cond_0
    iget-object v5, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/AlmostRippleDrawable$1;->this$0:Lorg/adw/library/widgets/discreteseekbar/internal/drawable/AlmostRippleDrawable;

    iget-object v6, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/AlmostRippleDrawable$1;->this$0:Lorg/adw/library/widgets/discreteseekbar/internal/drawable/AlmostRippleDrawable;

    invoke-static {v6}, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/AlmostRippleDrawable;->access$300(Lorg/adw/library/widgets/discreteseekbar/internal/drawable/AlmostRippleDrawable;)Ljava/lang/Runnable;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/AlmostRippleDrawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 200
    iget-object v5, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/AlmostRippleDrawable$1;->this$0:Lorg/adw/library/widgets/discreteseekbar/internal/drawable/AlmostRippleDrawable;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/AlmostRippleDrawable;->access$502(Lorg/adw/library/widgets/discreteseekbar/internal/drawable/AlmostRippleDrawable;Z)Z

    .line 201
    iget-object v5, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/AlmostRippleDrawable$1;->this$0:Lorg/adw/library/widgets/discreteseekbar/internal/drawable/AlmostRippleDrawable;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v5, v6}, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/AlmostRippleDrawable;->access$400(Lorg/adw/library/widgets/discreteseekbar/internal/drawable/AlmostRippleDrawable;F)V

    goto :goto_0
.end method
