.class final Lorg/adw/library/widgets/discreteseekbar/internal/compat/SeekBarCompatDontCrash$1;
.super Landroid/view/ViewOutlineProvider;
.source "SeekBarCompatDontCrash.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/adw/library/widgets/discreteseekbar/internal/compat/SeekBarCompatDontCrash;->setOutlineProvider(Landroid/view/View;Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$markerDrawable:Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;


# direct methods
.method constructor <init>(Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lorg/adw/library/widgets/discreteseekbar/internal/compat/SeekBarCompatDontCrash$1;->val$markerDrawable:Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "outline"    # Landroid/graphics/Outline;

    .prologue
    .line 44
    iget-object v0, p0, Lorg/adw/library/widgets/discreteseekbar/internal/compat/SeekBarCompatDontCrash$1;->val$markerDrawable:Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;

    invoke-virtual {v0}, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;->getPath()Landroid/graphics/Path;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/graphics/Outline;->setConvexPath(Landroid/graphics/Path;)V

    .line 45
    return-void
.end method
