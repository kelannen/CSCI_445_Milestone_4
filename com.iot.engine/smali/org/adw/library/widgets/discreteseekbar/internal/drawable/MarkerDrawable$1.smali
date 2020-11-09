.class Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable$1;
.super Ljava/lang/Object;
.source "MarkerDrawable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;


# direct methods
.method constructor <init>(Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;)V
    .locals 0

    .prologue
    .line 181
    iput-object p1, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable$1;->this$0:Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 186
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 187
    .local v0, "currentTime":J
    iget-object v5, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable$1;->this$0:Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;

    invoke-static {v5}, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;->access$000(Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;)J

    move-result-wide v6

    sub-long v2, v0, v6

    .line 188
    .local v2, "diff":J
    iget-object v5, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable$1;->this$0:Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;

    invoke-static {v5}, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;->access$100(Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;)I

    move-result v5

    int-to-long v6, v5

    cmp-long v5, v2, v6

    if-gez v5, :cond_0

    .line 189
    iget-object v5, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable$1;->this$0:Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;

    invoke-static {v5}, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;->access$200(Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;)Landroid/view/animation/Interpolator;

    move-result-object v5

    long-to-float v6, v2

    iget-object v7, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable$1;->this$0:Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;

    invoke-static {v7}, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;->access$100(Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;)I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    invoke-interface {v5, v6}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v4

    .line 190
    .local v4, "interpolation":F
    iget-object v5, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable$1;->this$0:Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;

    iget-object v6, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable$1;->this$0:Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;

    invoke-static {v6}, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;->access$300(Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;)Ljava/lang/Runnable;

    move-result-object v6

    const-wide/16 v8, 0x10

    add-long/2addr v8, v0

    invoke-virtual {v5, v6, v8, v9}, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 191
    iget-object v5, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable$1;->this$0:Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;

    invoke-static {v5, v4}, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;->access$400(Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;F)V

    .line 198
    .end local v4    # "interpolation":F
    :goto_0
    return-void

    .line 193
    :cond_0
    iget-object v5, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable$1;->this$0:Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;

    iget-object v6, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable$1;->this$0:Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;

    invoke-static {v6}, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;->access$300(Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;)Ljava/lang/Runnable;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 194
    iget-object v5, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable$1;->this$0:Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;->access$502(Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;Z)Z

    .line 195
    iget-object v5, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable$1;->this$0:Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v5, v6}, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;->access$400(Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;F)V

    .line 196
    iget-object v5, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable$1;->this$0:Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;

    invoke-static {v5}, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;->access$600(Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;)V

    goto :goto_0
.end method
