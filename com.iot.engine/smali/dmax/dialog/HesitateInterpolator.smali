.class Ldmax/dialog/HesitateInterpolator;
.super Ljava/lang/Object;
.source "HesitateInterpolator.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# static fields
.field private static POW:D


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 11
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    sput-wide v0, Ldmax/dialog/HesitateInterpolator;->POW:D

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 6
    .param p1, "input"    # F

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    const/high16 v4, 0x3f800000    # 1.0f

    .line 15
    float-to-double v0, p1

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    mul-float v0, p1, v5

    float-to-double v0, v0

    sget-wide v2, Ldmax/dialog/HesitateInterpolator;->POW:D

    .line 16
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    .line 17
    :goto_0
    return v0

    .line 16
    :cond_0
    sub-float v0, v4, p1

    mul-float/2addr v0, v5

    float-to-double v0, v0

    sget-wide v2, Ldmax/dialog/HesitateInterpolator;->POW:D

    .line 17
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    const/high16 v1, -0x41000000    # -0.5f

    mul-float/2addr v0, v1

    add-float/2addr v0, v4

    goto :goto_0
.end method
